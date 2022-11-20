load("@//.bazel/third_party/pybind11:build_defs.bzl", "pybind_extension")

package(default_visibility = ["@//visibility:public"])

pybind_extension(
    name = "smoke_test_bdd",
    srcs = ["bdd_python_wrapper.cc"],
    includes = ["."],
    deps = [
        "@//spot_micro/cpp/apps/smoke_test/src:smoke_test_library",
    ],
)
