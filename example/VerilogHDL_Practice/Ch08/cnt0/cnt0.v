// Ch08 cnt0.v
// �T�줸�G�i��W�ƭp�ƾ�

module cnt0 (Clk, Pre, D);
input  Clk, Pre;	// �@�줸��J
output [2:0] D;	// �T�줸��X 
reg    [2:0] D;	// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�ƭp�ƾ�
always@ (posedge Clk or negedge Pre)  // �D�P�B�w�m, �����C�X
  if (!Pre)			// Pre �� 0 �ɡA�w�m�p�ƭȬ� 111
    D = 3'b111;
  else
    D = D + 1;		// �p�ƭȥ[�@

endmodule
