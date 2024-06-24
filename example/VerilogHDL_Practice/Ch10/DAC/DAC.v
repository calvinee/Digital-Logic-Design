// Ch10 LCM.v
// �G����ܼҲ�

module DAC (Clk10K,Clr,Din,N_CS,N_WR,N_DACA);
input  Clk10K,Clr;		// �@�줸��J
input  [7:0] Din;		// �K�줸��J
output N_CS,N_WR,N_DACA;	// �@�줸��X
reg    [3:0] Cnt;		// �ŧi���Ȧs�����
reg    N_WR;			// �ŧi���Ȧs�����

// ���� N_WR �H��
always@ (posedge Clk10K)
  if (Clr || Cnt == 9)
    begin
      Cnt = 0;
      N_WR = 0;
    end
  else
    begin
      Cnt = Cnt + 1;
      N_WR = 1;
    end

// ���� N_CS, N_DACA �H��
assign N_CS   = 1;
assign N_DACA = 1;

endmodule  
