// Ch08 pili_2.v
// �C�q����R�E�O

module pili_2 (Clk,Clr,Q,A,B,C,D,E,F);
input  Clk,Clr;			// �@�줸��J
output [3:0] Q;			// �|�줸��X
output A,B,C,D,E,F;		// �@�줸��X
reg    [3:0] Q;			// �ŧi���Ȧs�����
reg    [5:0] L;			// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B�M��, �Ҧ�12�W�ƭp�ƾ�
always@ (posedge Clk) 
  if (Clr)		Q = 1;
  else if (Q == 12)	Q = 1;		// �p�ƭ� 1 ~ 12
  else			Q = Q + 1;

// �C�q���, �զX�޿�q��
always@ (Q) 
  case (Q)
    1       :  L = 6'b100000;  // A, ���ɰw
    2       :  L = 6'b010000;  // B, ���ɰw
    3       :  L = 6'b001000;  // C, ���ɰw
    4       :  L = 6'b000100;  // D, ���ɰw
    5       :  L = 6'b000010;  // E, ���ɰw
    6       :  L = 6'b000001;  // F, ���ɰw
    7       :  L = 6'b100000;  // A, �f�ɰw
    8       :  L = 6'b000001;  // F, �f�ɰw
    9       :  L = 6'b000010;  // E, �f�ɰw
    10      :  L = 6'b000100;  // D, �f�ɰw
    11      :  L = 6'b001000;  // C, �f�ɰw
    12      :  L = 6'b010000;  // B, �f�ɰw
    default :  L = 6'b000000;  // �����
  endcase
assign {A,B,C,D,E,F} = L;
 
endmodule
