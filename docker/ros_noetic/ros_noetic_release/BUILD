load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")
package(default_visibility = ["@//visibility:public"])

container_image(
    name = "ros_noetic_release",
    base = "@ros_noetic_release//image:dockerfile_image.tar",
)
