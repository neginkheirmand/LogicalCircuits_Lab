`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:22:55 11/15/2020 
// Design Name: 
// Module Name:    SOPimplementationOfXNOR 
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
module SOPimplementationOfXNOR(A, B, C, f);
	input A,B,C;
	output f;
	wire notA, notB, notC;
	not nota(notA, A);
	not notb(notB, B);
	not notc(notC, C);
	wire Wm0, Wm3, Wm5, Wm6;
	and m0(Wm0, notA, notB, notC);
	and m3(Wm3, notA, B, C);
	and m5(Wm5, A, notB, C);
	and m6(Wm6, A, B, notC);
	or(f, m0, m3, m5, m6);
	

endmodule
