// Ch08 cnt3.v
// BCD �W�ƭp�ƾ��H�C�q���

module cnt3 (Clk,Clr,Q,A,B,C,D,E,F,G);
input  Clk,Clr;		// �@�줸��J
output [3:0] Q;		// �|�줸��X
output A,B,C,D,E,F,G;	// �@�줸��X
reg    [3:0] Q;		// �ŧi���Ȧs�����
reg    A,B,C,D,E,F,G;	// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, BCD�W�ƭp�ƾ�
always@ (posedge Clk) 
  if (Clr)        	Q = 0;
  else if (Q == 9)  	Q = 0;
  else	         	Q = Q + 1;

// �C�q���, �զX�޿�q��
always@ (Q) 
  if      (Q == 4'b0000)  {A,B,C,D,E,F,G} = 7'b1111110;
  else if (Q == 4'b0001)  {A,B,C,D,E,F,G} = 7'b0110000;
  else if (Q == 4'b0010)  {A,B,C,D,E,F,G} = 7'b1101101;
  else if (Q == 4'b0011)  {A,B,C,D,E,F,G} = 7'b1111001;
  else if (Q == 4'b0100)  {A,B,C,D,E,F,G} = 7'b0110011;
  else if (Q == 4'b0101)  {A,B,C,D,E,F,G} = 7'b1011011;
  else if (Q == 4'b0110)  {A,B,C,D,E,F,G} = 7'b0011111;
  else if (Q == 4'b0111)  {A,B,C,D,E,F,G} = 7'b1110000;
  else if (Q == 4'b1000)  {A,B,C,D,E,F,G} = 7'b1111111;
  else if (Q == 4'b1001)  {A,B,C,D,E,F,G} = 7'b1110011;
  else	                  {A,B,C,D,E,F,G} = 7'b0000000;
   
endmodule
