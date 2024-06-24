// Ch05 vector.v
// �V�q��Ƥ��s�� (��Ƭy�h�ԭz)

module vector (A, B, W, X, Y, Z);
input  [3:0] A;       		// A �|�줸��J
input  [4:0] B;        		// B ���줸��J
output [2:0] W;       		// W �T�줸��X 
output [4:0] X;   		// X ���줸��X 
output [2:0] Y;   		// Y �T�줸��X 
output [4:0] Z;   		// Z ���줸��X 

assign W = A;			// A[3] �Q���h
assign X = A; 			// X[4] �� 0 
assign Y = B[3:1];		// �����s��	Y2  Y1  Y0
				//              B3  B2  B1
assign Z = {A[2:0],B[3:2]};	// ����		Z4  Z3  Z2  Z1  Z0
				//              A2  A1  A0  B3  B2
endmodule
