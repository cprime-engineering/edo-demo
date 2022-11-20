load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["@//visibility:public"])

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
    deps = [
        "@eigen3",
    ],
)
