timeunit 1ns; timeprecision 1ps;

module tb_asincroset_register;

  logic tb_clk_i;
  logic tb_rst_i;
  logic [3:0] tb_d_i;
  logic [3:0] tb_q_o;

  asincroset_register dut (
      .clk_i(tb_clk_i),
      .rst_i(tb_rst_i),
      .d_i  (tb_d_i),
      .q_o  (tb_q_o)
  );

  //generacion concurrente del reloj
  always #5 tb_clk_i = ~tb_clk_i;

  initial begin
    $display("time\t\tclk\trst\td\t\tq");
    $monitor("%0t\t\t%b\t%b\t%b\t\t%b", $time, tb_clk_i, tb_rst_i, tb_d_i, tb_q_o);

    // Inicialización de señales
    tb_clk_i = 0;
    tb_rst_i = 0;
    tb_d_i   = 4'b0000;

    #2;
    tb_rst_i = 1;
    #10;
    tb_rst_i = 0;
    #8;
    tb_d_i = 4'b1010;
    #10;
    tb_d_i = 4'b0101;
    #10;
    tb_d_i = 4'b1111;
    #4;
    tb_rst_i = 1;
    #6;
    tb_rst_i = 0;
    #10;
    tb_d_i = 4'b0011;
    #15;

    $display("---------------------------------------");
    $display("Simulacion finalizada exitosamente.");
    $finish;
  end
endmodule : tb_asincroset_register
