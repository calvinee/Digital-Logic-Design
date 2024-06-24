// Ch10 timer1.v
// �p�ɾ�, ���� 0:0:0 ~ 23:59:59 �p�ɭ�

module timer1 (Clk10M, Clr, H, M, S);
input  Clk10M,Clr;	// �@�줸��J
output [7:0] H,M,S;	// �K�줸��X
reg    [7:0] H,M,S;	// �ŧi���Ȧs�����
reg    [23:0] Q;	// �ŧi���Ȧs�����
reg    Clk1;		// �ŧi���Ȧs�����

// ���W�o 1Hz
always@ (posedge Clk10M)
  begin
    if (Clr || Q == 9999999)		// �� 10M
      Q = 0;
    else 
      Q = Q + 1;
    Clk1 = Q[23];
  end 

// ���ͭp�ɭ�
always@(posedge Clk1)			// �ɯ߬� 1 Hz
  if (Clr)				// �����k�s
    begin  H = 0;  M = 0;  S = 0;  end
  else if ({H,M,S} == 24'h235959)	// ���� 23:59:59
    {H,M,S} = 0;
  else if ({H[3:0],M,S} == 20'h95959)	// ���� X9:59:59
    begin
      H[7:4] = H[7:4] + 1;
      H[3:0] = 0;
      M = 0;  S = 0;
    end
  else if ({M,S} == 16'h5959)		// ���� XX:59:59
    begin
      H[3:0] = H[3:0] + 1;
      M = 0;  S = 0;
    end
  else if ({M[3:0],S} == 12'h959)	// ���� XX:X9:59
    begin
      M[7:4] = M[7:4] + 1;
      M[3:0] = 0;
      S = 0;
    end
  else if (S == 8'h59)			// ���� XX:XX:59
    begin
      M[3:0] = M[3:0] + 1;
      S = 0;
    end
  else if (S[3:0] == 4'h9)		// ���� XX:XX:X9
    begin
      S[7:4] = S[7:4] + 1;
      S[3:0] = 0;
    end
  else 					
    S[3:0] = S[3:0] + 1;

endmodule
