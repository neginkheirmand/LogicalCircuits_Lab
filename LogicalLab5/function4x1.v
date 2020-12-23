`timescale 1 ns/1 ns

module function4x1 (
	input a ,
	input b ,
	input c ,
	input d ,
	output f
);

	wire [3:0] in;
	assign in[0]=a;
	assign in[1]=b;
	assign  in[2]=c;
	assign  in[3]=d;
	wire [15:0] dout;
	Decoder4to16 decoder(in, 1'b1, dout);
	or result(f, dout[2], dout[3],  dout[5], dout[7], dout[11], dout[13]); 

endmodule
