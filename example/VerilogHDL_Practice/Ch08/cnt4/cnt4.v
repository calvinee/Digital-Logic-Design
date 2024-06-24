// Ch08 cnt4.v
// �˼ƭp�ƾ��H�C�q���

module cnt4 (Clk,Load,Q,A,B,C,D,E,F,G,L);
input  Clk,Load;		// �@�줸��J
output [3:0] Q;			// �|�줸��X
output A,B,C,D,E,F,G;		// �@�줸��X
output [6:0] L;			// �C�줸��X
reg    [3:0] Q;			// �ŧi���Ȧs�����
reg    [6:0] L;			// �ŧi���Ȧs�����

// �W�tĲ�o�ɯ�, �W�t�P�B���J, �˼ƭp�ƾ�
always@ (posedge Clk) 
  if (Load)     	Q = 9;
  else if (Q == 0)	Q = 0;
  else	       		Q = Q - 1;

// �C�q���, �զX�޿�q��
always@ (Q) 
  case (Q)
    0      : L = 7'h7e;
    1      : L = 7'h30;
    2      : L = 7'h6d;
    3      : L = 7'h79;
    4      : L = 7'h33;
    5      : L = 7'h5b;
    6      : L = 7'h1f;
    7      : L = 7'h70;
    8      : L = 7'h7f;
    9      : L = 7'h73;
    default: L = 7'h00;
  endcase
assign {A,B,C,D,E,F,G} = L;
 
endmodule
