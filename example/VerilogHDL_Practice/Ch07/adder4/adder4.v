// Ch07 adder4.v
// �|�줸���[�k�� (�ϥΥ[�k�B��l)

module adder4 (S, Co, A, B, Ci);
input  [3:0] A, B;	// A, B �|�줸��J
input  Ci;		// Ci �@�줸��J
output Co; 		// Co �@�줸�i���X
output [3:0] S; 	// S  �|�줸�[�k�M��X

// �ϥΥ[�k�B��l 
assign {Co, S} = A + B + Ci;

endmodule
