`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 21:00:28
// Design Name: 
// Module Name: four_bit_adder_subtractor_tb
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


module four_bit_adder_subtractor_tb(
);
    reg [3:0]A;
    reg [3:0]B;
    reg Cin;
    wire [3:0]S;
    wire Cout;
    wire V;
    
    four_bit_Adder_Subtractor t1(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout),.V(V));
    
    initial begin
        A=4'b0;B=4'b0;Cin=4'b0;
        #5 A=4'b1010;B=4'b1110;Cin=1'b0;
        #5 A=4'b1011;B=4'b1110;Cin=1'b1;
        #5 A=4'b1111;B=4'b1111;Cin=1'b1;
        #5 A=4'b1101;B=4'b1001;Cin=1'b1;
        #5 A=4'b0000;B=4'b1110;Cin=1'b1;
        #5 A=4'b0010;B=4'b0110;Cin=1'b0;
        $stop;
    end
endmodule
