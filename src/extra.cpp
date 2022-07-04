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
    Color *ptr = new Color;
    (*ptr) = x;
    XPtr<Color>xptr = XPtr<Color>(ptr, true);
    xptr.attr("class") = "color";
    return xptr;
  };

  template <> Color as(SEXP x) {
    Color color;
    switch(TYPEOF(x)) {
      case EXTPTRSXP: {
        return *XPtr<Color>(x);
      }
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
        stop("Incompatible color provided");
      }
    }

    return color;
  };

}

//' Coerce a string or a number to a color
//'
//' @param x Object to be coerced. Can be a valid R color (see `colors()`) or a hexademical.
//'
//' @return A color
//'
//' @export
// [[Rcpp::export]]
Color as_color(Color x) {
  return x;
}
