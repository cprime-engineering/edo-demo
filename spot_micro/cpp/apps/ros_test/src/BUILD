cc_binary(
    name = "talker",
    srcs = [
        "talker.cpp",
    ],
    visibility = ["@//visibility:public"],
    deps = [
        "@//spot_micro/cpp/apps/ros_test/src/other_msgs:msgs_cc",
        "@roscpp",
    ],
)

py_binary(
    name = "listener",
    srcs = [
        "listener.py",
    ],
    visibility = ["@//visibility:public"],
    deps = [
        "@//spot_micro/cpp/apps/ros_test/src/other_msgs:msgs_py",
    ],
)
