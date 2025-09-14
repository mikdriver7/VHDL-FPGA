# Lab 3: Combinational Process for Number Conversion

## Description
This project implements a combinational logic circuit in VHDL that converts a 4-bit signed integer in Sign-Magnitude representation to its equivalent 4-bit Two's Complement representation. The design uses a process statement with variables for the conversion algorithm.

## Key Files
-   `converter.vhd` - Main design using variables (correct implementation)
-   `converterSignals.vhd` - Alternative version using only signals (for comparison, has simulation issues)
-   `force.do` - ModelSim script to test all 16 input combinations
-   `convert.xdc` - Pin assignments for the Nexys A7-100T FPGA board

## Truth Table
| Input (Sign-Mag) | Value | Output (2's Comp) | Value |
|:----------------:|:-----:|:-----------------:|:-----:|
|      0000        |  +0   |       0000        |  +0   |
|      0001        |  +1   |       0001        |  +1   |
|      0010        |  +2   |       0010        |  +2   |
|      0011        |  +3   |       0011        |  +3   |
|      0100        |  +4   |       0100        |  +4   |
|      0101        |  +5   |       0101        |  +5   |
|      0110        |  +6   |       0110        |  +6   |
|      0111        |  +7   |       0111        |  +7   |
|      1000        |  -0   |       1000        |  -8   |
|      1001        |  -1   |       1111        |  -1   |
|      1010        |  -2   |       1110        |  -2   |
|      1011        |  -3   |       1101        |  -3   |
|      1100        |  -4   |       1100        |  -4   |
|      1101        |  -5   |       1011        |  -3   |
|      1110        |  -6   |       1010        |  -6   |
|      1111        |  -7   |       1001        |  -7   |

## Tools & Target
-   **Simulation:** ModelSim (with `vcom -check_synthesis` option)
-   **Synthesis & Implementation:** Xilinx Vivado
-   **FPGA:** Nexys A7-100T (xc7a100tcsg324-1)
