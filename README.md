# 8-bit ALU in Verilog HDL

## Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs arithmetic, logical, and shift operations based on a 4-bit opcode.

## Features

- 8-bit Input Operands
- 4-bit Opcode Selection
- Addition
- Subtraction
- Bitwise AND
- Bitwise OR
- Bitwise XOR
- Bitwise NOT
- Left Shift
- Right Shift
- Carry Flag
- Zero Flag
- Overflow Detection

## Project Structure

```
8-bit-ALU-Verilog
│
├── src
│   └── alu.v
│
├── tb
│   └── alu_tb.v
│
└── README.md
```

## Supported Operations

| Opcode | Operation |
|--------|-----------|
|0000|Addition|
|0001|Subtraction|
|0010|AND|
|0011|OR|
|0100|XOR|
|0101|NOT|
|0110|Left Shift|
|0111|Right Shift|

## Tools Used

- Verilog HDL
- GitHub

## Future Improvements

- Multiplication
- Division
- Comparison Operations
- Barrel Shifter
- Simulation Waveforms
