#--------------------------------------------------------------------------------------------------------------
###############################################################################################################
# Workspace configuration
###############################################################################################################
#--------------------------------------------------------------------------------------------------------------

workspace(name = "edo-demo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

#--------------------------------------------------------------------------------------------------------------
###############################################################################################################
# C++ configuration
###############################################################################################################
#--------------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------------
# http archive repositories
#--------------------------------------------------------------------------------------------------------------

http_archive(
    name = "com_google_googletest",
    strip_prefix = "googletest-609281088cfefc76f9d0ce82e1ff6c30cc3591e5",
    urls = ["https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip"],
)

http_archive(
    name = "pybind11_bazel",
    strip_prefix = "pybind11_bazel-9a24c33cbdc510fa60ab7f5ffb7d80ab89272799",
    urls = ["https://github.com/pybind/pybind11_bazel/archive/9a24c33cbdc510fa60ab7f5ffb7d80ab89272799.zip"],
)

http_archive(
    name = "rules_python",
    sha256 = "954aa89b491be4a083304a2cb838019c8b8c3720a7abb9c4cb81ac7a24230cea",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.4.0/rules_python-0.4.0.tar.gz",
)

http_archive(
    name = "pybind11",
    build_file = "@pybind11_bazel//:pybind11.BUILD",
    sha256 = "616d1c42e4cf14fa27b2a4ff759d7d7b33006fdc5ad8fd603bb2c22622f27020",
    strip_prefix = "pybind11-2.7.1",
    urls = ["https://github.com/pybind/pybind11/archive/v2.7.1.tar.gz"],
)

load("@pybind11_bazel//:python_configure.bzl", "python_configure")

python_configure(name = "local_config_python")
