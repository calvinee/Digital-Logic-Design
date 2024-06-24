// Ch10 BCD999_1.v
// ���� 0 ~ 999 �p�ƭ�

module BCD999_1 (Clk,Clr,Q);
input  Clk,Clr;		// �@�줸��J
output [11:0] Q;	// �Q�G�줸��X
reg    [11:0] Q;	// �ŧi���Ȧs�����

// ���ͭp�ƭ�
always@(posedge Clk)
  if (Clr || Q == 12'h999)	// ���� 999 	
    Q = 0;			// �����k�s
  else
    if (Q[7:0] == 8'h99)	// 99,199...899
      begin
        Q[11:8] = Q[11:8]+1;	// �ʦ�ƥ[�@
        Q[7:0]=0;		// �Q��ƻP�Ӧ���k�s
      end
    else
      if (Q[3:0] == 4'h9)	// 9,19...89
        begin
          Q[7:4] = Q[7:4]+1;	// �Q��ƥ[�@
          Q[3:0]=0;		// �Ӧ���k�s
        end
      else
        Q[3:0] = Q[3:0]+1;	// �Ӧ�ƥ[�@

endmodule
