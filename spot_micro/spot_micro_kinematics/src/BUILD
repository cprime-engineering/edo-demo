load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "spot_micro_kinematics",
    hdrs = ["include/spot_micro_kinematics.h", "include/spot_micro_leg.h", "include/utils.h"],
    srcs = ["spot_micro_kinematics.cc", "spot_micro_leg.cc", "utils.cc"],
    includes = [".", "include"],
    visibility = ["//visibility:public"],
)
