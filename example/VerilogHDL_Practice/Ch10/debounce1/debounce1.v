// Ch10 debounce1.v
// �h�u���q�� 1

module debounce1 (Clk100,Ki,Ko1,Ko2,Ko3);
input  Clk100,Ki;	// �@�줸��J
output Ko1,Ko2,Ko3;	// �@�줸��X
reg    Ko1,Ko2,Ko3;	// �ŧi���Ȧs�����
reg    [2:0] Q;		// �ŧi���Ȧs�����

// �����W�v�� 100 Hz, �s����ˤT��
always@ (posedge Clk100)
  begin
    Q[2] = Q[1]; 
    Q[1] = Q[0];
    Q[0] = Ki;
  end

// ���ͥh�u���H��
always@ (Q)
  begin
    if (Q == 3'b111)	// �e��t
      Ko1 = 1;
    else
      Ko1 = 0;
    if (Q == 3'b001)	// �e�t
      Ko2 = 1;
    else
      Ko2 = 0;
    if (Q == 3'b110)	// ��t
      Ko3 = 1;
    else
      Ko3 = 0;
  end

endmodule
