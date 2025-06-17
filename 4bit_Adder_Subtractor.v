`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 18:44:09
// Design Name: 
// Module Name: fout_bit_Adder_Subtractor
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


module four_bit_Adder_Subtractor(
    input [3:0]A,
    input [3:0]B,
    input Cin, // M=0->addition, M=1-> Subtraction
    output [3:0]S,
    output Cout,
    output V // V=1 denptes 
    );
    wire Cout1,Cout2,Cout3;
    one_bit_adder_sub a1(.A(A[0]),.B(B[0]),.Cin(Cin),.S(S[0]),.Cout(Cout1));
    one_bit_adder_sub a2(.A(A[1]),.B(B[1]),.Cin(Cout1),.S(S[1]),.Cout(Cout2));
    one_bit_adder_sub a3(.A(A[2]),.B(B[2]),.Cin(Cout2),.S(S[2]),.Cout(Cout3));
    one_bit_adder_sub a4(.A(A[3]),.B(B[3]),.Cin(Cout3),.S(S[3]),.Cout(Cout));
    assign V=Cout3^Cout;
endmodule
