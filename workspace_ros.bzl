load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@//.bazel/ros:repository_rules.bzl", "import_ros_workspace")

#--------------------------------------------------------------------------------------------------------------
# ROS configuration
#--------------------------------------------------------------------------------------------------------------
def workspace():
    http_archive(
        name = "genmsg_repo",
        build_file = "@//.bazel/third_party/genmsg:BUILD",
        sha256 = "5e1169b03aebab158f762120cd2f7d8cfabb42885d51d853564f783d2b22fb3e",
        strip_prefix = "genmsg-0.6.0",
        urls = ["https://github.com/ros/genmsg/archive/0.6.0.tar.gz"],
    )

    http_archive(
        name = "genpy_repo",
        build_file = "@//.bazel/third_party/genpy:BUILD",
        sha256 = "a0cf129fe90cf342090aac4ca63c33f993f4feecdaf5bc74f410b633e3ea0afc",
        strip_prefix = "genpy-0.6.16",
        urls = ["https://github.com/ros/genpy/archive/0.6.16.tar.gz"],
    )

    http_archive(
        name = "gencpp_repo",
        build_file = "@//.bazel/third_party/gencpp:BUILD",
        sha256 = "3806b243153cde5c03695d5e2a5899a584b978a20b2c1b45e462219098bbb7b6",
        strip_prefix = "gencpp-0.7.0",
        urls = ["https://github.com/ros/gencpp/archive/0.7.0.tar.gz"],
    )

    import_ros_workspace(
        name = "ros_ws",
        path = "/opt/ros/noetic",
    )

#--------------------------------------------------------------------------------------------------------------
# Alias so it can be loaded without assigning to a different symbol to prevent
# shadowing previous loads and trigger a buildifier warning.
#--------------------------------------------------------------------------------------------------------------
workspace_ros = workspace
