// Ch11 Tdisplay_write.v
// $display �P $write ���ϥ�

module Tdisplay_write;
reg [3:0] A;
//-----------------------
initial
  begin
    A = 4'b1010;
    $display("Hi, I'm Fine");		// ���Hi, I'm Fine
    $display("%2d %b %h",5,A,8'ha5);	// ���5 1010 a5
    $write(4'b1010," ");		// ���10  14
    $write(14,"\n");
  end

endmodule
