// Ch10 mod6.v
// mod-6 �p�ƾ�

module mod6 (Clk_i, Clr, Q, Clk_o);
input  Clk_i,Clr;		// �@�줸��J
output [3:0] Q;			// �|�줸��X
output Clk_o;			// �@�줸��X
reg    [3:0] Q;			// �ŧi���Ȧs�����

// �� 6 (0 ~ 5)
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Q == 5)		// �� 6
    Q = 0;
  else 
    Q = Q + 1;
assign Clk_o = ~(~Q[3] & Q[2] & ~Q[1] & Q[0]);	// = 5 ��

endmodule
