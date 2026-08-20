timeunit 1ns; timeprecision 1ps;

module tb_half_adder;

  logic tb_a_i, tb_b_i;
  logic tb_sum_o, tb_carry_o;

  half_adder dut (
      .a_i(tb_a_i),
      .b_i(tb_b_i),

      .sum_o  (tb_sum_o),
      .carry_o(tb_carry_o)
  );



  initial begin

    $display("a b | sum carry");
    $monitor("%b %b | %b %b", tb_a_i, tb_b_i, tb_sum_o, tb_carry_o);

    #0 tb_a_i = 1;
    tb_b_i = 0;

    #10 tb_a_i = 0;
    tb_b_i = 1;

    #10 tb_a_i = 1;
    tb_b_i = 1;

    #10;

    $finish;
  end
endmodule


