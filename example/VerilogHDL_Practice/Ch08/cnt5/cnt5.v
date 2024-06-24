// Ch08 cnt5.v
// ���έp�ƾ�

module cnt5 (Clk,Clr,Q1,Q2);
input  Clk,Clr;		// �@�줸��J
output [3:0]  Q1,Q2;	// �|�줸��X
reg    [3:0]  Q1,Q2;	// �ŧi���Ȧs�����

// ���ͭp�ƭ�
always@ (posedge Clk)
  if (Clr)
    begin
      Q1 = 4'b1000;		// Q1 ���
      Q2 = 4'b1000;		// Q2 ���
    end
  else
    begin
      Q1 = { Q1[0],Q1[3:1]};	// �`���k����
      Q2 = {~Q2[0],Q2[3:1]};	// �`���k����(�Ϭ�)
   end 

endmodule


