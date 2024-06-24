// Ch08 freq_div.v
// ���W�q��

module freq_div (Clk,Clr,Q1,Q2,Q3);
input  Clk,Clr;		// �@�줸��J
output [3:0] Q1,Q2;	// �|�줸��X
output Q3;		// �@�줸��X
reg    [3:0] Q1,Q2;	// �ŧi���Ȧs�����
reg     Q3;		// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, ���W (2������)
always@ (posedge Clk) 
  if (Clr)    Q1 = 0;
  else 	      Q1 = Q1 + 1;

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, ���W (��6,�����)
always@ (posedge Clk) 
  if (Clr)           Q2 = 0;
  else if (Q2 == 5)  Q2 = 0;
  else 	             Q2 = Q2 + 1;

// ���W (��6,���), �զX�޿�q��
always@ (Q2) 
  if (Q2 <= 2)  Q3 = 1;		// Q2 �� 0, 1, 2 ��
  else 	        Q3 = 0; 	// Q2 �� 3, 4, 5 ��

endmodule
