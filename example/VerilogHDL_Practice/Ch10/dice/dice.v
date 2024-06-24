// Ch10 dice.v
// �Y��l�C��

module dice (Clk10M,Start,Led);
input  Clk10M,Start;	// �@�줸��J (�Ұ�)
output [ 6:0] Led;	// �C�줸��X (��l�C�q) 
reg    [ 6:0] Led;	// �ŧi���Ȧs�����
reg    [20:0] Cnt1;	// �p�ƾ� (���W)
reg    [ 5:0] Cnt2;	// �p�ƾ� (����A)
reg    [ 1:0] State;	// ��l��ܪ��A
reg    Clk,Dice_clk;	// ��l��ܪ��W�v

// ���W�q�� 
always@ (posedge Clk10M)
  begin
    Cnt1 = Cnt1 + 1;
    Clk = Cnt1[15];
  end

// ���A���� 
always@ (posedge Clk)
  if (Start == 0)		// ��l�}�l�B��
    begin
      State = 3;		// ��l��ܪ��_�l���A
      Cnt2  = 0;
    end
  else				// ��l��ܶ}�l��t
    begin
      Cnt2 = Cnt2 + 1;
      if (Cnt2 == 6'b111111)
        case (State)
          3   	  : State = 2; 	// ��l��ܪ��A����
          2       : State = 1;
          default : State = 0;
        endcase
    end

// ��l����W�v�̪��A����
always@ (State)
  case (State)
    3       : Dice_clk = Cnt1[18]; 
    2       : Dice_clk = Cnt1[19];
    1       : Dice_clk = Cnt1[20];
    default : Dice_clk = 0;	// ��l����
  endcase

// ��l LED ����ܭ�
always@ (posedge Dice_clk)
  case (Led)
    7'b0001000	: Led = 7'b0100010; // 2
    7'b0100010	: Led = 7'b0011100; // 3
    7'b0011100	: Led = 7'b1010101; // 4
    7'b1010101	: Led = 7'b1011101; // 5
    7'b1011101	: Led = 7'b1110111; // 6
    default 	: Led = 7'b0001000; // 1
  endcase

endmodule
