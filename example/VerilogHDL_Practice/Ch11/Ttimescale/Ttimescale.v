// Ch11 Ttimescale.v
// 'timescale ���ϥ�

 `timescale 10ns/1ns  // �ɶ����10 ns, �ɶ���T��1 ns
  module Ttimescale;
  initial
    begin
      #1 $display($time," %2d",1);	// 10 ns��, 1*10 ns
      #2 $display($time," %2d",2);	// 30 ns��, 1+2
      #3 $display($time," %2d",3);	// 60 ns��, 3+3
      #1 $display($time," %2d",4);	// 70 ns��, 6+1
    end
  endmodule
