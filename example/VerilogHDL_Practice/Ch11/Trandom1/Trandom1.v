// Ch11 Trandom1.v
// $random ���ϥ�

module Trandom1;
integer Seed;
reg [31:0] A;	// �ŧi A �� 32 �줸�Ȧs�����
//-----------------------
initial
  Seed = 2;	// �ؤl�ƭȳ]�� 2
//-----------------------
always
  #1		// �C�@���ɶ����@�Ӷüƭ�
    begin
      A = $random(Seed);	// �̺ؤl�Ȩ��ü�
      $display ($time,"  ",A);	// ��ܶüƭ�
    end
//-----------------------
initial
  #5				// 5 ���ɶ��ᵲ������
    $finish;

endmodule
