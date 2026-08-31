timeunit 1ns; timeprecision 1ps;

module tb_asincroset_register;

  logic tb_clk;
  logic tb_rst;
  logic [3:0] tb_d;
  logic [3:0] tb_q;

  asincroset_register dut (
      .clk(tb_clk),
      .rst(tb_rst),
      .d  (tb_d),
      .q  (tb_q)
  );

  initial begin
    $display("clk | rst | d | q");
    $monitor("");
  end
endmodule : tb_asincroset_register
