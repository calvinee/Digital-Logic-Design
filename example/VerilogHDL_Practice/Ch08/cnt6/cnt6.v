// Ch08 cnt6.v
// �T�줸���i�p�ƾ�

module cnt6 (Clk,Clr,Q);
input  Clk,Clr;		// �@�줸��J
output [2:0] Q;		// �T�줸��X
reg    [2:0] Q;		// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, T �����Ͼ�
always@ (posedge Clk or posedge Clr) 	// �ɯ߬��W�tĲ�o Clk
  if (Clr)        Q[0] = 0;
  else            Q[0] = ~Q[0];

always@ (negedge Q[0] or posedge Clr) 	// �ɯ߬��U�tĲ�o Q[0]
  if (Clr)        Q[1] = 0;
  else            Q[1] = ~Q[1];

always@ (negedge Q[1] or posedge Clr) 	// �ɯ߬��U�tĲ�o Q[1]
  if (Clr)        Q[2] = 0;
  else            Q[2] = ~Q[2];


  
endmodule
