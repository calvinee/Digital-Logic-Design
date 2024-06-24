// Ch08 dff_1.v
// D �����Ͼ��P����H��

module dff_1 (Clk,D,Din,Clr1,Clr2,Pre,Load,Q1,Q2,Q3,Q4);
input  Clk,D,Din,Clr1,Clr2,Pre,Load;	// �@�줸��J
output Q1,Q2,Q3,Q4;			// �@�줸��X 
reg    Q1,Q2,Q3,Q4;			// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��
always@ (posedge Clk)	// �P�B�M��, �L���C�X
  if (Clr1)   Q1 = 0;	// �W�tĲ�o, Clr1
  else 	      Q1 = D;

// �W�tĲ�o�ɯ�, �W�t�D�P�B�M��
always@ (posedge Clk or posedge Clr2)  // �D�P�B�M��, �����C�X
  if (Clr2)   Q2 = 0;	// �W�tĲ�o, Clr2
  else        Q2 = D;

// �U�tĲ�o�ɯ�, �U�t�D�P�B�w�m
always@ (negedge Clk or negedge Pre)  // �D�P�B�w�m, �����C�X
  if (!Pre)   Q3 = 1;	// �U�tĲ�o, !Pre
  else        Q3 = D;

// �U�tĲ�o�ɯ�, �U�t�P�B���J
always@ (negedge Clk)   // �P�B���J, �L���C�X
  if (!Load)  Q4 = Din;	// �U�tĲ�o, !Load
  else	      Q4 = D;

endmodule


