`include "adder_subtr_4_bit.v"

module adder_subtr_4_bit_test ();
  reg signed [3:0] a, b;
  reg k;
  wire signed [3:0] sum;
  wire co;
  integer number1, number2, number3;

  adder_subtr_4_bit UUT (a, b, k, sum, co);

  initial begin
    for (number1 = 0; number1 < 16; number1 = number1 + 1)
      begin
        for (number2 = 0; number2 < 16; number2 = number2 + 1)
          begin
            for (number3 = 0; number3 < 2; number3 = number3 + 1)
              begin
                a = number1;
                b = number2;
                k = number3;
                $monitor("| %d | %d | %b | %d | %b |", a, b, k, sum, co);
                #10;
              end
          end
      end
    $finish;
  end

endmodule // adder_subtr_4_bit_test
