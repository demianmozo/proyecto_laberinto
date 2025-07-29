# FPGA-Based Autonomous Maze-Solving Robot

This repository contains the implementation of a digital control system on FPGA for an autonomous robot capable of navigating unknown mazes using a hardware-accelerated flood-fill algorithm. The project was developed as part of the course "Digital Devices and Techniques II" (3rd year of Electronic Engineering) at the National University of Mar del Plata.

## Overview

Maze-solving is a classic problem in robotics and graph theory. The goal is to enable a mobile robot to traverse from an initial position to a target location within a grid-like environment with obstacles. While most solutions rely on microcontrollers (e.g., Arduino), this project leverages the inherent parallelism of FPGAs to implement a fully distributed and real-time navigation system.

A flood-fill algorithm is used to build an internal map of the maze and calculate optimal paths. Each cell of the maze is implemented as an independent VHDL module that communicates with its neighbors, allowing real-time propagation of distance and wall data. The current implementation uses a 4x4 grid, but the design is fully scalable to larger maze sizes.

## Features

- Real-time autonomous navigation using a flood-fill algorithm implemented entirely in hardware.
- Fully parallel architecture using distributed cell modules in VHDL.
- Wall detection and live map updating using onboard sensors.
- Smooth motion control with trajectory correction based on IR side sensors.
- Executed entirely on an Altera DE0-Nano FPGA board.
- Scalable design adaptable to larger mazes and more complex environments.

## Hardware Components

- **FPGA**: Altera DE0-Nano (Cyclone IV)
- **Motors**: Two DC motors with L298N dual H-bridge driver
- **Sensors**:
  - Front obstacle sensor (digital)
  - Two analog side IR sensors for wall tracking
  - Line detection sensor for cell crossing (digital)
- **ADC**: Integrated 8-channel converter controlled by the FPGA
- **Maze**: Custom 4x4 wooden maze with 3D printed wall columns

## System Architecture

- **Maze Controller**: Grid of 16 interconnected VHDL-based cells handling wall data and path weights.
- **Motor FSM**: Finite State Machine for motion control including forward movement, turning, and alignment.
- **Obstacle Detection**: Uses front sensor to detect walls and initiate turn maneuvers.
- **Position Tracking**: Line sensor increments cell counter as the robot progresses.
- **Decision Logic**: Chooses next move based on wall configuration and weight propagation.

## Highlights

- Designed for low-latency and high-efficiency embedded applications.
- Supports partial resets to allow faster second runs with memory of previous wall detections.
- Demonstrates the practical advantages of FPGA-based parallel processing in robotic navigation.

## Future Work

- Extendable to larger maze sizes and complex navigation rules.
- Potential applications in warehouse automation, hazardous environment exploration, or educational robotics.
- Evaluation under real-world conditions and industrial environments.

## Authors

- **Ian P. Larrieu Lacoste** – `ianlarrieu@alumnos.fi.mdp.edu.ar`
- **Demian N. Mozo** – `dmozo@alumnos.fi.mdp.edu.ar`

## License

This project is for academic and research purposes.

## References

See full project documentation and technical report for implementation details, theory background, and system design.
