`timescale 1 ns/1 ns

module comparator3 (
	input [2:0] A ,
	input [2:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output eq ,
	output gt
);

	//EQ

	wire[2:0] xnorOut;
	xnor xnor0(xnorOut[0], A[0], B[0]);
	xnor xnor1(xnorOut[1], A[1], B[1]);
	xnor xnor2(xnorOut[2], A[2], B[2]);
	
	wire eqThisDigit;
	and andOut(eqThisDigit , xnorOut[0], xnorOut[1], xnorOut[2]);
	and andThisDigit(eq, eqThisDigit, e);
	
	//GT
	wire[2:0] GTtransport;
	wire [2:0] notB;
	wire [1:0] xnorTransport;
	
	wire greaterBefore;
	and g1(greaterBefore, g, eqThisDigit);
	//
	not notB2(notB[2], B[2]);
	and firstAnd(GTtransport[2], A[2], notB[2]);
	//
	xnor firstXnor(xnorTransport[1], A[2], B[2]);
	not notB1(notB[1], B[1]);
	and secondAnd(GTtransport[1], A[1], notB[1], xnorTransport[1]);
	//
	xnor secondXnor(xnorTransport[0], A[1], B[1]);
	not notB0(notB[0], B[0]);
	and thirdAnd(GTtransport[0], A[0], notB[0], xnorTransport[1], xnorTransport[0]);
		// the or gate
	or outputGT(gt, GTtransport[0], GTtransport[1], GTtransport[2], greaterBefore);


	//LT
	nor ltOuput(lt, eq, gt);



endmodule