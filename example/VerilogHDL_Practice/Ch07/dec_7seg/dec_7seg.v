// Ch07 dec_7seg.v
// �@���C�q��ܾ��ѽX�� (�ϥ� if �M case �d��)

module dec_7seg (D, Q1, Q2);
input  [3:0] D;			// D ���T�줸��J
output [6:0] Q1,Q2;		// Q1, Q2 ���C�줸��X
reg    [6:0] Q1,Q2;		// Q1, Q2 �ŧi���Ȧs�����

// �ϥ� if �d��, �G�i����
always@ (D)
  if      (D == 4'b0000)   Q1 = 7'b1111110;
  else if (D == 4'b0001)   Q1 = 7'b0110000;
  else if (D == 4'b0010)   Q1 = 7'b1101101;
  else if (D == 4'b0011)   Q1 = 7'b1111001;
  else if (D == 4'b0100)   Q1 = 7'b0110011; 
  else if (D == 4'b0101)   Q1 = 7'b1011011;
  else if (D == 4'b0110)   Q1 = 7'b1011111;
  else if (D == 4'b0111)   Q1 = 7'b1110010;
  else if (D == 4'b1000)   Q1 = 7'b1111111;
  else if (D == 4'b1001)   Q1 = 7'b1111011;
  else if (D == 4'b1010)   Q1 = 7'b1110111;
  else if (D == 4'b1011)   Q1 = 7'b0011111;
  else if (D == 4'b1100)   Q1 = 7'b1001110; 
  else if (D == 4'b1101)   Q1 = 7'b0111101;
  else if (D == 4'b1110)   Q1 = 7'b1001111;
  else                     Q1 = 7'b1000111;

// �ϥ� case �d��, �Q���i����
always@ (D)
  case (D)
    4'h0   :  Q2 = 7'h7e;
    4'h1   :  Q2 = 7'h30;
    4'h2   :  Q2 = 7'h6d;
    4'h3   :  Q2 = 7'h79;
    4'h4   :  Q2 = 7'h33; 
    4'h5   :  Q2 = 7'h5b;
    4'h6   :  Q2 = 7'h5f;
    4'h7   :  Q2 = 7'h72;
    4'h8   :  Q2 = 7'h7f;
    4'h9   :  Q2 = 7'h7b;
    4'ha   :  Q2 = 7'h77;
    4'hb   :  Q2 = 7'h1f;
    4'hc   :  Q2 = 7'h4e; 
    4'hd   :  Q2 = 7'h3d;
    4'he   :  Q2 = 7'h4f;
    default:  Q2 = 7'h47;
  endcase

endmodule 
