`timescale 1ns / 1ps
module OneBitMUX(w3,w2,w1,w0,sel,y
    );
	 input w3,w2,w1,w0 ;
	 input [1:0] sel;
	 output y;
	 reg y;
	 always @ (w3 or w2 or w1 or w0 or sel)
	 case (sel)
		2'b00 : y=w0;
		2'b01 : y=w1;
		2'b10 : y=w2;
		2'b11 : y=w3;
		endcase


endmodule