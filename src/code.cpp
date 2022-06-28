#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

using namespace Rcpp;

namespace Rcpp {
  template <> SEXP wrap(const Vector2& x) {
    NumericVector v = NumericVector::create(x.x, x.y);
    v.attr("names") = CharacterVector::create("x", "y");
    return v;
  };

  template <> Vector2 as(SEXP x) {
    NumericVector v = as<NumericVector>(x);
    return Vector2 {as<float>(wrap(v[0])),
                    as<float>(wrap(v[1]))
      };
  };

  template <> SEXP wrap(const Vector3& x) {
    NumericVector v = NumericVector::create(x.x, x.y, x.z);
    v.attr("names") = CharacterVector::create("x", "y", "z");
    return v;
  };

  template <> Vector3 as(SEXP x) {
    NumericVector v = as<NumericVector>(x);
    return Vector3 {as<float>(wrap(v[0])),
                    as<float>(wrap(v[1])),
                    as<float>(wrap(v[2]))
      };
  };

  template <> RaylibMatrix as(SEXP x) {
    NumericMatrix m = as<NumericMatrix>(x);
    return RaylibMatrix {
      as<float>(wrap(m[0])),
      as<float>(wrap(m[4])),
      as<float>(wrap(m[8])),
      as<float>(wrap(m[12])),

      as<float>(wrap(m[1])),
      as<float>(wrap(m[5])),
      as<float>(wrap(m[9])),
      as<float>(wrap(m[13])),

      as<float>(wrap(m[2])),
      as<float>(wrap(m[6])),
      as<float>(wrap(m[10])),
      as<float>(wrap(m[14])),

      as<float>(wrap(m[3])),
      as<float>(wrap(m[7])),
      as<float>(wrap(m[11])),
      as<float>(wrap(m[15]))
    };
  };

  template <> SEXP wrap(const RaylibMatrix& m) {
    NumericVector v = {m.m0, m.m1, m.m2, m.m3,
                       m.m4, m.m5, m.m6, m.m7,
                       m.m8, m.m9, m.m10, m.m11,
                       m.m12, m.m13, m.m14, m.m15};

    v.attr("dim") = Dimension(4, 4);
    return as<NumericMatrix>(v);
  };

  template <> SEXP wrap(const Vector4& x) {
    NumericVector v = NumericVector::create(x.x, x.y, x.z, x.w);
    v.attr("names") = CharacterVector::create("x", "y", "z", "w");
    return v;
  };

  template <> Vector4 as(SEXP x) {
    NumericVector v = as<NumericVector>(x);
    return Vector4 {as<float>(wrap(v[0])),
                    as<float>(wrap(v[1])),
                    as<float>(wrap(v[2])),
                    as<float>(wrap(v[3]))
      };
  };


  template <> SEXP wrap(const Color& x) {
    List l = List::create(_["r"] = as<int>(wrap(x.r)),
                          _["g"] = as<int>(wrap(x.g)),
                          _["b"] = as<int>(wrap(x.b)),
                          _["a"] = as<int>(wrap(x.a)));
    l.attr("class") = "color";
    return wrap(l);
  };

  template <> Color as(SEXP x) {
    Color color;
    switch(TYPEOF(x)) {
      case VECSXP: {
        List y = List(x);
        try {
          color.r = as<unsigned char>(y["r"]);
        } catch(...) {
          color.r = 0;
        }

        try {
          color.g = as<unsigned char>(y["g"]);
        } catch(...) {
          color.g = 0;
        }

        try {
          color.b = as<unsigned char>(y["b"]);
        } catch(...) {
          color.b = 0;
        }

        try {
          color.a = as<unsigned char>(y["a"]);
        } catch(...) {
          color.a = 255;
        }
        break;
      }
      case REALSXP: {
        color = GetColor(as<unsigned int>(x));
        break;
      }
      case STRSXP: {
        color = rcolors[as<String>(x)];
        break;
      }
      default: {
        stop("Incompatible Color provided");
      }
    }

    return color;
  };

  template <> Camera3D as(SEXP x) {
    // Convert R object to C struct
    //return *XPtr<Camera3D>(x);

    List l = List(x);

    Camera3D camera;
    camera.position = as<Vector3>(wrap(l["position"]));
    camera.target = as<Vector3>(wrap(l["target"]));
    camera.up = as<Vector3>(wrap(l["up"]));
    camera.fovy = as<float>(wrap(l["fovy"]));
    camera.projection = as<int>(wrap(l["projection"]));

    return camera;
  };

  template <> SEXP wrap(const Camera3D& x) {
    // Convert C struct to R object
    List l = List::create(_["position"] =  as<NumericVector>(wrap(x.position)),
                          _["target"] =  as<NumericVector>(wrap(x.target)),
                          _["up"] = as<NumericVector>(wrap(x.up)),
                          _["fovy"] = as<float>(wrap(x.fovy)),
                          _["projection"] = as<int>(wrap(x.projection)));
    l.attr("class") = "camera";
    return wrap(l);
  };
}

//' @export
// [[Rcpp::export]]
Color color(Color c) {
  return c;
}


//' Draw Circle
//' @export
// [[Rcpp::export]]
void draw_circles(NumericVector x, NumericVector y, NumericVector radius, List colors) {
  for(int i = 0; i < x.size(); i++) {
    DrawCircle(x[i], y[i], radius[i], colors[i]);
  }
}

//' Camera
//' @export
// [[Rcpp::export]]
Camera3D camera_3d(Vector3 position,
                   Vector3 target,
                   Vector3 up,
                   float fovy = 70.0,
                   int projection = 0) {
  Camera3D camera;
  camera.position = position;
  camera.target = target;
  camera.up = up;
  camera.fovy = fovy;
  camera.projection = projection;
  return camera;
}

//' Load font ex
//'
//' @param file_name A string
//' @param font_size An integer
//' @return A font
//'
//' @export
// [[Rcpp::export]]
Font load_font_ex(const char * file_name, int font_size) {
  return LoadFontEx(file_name, font_size, 0, 0);
}

//' @export
// [[Rcpp::export]]
void image_draw_pixel(Image &dst, int posX, int posY, Color color) {
  ImageDrawPixel(&dst, posX, posY, color);
}


