// Ch05 op.v
// �B��l���ϥ� (��Ƭy�h�ԭz)

module op (A, B, Ci, Co, S, X, Y, Z);
input  [3:0] A, B;		// A, B �|�줸��J
input  Ci;			// Ci �@�줸��J
output Co;			// Co �@�줸��X 
output [3:0] S, X, Y, Z;	// S, X, Y, Z �|�줸��X 

assign {Co, S} = A + B + Ci; 	// ���[�k
assign X = {A[2:0], A[3]}; 	// A �`������ 1 �줸
assign Y = B ~^ 4'b1010;	// B �M�|�줸���1010�@�����ϩ�
assign Z = (~A) & B;		// A��B

endmodule

