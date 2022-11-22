load("@io_bazel_rules_docker//container:container.bzl", "container_image")
package(default_visibility = ["@//visibility:public"])

container_image(
    name = "ros_noetic_base_container",
    base = "@ros_noetic_base_dockerfile//image:dockerfile_image.tar",
)
