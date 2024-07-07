# 4-bit-Adder-Subtractor
4-bit Adder-Subtractor in VHDL
This project implements a 4-bit ripple carry adder-subtractor in VHDL. It uses full adders and XOR gates as components to perform addition and subtraction based on a control input.

device information: 
bord : krypton bord
family name : MAX V
device : 5M1270ZT144C5

Project Structure
Components:
Full Adder: A single-bit full adder module.
XOR Gate: A single-bit XOR gate module.
4-bit Adder-Subtractor: The main module that combines the full adder and XOR gate components to perform 4-bit addition and subtraction.

Inputs:
A: 4-bit input (A3 A2 A1 A0)
B: 4-bit input (B3 B2 B1 B0)
M: 1-bit input mode control (0 for addition, 1 for subtraction)
Outputs:
S: 4-bit output result (S3 S2 S1 S0)
Cout: 1-bit carry-out output.

Usage
To use this VHDL design, follow these steps:
Create a new VHDL project in your preferred VHDL IDE.
Add the VHDL files for the FullAdder and  XORGate components to your project.
Instantiate the AdderSubtractor component in your top-level VHDL file or testbench.
Compile and simulate the design to verify its functionality.

Conclusion
This VHDL project provides a 4-bit ripple carry adder-subtractor, utilizing full adders and XOR gates as components. The provided testbench can be used to verify the functionality of the design.
