// Do not edit by hand. This code is generated from the following definition in raylib.h:

// typedef struct Model {
//     Matrix transform;       // Local transform matrix
// 
//     int meshCount;          // Number of meshes
//     int materialCount;      // Number of materials
//     Mesh *meshes;           // Meshes array
//     Material *materials;    // Materials array
//     int *meshMaterial;      // Mesh material number
// 
//     // Animation data
//     int boneCount;          // Number of bones
//     BoneInfo *bones;        // Bones information (skeleton)
//     Transform *bindPose;    // Bones base transformation (pose)
// } Model;

#include "raylibr.h"

// [[Rcpp::plugins(cpp11)]]

namespace Rcpp {

  template <> Model as(SEXP x) {
    return *XPtr<Model>(x);
  };
  
  template <> SEXP wrap(const Model& x) {
    Model *ptr = new Model;
    (*ptr) = x;
    XPtr<Model>xptr = XPtr<Model>(ptr, true);
    xptr.attr("class") = "model";
    return xptr;
  };
  
}

