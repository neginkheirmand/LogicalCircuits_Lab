`timescale 1 ns/1 ns

module comparator8 (
input [7:0] A ,
input [7:0] B ,
input l ,
input e ,
input g ,
output lt ,
output eq ,
output gt
);

wire [2:0] C1;
wire [2:0] C2;
assign C1={0,A[7],A[6]};
assign C2={0,B[7],B[6]};
wire l1,l2,e1;
comparator3 com3_1(A[2:0], B[2:0], l, e, q, l1, e1, g1);
wire e2,g1,g2;
comparator3 com3_2(A[5:3], B[5:3], l1, e1, g1, l2, e2, g2);
comparator3 com3_3(C1, C2, l2, e2, g2, lt, eq, gt);



endmodule