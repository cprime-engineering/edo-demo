---
layout: default
title: Release Process
nav_order: 7
has_children: false
---

# Release Process

## Tag the Release


git tag -a v0.0.0 -m 'tag message'

git tag -n

git push origin --tags

## Publish the Release

[GitHub Documentation](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository)

## Generate Changelog

github_changelog_generator -u cprime-labs -p cqa-demo
