load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

package(default_visibility = ["@//visibility:public"])

cc_library(
    name = "smoke_test_library",
    hdrs = ["smoke_test_message.h"],
    includes = ["."],
)

cc_binary(
    name = "smoke_test",
    srcs = ["smoke_test.cc"],
    deps = [
        "smoke_test_library",
    ],
)
