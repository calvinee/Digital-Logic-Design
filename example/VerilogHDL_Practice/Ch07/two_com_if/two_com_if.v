// Ch07 two_com_if.v
// 2's �ɼ� (�ϥ� if �d��)

module two_com_if (I, O);
input  [3:0] I;		// I �|�줸��J
output [3:0] O;		// O �|�줸��X
reg    [3:0] O;		// �ŧi O ���Ȧs�����

// �ϥ� if �ԭz
always@ (I)
  if      (I == 4'b0000)   O = 4'b0000; 	// �G�i��覡
  else if (I == 4'b0001)   O = 4'b1111;
  else if (I == 4'b0010)   O = 4'b1110;
  else if (I == 4'b0011)   O = 4'b1101;
  else if (I == 4'b0100)   O = 4'b1100; 
  else if (I == 4'b0101)   O = 4'b1011;
  else if (I == 4'b0110)   O = 4'b1010;
  else if (I == 4'b0111)   O = 4'b1001;
  else if (I == 4'b1000)   O = 4'b1000;
  else if (I == 4'b1001)   O = 4'b0111;
  else if (I == 4'b1010)   O = 4'b0110;
  else if (I == 4'b1011)   O = 4'b0101;
  else if (I == 4'b1100)   O = 4'b0100; 
  else if (I == 4'b1101)   O = 4'b0011;
  else if (I == 4'he)      O = 4'h2; 		// �Q���i��覡
  else                     O = 4'b0001;

endmodule
