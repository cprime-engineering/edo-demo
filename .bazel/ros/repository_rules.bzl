def _import_ros_workspace_impl(repository_ctx):
    repository_ctx.file("BUILD", "")

    # Generate top-level workspace.bzl file and build files for all ROS packages
    # in the workspace.
    res = repository_ctx.execute([
        repository_ctx.attr._generate_ros_workspace,
        "--ws-name",
        "ros_ws",
        "--ros-path",
        repository_ctx.attr.path,
        "--out-dir",
        repository_ctx.path(""),
    ])

    if res.return_code:
        fail("failed to generate ROS workspace at {}: {} ({})".format(
            repository_ctx.attr.path,
            res.stdout,
            res.stderr,
        ))

import_ros_workspace = repository_rule(
    attrs = {
        "path": attr.string(mandatory = True),
        "_generate_ros_workspace": attr.label(
            executable = True,
            default = Label("@//.bazel/ros:generate_ros_workspace.py"),
            cfg = "host",
        ),
    },
    implementation = _import_ros_workspace_impl,
)
