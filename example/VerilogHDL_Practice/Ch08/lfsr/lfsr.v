// Ch08 lfsr.v
// �u�ʦ^�²���Ȧs��

module lfsr (Clk,Clr,Q);
input  Clk,Clr;		// �@�줸��J
output [3:1] Q;		// �T�줸��X
reg    [3:1] Q;		// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�,�W�t�P�B�M��
always@ (posedge Clk) 
  if (Clr)
    Q = 3'b100;
  else
    Q = {Q[2:1],Q[1] ^ Q[3]};

endmodule
