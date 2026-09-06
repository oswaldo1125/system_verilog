timeunit 1ns; timeprecision 1ps;

module tb_enabled_register;

  logic tb_clk_i;
  logic tb_rst_i;
  logic tb_en_i;
  logic [3:0] tb_d_i;
  logic [3:0] tb_q_o;

  enabled_register dut (
      .clk_i(tb_clk_i),
      .rst_i(tb_rst_i),
      .en_i (tb_en_i),
      .d_i  (tb_d_i),
      .q_o  (tb_q_o)
  );

  always #5 tb_clk_i = ~tb_clk_i;

  initial begin
    $display("-----------------------------------------------");
    $display("time\t\tclk\trst\ten\td\t\tq");
    $display("-----------------------------------------------");

    $monitor("%0t\t\t%b\t%b\t%b\t%b\t\t%b", $time, tb_clk_i, tb_rst_i, tb_en_i, tb_d_i, tb_q_o);

    //inicializacion de las se;señales
    tb_clk_i = 0;
    tb_rst_i = 0;
    tb_en_i  = 0;
    tb_d_i   = 4'b0;

    //ingresando valor "d" con reloj en "0"
    tb_d_i   = 4'b1011;
    #10;

    //activacion del en
    tb_en_i = 1;
    #10;

    //cambio de valor enla entrada d
    tb_d_i = 4'b0011;
    #10;

    //activacion del rst
    tb_rst_i = 1;
    #10;

    //cambio de valor teniendo el reset y el enable activado
    tb_d_i = 4'b1010;
    #10;

    $display("---------------------------------------------------------");
    $display("simulacion finalizada correctamente");
    $finish;

  end
endmodule : tb_enabled_register
