// Ch06 half_adder_case.v
// �@�줸�b�[�k�� (case �ԭz)

module half_add_case (A, B, Co, S);
input  A, B;     // A, B �@�줸��J
output Co, S;    // Co �i��M S 
reg    Co, S;

// �ϥ� case �ԭz 
always@ (A or B)
  case ({A,B})
    2'b00  : begin  Co = 0;  S = 0;  end
    2'b01  : begin  Co = 0;  S = 1;  end
    2'b10  : begin  Co = 0;  S = 1;  end
    default: begin  Co = 1;  S = 0;  end
  endcase

endmodule

