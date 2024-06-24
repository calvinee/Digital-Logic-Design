// Ch07 shift.v
// �|�줸����B��

module shift (D,Y1,Y2,Y3,Z1,Z2,Z3);
input  [3:0] D;			// D �|�줸��J
output [3:0] Y1,Y2,Y3,Z1,Z2,Z3;	// Y, Z �|�줸��X 
parameter B1 = 1;		// ����@�줸
parameter B2 = 2;		// ����G�줸
parameter B3 = 3;		// ����T�줸

// �ϥβ���B��l
assign Y1 = D << B1;	// �����@��, �� 2
assign Y2 = D << B2;	// �����G��, �� 4
assign Y3 = D << B3;	// �����T��, �� 8
assign Z1 = D >> B1;	// �k���@��, �� 2
assign Z2 = D >> B2;	// �k���G��, �� 4
assign Z3 = D >> B3;	// �k���T��, �� 8

endmodule

