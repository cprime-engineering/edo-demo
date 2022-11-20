py_test(
    name = "test_stick_figure",
    srcs = ["tests/test_stick_figure.py"],
    deps = ["//spot_micro/python/lib/kinematics"],
)

py_test(
    name = "test_kinematics",
    srcs = ["utilities/tests/test_kinematics.py"],
    deps = ["//spot_micro/python/lib/kinematics"],
)

py_test(
    name = "test_transformations",
    srcs = ["utilities/tests/test_transformations.py"],
    deps = ["//spot_micro/python/lib/kinematics"],
)

py_library(
    name = "kinematics",
    srcs = [
        "stick_figure.py",
        "utilities/kinematics.py",
        "utilities/transformations.py",
    ],
)
