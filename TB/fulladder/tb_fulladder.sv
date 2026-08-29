timeunit 1ns; timeprecision 1ps;
module tb_fulladder;

  logic tb_a_i, tb_b_i, tb_cin_i;
  logic tb_s_o, tb_cout_o;

  fulladder dut (
      .a_i(tb_a_i),
      .b_i(tb_b_i),
      .cin_i(tb_cin_i),
      .s_o(tb_s_o),
      .cout_o(tb_cout_o)
  );

  initial begin


    $display("a b cin | s cout");
    $monitor("%b %b %b | %b %b", tb_a_i, tb_b_i, tb_cin_i, tb_s_o, tb_cout_o);

    //prueva con acarreo de entrada:
    #0 tb_a_i = 0;
    tb_b_i   = 0;
    tb_cin_i = 1;

    //prueva de la suma de entrada
    #10 tb_a_i = 1;
    tb_b_i   = 1;
    tb_cin_i = 0;

    //entrada alta en las 3 entradas del fulladder
    #10 tb_a_i = 1;
    tb_b_i   = 1;
    tb_cin_i = 1;

    #10;

    $finish;

  end
endmodule



