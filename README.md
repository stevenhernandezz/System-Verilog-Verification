# System-Verilog-Verification
 This project aims to become familiar with System Verilog concepts, learn how to construct testbenches in EDA tool in System Verilog, verification of designs, and gain experience in using FPGA development tools.
 
## Description 
 This project consists of seven modules:
 
Module: logic_data_type
This module includes:
Parameter for clock cycle.
- Initialization of clock and clock cycle loop.
- Use of reset signal, NOT gate, and instantiation of a flip flop module with port mapping.
  
Module: mux2to1
Features:
 - Main file with a 2-to-1 mux implemented using always_comb block.
 - Testbench setup with timescale and module instantiation.
 - Testing with multiple inputs and waveform generation using $dumpfile and $dumpvars.
   
Module: data_types_tb
Highlights:
 - Demonstrates System Verilog data types (2-state and 4-state).
 - Signal declarations showcasing range integer and floating-point numbers.
 - Initialization of values and operations (addition, negation, multiplication) with assert statements for verification.
   
Module: fix_sized_array_tb
Key Components:
 - Array declarations including 2D arrays.
 - Utilization of foreach and for loops for array manipulation.
 - Partial array initialization, mass assignment, and manipulation operations.
   
Module: print_multi_dim_array_tb
Focuses on:
 - Initialization and printing of elements in a 2D array using nested foreach loops.
 - Iteration over dimensions and printing array elements with appropriate formatting.
   
Module: using_dynamic_arrays_tb
Covers:
 - Declaration, allocation, initialization, and manipulation of dynamic arrays.
 - Operations like copying arrays, resizing, and memory management using new[] and delete.
   
Module: associative_array_tb
Key Elements:
 - Use and manipulation of associative arrays.
 - Initialization using loops and traversal techniques (foreach, do-while).
 - Demonstrates element access, deletion, and size checking (num method).

## Demo Video 
https://www.youtube.com/watch?v=c4AXRVpIaRQ


## Dependencies
### Software
* https://www.edaplayground.com/

### Author
* Steven Hernandez
  - www.linkedin.com/in/steven-hernandez-a55a11300
  - https://github.com/stevenhernandezz
