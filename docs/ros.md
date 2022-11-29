---
layout: default
title: Robot Operating System (ROS)
nav_order: 4
has_children: false
---

# The Robot Operating System (ROS)

The Robot Operating System (ROS) is a collection of open-source software used in the robotics industry to act as the operating system for robotic appliances. ROS also includes a suite of open-source tooling used in the robotics software development lifecycle.

The ROS ecosystem consists of three software platforms:

## Gazebo

A digital twin simulation environment capable of simulating robots and the environments in which those robots operate. Gazebo is used to simulate environments such as warehousing and autonomous driving and was recently used to simulate the lunar environment as part of the NASA VIPER program. Gazebo includes a physics engine, high-resolution 3D graphics, and programmatic interfaces with native integration to ROS. Gazebo will be superseded by the Ignition libraries currently under development by Open Robotics and due for release in 2025.

## Open Robotics  Middleware Framework (Open-RMF)

Open-RMF is a software library that enables interoperability between robotic systems. Open-RMF can coordinate multiple fleets of robots with each other and integrate those robots with environmental systems. Open-RMF can coordinate communication between robotic fleets and connected systems such as doors, elevators, environmental sensors, and industrial equipment.

## ROS

A software development kit and collection of reusable libraries to build robot applications. These libraries include hardware drivers, algorithms, and developer tools.

Willow Garage was a robotics research lab founded in 2006 by Scott Hassan, who had previously worked with Larry Page and Sergey Brin to develop the Google search engine algorithm. Willow Garage produced three notable open-source frameworks, Open Computer Vision (OpenCV), Point Cloud Library (PCL), and ROS.

Since its initial release in 2010, ROS has become the ubiquitous norm for robotic operating systems. Prevalent in every type of robotic use case, including toys, drones, autonomous vehicles, home appliances, and even space exploration. Willow Garage shut down in 2014, and Open Robotics now maintains ROS.

### ROS Industrial (ROS-I)

The ROS-Industrial Open Source project began as the collaborative endeavor of Yaskawa Motoman Robotics, Southwest Research Institute, and Willow Garage to support using ROS for manufacturing automation. The software repository, available on GitHub, was founded by Shaun Edwards in January 2012.

Led by SwRI, the ROS-Industrial Consortium Americas launched in March 2013. As you might have guessed from the name, there is also a ROS-I Consortium Europe, led by Fraunhofer IPA in Stuttgart, Germany, and a ROS-Industrial Consortium Asia Pacific, led by ARTC and NTU in Singapore.

The video below is a brief documentary that exemplifies a ROS-I initiative. This video describes a joint venture between BMW Group and Microsoft implementing Industry 4.0 concepts within BMW's manufacturing facilities and within BMW's vehicles.

<iframe width="560" height="315" src="https://www.youtube.com/embed/fAUTJa7Nrdc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

ROS-Industrial extends the capabilities of ROS to manufacturing automation and robotics. The ROS-Industrial repository includes interfaces for standard industrial manipulators, grippers, sensors, and device networks. It also provides software libraries for automatic 2D/3D sensor calibration, process path/motion planning, applications like Scan-N-Plan, developer tools like the Qt Creator ROS Plugin, and training curricula specific to manufacturers' needs. An international Consortium of industry and research members supports ROS-I.
