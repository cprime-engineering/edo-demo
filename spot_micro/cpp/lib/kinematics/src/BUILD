load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "kinematics",
    srcs = [
        "kinematics.cc",
        "leg.cc",
        "utils.cc",
    ],
    hdrs = [
        "include/kinematics.h",
        "include/leg.h",
        "include/utils.h",
    ],
    includes = [
        ".",
        "include",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@eigen3//:eigen3",
    ],
)
