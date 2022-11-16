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
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc test //spot_micro/...
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
bazel/build:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc build //:build_spot
	if [ -d "build-bin" ]; then rm -Rf build-bin; fi && mkdir build-bin
	cp -r bazel-bin/** build-bin
	readelf -h bazel-bin/spot_micro/cpp/apps/smoke_test/src/smoke_test | fgrep Machine:

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
	buildifier --lint=fix spot_micro/spot_micro_kinematics/src/BUILD

#--------------------------------------------------------------------------------------------------------------
#
# End bazel make targets
#
#--------------------------------------------------------------------------------------------------------------
