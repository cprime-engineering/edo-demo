load("@com_grail_bazel_compdb//:defs.bzl", "compilation_database")
load("@com_grail_bazel_output_base_util//:defs.bzl", "OUTPUT_BASE")

compilation_database(
    name = "compilation_database",
    output_base = OUTPUT_BASE,
    targets = [
        "spot_micro_cpp",
    ],
)

filegroup(
    name = "spot_micro_cpp",
    srcs = [
        "@//spot_micro/cpp/apps/ros_test/src:listener",
        "@//spot_micro/cpp/apps/ros_test/src:talker",
        "@//spot_micro/cpp/apps/smoke_test/src:smoke_test",
        "@//spot_micro/cpp/apps/smoke_test/src:smoke_test_library",
    ],
)
