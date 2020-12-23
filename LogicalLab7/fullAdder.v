`timescale 1 ns/1 ns

module fullAdder(
	input a ,
	input b ,
	input cin,
	input sel ,
	output sum ,
	output cout
	);
	
	wire bAfterSelect;
	xor xorIC(bAfterSelect, b, sel);
	wire wab0, waci, wbci0;
	xor (sum, a, bAfterSelect, cin);
	and (wab0, a, bAfterSelect);
	and (waci, a, cin);
	and (wbci0, bAfterSelect, cin);
	or (cout, wab0, waci, wbci0);
	

endmodule
