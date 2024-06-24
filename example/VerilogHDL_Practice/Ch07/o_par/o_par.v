// Ch07  o_par.v
// �_�P�줸���͹q�� (�ϥ� for �ԭz�κ�²�޿�B��l)

module o_par (D, O_parity1, O_parity2);
input  [3:0] D;			// �|�줸��J
output O_parity1, O_parity2;	// �@�줸��X
reg    O_parity1;		// �ŧi���Ȧs�����
integer i; 			// �ŧi����Ƹ��

// �ϥ� for �ԭz
always@ (D)
  begin
    O_parity1 = D[0];
    for (i = 1; i <= 3; i = i+1)
      O_parity1  = O_parity1  ~^ D[i];
  end

// �ϥκ�²�޿�B��l
assign O_parity2  = ~^ D;

endmodule 