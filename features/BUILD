load("//.bazel/python/bdd:bdd.bzl", "bdd_test")

[bdd_test(
    name = filename[:filename.rfind(".feature")],
    main = filename,
    steps = glob(["steps/*.py"]),
    visibility = ["//visibility:public"],
    deps = [
        "//spot_micro/cpp/apps/smoke_test/bdd:smoke_test_bdd.so",
    ],
) for filename in glob(["*.feature"])]
