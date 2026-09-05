timeunit 1ns; timeprecision 1ps;


module tb_reset_register;

  logic tb_clk_i;
  logic tb_rst_i;
  logic [3:0] tb_d_i;
  logic [3:0] tb_q_o;

  reset_register dut (
      .clk_i(tb_clk_i),
      .rst_i(tb_rst_i),
      .d_i  (tb_d_i),
      .q_o  (tb_q_o)
  );
  always #5 tb_clk_i = ~tb_clk_i;


  initial begin
    $display("---------------------------------------------------------");
    $display("time\t\tclk\trst\td\t\tq");
    $display("---------------------------------------------------------");

    //  end

    //always @(posedge tb_clk_i) begin
    //   #1;
    $monitor("%0t\t\t%b\t%b\t%b\t\t%b", $time, tb_clk_i, tb_rst_i, tb_d_i, tb_q_o);
    //  end

    //initial begin
    //Inicialización de señales
    tb_clk_i = 0;
    tb_rst_i = 0;
    tb_d_i   = 4'b0000;


    #10;

    // prueva con rst desactivado 
    tb_d_i   = 4'b1010;
    tb_rst_i = 0;
    #10;

    //cambio en la entrada con reset desactivado
    tb_d_i = 4'b1100;
    #10;

    //prueva con el reset activado 
    tb_rst_i = 1;
    #10;

    //preuva del cambio de la entrada teniendo el rst activado
    tb_d_i = 4'b0110;
    #10;

    //prueva con reset activado pero con reloj en edge negativo
    tb_d_i   = 4'b1011;
    tb_rst_i = 0;
    #10;

    $display("---------------------------------------------------------");
    $display("simulacion finalizada exitosamente");
    $finish;

  end
endmodule : tb_reset_register
