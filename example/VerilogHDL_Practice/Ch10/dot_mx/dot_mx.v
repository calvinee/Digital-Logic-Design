// Ch10 dot_mx.v
// �T���I�x�}

module dot_mx (Clk10M, Row, Cr, Cg);
input  Clk10M;			// �@�줸��J
output [1:8]  Row,Cr,Cg;	// �K�줸��X
reg    [1:8]  Row,Cr,Cg;	// �ŧi���Ȧs�����
reg    [25:0] Q;		// �ŧi���Ȧs�����
reg    Clk;			// �ŧi���Ȧs�����

// ���W�q��
always@ (posedge Clk10M)
  begin
    Q = Q + 1;
    Clk = Q[11];
  end

// Row ���y�H��, �ǦV�޿�q��
always@ (posedge Clk)
  case (Row)
    8'b00000001 : Row = 8'b10000000;  // Row1
    8'b10000000 : Row = 8'b01000000;  // Row2
    8'b01000000 : Row = 8'b00100000;  // Row3
    8'b00100000 : Row = 8'b00010000;  // Row4
    8'b00010000 : Row = 8'b00001000;  // Row5
    8'b00001000 : Row = 8'b00000100;  // Row6
    8'b00000100 : Row = 8'b00000010;  // Row7
    default     : Row = 8'b00000001;  // Row8
  endcase

always@ (Q[24] or Q[25] or Row)
  begin
// ���� LED ���, �զX�޿�q��
    if (Q[24] == 1)
      case (Row)
        8'b10000000 : Cr = 8'b00010000;  // Row1
        8'b01000000 : Cr = 8'b00100010;  // Row2
        8'b00100000 : Cr = 8'b01000100;  // Row3
        8'b00010000 : Cr = 8'b11011111;  // Row4
        8'b00001000 : Cr = 8'b01010001;  // Row5
        8'b00000100 : Cr = 8'b01001010;  // Row6
        8'b00000010 : Cr = 8'b01000100;  // Row7
        8'b00000001 : Cr = 8'b01011111;  // Row8
        default     : Cr = 8'b00000000;
      endcase
    else
      Cr = 8'b00000000;
// ��� LED ���, �զX�޿�q��
    if (Q[25] == 1)
      case (Row)
        8'b10000000 : Cg = 8'b00010000;  // Row1
        8'b01000000 : Cg = 8'b00100010;  // Row2
        8'b00100000 : Cg = 8'b01000100;  // Row3
        8'b00010000 : Cg = 8'b11011111;  // Row4
        8'b00001000 : Cg = 8'b01010001;  // Row5
        8'b00000100 : Cg = 8'b01001010;  // Row6
        8'b00000010 : Cg = 8'b01000100;  // Row7
        8'b00000001 : Cg = 8'b01011111;  // Row8
        default     : Cg = 8'b00000000;
      endcase
    else
      Cg = 8'b00000000;
  end

endmodule
