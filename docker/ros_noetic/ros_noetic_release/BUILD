load("@io_bazel_rules_docker//container:container.bzl", "container_image")

package(default_visibility = ["@//visibility:public"])

container_image(
    name = "ros_noetic_release",
    base = "@//docker/ros_noetic/ros_noetic_base:ros_noetic_base",
    files = [
        "@//debian:spot-micro-debian",
        "@//docker/ros_noetic/ros_noetic_release:setup_spot_micro.sh",
    ],
)
