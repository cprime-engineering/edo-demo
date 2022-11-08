load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

URL_TOOLCHAIN = "https://github.com/ltekieli/devboards-toolchains/releases/download/v2020.09.01/"
URL_SYSROOT = "https://github.com/ltekieli/buildroot/releases/download/v2020.09.01/"

def toolchains():
    if "aarch64-rpi3-linux-gnu" not in native.existing_rules():
        http_archive(
            name = "aarch64-rpi3-linux-gnu",
            build_file = Label("//cpp/cross_compile/toolchains/aarch64-rpi3-linux-gnu/BUILD.bazel"),
            url = URL_TOOLCHAIN + "aarch64-rpi3-linux-gnu.tar.gz",
            sha256 = "35a093524e35061d0f10e302b99d164255dc285898d00a2b6ab14bfb64af3a45",
        )

    if "aarch64-rpi3-linux-gnu-sysroot" not in native.existing_rules():
        http_archive(
            name = "aarch64-rpi3-linux-gnu-sysroot",
            build_file = Label("//cpp/cross_compile/toolchains/aarch64-rpi3-linux-gnu-sysroo/BUILD.bazel"),
            url = URL_SYSROOT + "aarch64-rpi3-linux-gnu-sysroot.tar.gz",
            sha256 = "56f3d84c9adf192981a243f27e6970afe360a60b72083ae06a8aa5c0161077a5",
            strip_prefix = "sysroot",
        )

    if "arm-cortex_a8-linux-gnueabihf" not in native.existing_rules():
        http_archive(
            name = "arm-cortex_a8-linux-gnueabihf",
            build_file = Label("//cpp/cross_compile/toolchains/arm-cortex_a8-linux-gnueabihf/BUILD.bazel"),
            url = URL_TOOLCHAIN + "arm-cortex_a8-linux-gnueabihf.tar.gz",
            sha256 = "6176e47be8fde68744d94ee9276473648e2e3d98d22578803d833d189ee3a6f0",
        )

    if "arm-cortex_a8-linux-gnueabihf-sysroot" not in native.existing_rules():
        http_archive(
            name = "arm-cortex_a8-linux-gnueabihf-sysroot",
            build_file = Label("//cpp/cross_compile/toolchains/arm-cortex_a8-linux-gnueabihf-sysroot/BUILD.bazel"),
            url = URL_SYSROOT + "arm-cortex_a8-linux-gnueabihf-sysroot.tar.gz",
            sha256 = "89a72cc874420ad06394e2333dcbb17f088c2245587f1147ff9da124bb60328f",
            strip_prefix = "sysroot",
        )
