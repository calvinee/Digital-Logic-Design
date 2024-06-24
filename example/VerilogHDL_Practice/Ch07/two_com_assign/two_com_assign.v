// Ch07 two_com_assign.v
// 2's �ɼ� (assign �ԭz)

module two_com_assign (I, O);
input  [3:0] I;		// I �|�줸��J
output [3:0] O;		// O �|�줸��X

// assign �ԭz
assign O[0] = I[0];
assign O[1] = I[1] ^ I[0];
assign O[2] = I[2] ^ (I[1] | I[0]);
assign O[3] = I[3] ^ (I[2] | I[1] | I[0]);

endmodule
