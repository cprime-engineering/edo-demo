load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@//.bazel/python/configure:python_configure.bzl", "python_configure")

#--------------------------------------------------------------------------------------------------------------
# Python configuration
#--------------------------------------------------------------------------------------------------------------
def workspace():

    http_archive(
        name = "rules_python",
        sha256 = "954aa89b491be4a083304a2cb838019c8b8c3720a7abb9c4cb81ac7a24230cea",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.4.0/rules_python-0.4.0.tar.gz",
    )

    http_archive(
        name = "pybind11",
        build_file = "//.bazel/third_party/pybind11:BUILD",
        sha256 = "111014b516b625083bef701df7880f78c2243835abdb263065b6b59b960b6bad",
        strip_prefix = "pybind11-2.10.1",
        urls = ["https://github.com/pybind/pybind11/archive/v2.10.1.tar.gz"],
    )

    python_configure(name = "local_config_python")

#--------------------------------------------------------------------------------------------------------------
# Alias so it can be loaded without assigning to a different symbol to prevent
# shadowing previous loads and trigger a buildifier warning.
#--------------------------------------------------------------------------------------------------------------
tf_workspace_00 = workspace
