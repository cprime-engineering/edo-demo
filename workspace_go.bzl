load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

#--------------------------------------------------------------------------------------------------------------
# Go configuration
#--------------------------------------------------------------------------------------------------------------
def workspace():
    http_archive(
        name = "io_bazel_rules_go",
        sha256 = "099a9fb96a376ccbbb7d291ed4ecbdfd42f6bc822ab77ae6f1b5cb9e914e94fa",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.35.0/rules_go-v0.35.0.zip",
            "https://github.com/bazelbuild/rules_go/releases/download/v0.35.0/rules_go-v0.35.0.zip",
        ],
    )

#--------------------------------------------------------------------------------------------------------------
# Alias so it can be loaded without assigning to a different symbol to prevent
# shadowing previous loads and trigger a buildifier warning.
#--------------------------------------------------------------------------------------------------------------
workspace_go = workspace
