// Ch07 tri_gate.v
// �T�A�w�Ĺh

module tri_gate (I,C,O1,O2,O3);
input  I,C;			// �@�줸��J
output O1,O2,O3;		// �@�줸��X 
reg    O3;			// �ŧi���Ȧs�����

// �ϥ��޿�h�h���ԭz
bufif1 (O1, I, C); 

// �ϥ� assign �ԭz
assign O2 = C ? I : 1'bz;

// �ϥ� if �ԭz
always@ (C or I)
  if (C == 1)	O3 = I;
  else		O3 = 1'bz;

endmodule
