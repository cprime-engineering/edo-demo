#--------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------
# Name: bazel
# Description: bazel
#--------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------------
#
# Begin bazel make targets
#
#--------------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------------
# bazel clean
#--------------------------------------------------------------------------------------------------------------
bazel/clean:
	./bazelisk clean
	if [ -d "build-bin" ]; then rm -Rf build-bin; fi

#--------------------------------------------------------------------------------------------------------------
# bazel test
#--------------------------------------------------------------------------------------------------------------
bazel/test:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc test //cpp/...
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc test //features/...

#--------------------------------------------------------------------------------------------------------------
# bazel coverage
#--------------------------------------------------------------------------------------------------------------
bazel/coverage:
	./bazelisk coverage --java_runtime_version=remotejdk_11 -s --instrument_test_targets --experimental_cc_coverage --combined_report=lcov --coverage_report_generator=@bazel_tools//tools/test/CoverageOutputGenerator/java/com/google/devtools/coverageoutputgenerator:Main //cpp/...
	genhtml bazel-testlogs/cpp/apps/smoke_test/test/smoke_test_test/coverage.dat --output-directory bazel-coverage/smoke_test_test


#--------------------------------------------------------------------------------------------------------------
# bazel build X86-64
#--------------------------------------------------------------------------------------------------------------
bazel/build/X86-64:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc build //:build_all
	if [ -d "build-bin" ]; then rm -Rf build-bin; fi && mkdir build-bin
	cp bazel-bin/cpp/apps/smoke_test/src/smoke_test build-bin/smoke_test
	readelf -h bazel-bin/cpp/apps/smoke_test/src/smoke_test | fgrep Machine:

#--------------------------------------------------------------------------------------------------------------
# bazel build AArch64
#--------------------------------------------------------------------------------------------------------------
bazel/build/AArch64:
	./bazelisk build --config=aarch64 //:build_all
	if [ -d "build-bin" ]; then rm -Rf build-bin; fi && mkdir build-bin
	cp bazel-bin/cpp/apps/smoke_test/src/smoke_test build-bin/smoke_test
	readelf -h bazel-bin/cpp/apps/smoke_test/src/smoke_test | fgrep Machine:

#--------------------------------------------------------------------------------------------------------------
# bazel version
#--------------------------------------------------------------------------------------------------------------
bazel/version:
	./bazelisk version
	./bazelisk --version

#--------------------------------------------------------------------------------------------------------------
# bazel lint
#--------------------------------------------------------------------------------------------------------------
bazel/lint:
	buildifier --lint=fix WORKSPACE
	buildifier --lint=fix BUILD
	buildifier --lint=fix .bazel/cpp/cross_compile/toolchains/aarch64/BUILD
	buildifier --lint=fix .bazel/cpp/cross_compile/toolchains/aarch64/cc_toolchain_config.bzl
	buildifier --lint=fix .bazel/python/bdd/bdd.bzl
	buildifier --lint=fix .bazel/python/bdd/BUILD
	buildifier --lint=fix cpp/apps/smoke_test/bdd/BUILD
	buildifier --lint=fix cpp/apps/smoke_test/src/BUILD
	buildifier --lint=fix cpp/apps/smoke_test/test/BUILD
	buildifier --lint=fix features/BUILD
	buildifier --lint=fix spot_micro/spot_micro_kinematics/BUILD

#--------------------------------------------------------------------------------------------------------------
#
# End bazel make targets
#
#--------------------------------------------------------------------------------------------------------------
