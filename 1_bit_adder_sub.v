`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 18:29:01
// Design Name: 
// Module Name: 1_bit_adder_sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module one_bit_adder_sub(
    input A,
    input B,
    input Cin, // M=0->addition, M=1-> Subtraction
    output S,
    output Cout
    );
    wire B_1=B^Cin;
    assign S=A^B_1^Cin;
    assign Cout=((A^B_1)&Cin)|A&B;
endmodule
