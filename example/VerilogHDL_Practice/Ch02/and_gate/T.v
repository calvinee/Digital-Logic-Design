// Ch02 T.tfw
// �G��J�ιh (���ե��x�{��)

// �ɶ���� 1ns, �ɶ���T��1 ps
`timescale 1ns/1ps

module T;
reg A = 1'b0;		// A �Ȧs����ƪ�Ȭ���0��
reg B = 1'b0;		// B �Ȧs����ƪ�Ȭ���0��
wire O;

// �إ�and_gate ���Ҳը���
and_gate UUT (.A(A),.B(B),.O(O));

// initial�{�ǵ��c�϶�, ����A�BB��J�H���i��
initial
begin
  #100;			 // 100ns
    B = 1'b1; 		 // ��01��
  #100; 		 // 200ns
    A = 1'b1;		 // ��10��
    B = 1'b0;
  #100; 		 // 300ns
    B = 1'b1;		 // ��11��
  end

initial
begin
  #400;			// �����פ�ɶ�  400 ns
    $stop;
end

endmodule
