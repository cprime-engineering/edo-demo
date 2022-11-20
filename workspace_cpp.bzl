load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@//.bazel/third_party/com_grail_bazel_compdb:deps.bzl", "bazel_compdb_deps")

#--------------------------------------------------------------------------------------------------------------
# C++ configuration
#--------------------------------------------------------------------------------------------------------------
def workspace():
    http_archive(
        name = "eigen3",
        build_file = "//.bazel/third_party/eigen3:BUILD",
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

    bazel_compdb_deps()

#--------------------------------------------------------------------------------------------------------------
# Alias so it can be loaded without assigning to a different symbol to prevent
# shadowing previous loads and trigger a buildifier warning.
#--------------------------------------------------------------------------------------------------------------
tf_workspace_cpp = workspace
