`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:57 09/13/2020 
// Design Name: 
// Module Name:    Fredkin_gate 
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
module Fredkin_gate(output P, Q, R,input A, B, C);
//assign P=A;
//assign Q=(~A)*B+A*C;
//assign R=(~A)*C+A*B;
wire Abar, o1, o2, o3, o4;
not (Abar, A);
buf (P, A);
and (o1, A, C);
and (o2, Abar, B);
or (Q, o1, o2);
and (o3, A, B);
and (o4, Abar, C);
or (R, o3, o4);
endmodule
