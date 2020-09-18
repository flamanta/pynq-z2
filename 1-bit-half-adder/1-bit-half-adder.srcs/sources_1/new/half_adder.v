`timescale 1ns / 1ps
//------------------------------------------------------------------------------
// Adapted from UC Berkeley, EECS 151/251A FPGA Lab
// Lab 1, Fall 2018
// Module: half_adder.v 
//------------------------------------------------------------------------------

module half_adder(
    input sysclk,
    input [1:0] sw,
    output [1:0] led
    );
    
    // sw[1] = A, sw[0] = B, btn[3] = C_in
    
    // 1-bit Half Adder
    xor(led[0], sw[1], sw[0]); // Sum output
    and(led[1], sw[1], sw[0]); // Carry output
    
endmodule