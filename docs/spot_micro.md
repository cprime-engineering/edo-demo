---
layout: default
title: Spot Micro
nav_order: 6
has_children: false
---

# Dog Food for Spot!

Eating your own dog food or "dogfooding" is the practice of using one's own products or services, a phrase initially coined by Paul Alistair Maritz at Microsoft.

A long-established Agile practice, when "Dogfooding" a developer tries out the software they developed as if they were a regular user. For us, this means:

"If you want to sell products and services to people that build robots, you need to build some robots."

<iframe width="560" height="315" src="https://www.youtube.com/embed/S-uzWG9Z-5E" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The SpotMicro robot model was developed by Deok-Yeon Kim and released on Thingiverse in 2019. The Boston Dynamics Spotmini inspired the design for the SpotMicro.

SpotMicro was an ideal development platform for this project. We need an affordable working prototype that will allow us to demonstrate continuous integration and delivery of production-grade robotics software. This exercise must deploy software into a physical robotic device, and the complexity of that software must be comparable to a real-world scenario. The SpotMicro open-source robot allows us to demonstrate all of these characteristics.

For the first iteration of this project, commercial robots such as Boston Dynamics Spot are beyond our budgetary constraints. Accessibility to these platforms and lead times for delivery is also an issue. Our objective is to create an interactive swarm of robots that would further inflate our costs.

SpotMicro provides a robotic platform we can build with readily available commercial off-the-shelf components. The cost per unit is below USD 400.00, and we can print the robot's material components using PLA filament with low-cost 3D printing equipment. The result will not be a high-end example of physical engineering but will be sufficient to demonstrate that we can meet the software deployment requirements of this project.

There is currently a working Bezier Gait Environment with Randomizable Body and Terrain Parameters for SpotMicro in Pybullet. It has a variety of trained Reinforcement Learning Agents for gait correction and rough terrain traversal, as well as a ROS interface to operate the robot using a Joystick. Compiling and deploying this software and resulting models into a SpotMicro will provide a reasonably complex software development use case to make this demonstration project close enough to real-world scenarios to be meaningful to potential commercial customers.

The SpotMicro robot has a small but active and highly skilled community surrounding it. As we intend to open-source all results of this exercise, we may also find additional development support amongst that community.

We had other choices of robotic platforms, including iRobot Create and the Turtlebot from Clearpath Robotics. SpotMicro offers more opportunities for low-level feature development and offers us exposure to dealing with the construction of building physical hardware.
