// Ch11 Tmonitor.v
// $monitor ���ϥ�

module Tmonitor;
  integer A;
//-----------------------
  initial
    begin
      A = 1;		// A ��Ȭ� 1
      forever		// �L���j��
        #10 A = A + 1;	// �C 10 ���ɶ��AA �[�@
    end
//-----------------------
  initial
    #80 $finish;	// 80 ���ɶ��ɡA��������
//-----------------------
  initial
    begin
      #10 $monitoroff;	// 10 ���ɶ��ɡA�����ʱ�
      #50 $monitoron;	// 60 ���ɶ��ɡA�}�Һʱ�
    end
//-----------------------
  initial
    $monitor($time,"  A=%2d",A); // �ʱ��ɶ��P A

endmodule

