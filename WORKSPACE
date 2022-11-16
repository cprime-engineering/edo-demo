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
    strip_prefix = "bazel-compilation-database-0.5.2",
    urls = ["https://github.com/grailbio/bazel-compilation-database/archive/0.5.2.tar.gz"],
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
