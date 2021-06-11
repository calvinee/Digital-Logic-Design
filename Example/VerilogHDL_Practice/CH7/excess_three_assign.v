module excess_three_assign (i, o);
input [2:0] i;
output [2:0] o;

assign o[2] = (i[2] & ~i[1] & ~i[0]) | (~i[2] & i[0]) | (~i[2] & i[1]);
assign o[1] = (~i[1] & ~i[0]) | (i[1] & i[0]);
assign o[0] = ~i[0];

endmodule // excess_three_assign
