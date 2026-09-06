timeunit 1ns; timeprecision 1ps;

module tb_flip_flop;

  logic tb_clk_i;
  logic [3:0] tb_d_i;
  logic [3:0] tb_q_o;

  flip_flop dut (
      .clk_i(tb_clk_i),
      .d_i  (tb_d_i),
      .q_o  (tb_q_o)
  );

  always #5 tb_clk_i = ~tb_clk_i;

  initial begin
    $display("---------------------------------------------------------");
    $display("time\t\tclk\td\t\tq");
    $display("---------------------------------------------------------");

    $monitor("%0t\t\t%b\t%b\t\t%b", $time, tb_clk_i, tb_d_i, tb_q_o);

    //inicializacion de las señales
    tb_clk_i = 0;
    tb_d_i   = 4'b0000;
    #10;

    //primera prueva
    tb_d_i = 4'b0001;
    #10;

    //cambio en la entrada
    tb_d_i = 4'b0101;
    #10;

    $display("---------------------------------------------------------");
    $display("simulacion finalizada correctamente");
    $finish;
  end
endmodule : tb_flip_flop
