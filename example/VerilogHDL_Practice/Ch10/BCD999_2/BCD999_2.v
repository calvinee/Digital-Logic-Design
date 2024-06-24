// Ch10 BCD999_2.v
// ���� 0 ~ 999 �p�ƭ�

module BCD999_2 (Clk,Clr,Q);
input  Clk,Clr;		// �@�줸��J
output [11:0] Q;	// �Q�G�줸��X
wire   Clk1,Clk2,Clk3;  // �ŧi���s���u���

// ���ͭp�ƭ�
BCD BCD1 (Clk , Clr, Q[ 3:0], Clk1);
BCD BCD2 (Clk1, Clr, Q[ 7:4], Clk2);
BCD BCD3 (Clk2, Clr, Q[11:8], Clk3);

endmodule
