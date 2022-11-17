
cc_binary(
    name = "talker",
    visibility = ["//visibility:public"],
    srcs = [
        "talker.cpp",
    ],
    deps = [
        "//spot_micro/cpp/apps/ros_test/src/other_msgs:msgs_cc",
        "@roscpp",
    ],
)

py_binary(
    name = "listener",
    visibility = ["//visibility:public"],
    srcs = [
        "listener.py",
    ],
    deps = [
        "//spot_micro/cpp/apps/ros_test/src/other_msgs:msgs_py",
    ],
)
