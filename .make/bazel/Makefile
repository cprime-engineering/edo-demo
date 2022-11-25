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
	./bazelisk clean --expunge
	if [ -d "build-bin" ]; then rm -Rf build-bin; fi

#--------------------------------------------------------------------------------------------------------------
# bazel build spot
#--------------------------------------------------------------------------------------------------------------
bazel/build/spot:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc build @//spot_micro/...
	if [ -d "build-bin" ]; then rm -Rf build-bin; fi && mkdir build-bin
	cp -r bazel-bin/** build-bin
	readelf -h bazel-bin/spot_micro/cpp/apps/smoke_test/src/smoke_test | fgrep Machine:

#--------------------------------------------------------------------------------------------------------------
# bazel test spot
#--------------------------------------------------------------------------------------------------------------
bazel/test/spot:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc test @//spot_micro/...
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc test @//features/...

#--------------------------------------------------------------------------------------------------------------
# bazel build ros_noetic_base container image
#--------------------------------------------------------------------------------------------------------------
bazel/build/ros_noetic_base_container:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc build @//docker/ros_noetic/ros_noetic_base:ros_noetic_base

#--------------------------------------------------------------------------------------------------------------
# bazel build ros_noetic_release container image
#--------------------------------------------------------------------------------------------------------------
bazel/build/ros_noetic_release_container:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc build @//docker/ros_noetic/ros_noetic_release:ros_noetic_release

#--------------------------------------------------------------------------------------------------------------
# bazel run ros_noetic_release container image
#--------------------------------------------------------------------------------------------------------------
bazel/run/ros_noetic_release_container:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc run @//docker/ros_noetic/ros_noetic_release:ros_noetic_release

#--------------------------------------------------------------------------------------------------------------
# bazel build ros_noetic_test container image
#--------------------------------------------------------------------------------------------------------------
bazel/build/ros_noetic_test_container:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc build @//docker/ros_noetic/ros_noetic_test:ros_noetic_test

#--------------------------------------------------------------------------------------------------------------
# bazel run ros_noetic_test container image
#--------------------------------------------------------------------------------------------------------------
bazel/run/ros_noetic_test_container:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc run @//docker/ros_noetic/ros_noetic_test:ros_noetic_test

#--------------------------------------------------------------------------------------------------------------
# bazel test ros_noetic_test container image
#--------------------------------------------------------------------------------------------------------------
bazel/test/ros_noetic_test_container: bazel/build/spot bazel/test/spot
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc test @//docker/ros_noetic/ros_noetic_test:ros_noetic_test_dockerfile_test

#--------------------------------------------------------------------------------------------------------------
# bazel generate compile_commands.json
#--------------------------------------------------------------------------------------------------------------
bazel/generate/compile_commands:
	./bazelisk --bazelrc=.bazel/bazelrc/gh.codespace.bazelrc build @//:compilation_database
	cp bazel-bin/compile_commands.json .

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
	buildifier -r --lint=fix .

#--------------------------------------------------------------------------------------------------------------
#
# End bazel make targets
#
#--------------------------------------------------------------------------------------------------------------
