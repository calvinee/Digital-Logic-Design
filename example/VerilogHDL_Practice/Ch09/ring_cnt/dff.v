// Ch09 dff.v
// D �����Ͼ�

module dff (Ck, Clr, D, Q);
input  Ck, Clr, D;	// �@�줸��J
output Q;		// �@�줸��X
reg    Q;		// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��
always@ (posedge Ck) 
  if (Clr)
    Q = 0;
  else	
    Q = D;
 
endmodule

