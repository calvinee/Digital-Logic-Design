// Ch11 Tfor.v
// for ���ϥ�

module Tfor;
  integer A,i;
//-----------------------
  initial
    begin
      A = 5;			// A ��Ȭ� 5
      for (i=0; i<5; i=i+1)	// �j�� 5 ��
        #10 A = A + 1;		// �C 10 ���ɶ��AA �[�@
    end
//-----------------------
  initial
    $monitor($time,"  A=%2d",A); // �ʱ��ɶ��P A

endmodule

