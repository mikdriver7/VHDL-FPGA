# Lab 2: Structural & Concurrent VHDL

## Description
This project implements a Boolean function (`OUT = A'B'C + A'BC + ABC`) using two VHDL styles:
1.  **Structural:** Uses component instantiation (`port map`) with basic AND/OR gates.
2.  **Concurrent:** Uses a single dataflow assignment statement.

Both styles were simulated in ModelSim and synthesized for a Nexys A7-100T FPGA using Xilinx Vivado. The tools successfully optimized both designs into the same efficient hardware, demonstrating functional equivalence.

## Key Files
-   `and3_gate.vhd` - 3-input AND gate component
-   `or3_gate.vhd` - 3-input OR gate component
-   `sum_of_minterms_structural.vhd` - Top-level structural design
-   `sum_of_minterms_concurrent.vhd` - Top-level concurrent design
-   `force.do` - ModelSim script to run all test cases
-   `min.xdc` - Pin assignments for the FPGA board

## Tools & Target
-   **Simulation:** ModelSim
-   **Synthesis:** Xilinx Vivado
-   **FPGA:** Nexys A7-100T (xc7a100tcsg324-1)
