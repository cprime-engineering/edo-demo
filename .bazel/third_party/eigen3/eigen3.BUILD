cc_library(
    name = "eigen3",
    visibility = ["@//visibility:public"],
    hdrs = glob(
        include = ["Eigen/**"],
        exclude = ["Eigen/**/CMakeLists.txt"],
    ),
    defines = ["EIGEN_MPL2_ONLY"],
    alwayslink = 1,
)
