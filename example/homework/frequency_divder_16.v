// 16除頻器

module frequency_divder_16 (clock, reset, out);
  input clock, reset;
  output out;

  reg out;
  reg [3:0] diver;

  parameter count = 8;

  always @ (posedge clock) begin
    if (~reset) begin
      diver = 0;
    end else begin
      if (diver < count - 1) begin
        diver = diver + 1;
      end else begin
        diver = 0;
      end
    end
  end

  // 產生工作週期 0.5 波形
  always @ (diver) begin
    if (~reset) begin
      out = 1'b0;
    end else begin
      if (diver == count - 1) begin
        out = ~out;
      end else begin
        out = out;
      end
    end
  end

endmodule // frequency_divder_16
