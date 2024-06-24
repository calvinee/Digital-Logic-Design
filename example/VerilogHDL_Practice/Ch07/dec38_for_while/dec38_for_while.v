// Ch07 dec38_for_while.v
// 3 �� 8 �ѽX�� (�ϥ� for �P while �ԭz)

module dec38_for_while (Q, D1, D2);
parameter I_length = 3;
parameter O_length = 8;
input  [I_length-1:0] Q;	// Q �� I_length �줸��J
output [O_length-1:0] D1,D2;	// D1, D2 �� O_length �줸��X
reg    [O_length-1:0] D1,D2;	// �ŧi D1, D2 ���Ȧs�����
integer i,j;

//�ϥ� for �ԭz
always@ (Q)
  for (i=0; i<=O_length-1; i=i+1)
    if (Q == i)   D1[i] = 1;
    else          D1[i] = 0;

// �ϥ� while �ԭz
always@ (Q)
  begin
    j = 0;
    while (j <= O_length-1)
      begin
        if(Q == j)   D2[j] = 1;
        else       D2[j] = 0;
        j = j + 1;
      end
  end

endmodule 
