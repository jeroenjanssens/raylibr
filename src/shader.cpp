// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Shader {
//     unsigned int id;        // Shader program id
//     int *locs;              // Shader locations array (RL_MAX_SHADER_LOCATIONS)
// } Shader;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Shader as(SEXP x) {
    return *XPtr<Shader>(x);
  };
  
  template <> SEXP wrap(const Shader& x) {
    Shader *ptr = new Shader;
    (*ptr) = x;
    XPtr<Shader>xptr = XPtr<Shader>(ptr, true);
    xptr.attr("class") = "shader";
    return xptr;
  };
  
}

