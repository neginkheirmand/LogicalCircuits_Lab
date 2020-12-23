`timescale 1ns / 1ps
module FourBitMUX(w3,w2,w1,w0,sel,y
    );
	 input[3:0]  w3,w2,w1,w0 ;
	 input [1:0] sel;
	 output[3:0]  y;
	 OneBitMUX m1(.w3(w3[0]),.w2(w2[0]),.w1(w1[0]),.w0(w0[0]), .sel(sel), .y(y[0]) );
	 OneBitMUX m2(.w3(w3[1]),.w2(w2[1]),.w1(w1[1]),.w0(w0[1]), .sel(sel), .y(y[1]) );
	 OneBitMUX m3(.w3(w3[2]),.w2(w2[2]),.w1(w1[2]),.w0(w0[2]), .sel(sel), .y(y[2]) );
	 OneBitMUX m4(.w3(w3[3]),.w2(w2[3]),.w1(w1[3]),.w0(w0[3]), .sel(sel), .y(y[3]) );
endmodule

