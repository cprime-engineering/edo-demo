load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@io_bazel_rules_docker//contrib:test.bzl", "container_test")

package(default_visibility = ["@//visibility:public"])

container_image(
    name = "ros_noetic_test_container",
    base = "@ros_noetic_test//image:dockerfile_image.tar",
    files = ["@//docker/ros_noetic/ros_noetic_test:entrypoint.sh"],
)

container_test(
    name = "ros_noetic_test_dockerfile_test",
    configs = ["@//docker/ros_noetic/ros_noetic_test:test_config.yaml"],
    image = "@//docker/ros_noetic/ros_noetic_test:ros_noetic_test_container",
)
