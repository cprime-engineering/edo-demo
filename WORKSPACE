#--------------------------------------------------------------------------------------------------------------
# Workspace configuration
#--------------------------------------------------------------------------------------------------------------
workspace(name = "edo-demo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

#--------------------------------------------------------------------------------------------------------------
# Global http archive repositories
#--------------------------------------------------------------------------------------------------------------

http_archive(
    name = "com_google_googletest",
    sha256 = "5cf189eb6847b4f8fc603a3ffff3b0771c08eec7dd4bd961bfd45477dd13eb73",
    strip_prefix = "googletest-609281088cfefc76f9d0ce82e1ff6c30cc3591e5",
    urls = ["https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip"],
)

http_archive(
    name = "bazel_skylib",
    sha256 = "74d544d96f4a5bb630d465ca8bbcfe231e3594e5aae57e1edbf17a6eb3ca2506",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "501deb3d5695ab658e82f6f6f549ba681ea3ca2a5fb7911154b5aa45596183fa",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.26.0/bazel-gazelle-v0.26.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.26.0/bazel-gazelle-v0.26.0.tar.gz",
    ],
)

#--------------------------------------------------------------------------------------------------------------
# ROS configuration
#--------------------------------------------------------------------------------------------------------------

load("@//:workspace_ros.bzl", "workspace_ros")

workspace_ros()

load("@ros_ws//:workspace.bzl", "ros_repositories")

ros_repositories()

#--------------------------------------------------------------------------------------------------------------
# Python configuration
#--------------------------------------------------------------------------------------------------------------
load("@//:workspace_python.bzl", "workspace_python")

workspace_python()

#--------------------------------------------------------------------------------------------------------------
# C++ configuration
#--------------------------------------------------------------------------------------------------------------
load("@//:workspace_cpp.bzl", "workspace_cpp")

workspace_cpp()

#--------------------------------------------------------------------------------------------------------------
# Golang configuration
#--------------------------------------------------------------------------------------------------------------
load("@//:workspace_go.bzl", "workspace_go")

workspace_go()

load("@//.bazel/golang:configure.bzl", "configure_golang")

configure_golang()

#--------------------------------------------------------------------------------------------------------------
# Docker configuration
#--------------------------------------------------------------------------------------------------------------
load("@//:workspace_docker.bzl", "workspace_docker")

workspace_docker()

load("@//.bazel/docker:configure.bzl", "configure_docker")

configure_docker()
