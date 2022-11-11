load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_library(
    name = "smoke_test_library",
    hdrs = ["smoke_test_message.h"],
    includes = ["."],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "smoke_test",
    srcs = ["smoke_test.cc"],
    visibility = ["//visibility:public"],
    deps = [
        "smoke_test_library",
    ],
)
