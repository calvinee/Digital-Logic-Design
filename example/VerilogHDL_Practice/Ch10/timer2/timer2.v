// Ch10 timer2.v
// �p�ɾ�, ���� 0:0:0 ~ 23:59:59 �p�ɭ�

module timer2 (Clk10M, Clr, H, M, S);
input  Clk10M,Clr;			// �@�줸��J
output [7:0] H,M,S;			// �K�줸��X
reg    [7:0] H,M,S;			// �ŧi���Ȧs�����
reg    [23:0] Q;			// �ŧi���Ȧs�����
reg    Clk1;				// �ŧi���Ȧs�����
wire   Clk2,Clk3,Clk4,Clk5;		// �ŧi���s�u���

// ���W�o 1 Hz
always@ (posedge Clk10M)
  begin
    if (Clr || Q == 9999999)		// �� 10M
      Q = 0;
    else 
      Q = Q + 1;
    Clk1 = Q[23];			// Clk1 = 1 Hz
  end
 
// �I�s�U�Ҳը���
mod10 mod10_1 (Clk1,Clr,S[3:0],Clk2);
mod6  mod6_1  (Clk2,Clr,S[7:4],Clk3);
mod10 mod10_2 (Clk3,Clr,M[3:0],Clk4);
mod6  mod6_2  (Clk4,Clr,M[7:4],Clk5);
mod24 mod24   (Clk5,Clr,H[7:0]);

endmodule
