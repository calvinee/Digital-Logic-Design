// Ch09 BCD.v
// BCD �W�ƭp�ƾ�

module BCD (Clk,Clr,Cnt);
input  Clk,Clr;		// �@�줸��J
output [3:0] Cnt;	// �|�줸��X
reg    [3:0] Cnt;	// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, BCD�W�ƭp�ƾ�
always@ (posedge Clk) 
  if (Clr)
    Cnt = 0;
  else if (Cnt == 9)
    Cnt = 0;
  else
    Cnt = Cnt + 1;
 
endmodule
