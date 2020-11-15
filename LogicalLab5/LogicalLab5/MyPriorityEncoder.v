`timescale 1ns / 1ps
module MyPriorityEncoder(D3, D2, D1, D0, A1, A0);	
	input D3, D2, D1, D0;
	output A1, A0;
	//A0
	or outputA1(A1, D3, D2);
	//A1
	wire notD2, andWire;
	not notD2Gate(notD2, D2);
	and andD1AndNotD2(andWire, notD2, D1);
	or outputA2(A0, D3, andWire);


endmodule
