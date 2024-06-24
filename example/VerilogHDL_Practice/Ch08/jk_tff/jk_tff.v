// Ch08 jk_tff.v
// JK �����Ͼ��P T �����Ͼ�

module jk_tff (Clk,T,J,K,Clr,Qjk,Qt);
input  Clk,T,J,K,Clr;	// �@�줸��J
output Qjk,Qt;		// �@�줸��X 
reg    Qjk,Qt;		// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, JK �����Ͼ�
always@ (posedge Clk) 
  if (Clr)                   Qjk = 0;
  else if ({J,K} == 2'b00)   Qjk = Qjk;
  else if ({J,K} == 2'b01)   Qjk = 0;
  else if ({J,K} == 2'b10)   Qjk = 1;
  else                       Qjk = ~ Qjk;

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, T �����Ͼ�
always@ (posedge Clk) 
  if (Clr)         Qt = 0;
  else if (T == 1) Qt = ~ Qt;
  else             Qt = Qt;

endmodule


