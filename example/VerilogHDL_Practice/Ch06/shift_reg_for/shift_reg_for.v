// Ch06 shift_reg_for.v
// �|�줸����Ȧs�� (for �ԭz)

module shift_reg_for (Clk, D, Q1, Q2);
input  Clk, D;   		// Clk, D �@�줸��J
output [3:0] Q1,Q2;		// Q1, Q2 �|�줸��X
reg    [3:0] Q1,Q2;		// �ŧi���Ȧs�����
integer i; 			// �ŧi�j���ܼ� i ����Ƹ��

// �ϥ� for �ԭz, �D���j�ʫ��w�ԭz
always@ (posedge Clk)
  begin
    for (i = 3; i > 0; i = i-1)
      Q1[i] = Q1[i-1];		// �����줸����
    Q1[0] = D;
  end
  
// �ϥ� for �ԭz, ���j�ʫ��w�ԭz
always@ (posedge Clk)
  begin
    for (i = 1; i <= 3; i = i+1)
      Q2[i] <= Q2[i-1];		// �����줸����
    Q2[0] = D;
  end

endmodule
