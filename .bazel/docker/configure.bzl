load("@io_bazel_rules_docker//toolchains/docker:toolchain.bzl", docker_toolchain_configure = "toolchain_configure")
load("@io_bazel_rules_docker//repositories:repositories.bzl", container_repositories = "repositories")
load("@io_bazel_rules_docker//repositories:deps.bzl", container_deps = "deps")
load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

def configure_docker():
    docker_toolchain_configure(
        name = "docker_config",
        docker_flags = [
            "--log-level=info",
        ],
    )

    container_repositories()

    container_deps()

    container_pull(
        name = "ros_noetic_base",
        registry = "docker.io",
        repository = "ros",
        digest = "sha256:34cbfe55d811fe7c57add8b3d6f01ba9c209258ef1b4029cec5118dcd21e358f",
    )
