// Ch10 debounce2.v
// �h�u���q�� 2

module debounce2 (Clk100,Ki,Ko1,Ko2);
input  Clk100,Ki;	// �@�줸��J
output Ko1,Ko2;		// �@�줸��X
reg    Ko1,Ko2;		// �ŧi���Ȧs�����
reg    [1:0] Q1,Q2;	// �ŧi���Ȧs�����
reg    S,R;		// �ŧi���Ȧs�����

// ��L�H������
always@(posedge Clk100)	// �� 100 Hz
  begin
    Q1[1] = Q1[0];	// �s����ˤG��
    Q1[0] = Ki;
    if (Q1 == 2'b11)  S = 1;
    else              S = 0;
    if (Q1 == 2'b00)  R = 1;
    else              R = 0;
  end

// RS ���꾹
always@(R or S)
  if (S == 1 && R == 0)				
    Ko1 = 1;			
  else if (S == 0 && R == 1)				
    Ko1 = 0;

// �L�����o�@�g�����ߪi
always@(posedge Clk100)
  begin
    Q2[1] = Q2[0];	// �s����ˤG��
    Q2[0] = Ko1;
    if (Q2 == 2'b01)  Ko2 = 1;
    else              Ko2 = 0;
  end

endmodule
