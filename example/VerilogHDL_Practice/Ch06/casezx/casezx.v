// Ch06 casezx.v
// �@�줸�b�[�k�� (casez �P casex �ԭz)

module casezx(A, Y, Z);
input  [2:0] A;   	// A �T�줸��J
output [1:0] Y, Z;	// Y �M Z �G�줸��X
reg    [1:0] Y, Z;	// �ŧi Y �M Z ���Ȧs�����

always@ (A)
  begin
// �ϥ� casez �ԭz 
    casez (A)
      3'b1??  : Y = 0;  // �̰��u���v�A100�B101�B110�B111
      3'b0z1  : Y = 1;  // �ĤG�u���v�A001�B011
      3'b000  : Y = 2;  // �ĤT�u���v�A000
      default : Y = 3;  // �̧C�u���v�A010
    endcase

// �ϥ� casex �ԭz 
    casex (A)
      3'bx1x  : Z = 0;  // �̰��u���v�A010�B011�B110�B111
      3'b00?  : Z = 1;  // �ĤG�u���v�A000�B001
      default : Z = 2;  // �̧C�u���v�A100�B101
    endcase
  end

endmodule

