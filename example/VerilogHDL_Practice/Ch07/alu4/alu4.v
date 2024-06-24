// Ch07 alu4.v
// �|�줸��N�޿�椸�B��

module alu4 (S, A, B, Alu1, Alu2);
input  [2:0] S;			// S �T�줸��J
input  [3:0] A, B;		// A, B �|�줸��J
output [4:0] Alu1,Alu2;		// �|�줸��X
reg    [4:0] Alu1,Alu2;		// �ŧi���Ȧs�����

// �ϥ� if �ԭz
always@ (S or A or B)
  if      (S == 3'b000)
    Alu1 = A + B; 		// �[ 
  else if (S == 3'b001)
    Alu1 = A - B;		// ��
  else if (S == 3'b010)
    Alu1 = A & B;		// ��
  else if (S == 3'b100)
    Alu1 = A | B;		// ��
  else
    Alu1 = 0;			// ��L

// �ϥ� case �ԭz
always@ (S or A or B)
  case (S)
    0 :       Alu2 = A + B; 	// �[ 
    1 :       Alu2 = A - B;	// ��
    2 :       Alu2 = A & B;	// ��
    4 :	      Alu2 = A | B;	// ��
    default : Alu2 = 0;		// ��L
  endcase

endmodule
