// Ch08 pili_1.v
// �C�q����R�E�O

module pili_1 (Clk,Clr,A,B,C,D,E,F);
input  Clk,Clr;			// �@�줸��J
output A,B,C,D,E,F;		// �@�줸��X
reg    [6:0] L;			// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��
always@ (posedge Clk) 
  if (Clr)		 	L = 7'b1000000;  // A, ���ɰw
  else if (L == 7'b1000000) 	L = 7'b0100000;  // B, ���ɰw
  else if (L == 7'b0100000) 	L = 7'b0010000;  // C, ���ɰw
  else if (L == 7'b0010000) 	L = 7'b0001000;  // D, ���ɰw
  else if (L == 7'b0001000) 	L = 7'b0000100;  // E, ���ɰw
  else if (L == 7'b0000100) 	L = 7'b0000010;  // F, ���ɰw
  else if (L == 7'b0000010) 	L = 7'b1000001;  // A, �f�ɰw
  else if (L == 7'b1000001) 	L = 7'b0000011;  // F, �f�ɰw
  else if (L == 7'b0000011)	L = 7'b0000101;  // E, �f�ɰw
  else if (L == 7'b0000101)	L = 7'b0001001;  // D, �f�ɰw
  else if (L == 7'b0001001)	L = 7'b0010001;  // C, �f�ɰw
  else if (L == 7'b0010001)	L = 7'b0100001;  // B, �f�ɰw
  else if (L == 7'b0100001) 	L = 7'b1000000;  // A, ���ɰw
  else	                 	L = 7'b0000000;  // �����
assign {A,B,C,D,E,F} = L[6:1];

endmodule
