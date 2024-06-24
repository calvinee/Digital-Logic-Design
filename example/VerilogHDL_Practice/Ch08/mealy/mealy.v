// Ch08 mealy.v
// �̧Q���A���� (101 �r�ǰ�����)

module mealy (Clk, Clr, D, Q, Cs);
input  Clk, Clr, D;		// �@�줸��J
output Q;			// �@�줸��X 
output [1:0] Cs;		// �G�줸��X
reg    Q;			// �ŧi���Ȧs�����
reg    [1:0] Cs, Ns;		// �ŧi���Ȧs�����
parameter [1:0]			// �ŧi���A�Ѽ�, Gray �s�X
 S0=2'b00, S1=2'b01, S2=2'b11;

// �W�tĲ�o�ɯ�,�W�t�P�B�M��, �ǦV�޿�q��
always@ (posedge Clk)
  if (Clr) Cs = S0;		// �������_�l���A
  else     Cs = Ns;		// ���������@���A

// �M�w���@���A Ns �P��X Q, �զX�޿�q��
always @ (Cs or D)
  case (Cs)
    S0 : if (D == 0)
  	   begin  Ns = S0;  Q = 0;  end
         else
	   begin  Ns = S1;  Q = 0;  end
    S1 : if (D == 0)
	   begin  Ns = S2;  Q = 0;  end
         else
	   begin  Ns = S1;  Q = 0;  end
    S2 : if (D == 0)
	   begin  Ns = S0;  Q = 0;  end
         else
	   begin  Ns = S1;  Q = 1;  end
  endcase

endmodule
