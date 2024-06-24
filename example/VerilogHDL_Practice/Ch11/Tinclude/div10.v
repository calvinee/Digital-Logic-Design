// Ch10 div10.v
// ���W /10

module div10 (Clk_i,Clr,Q);
input  Clk_i,Clr;	// �@�줸��J
output [3:0] Q;		// �|�줸��X
reg    [3:0] Q; 	// �ŧi���Ȧs�����

// MOD-10 (BCD) ���W
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Q == 9)  Q = 0;
  else                Q = Q + 1;
  
endmodule
