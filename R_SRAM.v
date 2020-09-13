`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:06 09/13/2020 
// Design Name: 
// Module Name:    R_SRAM 
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
module R_SRAM(output WL_out, SL_out, o1, ML, input WL_in, b, SL_in, i1, Matchbit);
wire s1, s2, s3, s4, s5, s6; //Spare wire
wire w1, w2, w3, w4, w5, w6; //Imp wire

// Fredkin_gate(output P, Q, R,input A, B, C);
Fredkin_gate (WL_out, s1, w1, WL_in, w2, b);

//Feynman_gate(output P, Q, input A, B);
Feynman_gate (w2, w3, w1, 0);

Feynman_gate (SL_out, w4, SL_in, w3);

Feynman_gate (s2, w5, w4, 1);

Fredkin_gate (s3, s4, w6, Matchbit, w5, 1);

//Peres_gate(output P, Q, R, input A, B, C);
Peres_gate (s5, s6, ML, w6, i1, 0);

endmodule
