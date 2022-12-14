---
layout: default
title: Bazel Build Process
nav_order: 7
has_children: false
---

# Why Bazel Build?

Bazel is a build tool developed by Google designed to be fast, scalable, and extensible. It is a tool for building and managing the dependencies of software projects and is particularly well-suited for large and complex projects.

As robots become increasingly sophisticated and capable, the software that powers them becomes increasingly complex. Contemporary robotics solutions may demand some of the robot's software execute in remote cloud services.

Bazel can provide a consistent and reliable way to build and manage the dependencies of these increasingly complex software projects and provide consistent management of the ever-increasing number of external dependencies.

Using Bazel, developers can define their project's dependencies in a declarative manner using BUILD files. Bazel then uses these files to build and test the project, resolving all local and remote dependencies. Bazel also caches dependencies to improve subsequent build performance.

Bazel's caching capabilities also extend to remote caching. When building highly complex software projects with CICD pipelines, remote caching can have a significant impact on build performance, and this can, in turn, significantly reduce the cost of operating the underlying architecture for CICD build runners.

One potential benefit of using Bazel in developing software for robotics is that it can help bridge the gap between traditional embedded systems development and cloud-native development techniques.

Traditionally, embedded systems such as robotics software have employed specialized build tools and techniques optimized for low-level hardware access and performance. This approach has been practical for many years but does not integrate with modern cloud-based technologies and services.

On the other hand, cloud-native development techniques are focused on leveraging the power and scalability of the cloud to build and deploy complex software systems. While these techniques can be highly effective, they may not be suited to the unique requirements of embedded systems such as robotics software.

Bazel can help bridge this gap by providing a consistent and flexible build tool applicable to traditional embedded systems development and modern cloud-native development techniques. By using Bazel, developers can build and manage the dependencies of their robotics software in a way that is compatible with both traditional and modern development practices.

Bazel can help to integrate robotics software with cloud-based technologies and services, allowing developers to take advantage of the scalability and flexibility of the cloud while still maintaining the localized performance and reliability essential for successful robotics systems.

Overall, Bazel can be a valuable tool for helping to bridge the gap between traditional embedded systems development and cloud-native development techniques.

Bazel facilitates the management of dependencies within multi-language projects, enabling the interaction of languages and frameworks associated with cloud-native and embedded systems software development on one cohesive project structure.
