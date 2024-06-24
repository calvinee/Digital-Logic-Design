// Ch07 comp_1.v
// �����

module comp_1 (A,B,AgB1,AgB2,AgB3,AgB4,AeB1,AeB2,AeB3,AeB4,
               AlB1,AlB2,AlB3,AlB4);
input  [3:0] A,B;					// A,B �|�줸��J
output AgB1,AgB2,AgB3,AgB4,AeB1,AeB2,AeB3,AeB4,
       AlB1,AlB2,AlB3,AlB4;				// �@�줸��X
reg    AgB1,AgB2,AgB3,AeB1,AeB2,AeB3,AlB1,AlB2,AlB3;	// �ŧi���Ȧs�����

// �ϥα_�� if, ����B��l
always@ (A or B)
  if (A > B)
    begin   AgB1 = 1;  AeB1 = 0;  AlB1 = 0;  end
  else if (A == B)
    begin   AgB1 = 0;  AeB1 = 1;  AlB1 = 0;  end
  else
    begin   AgB1 = 0;  AeB1 = 0;  AlB1 = 1;  end

// �]�i�H�g���T�ӿW�ߪ� if �ԭz
always@ (A or B)
  begin
    if (A > B)   AgB2 = 1;
    else         AgB2 = 0;
    if (A == B)  AeB2 = 1;
    else         AeB2 = 0;
    if (A < B)   AlB2 = 1;
    else         AlB2 = 0;
  end

// �����ϥΥ��L�B�⵲�G
always@ (A or B)
  begin
    AgB3 = (A >  B);
    AeB3 = (A == B);
    AlB3 = (A <  B);
  end

// �ϥα���B��l
assign AgB4 = (A > B)  ? 1 : 0;
assign AeB4 = (A == B) ? 1 : 0;
assign AlB4 = (A < B)  ? 1 : 0;

endmodule
