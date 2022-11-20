load("@//.bazel/ros:message_generation.bzl", "generate_messages")

package(default_visibility = ["@//visibility:public"])

generate_messages(
    srcs = glob([
        "msg/*.msg",
    ]),
    ros_package_name = "other_msgs",
    deps = [
        "@//spot_micro/cpp/apps/ros_test/src/hello_msgs:msgs",
        "@std_msgs//:msgs",
    ],
)
