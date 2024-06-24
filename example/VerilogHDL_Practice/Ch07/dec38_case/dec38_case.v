// Ch07 dec38_case.v
// 3 �� 8 �ѽX�� (�ϥ� case �d��)

module dec38_case (Q, D);
input  [2:0] Q;		// Q ���T�줸��J
output [7:0] D;		// D ���K�줸��X
reg    [7:0] D;		// D �ŧi���Ȧs�����

// �ϥ� case �ԭz
always@ (Q)
  case(Q)
    3'b000 :  D = 8'b00000001;
    3'b001 :  D = 8'b00000010;
    3'b010 :  D = 8'b00000100;
    3'b011 :  D = 8'b00001000;
    3'b100 :  D = 8'b00010000; 
    3'b101 :  D = 8'b00100000;
    3'b110 :  D = 8'b01000000;
    default:  D = 8'b10000000;
  endcase

endmodule 
