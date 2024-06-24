// Ch09 seg.v
// �C�q���

module seg (Di,A,B,C,D,E,F,G);
input [3:0] Di;		// �|�줸��J
output A,B,C,D,E,F,G;	// �@�줸��X
reg    A,B,C,D,E,F,G;	// �ŧi���Ȧs�����

// �C�q���, �զX�޿�q��
always@ (Di) 
  if      (Di == 4'b0000)  {A,B,C,D,E,F,G} = 7'b1111110;
  else if (Di == 4'b0001)  {A,B,C,D,E,F,G} = 7'b0110000;
  else if (Di == 4'b0010)  {A,B,C,D,E,F,G} = 7'b1101101;
  else if (Di == 4'b0011)  {A,B,C,D,E,F,G} = 7'b1111001;
  else if (Di == 4'b0100)  {A,B,C,D,E,F,G} = 7'b0110011;
  else if (Di == 4'b0101)  {A,B,C,D,E,F,G} = 7'b1011011;
  else if (Di == 4'b0110)  {A,B,C,D,E,F,G} = 7'b0011111;
  else if (Di == 4'b0111)  {A,B,C,D,E,F,G} = 7'b1110000;
  else if (Di == 4'b1000)  {A,B,C,D,E,F,G} = 7'b1111111;
  else if (Di == 4'b1001)  {A,B,C,D,E,F,G} = 7'b1110011;
  else	                   {A,B,C,D,E,F,G} = 7'b0000000;
 
endmodule
