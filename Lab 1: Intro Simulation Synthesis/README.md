# Lab 1: Introduction to Simulation and Synthesis

## Overview
This lab introduces the complete digital design flow from VHDL coding to FPGA implementation. It covers simulation with ModelSim using DO files and synthesis with Xilinx Vivado targeting the Nexys A7-100T FPGA board.

## Design Description
A full adder is implemented structurally using two half adder components. The design takes three 1-bit inputs (`carry_in`, `input1`, `input2`) and produces two 1-bit outputs (`sum_out`, `carry_out`).

### Theory
- **Simulation**: Process of verifying design functionality by applying test vectors and observing outputs.
- **Synthesis**: Process of converting VHDL code into a netlist of technology-specific components (LUTs, flip-flops, etc.).
- **Implementation**: Translating the synthesized netlist into a physical layout on the target FPGA, including placement and routing.

## Files
- **`half_adder_regular_outputs.vhd`**: Half adder component with true outputs
- **`full_adder_nexysboard.vhd`**: Top-level full adder using structural design
- **`fulladder.do`**: ModelSim script for automated simulation
- **`fulladder.xdc`**: Vivado constraints file for pin mapping

## Simulation Results
The simulation verified all 8 possible input combinations of the full adder. The waveform confirmed correct functionality for all cases:
- 0 + 0 + 0 = 0, carry 0
- 0 + 0 + 1 = 1, carry 0
- 0 + 1 + 0 = 1, carry 0
- 0 + 1 + 1 = 0, carry 1
- 1 + 0 + 0 = 1, carry 0
- 1 + 0 + 1 = 0, carry 1
- 1 + 1 + 0 = 0, carry 1
- 1 + 1 + 1 = 1, carry 1

## Hardware Implementation
The design was successfully synthesized and implemented on the Nexys A7-100T board with the following pin mapping:
- **Inputs**: 
  - `carry_in` → J15
  - `input1` → L16  
  - `input2` → M13
- **Outputs**:
  - `sum_out` → H17
  - `carry_out` → K15

The hardware test confirmed the full adder functionality matches the simulation results.

## Key Learnings
- Writing and executing ModelSim DO files for automated simulation
- Creating Vivado projects with proper source and constraint files
- Synthesizing VHDL code and generating bitstreams
- Programming FPGAs and verifying functionality on hardware
- Understanding the complete digital design flow from code to hardware
