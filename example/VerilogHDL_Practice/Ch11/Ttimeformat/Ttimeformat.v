// Ch11 Ttimeformat.v
// $timeformat ���ϥ�

// �ɶ���� 100 ps, ��ǫ� 10 ps 
`timescale 100ps/10ps
module Ttimeformat;
//------------------------------
// �ɶ���� ns, ���p�ƤG�� 
initial
  $timeformat (-9,2," * 1 ns",20);
//------------------------------
initial
  begin 
    #1  $display ("%t",$time);
    #1  $display ("%t",$time);
  end

endmodule
