py_test(
    name = "test_spot_micro_stick_figure",
    srcs = ["tests/test_spot_micro_stick_figure.py"],
    deps = ["//spot_micro/python/lib/spot_micro_kinematics:spot_micro_kinematics"]
)

py_test(
    name = "test_spot_micro_kinematics",
    srcs = ["utilities/tests/test_spot_micro_kinematics.py"],
    deps = ["//spot_micro/python/lib/spot_micro_kinematics:spot_micro_kinematics"]
)

py_test(
    name = "test_transformations",
    srcs = ["utilities/tests/test_transformations.py"],
    deps = ["//spot_micro/python/lib/spot_micro_kinematics:spot_micro_kinematics"]
)

py_library(
    name = "spot_micro_kinematics",
    srcs = [
        "spot_micro_stick_figure.py",
        "utilities/spot_micro_kinematics.py",
        "utilities/transformations.py",
    ],
)
