// Ch11 Ttime.v
// $time, $stime �P $realtime ���ϥ�

// �ɶ���� 1 ns, ��ǫ� 100 ps 
`timescale 1ns/100ps
module Ttime;
parameter T = 2.6;
//-----------------------
initial
  #T
    begin 
      $display ("$time     = ",$time);
      $display ("$stime    = ",$stime);
      $display ("$realtime = ",$realtime);
    end

endmodule
