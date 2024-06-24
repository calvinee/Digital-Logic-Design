// Ch08 d_latch_ff.v
// D �����꾹�P���Ͼ�

module d_latch_ff(Clk, D, Q_l, Q_ff);
input  Clk;		// �@�줸��J
input  [3:0] D;		// �|�줸��J
output [3:0] Q_l,Q_ff;	// �|�줸��X 
reg    [3:0] Q_l,Q_ff;	// �ŧi���Ȧs�����

// D �����꾹, ���Ǧ�Ĳ�o
always@ (Clk or D)	// �� Clk �� D �H�����ܮɡA����H�U�ԭz
  if (Clk)   Q_l = D;	// �� Clk �����Ǧ�ɡAD ���Ȧs�J Q_l ��

// D �����Ͼ�, �W�tĲ�o
always@ (posedge Clk)	// �� Clk �W�tĲ�o�ɡA����H�U�ԭz	
  Q_ff = D;		// D ���Ȧs�J Q_ff ��

endmodule

