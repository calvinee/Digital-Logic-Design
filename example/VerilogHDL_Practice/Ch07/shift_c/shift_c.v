// Ch07 shift_c.v
// �|�줸�`������

module shift_c (D, Y1, Y2, Z1, Z2);
input  [3:0] D;			// D �|�줸��J
output [3:0] Y1,Y2,Z1,Z2;	// Y, Z �|�줸��X
reg    [3:0] Y1,Z1;		// �ŧi���Ȧs����� 
reg    T1,T2;			// �ŧi���Ȧs����� 

// �ϥβ���B��l
always@ (D)
  begin		// Y1�`�������@��, Z1�`���k���@��
    T1 = D[3];	  	T2 = D[0];
    Y1 = D << 1;	Z1 = D >> 1;
    Y1[0] = T1;	  	Z1[3] = T2;
  end

// �ϥγs���B��l
assign Y2 = {D[2:0], D[3]};  // �`�������@��
assign Z2 = {D[0], D[3:1]};  // �`���k���@��

endmodule
