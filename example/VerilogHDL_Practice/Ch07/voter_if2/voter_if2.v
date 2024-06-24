// Ch07 voter_if2.v
// �|�H�벼�� (�ϥ� if �ԭz)

module voter_if2 (I, O);
input  [3:0] I;		// I �|�줸��J
output [3:1] O;		// O �T�줸��X
reg    [3:1] O;		// �ŧi O ���Ȧs�����

// �ϥ� if �ԭz
always@ (I)
  begin
    if      (I == 4'b0000)   O[3] = 1;
    else if (I == 4'b0001)   O[3] = 1;
    else if (I == 4'b0010)   O[3] = 1;
    else if (I == 4'b0100)   O[3] = 1;
    else if (I == 4'b1000)   O[3] = 1;
    else                     O[3] = 0;
  
    if      (I == 4'b0011)   O[2] = 1;
    else if (I == 4'b0101)   O[2] = 1;
    else if (I == 4'b0110)   O[2] = 1;
    else if (I == 4'b1001)   O[2] = 1;
    else if (I == 4'b1010)   O[2] = 1;
    else if (I == 4'b1100)   O[2] = 1;
    else                     O[2] = 0;

// �]�i�H�g���o�˪� if �ԭz
    if (I == 4'b1110 || I == 4'b1101 || I == 4'b1011 || 
        I == 4'b0111 || I == 'b1111)
      O[1] = 1;
    else 
      O[1] = 0;
  
  end
endmodule
