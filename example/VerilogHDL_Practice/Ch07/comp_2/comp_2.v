// Ch07 comp_2.v
// ����� (����B��l���ƦX�ϥ�)

module comp_2 (A, Y1, Y2, Y3);
input  [3:0] A;		// A �|�줸��J
output Y1,Y2,Y3;	// �@�줸��X
reg    Y1,Y2,Y3;	// �ŧi���Ȧs�����

// �ϥα_�� if
always@ (A)
  if (A > 5) 
    if (A < 10)   Y1 = 1;
    else          Y1 = 0;
  else            Y1 = 0;

// && �B��l���ƦX�ϥ�
always@ (A)
  if (A > 5 && A < 10)   Y2 = 1;
  else                   Y2 = 0;

// || �B��l���ƦX�ϥ�
always@ (A)
  if (A <= 5 || A >= 10)   Y3 = 0;
  else                     Y3 = 1;
  
endmodule
