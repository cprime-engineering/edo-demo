#--------------------------------------------------------------------------------------------------------------
# Workspace configuration
#--------------------------------------------------------------------------------------------------------------

workspace(name = "edo-demo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

#--------------------------------------------------------------------------------------------------------------
# http archive repositories
#--------------------------------------------------------------------------------------------------------------

http_archive(
    name = "com_google_googletest",
    sha256 = "5cf189eb6847b4f8fc603a3ffff3b0771c08eec7dd4bd961bfd45477dd13eb73",
    strip_prefix = "googletest-609281088cfefc76f9d0ce82e1ff6c30cc3591e5",
    urls = ["https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip"],
)

http_archive(
    name = "rules_python",
    sha256 = "954aa89b491be4a083304a2cb838019c8b8c3720a7abb9c4cb81ac7a24230cea",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.4.0/rules_python-0.4.0.tar.gz",
)

http_archive(
    name = "pybind11",
    build_file = "//.bazel/third_party/pybind11:pybind11.BUILD",
    sha256 = "111014b516b625083bef701df7880f78c2243835abdb263065b6b59b960b6bad",
    strip_prefix = "pybind11-2.10.1",
    urls = ["https://github.com/pybind/pybind11/archive/v2.10.1.tar.gz"],
)

http_archive(
    name = "eigen3",
    build_file = "//.bazel/third_party/eigen3:eigen3.BUILD",
    sha256 = "0e7aeece6c8874146c2a4addc437eebdf1ec4026680270f00e76705c8186f0b5",
    strip_prefix = "eigen-3.3.5",
    url = "https://gitlab.com/libeigen/eigen/-/archive/3.3.5/eigen-3.3.5.zip",
)

http_archive(
    name = "com_grail_bazel_compdb",
    sha256 = "d32835b26dd35aad8fd0ba0d712265df6565a3ad860d39e4c01ad41059ea7eda",
    strip_prefix = "bazel-compilation-database-0.5.2",
    urls = ["https://github.com/grailbio/bazel-compilation-database/archive/0.5.2.tar.gz"],
)

http_archive(
    name = "genmsg_repo",
    build_file = "//.bazel/third_party/genmsg:genmsg.BUILD",
    sha256 = "5e1169b03aebab158f762120cd2f7d8cfabb42885d51d853564f783d2b22fb3e",
    strip_prefix = "genmsg-0.6.0",
    urls = ["https://github.com/ros/genmsg/archive/0.6.0.tar.gz"],
)

http_archive(
    name = "genpy_repo",
    build_file = "//.bazel/third_party/genpy:genpy.BUILD",
    sha256 = "a0cf129fe90cf342090aac4ca63c33f993f4feecdaf5bc74f410b633e3ea0afc",
    strip_prefix = "genpy-0.6.16",
    urls = ["https://github.com/ros/genpy/archive/0.6.16.tar.gz"],
)

http_archive(
    name = "gencpp_repo",
    build_file = "//.bazel/third_party/gencpp:gencpp.BUILD",
    sha256 = "3806b243153cde5c03695d5e2a5899a584b978a20b2c1b45e462219098bbb7b6",
    strip_prefix = "gencpp-0.7.0",
    urls = ["https://github.com/ros/gencpp/archive/0.7.0.tar.gz"],

)

#--------------------------------------------------------------------------------------------------------------
# git repositories
#--------------------------------------------------------------------------------------------------------------

git_repository(
       name = "bazel_clang_tidy",
       commit = "41d3033cce4f6e42f7b683894e7b78ecf8491417",
       remote = "https://github.com/erenon/bazel_clang_tidy.git",
)

#--------------------------------------------------------------------------------------------------------------
# C++ configuration
#--------------------------------------------------------------------------------------------------------------

load("@com_grail_bazel_compdb//:deps.bzl", "bazel_compdb_deps")
bazel_compdb_deps()

#--------------------------------------------------------------------------------------------------------------
# Python configuration
#--------------------------------------------------------------------------------------------------------------

load("@//.bazel/python/configure:python_configure.bzl", "python_configure")

python_configure(name = "local_config_python")

#--------------------------------------------------------------------------------------------------------------
# ROS configuration
#--------------------------------------------------------------------------------------------------------------

load("@//.bazel/ros:repository_rules.bzl", "import_ros_workspace")

import_ros_workspace(
    name = "ros_ws",
    path = "/opt/ros/noetic",
)

load("@ros_ws//:workspace.bzl", "ros_repositories")

ros_repositories()
