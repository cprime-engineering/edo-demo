package(default_visibility = ["@//visibility:public"])

cc_test(
    name = "test_kinematics",
    size = "small",
    srcs = [
        "test_kinematics.cc",
        "test_leg.cc",
        "test_utils.cc",
    ],
    deps = [
        "//spot_micro/cpp/lib/kinematics/src:kinematics",
        "@com_google_googletest//:gtest_main",
    ],
)
