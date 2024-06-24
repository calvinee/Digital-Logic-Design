`include "half_adder.v"

module half_adder_test ();
  reg a, b;
  wire sub, borrow;
  integer number1, number2;

  half_adder UUT (a, b, sub, borrow);

  initial begin
    for (number1 = 0; number1 < 2; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 2; number2 = number2 + 1)
          begin
            a = number1;
            b = number2;
            $monitor("| %b | %b | %b | %b |", a, b, sub, borrow);
            #10;
          end
      end
    $finish;
  end

endmodule // half_adder_test
