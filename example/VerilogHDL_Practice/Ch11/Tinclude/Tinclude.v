// Ch11 Tinclude.v
// ���W /10 ��٤�i

// �N div10.v �t�A�i��
`include "div10.v"

module Tinclude (Clk_i,Clr,Clk_o,Q);
input  Clk_i,Clr;	// �@�줸��J
output Clk_o;		// �@�줸��X
output [3:0] Q;		// �|�줸��X
reg    Clk_o;		// �ŧi���Ȧs�����
reg    [3:0] Q; 	// �ŧi���Ȧs�����

// MOD-10 (BCD) ���W, �I�s div10 ����
div10 div_0 (Clk_i, Clr, Q);

// �Φ���٤�i
always@ (Q)
  if (Q <= 4)  Clk_o  = 0;
  else         Clk_o  = 1;
  
endmodule
