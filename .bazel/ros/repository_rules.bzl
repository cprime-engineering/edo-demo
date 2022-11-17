def _import_ros_workspace_impl(repository_ctx):
    repository_ctx.file("BUILD", "")

    # Generate top-level workspace.bzl file and build files for all ROS packages
    # in the workspace.
    res = repository_ctx.execute([
        "/workspaces/edo-demo/.bazel/ros/gen_ros_workspace_bzl.py",
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
        "_gen_ros_workspace": attr.label(
            executable = True,
            default = Label("@//.bazel/ros:repository_rules.bzl"),
            cfg = "host",
        ),
    },
    implementation = _import_ros_workspace_impl,
)
