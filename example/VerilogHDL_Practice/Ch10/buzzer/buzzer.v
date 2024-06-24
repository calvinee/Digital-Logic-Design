// Ch10 buzzer.v
// ���ͭ����W�v

module buzzer (Clk10M,Clr,Up,Down,Clk_o,State,Cnt);
input  Clk10M,Clr,Up,Down;	// �@�줸��J
output Clk_o;			// �@�줸��X
output [ 2:0] State;		// �T�줸��X
output [14:0] Cnt;		// 15 �줸��X	
reg    Clk_d,Clk_o;		// �ŧi���Ȧs�����
reg    [15:0] Q1;		// �h�u�����W
reg    [14:0] Q2;		// �������W
reg    [ 2:0] State;		// 0 ~ 6 : Do, Re .., Si		
reg    [14:0] Cnt;		// Do, Re .., Si ������

// ���ͭp�ƭ�
always@ (posedge Clk10M or posedge Clr)
  begin
    if (Clr)	
      Q1 = 0;
    else
      Q1 = Q1 + 1;
//    Clk_d = Q1[15];		// ~ 156 Hz
    Clk_d = Q1[1];		// ������
  end	

// ���o�h�u��������, �e�t�@�g��
debounce d1 (Clk_d,   Up,   Up_d);
debounce d2 (Clk_d, Down, Down_d);

// ���ͪ��A��
always@ (posedge Clk_d or posedge Clr)
  if (Clr)
    State = 0;
  else if (Up_d)
    if (State == 6)		// = Si ?
      State = State;		// ���� Si
    else
      State = State + 1; 	// �W��
  else if (Down_d)
    if (State == 0)		// = Do ?
      State = State;		// ���� Do
    else
      State = State - 1;	// �U��

// �h�u���� State ���o����
always@ (State)
  case (State)
    0       : Cnt = 19120;	// Do  ������
    1       : Cnt = 17036;	// Re  ������
    2       : Cnt = 15175;	// Mi  ������
    3       : Cnt = 14327;	// Fa  ������
    4       : Cnt = 12755;	// Sol ������
    5       : Cnt = 11364;	// La  ������
    6       : Cnt = 10121;	// Si  ������
    default : Cnt = 19120;
  endcase

// ���W�o�����W�v
always@ (posedge Clk10M)
  if (Clr || Q2 == Cnt)	
    Q2 = 0;
  else
    Q2 = Q2 + 1;

// �h�u���� State ���o�����W�v
always@ (State)
  if (State <= 1)	
    Clk_o = Q2[14];		// Do, Re �����W�v
  else
    Clk_o = Q2[13];		// Mi ~ Si�����W�v
	 
endmodule
