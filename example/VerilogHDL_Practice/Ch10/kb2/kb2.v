// Ch10 kb2.v
// ��L���y��J, �C�q��ܿ�X

module kb2 (Clk10M,Clr,Co,De,A,B,C,D,E,F,G,FN);
input  Clk10M,Clr;		// �@�줸��J
input  [1:3]  Co;		// �T�줸��J
output [3:1]  De;		// �T�줸��X
output A,B,C,D,E,F,G,FN;	// �@�줸��X
reg    [3:1]  De;		// �ŧi���Ȧs�����
reg    [6:0]  L;
reg    [15:0] Cnt;
reg    [3:0]  N,DB;
reg    [23:0] Acc;
reg    [2:0]  NC,DD;
reg    FN,Scan_clk;

// ���ͦX�A�����y�H���P���ˮɯ߫H��
always@ (posedge Clk10M)
  begin
    if (Clr)
      Cnt = 0;
    else
      begin
        Cnt = Cnt + 1;
        De       = Cnt[15:13]; // ��ڹq���γo��
        Scan_clk = Cnt[12];
//        De       = Cnt[4:2];	 // �����q���γo��
//        Scan_clk = Cnt[1];
	  end
  end

// �H Scan_clk ����L����
always@ (posedge Scan_clk or posedge Clr)
  begin
    if (Clr == 1)
      begin
        FN = 0;
        N  = 4'b1111;
        DD = 0;
      end
    else
      if (FN == 0)			// ����u�_��
        begin
          case ({De,Co})
            6'b000011  : N = 4'b0001;  	// 1
            6'b000101  : N = 4'b0010;  	// 2
            6'b000110  : N = 4'b0011;  	// 3
            6'b001011  : N = 4'b0100;  	// 4
            6'b001101  : N = 4'b0101;  	// 5
            6'b001110  : N = 4'b0110;  	// 6
            6'b010011  : N = 4'b0111;  	// 7
            6'b010101  : N = 4'b1000;  	// 8
            6'b010110  : N = 4'b1001;  	// 9
            6'b011101  : N = 4'b0000;  	// 0
            default    : N = 4'b1111;
          endcase
          if (Co != 3'b111)		// �������U
            begin
              FN = 1;			// �]�w FN	
              DD = De;			// �x�s De
            end
        end 
      else				// ���������U��
        if (Co == 3'b111 && DD == De)	// ��������u�_
          FN = 0;			// �Ѱ� FN
  end

// FN �U�tĲ�o, �p�� NC �����, �x�s Acc �w�����
always@ (negedge FN or posedge Clr)
  if (Clr)
    begin
      Acc = 24'hffffff;
      NC  = 0;
    end
  else
    if      (NC == 0)			// �O����̥��䪺�줸��
      begin
        Acc = {N,Acc[19:0]};
        NC = NC + 1;
      end
    else if (NC == 1)			// �O���쥪��ĤG�Ӧ줸��
      begin
        Acc = {Acc[23:20],N,Acc[15:0]};
        NC = NC + 1;
      end    
    else if (NC == 2)
      begin
        Acc = {Acc[23:16],N,Acc[11:0]};
        NC = NC + 1;
      end   
    else if (NC == 3)
      begin
        Acc = {Acc[23:12],N,Acc[7:0]};
        NC = NC + 1;
      end   
    else if (NC == 4)
      begin
        Acc = {Acc[23:8],N,Acc[3:0]};
        NC = NC + 1;
      end
    else if (NC == 5)			// �O����̥k�䪺�줸��
      begin
        Acc = {Acc[23:4],N};
        NC = NC + 1;
      end 

// �h�u��, �̷� De ���p�N Acc �������� DB ��
always@ (De)
  case (De)
    0       : DB = Acc[23:20];
    1       : DB = Acc[19:16];
    2       : DB = Acc[15:12];
    3       : DB = Acc[11: 8];
    4       : DB = Acc[ 7: 4];
    5       : DB = Acc[ 3: 0];
    default : DB = 4'b1111;
  endcase

// �G�i���C�q�ѽX
always@ (DB)
  case (DB)
    0       : L = 7'b1111110;
    1       : L = 7'b0110000;
    2       : L = 7'b1101101;
    3       : L = 7'b1111001;
    4       : L = 7'b0110011;
    5       : L = 7'b1011011;
    6       : L = 7'b1011111;
    7       : L = 7'b1110000;
    8       : L = 7'b1111111;
    9       : L = 7'b1111011;
    default : L = 7'b0000000;
  endcase
assign {A,B,C,D,E,F,G} = L;

endmodule


