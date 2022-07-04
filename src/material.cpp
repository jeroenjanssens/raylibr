// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Material {
//     Shader shader;          // Material shader
//     MaterialMap *maps;      // Material maps array (MAX_MATERIAL_MAPS)
//     float params[4];        // Material generic parameters (if required)
// } Material;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Material as(SEXP x) {
    return *XPtr<Material>(x);
  };
  
  template <> SEXP wrap(const Material& x) {
    Material *ptr = new Material;
    (*ptr) = x;
    XPtr<Material>xptr = XPtr<Material>(ptr, true);
    xptr.attr("class") = "material";
    return xptr;
  };
  
}

