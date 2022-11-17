package(default_visibility = ["//visibility:public"])

py_library(
    name = "genpy",
    srcs = glob(["spot_micro/**/*.py"]),
    imports = ["spot_micro"],
    deps = [
        "@genmsg//:genmsg",
    ],
)

py_binary(
    name = "genmsg_py",
    srcs = ["scripts/genmsg_py.py"],
    deps = [
        ":genpy",
    ],
)
