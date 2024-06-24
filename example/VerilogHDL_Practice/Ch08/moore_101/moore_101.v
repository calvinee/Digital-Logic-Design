// Ch08 moore_101.v
// ���ժ��A���� (101�r�ǰ�����)

module moore_101 (Clk, Clr, D, Q, Cs);
input  Clk, Clr, D;		// �@�줸��J
output Q;			// �@�줸��X 
output [1:0] Cs;		// �G�줸��X
reg    Q;			// �ŧi���Ȧs�����
reg    [1:0] Cs;		// �ŧi���Ȧs�����
parameter [1:0]			// �ŧi���A�Ѽ�,�G�i��s�X
  S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

// �W�tĲ�o�ɯ�,�W�t�P�B�M��, �ǦV�޿�q��
always@ (posedge Clk)
  if (Clr) 			// �������_�l���A
    begin
      Cs = S0;      Q = 0;
    end 
  else 
    case (Cs)
      S0 : if (D == 0)
             Cs = S0;
           else
             Cs = S1;
      S1 : if (D == 0)
             Cs = S2;
           else
             Cs = S1;
      S2 : if (D == 0)
             Cs = S0;
           else
             begin
               Q = 1;    Cs = S3;
             end
      S3 : begin
             Q = 0;
             if (D == 0)
               Cs = S2;
             else
               Cs = S1;
           end
    endcase

endmodule
