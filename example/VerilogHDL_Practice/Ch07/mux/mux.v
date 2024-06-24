// Ch07 mux.v
// 4 �� 1 �h�u��

module mux (A, B, C, D, S, Y1, Y2, Y3);
input  [3:0] A, B, C, D;	// �|�줸��J
input  [1:0] S;			// �G�줸��J
output [3:0] Y1, Y2, Y3;	// �|�줸��X
reg    [3:0] Y2, Y3;		// �ŧi���Ȧs�����

// �ϥα���B��l
assign Y1 = (S >= 2) ? ((S==3) ? D : C) : ((S == 1) ? B : A) ;

// �ϥ� if �ԭz
always@ (A or B or C or D or S)
  if      (S == 2'b00)  Y2 = A;
  else if (S == 2'b01)  Y2 = B;
  else if (S == 2'b10)  Y2 = C;
  else                  Y2 = D;

// �ϥ� case �ԭz
always@ (A or B or C or D or S)
  case (S)
    0 :       Y3 = A;
    1 :       Y3 = B;
    2 :       Y3 = C;
    default:  Y3 = D;
  endcase

endmodule
