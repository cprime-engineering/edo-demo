def _bazel_output_base_util_impl(rctx):
    if rctx.os.name.lower().startswith("windows") == True:
        res = rctx.execute(["cmd", "/c", "echo", "%cd%"])
    else:
        res = rctx.execute(["pwd"])

    if res.return_code != 0:
        fail("getting output base failed (%d): %s" % (res.return_code, res.stderr))

    # Strip last two path components.
    if rctx.os.name.lower().startswith("windows") == True:
        path_components = res.stdout.rstrip("\n").split("\\")[:-2]
    else:
        path_components = res.stdout.rstrip("\n").split("/")[:-2]

    output_base = "/".join(path_components)

    rctx.file("BUILD.bazel", "")
    rctx.file("defs.bzl", "OUTPUT_BASE = '%s'" % output_base)

bazel_output_base_util = repository_rule(
    implementation = _bazel_output_base_util_impl,
    local = True,
)

def setup_tools():
    bazel_output_base_util(
        name = "com_grail_bazel_output_base_util",
    )
