// Ch08 cnt1.v
// �W�ƻP�U�ƭp�ƾ�

module cnt1 (Clk,Clr,Q1,Q2);
input  Clk,Clr;		// �@�줸��J
output [3:0] Q1,Q2;	// �|�줸��X 
reg    [3:0] Q1,Q2;	// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, �W�ƭp�ƾ�
always@ (posedge Clk) 
  if (Clr)  Q1 = 0;
  else 	    Q1 = Q1 + 1;

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, ��G�U�ƭp�ƾ�
always@ (posedge Clk) 
  if (Clr)  Q2 = 15;
  else 	    Q2 = Q2 - 2;

endmodule