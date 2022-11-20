cc_library(
    name = "eigen3",
    hdrs = glob(
        include = ["Eigen/**"],
        exclude = ["Eigen/**/CMakeLists.txt"],
    ),
    defines = ["EIGEN_MPL2_ONLY"],
    visibility = ["@//visibility:public"],
    alwayslink = 1,
)
