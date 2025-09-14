# VHDL & FPGA Projects

This repository contains projects and labs developed for COEN 313 - Digital Logic Design I. The projects focus on VHDL design, simulation with ModelSim, and synthesis/implementation for Xilinx FPGAs using Vivado.

## Labs Overview

### Lab 1: Introduction to Simulation and Synthesis
- **Objective**: Introduction to ModelSim and Xilinx Vivado toolflows.
- **Design**: Structural VHDL implementation of a Full Adder using Half Adders.
- **Tools**: ModelSim for simulation, Vivado for synthesis and bitstream generation.
- **Hardware**: Nexys A7-100T FPGA Board.

### Lab 2: Structural & Concurrent VHDL Implementation
- **Objective**: Implement combinational logic using both structural (port map) and concurrent (CSA) VHDL styles.
- **Design**: Boolean function implementation using AND/OR gates, comparison of structural vs concurrent approaches.
- **Tools**: ModelSim for simulation, Vivado for synthesis and analysis of logic minimization.
- **Key Findings**: Both design styles synthesized to identical hardware after Vivado optimization.

### Lab 3: Combinational Process for Number Conversion
- **Objective**: Design combinational processes to convert Sign-Magnitude to Two's Complement representation.
- **Design**: Process-based conversion algorithm using variables vs signals, exploration of sensitivity lists.
- **Tools**: ModelSim with vcom -check_synthesis, Vivado for implementation.
- **Key Findings**: Demonstrated importance of variables vs signals in processes and sensitivity list requirements.

### Lab 4: Clocked Processes and Shift Register with Max/Min Detection
- **Objective**: Design clocked VHDL processes to implement a shift register with maximum and minimum value detection.
- **Design**: 4-stage shift register with real-time max/min detection logic, synchronous reset, and output selection.
- **Tools**: ModelSim with DO file simulation, Vivado for synthesis and implementation on Nexys A7-100T.
- **Key Findings**: Proper use of clocked processes for sequential logic, handling of multiple processes with sensitivity lists.


## Key Skills Demonstrated
- **VHDL Coding**: Structural, dataflow, and behavioral (process) design styles including clocked processes.
- **Simulation**: Writing and using ModelSim DO files for test automation.
- **FPGA Synthesis**: Using Xilinx Vivado for synthesis, implementation, and bitstream generation.
- **Constraint Files**: Creating and applying XDC files for pin mapping and timing.
- **Hardware Debugging**: Programming and testing designs on physical FPGA hardware.

## Tools Used
- **Simulation**: ModelSim
- **Synthesis & Implementation**: Xilinx Vivado
- **FPGA Board**: Digilent Nexys A7-100T (Artix-7)
- **Hardware Description Language**: VHDL

## Getting Started
Each lab folder contains its own README with specific instructions for simulation and synthesis.

## Author
Mik Driver (40244456)
