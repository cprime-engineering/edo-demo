# Contribution Guidelines

Contributions to this repo are very welcome! We follow a fairly standard [pull request
process](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) for contributions, subject to the following guidelines:

1. [File a GitHub issue](#file-a-github-issue)
1. [Update the documentation](#update-the-documentation)
1. [Update the tests](#update-the-tests)
1. [Update the code](#update-the-code)
1. [Definition of Done](#definition-of-done)
1. [Create a pull request](#create-a-pull-request)
1. [Merge and release](#merge-and-release)

## File a GitHub issue

Before starting any work, we recommend filing a GitHub [issue](../../issues) in this repo. This is your chance to ask questions and
get feedback from the maintainers and the community before you sink a lot of time into writing (possibly the wrong)
code. If there is anything you're unsure about, just ask!

## Update the documentation

We recommend updating the documentation *before* updating any code (see [Readme Driven
Development](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)). This ensures the documentation
stays up to date and allows you to think through the problem at a high level before you get lost in the weeds of
coding.

## Update the tests

We also recommend updating the automated tests *before* updating any code (see [Test Driven
Development](https://en.wikipedia.org/wiki/Test-driven_development)). That means you add or update a test case,
verify that it's failing with a clear error message, and *then* make the code changes to get that test to pass. This
ensures the tests stay up to date and verify all the functionality in this repo, including whatever new
functionality you're adding in your contribution. Check out the `apps/<app-name>/src/test` of the app you are working on to review automated tests.

## Update the code

At this point, make your code changes and use your new test case to verify that everything is working. As you work,
please consider backwards compatibility.

### Backwards compatibility

Please make every effort to avoid unnecessary backwards incompatible changes. If a backwards incompatible change cannot be avoided, please make sure to call that out when you submit a pull request, explaining why the change is absolutely necessary.

## Definition of Done

Before submitting a pull request, take the time to review our [Definition  of Done](/DOD.md).

Our definition of done describes the list of criteria that must be met before any work is considered 'done.' Failure to comply with any of these conditions means work is not complete and will probably result in your pull request being refused.

Upon receipt of a pull request, the maintainers of this repo will review code submitted against the [Definition  of Done](/DOD.md) before accepting that pull request into the codebase.

We describe our [Definition  of Done](/DOD.md) at two levels:
1. Merge Pull Request
1. Tag Release


## Create a pull request

[Create a pull request](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) with your changes. Please make sure
to include the following:

1. A description of the change, including a link to your GitHub issue.
1. The output of your automated test run, preferably in a [GitHub Gist](https://docs.github.com/en/github/writing-on-github/editing-and-sharing-content-with-gists/creating-gists).
1. Any notes on backwards incompatibility.

## Merge and release

The maintainers for this repo will review your code and provide feedback. If everything looks good, they will merge the
code and release a new version, which you'll be able to find in the [releases page](../../releases).
