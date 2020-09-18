`timescale 1ns / 1ps
//------------------------------------------------------------------------------
// Adapted from UC Berkeley, EECS 151/251A FPGA Lab
// Lab 1, Fall 2018
// Module: full_adder.v 
//------------------------------------------------------------------------------

module full_adder(
    input sysclk,
    input [3:0] btn,
    input [1:0] sw,
    output [1:0] led
    );
    
    // sw[1] = A, sw[0] = B, btn[3] = C_in
    
    // Internal nets
    wire axb, ab, caxb;
    // Xors
    xor(axb, sw[1], sw[0]);
    // Ands
    and(caxb, btn[3], axb);
    and(ab, sw[1], sw[0]);
    
    // 1-bit Full Adder
    xor(led[0], sw[1], sw[0], btn[3]); // Sum output
    or(led[1], caxb, ab); // Carry output
    
endmodule