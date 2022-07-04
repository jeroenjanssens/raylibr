// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct BoneInfo {
//     char name[32];          // Bone name
//     int parent;             // Bone parent
// } BoneInfo;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> BoneInfo as(SEXP x) {
    return *XPtr<BoneInfo>(x);
  };
  
  template <> SEXP wrap(const BoneInfo& x) {
    BoneInfo *ptr = new BoneInfo;
    (*ptr) = x;
    XPtr<BoneInfo>xptr = XPtr<BoneInfo>(ptr, true);
    xptr.attr("class") = "bone_info";
    return xptr;
  };
  
}

