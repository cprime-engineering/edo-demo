load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "spot_micro_kinematics",
    srcs = [
        "spot_micro_kinematics.cc",
        "spot_micro_leg.cc",
        "utils.cc",
    ],
    hdrs = [
        "include/spot_micro_kinematics.h",
        "include/spot_micro_leg.h",
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
