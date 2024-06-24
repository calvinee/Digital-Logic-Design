// Ch06 compare.v
// �_�� if �ԭz���ϥ� (�欰�ԭz)

module compare (A, B, AgB, AeB, AlB);
input   A, B; 		 	// A, B �@�줸��J
output  AgB, AeB, AlB; 		// AgB, AeB, AlB �@�줸��X 
reg     AgB, AeB, AlB;		// �ŧi AgB, AeB, AlB ���Ȧs����� 

always@ (A or B)
  if (A < B)
      begin
        AgB = 0;  AeB = 0;  AlB = 1;
      end
  else if (A == B)
      begin
        AgB = 0;  AeB = 1;  AlB = 0;
      end
  else
      begin
        AgB = 1;  AeB = 0;  AlB = 0;
      end

endmodule

