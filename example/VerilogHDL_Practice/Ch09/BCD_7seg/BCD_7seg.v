// Ch09 BCD_7seg.v
// BCD �W�ƭp�ƾ��H�C�q���

module BCD_7seg (Clk,Clr,Q,A,B,C,D,E,F,G);
input  Clk,Clr;		// �@�줸��J
output A,B,C,D,E,F,G;	// �@�줸��X
output [3:0] Q;		// �|�줸��X
wire   [3:0] Q;         // �ŧi���s�u���

// �I�s�Ҳը���, �̶���
BCD BCD1 (Clk,Clr,Q);
 	// BCD.v ����X�J�𶶧� (Clk,Clr,Cnt)
seg seg1 (Q,A,B,C,D,E,F,G);
  	// seg.v ����X�J�𶶧� (Di,A,B,C,D,E,F,G)



endmodule
