// Ch07 demux.v
// �Ѧh�u��

module demux (A1,A2,B1,B2,C1,C2,D1,D2,S,Y);
input  [3:0] Y;				// �|�줸��J
input  [1:0] S;				// �G�줸��J
output [3:0] A1,A2,B1,B2,C1,C2,D1,D2;	// �|�줸��X
reg    [3:0] A1,A2,B1,B2,C1,C2,D1,D2;	// �ŧi���Ȧs�����

// �ϥ� if �ԭz
always@ (Y or S)
  if      (S == 2'b00)  A1 = Y;
  else if (S == 2'b01)  B1 = Y;
  else if (S == 2'b10)  C1 = Y;
  else                  D1 = Y;

// �ϥ� case �ԭz
always@ (Y or S)
  case(S)
    0 :       A2 = Y;
    1 :       B2 = Y;
    2 :       C2 = Y;
    default:  D2 = Y;
  endcase

endmodule
