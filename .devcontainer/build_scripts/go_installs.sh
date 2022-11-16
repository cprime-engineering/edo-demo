#!/usr/bin/env bash

# Install bazel buildifier -------------------------------------------------------------------------------------
go install github.com/bazelbuild/buildtools/buildifier@latest

# Install bazel buildozer --------------------------------------------------------------------------------------
go install github.com/bazelbuild/buildtools/buildozer@latest
