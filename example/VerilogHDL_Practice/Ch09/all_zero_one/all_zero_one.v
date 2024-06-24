// Ch09 all_zero_one.v
// �K�줸�� 0 �� 1 �ˬd��

module all_zero_one (D,Zero,One);
input  [7:0] D;			// �K�줸��J
output Zero,One;		// �@�줸��X
reg    Zero,One,ZH,ZL,OH,OL;	// �ŧi���Ȧs�����

// ���h�q���Ҳ�
always@(D)
  begin
    checker (D[7:4], ZH, OH);
    checker (D[3:0], ZL, OL);
    Zero = ZH & ZL;
    One  = OH & OL;
  end
//-----------------------------------------------
// �]�p���� (�|�줸�� 0 �� 1 �ˬd��)
task checker;
input  [3:0] I;
output Z,O;
 {Z,O} =  {~|I, &I};
endtask

endmodule
