// Ch10 BCD.v
// BCD (mod-10) �p�ƾ�

module BCD (Clk_i, Clr, Cnt, Clk_o);
input  Clk_i,Clr;		// �@�줸��J
output [3:0] Cnt;		// �|�줸��X
output Clk_o;			// �@�줸��X
reg    [3:0] Cnt;		// �ŧi���Ȧs�����

// �� 10  (0 ~ 9)
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Cnt == 9)			// �� 10
    Cnt = 0;
  else 
    Cnt = Cnt + 1;
assign Clk_o = ~(Cnt[3] & ~Cnt[2] & ~Cnt[1] & Cnt[0]); // = 9 ��

endmodule
