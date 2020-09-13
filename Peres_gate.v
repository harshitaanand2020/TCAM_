`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:43:51 09/13/2020 
// Design Name: 
// Module Name:    Peres_gate 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Peres_gate(output P, Q, R, input A, B, C);
wire o;
buf(P, A);
xor(Q, A, B);
and(o, A, B);
xor(R, o, C);
endmodule
