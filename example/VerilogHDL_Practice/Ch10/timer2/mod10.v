// Ch10 mod10.v
// mod-10 (BCD) �p�ƾ�

module mod10 (Clk_i, Clr, Q, Clk_o);
input  Clk_i,Clr;		// �@�줸��J
output [3:0] Q;			// �|�줸��X
output Clk_o;			// �@�줸��X
reg    [3:0] Q;			// �ŧi���Ȧs�����

// �� 10 (0 ~ 9)
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Q == 9)		// �� 10
    Q = 0;
  else 
    Q = Q + 1;
assign Clk_o = ~(Q[3] & ~Q[2] & ~Q[1] & Q[0]);	// = 9 ��

endmodule
