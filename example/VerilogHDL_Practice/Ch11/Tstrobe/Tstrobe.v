// Ch11 Tstrobe.v
// $strobe ���ϥ�

module Tstrobe;
integer A;
initial
  begin
    A = 1;
    #1
      A = 2;
      $display ("A=%2d", A);		// �N��� A��2
      $strobe ("A=%2d", A);		// �N��� A��3�A���O2
      A = 3;
    #1
      $finish;	
  end

endmodule
