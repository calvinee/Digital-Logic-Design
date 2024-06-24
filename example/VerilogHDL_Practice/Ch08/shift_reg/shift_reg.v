// Ch08 shift_reg.v
// ����Ȧs��

module shift_reg (Clk,St,Ld,Ser,D,Q1,Q2,Q3);
input  Clk,St,Ld,Ser;		// �@�줸��J
input  [3:0] D;			// �|�줸��J
output [3:0] Q1,Q2,Q3;		// �|�줸��X
reg    [3:0] Q1,Q2,Q3;		// �ŧi���Ȧs�����
integer i;			// �ŧi����Ƹ��

// �U�tĲ�o�ɯ�,�W�t�P�B�k��,�W�t�P�B���J
// �ϥβ���B��l
always@ (negedge Clk) 
  if (St)
    begin
      Q1 = Q1 >> 1;
      Q1[3] = Ser; 
    end
  else if (Ld)
    Q1 = D;

// �ϥ� for �ԭz
always@ (negedge Clk)
  if (St)
    begin
      for(i = 0; i <= 2; i = i+1)
        Q2[i] = Q2[i+1];
      Q2[3] = Ser;
    end
  else if (Ld)
    Q2 = D;


// �ϥγs���B��l
always@ (negedge Clk) 
  if (St)
    Q3 = {Ser,Q3[3:1]};
  else if (Ld)
    Q3 = D;
 
endmodule