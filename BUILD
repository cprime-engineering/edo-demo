load("@com_grail_bazel_compdb//:defs.bzl", "compilation_database")
load("@com_grail_bazel_output_base_util//:defs.bzl", "OUTPUT_BASE")

compilation_database(
    name = "compilation_database",
    targets = [
        "build_spot",
    ],
    output_base = OUTPUT_BASE,
)

filegroup(
    name = "build_spot",
    srcs = [
        "//spot_micro/cpp/apps/smoke_test/src:smoke_test",
        "//spot_micro/cpp/apps/smoke_test/src:smoke_test_library",
        "//spot_micro/cpp/apps/ros_test/src:ros_test",
    ],
)
