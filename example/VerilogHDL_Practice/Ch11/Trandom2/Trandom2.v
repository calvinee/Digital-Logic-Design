// Ch11 Trandom2.v
// $random ���ϥ�

module Trandom2;
integer Seed;
integer A,B;	// �ŧi A,B ����Ƹ��
//-----------------------
initial
  Seed = 2;	// �ؤl�ƭȳ]�� 2
//-----------------------
always
  #1		// �C�@���ɶ����@�Ӷüƭ�
    begin
// �̺ؤl�Ȩ��ü� -20 ~ +20
      A = $random(Seed) % 21;
// �̺ؤl�Ȩ��ü� 0 ~ 59
      B = {$random(Seed)} % 60;
// ��ܶüƭ�
      $display ($time,"  A = %4d \t  B = %4d",A,B);
    end
//-----------------------
initial
  #10				// 10 ���ɶ��ᵲ������
    $finish;

endmodule
