load("@pybind11_bazel//:build_defs.bzl", "pybind_extension")

pybind_extension(
    name = "smoke_test_bdd",
    srcs = ["bdd_python_wrapper.cc"],
    includes = ["."],
    visibility = ["//visibility:public"],
    deps = [
        "//spot_micro/cpp/apps/smoke_test/src:smoke_test_library",
    ],
)
