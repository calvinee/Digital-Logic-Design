// Ch08 moore.v
// ���ժ��A���� (101�r�ǰ�����)

module moore (Clk, Clr, D, Q, Cs);
input  Clk, Clr, D;		// �@�줸��J
output Q;			// �@�줸��X 
output [1:0] Cs;		// �G�줸��X
reg    Q;			// �ŧi���Ȧs�����
reg    [1:0] Cs, Ns;		// �ŧi���Ȧs�����
parameter [1:0]			// �ŧi���A�Ѽ�,�G�i��s�X
 S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

// �W�tĲ�o�ɯ�,�W�t�P�B�M��, �ǦV�޿�q��
always@ (posedge Clk)
  if (Clr) Cs = S0;		// �������_�l���A
  else     Cs = Ns;		// ���������@���A

// �M�w���@���A Ns �P��X Q, �զX�޿�q��
always @ (Cs or D)
  case (Cs)
    S0 : begin
           Q = 0;
           if (D == 0)  Ns = S0;
           else       	Ns = S1;
         end
    S1 : begin
	   Q = 0;
	   if (D == 0)  Ns = S2;
           else	    	Ns = S1;
         end
    S2 : begin
           Q = 0;
           if (D == 0)  Ns = S0;
           else       	Ns = S3;
         end	         
    S3 : begin
           Q = 1;
           if (D == 0)	Ns = S2;
           else	    	Ns = S1;
         end
  endcase

endmodule
