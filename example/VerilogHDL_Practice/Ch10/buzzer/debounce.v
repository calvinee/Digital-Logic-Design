// Ch10 debounce.v
// �h�u���q��

module debounce (Clk,Ki,Ko);
input  Clk,Ki;		// �@�줸��J
output Ko;		// �@�줸��X
reg    Ko;		// �ŧi���Ȧs�����
reg    [2:0] Q;		// �ŧi���Ȧs�����

// �s����ˤT��
always@ (posedge Clk)
  begin
    Q[2] = Q[1]; 
    Q[1] = Q[0];
    Q[0] = Ki;
  end

// ���ͥh�u���H��
always@ (Q)
  if (Q == 3'b001)	// �e�t
    Ko = 1;
  else
    Ko = 0;

endmodule
