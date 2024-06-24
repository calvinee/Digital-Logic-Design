// Ch07 enc83_case.v
// 8 �� 3 �s�X�� (�ϥ� case �d��)

module enc83_case (D, Q);
input  [7:0] D;		// D ���K�줸��J
output [2:0] Q;		// Q ���T�줸��X
reg    [2:0] Q;		// Q �ŧi���Ȧs�����

// �ϥ� case �ԭz
always@ (D)
  case (D)
    8'b00000001 :  Q = 3'b000;
    8'b00000010 :  Q = 3'b001;
    8'b00000100 :  Q = 3'b010;
    8'b00001000 :  Q = 3'b011;
    8'b00010000 :  Q = 3'b100; 
    8'b00100000 :  Q = 3'b101;
    8'b01000000 :  Q = 3'b110;
    8'b10000000 :  Q = 3'b111;
    default     :  Q = 3'b000;
  endcase

endmodule 
