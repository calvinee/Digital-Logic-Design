// Ch10 div10.v
// ���W /10

module div10 (Clk_i,Clr,Clk_o);
input  Clk_i,Clr;	// �@�줸��J
output Clk_o;		// �@�줸��X
reg    Clk_o;		// �ŧi���Ȧs�����
reg    [3:0] Q; 	// �ŧi���Ȧs�����

// MOD-10 (BCD) ���W
always@ (posedge Clk_i or posedge Clr)
  if (Clr || Q == 9)  Q = 0;
  else                Q = Q + 1;

// �Φ���٤�i
always@ (Q)
  if (Q <= 4)  Clk_o  = 0;
  else         Clk_o  = 1;
  
endmodule
