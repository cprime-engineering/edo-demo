load("@//.bazel/ros:message_generation.bzl", "generate_messages")

package(default_visibility = ["@//visibility:public"])

generate_messages(
    srcs = glob([
        "msg/*.msg",
    ]),
    ros_package_name = "hello_msgs",
    deps = [
        "@std_msgs//:msgs",
    ],
)
