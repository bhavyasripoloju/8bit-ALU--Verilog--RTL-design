# 8-bit ALU Design

A comprehensive 8-bit Arithmetic Logic Unit (ALU) implementation in Verilog.

## Overview

This project implements an 8-bit ALU supporting arithmetic and logical operations, designed for educational purposes and hardware design practice.

## Features

- **Arithmetic Operations**: Add, subtract, and other arithmetic functions
- **Logical Operations**: AND, OR, XOR, NAND gates for digital logic operations
- **Case-Based Combinational Logic**: Efficient implementation using case statements
- **Comprehensive Testbenches**: Verification across multiple input conditions
- **Waveform Analysis**: Validated outputs using GTKWave for visual debugging

## Tools & Technologies

- **Verilog**: Hardware description language for circuit design
- **Icarus Verilog**: Open-source Verilog compiler and simulator
- **GTKWave**: Waveform viewer for analyzing simulation results

## Project Structure

- `*.v` - Verilog module files (gates, ALU components)
- `tb_*.v` - Testbench files for verification
- `*.vcd` - Waveform files generated from simulations
- `*.vvp` - Compiled simulation files

## Usage

### Running Simulations

```bash
# Compile Verilog files
iverilog -o module.vvp module.v testbench.v

# Run simulation
vvp module.vvp

# View waveforms
gtkwave output.vcd
```

## Files
- **bitalu8.v / tb_bitalu8.v** - 8-bit ALU implementation and testbench
- **8bitalu.vcd/GTk wave -wave form of 8 bit alu
- <img width="1600" height="852" alt="Screenshot 2026-06-06 211333" src="https://github.com/user-attachments/assets/8f52fa8b-f046-49a5-94fb-d894bad770af" />


## Learning Objectives

- Understand basic digital logic gates
- Learn combinational logic design principles
- Practice Verilog hardware description
- Master testbench development and verification
- Analyze circuit behavior through waveform simulation

## Author

Created for digital design and Verilog learning purposes.

## License

This project is provided as-is for educational purposes.
