// Ch08 cnt2.v
// BCD �W�ƭp�ƾ��PBCD �_�ƤU�ƭp�ƾ�
// �˼ƭp�ƾ�

module cnt2 (Clk,Clr,Load,Q1,Q2,Q3);
input  Clk,Clr,Load;	// �@�줸��J
output [3:0] Q1,Q2,Q3;	// �|�줸��X 
reg    [3:0] Q1,Q2,Q3;	// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�D�P�B�M��, BCD�W�ƭp�ƾ�
always@ (posedge Clk or posedge Clr) 
  if (Clr)        	Q1 = 0;
  else if (Q1 == 9) 	Q1 = 0;
  else	          	Q1 = Q1 + 1;

// �U�tĲ�o�ɯ�, �W�t�P�B�M��, BCD �_�ƤU�ƭp�ƾ�
always@ (negedge Clk) 
  if (Clr)        	Q2 = 9;
  else if (Q2 == 1) 	Q2 = 9;
  else	          	Q2 = Q2 - 2;

// �W�tĲ�o�ɯ�, �U�t�P�B���J, �˼ƭp�ƾ�
always@ (posedge Clk) 
  if (!Load)      	Q3 = 10;
  else if (Q3 == 0) 	Q3 = 0;
  else	          	Q3 = Q3 - 1;

endmodule