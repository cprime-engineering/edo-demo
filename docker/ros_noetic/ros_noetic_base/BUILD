load("@io_bazel_rules_docker//container:container.bzl", "container_image")
package(default_visibility = ["@//visibility:public"])

container_image(
    name = "ros_noetic_base",
    base = "@ros_noetic_base//image:dockerfile_image.tar",
)
