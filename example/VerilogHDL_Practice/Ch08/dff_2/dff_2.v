module dff_2 (Clk,D,Din,Clr,Pre,Load,Q);
input  Clk,D,Din,Clr,Pre,Load;	// �@�줸��J
output Q;			// �@�줸��X 
reg    Q;			// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�,   �W�t�D�P�B�M��
// �U�t�D�P�B�w�m, �U�t�P�B���J
always@ (posedge Clk or posedge Clr or negedge Pre) 
  if (Clr)         Q = 0;	// �̰��u���v
  else if (!Pre)   Q = 1; 	// �ĤG�u���v
  else if (!Load)  Q = Din; 	// �ĤT�u���v
  else             Q = D;

endmodule
