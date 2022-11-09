load("//.bazel/python/bdd:bdd.bzl", "bdd_test")

[bdd_test(
    name = filename[:filename.rfind(".feature")],
    visibility = ["//visibility:public"],
    main = filename,
    steps = glob(["steps/*.py"]),
    deps = [
        "//cpp/apps/smoke_test/bdd:smoke_test_bdd.so",
    ],
) for filename in glob(["*.feature"])]
