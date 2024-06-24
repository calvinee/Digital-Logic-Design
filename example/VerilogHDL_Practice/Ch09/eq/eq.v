// Ch09 eq.v
// ����O�_�۵�

// �]�p�ۭq�޿�h
primitive cmp (Y,A,B);
input  A,B;	// �@�줸��J	
output Y;	// �@�줸��X
table		// �ŧi�u�Ȫ�
// A B : Y
   0 0 : 1;
   0 1 : 0;
   1 0 : 0;
   1 1 : 1;
   x ? : x;
   ? x : x;
endtable
endprimitive
//------------------------------------------
// ���h�q���Ҳ�
module eq (D1,D2,Eq);
input  [1:0] D1,D2;	// �G�줸��J
output Eq;		// �@�줸��X
wire   W1,W2;		// �ŧi���s�u���
 
cmp  cmp0  (W1,D1[0],D2[0]);
cmp  cmp1  (W2,D1[1],D2[1]);
and  and1  (Eq,W1,W2);
 
endmodule
