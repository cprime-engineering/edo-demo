load("@com_grail_bazel_compdb//:defs.bzl", "compilation_database")
load("@com_grail_bazel_output_base_util//:defs.bzl", "OUTPUT_BASE")

compilation_database(
    name = "compilation_database",
    output_base = OUTPUT_BASE,
    targets = [
        "build_spot",
    ],
)

filegroup(
    name = "build_spot",
    srcs = [
        "@//spot_micro/cpp/apps/ros_test/src:listener",
        "@//spot_micro/cpp/apps/ros_test/src:talker",
        "@//spot_micro/cpp/apps/smoke_test/src:smoke_test",
        "@//spot_micro/cpp/apps/smoke_test/src:smoke_test_library",
    ],
)

cc_library(
    name = "ros",
    srcs = glob(["lib/*.so"]),
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.hpp",
    ]),
    strip_include_prefix = "include",
)

py_library(
    name = "ros_python",
    srcs = glob(["lib/python3/dist-packages/**/*.py"]),
    imports = ["lib/python3/dist-packages/"],
)
