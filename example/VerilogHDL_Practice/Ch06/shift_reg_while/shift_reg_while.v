// Ch06 shift_reg_while.v
// �|�줸����Ȧs�� (while �ԭz)

module shift_reg_while (Clk, D, Q);
input  Clk, D;   	// Clk, D �@�줸��J
output [3:0] Q;		// Q �|�줸��X
reg    [3:0] Q;		// �ŧi Q ���Ȧs�����
integer i;		// �ŧi�j���ܼ� i ����Ƹ��

// �ϥ� while �ԭz
always@ (posedge Clk)
  begin
    i = 3;			// �j����
    while (i > 0)		// ����P�_��
      begin
        Q[i] = Q[i-1];		// �����줸����
        i = i - 1; 		// �j���ܲ��q
      end
    Q[0] = D;
  end

endmodule
