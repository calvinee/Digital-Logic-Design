// Ch08 moore_111.v
// ���ժ��A���� (111�r�ǰ�����)

module moore_111 (Clk, Clr, D, Q, Cs, Cnt);
input  Clk, Clr, D;		// �@�줸��J
output Q;			// �@�줸��X 
output [1:0] Cs,Cnt;		// �G�줸��X
reg    Q;			// �ŧi���Ȧs�����
reg    [1:0] Cs, Cnt;		// �ŧi���Ȧs�����
parameter S0 = 0, S1 = 1;	// �ŧi���A�Ѽ�
 
// �W�tĲ�o�ɯ�, �W�t�P�B�M��, �ǦV�޿�q��
always@ (posedge Clk)
  if (Clr)
    begin  Cs = S0; Q = 0;  end		// �������_�l���A
  else   
    case (Cs)
      S0 : if (D == 0)
             begin
               Q = 0;
               Cnt = 0;
               Cs  = S0;
             end
           else
             begin 
               Q = 0;
               Cnt = 1;
               Cs  = S1;
             end
      S1 : if (D == 0) 			// �� 0, �k�� S0
             begin
               Cs = S0;
               Q = 0;     
             end
           else    			// �� D == 1
             begin
               Cs = S1;
               if (Cnt == 2) 		// �s�� 1 �w�F�T��
                 begin
                   Cnt = 2;
                   Q = 1;
                 end 
               else			// �s��1 ���F�T��
                 Cnt = Cnt + 1; 
             end
    endcase

endmodule
