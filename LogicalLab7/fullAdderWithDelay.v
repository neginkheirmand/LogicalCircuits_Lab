`timescale 1 ns/1 ns

module fullAdderWithDelay(
	input a ,
	input b ,
	input cin,
	input sel ,
	output sum ,
	output cout
	);
	
	wire bAfterSelect;
	xor #10 xorIC(bAfterSelect, b, sel); 
	wire wab0, waci, wbci0;
	xor #10 (sum, a, bAfterSelect, cin);
	and #5 (wab0, a, bAfterSelect);
	and #5 (waci, a, cin);
	and #5 (wbci0, bAfterSelect, cin);
	or #5 (cout, wab0, waci, wbci0);
endmodule
