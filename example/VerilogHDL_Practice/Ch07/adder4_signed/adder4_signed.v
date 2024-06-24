// Ch07 adder4_signed.v
// �|�줸�[�k�� (�����ƥ[�k)

module adder4_signed (S1, S2, A, B, C, D);
input  signed [3:0] A, B;	// A, B �|�줸�����ƿ�J
input  [3:0] C, D;		// C, D �|�줸�L���ƿ�J
output signed [4:0] S1, S2;  	// S1, S2 ���줸�����ƥ[�k�M��X

// �����ƥ[�k 
assign S1 = A + B;
assign S2 = $signed(C) + $signed(D);

endmodule
