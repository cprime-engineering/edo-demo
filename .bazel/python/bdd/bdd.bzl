"""Custom Bazel Starlark rule for running behave tests.
"""

def _bdd_test_impl(ctx):
    # Assemble the command to run.
    bdd_tool = 'behave'
    default_args = '--no-capture --no-capture-stderr --no-logcapture'
    # Optional arguments are passed either
    #  explicitly as --test_arg=--foo="bar bar" (no space in between)
    #  or implicitly via ctx.attr.args
    optional_args = '"$@"'

    feature_file = ctx.file.main.basename
    features_path = ctx.label.package

    command = ' '.join([bdd_tool, default_args, features_path, '--include', feature_file])
    command = ' '.join([
        bdd_tool, features_path, '--include', feature_file, default_args, optional_args
    ])

    # Wrap an executable around the command.
    ctx.actions.write(
        output = ctx.outputs.executable,
        content = command,
    )

    # Ensure the files needed by the command are available at runtime
    srcs = ctx.files.main + ctx.files.steps + ctx.files.data
    deps = []
    for dep in ctx.attr.deps:
        # Collect files from the dependency tree.

        deps += dep.default_runfiles.files.to_list()

    return [DefaultInfo(
        runfiles = ctx.runfiles(
            files = srcs + deps,
        ),
    )]

bdd_test = rule(
    implementation = _bdd_test_impl,
    test = True,
    attrs = {
        "main": attr.label(
            allow_single_file = [".feature"],
            mandatory = True,
        ),
        "steps": attr.label_list(
            allow_files = True,
        ),
        "deps": attr.label_list(),
        "data": attr.label_list(
            allow_files = True,
        ),
    },
)
