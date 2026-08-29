timeunit 1ns; timeprecision 1ps;

module tb_practice_1;

  logic [31:0] tb_in_data;
  logic [31:0] tb_out_data;

  practice_1 dut (
      .in_data (tb_in_data),
      .out_data(tb_out_data)
  );

  initial begin
    $display("----------------------------------------");
    $display("time (ns) | in_data (hex) | out_data(hex) ");
    $display("-----------------------------------------");

    $monitor("%0t ps | 0x%08h | 0x%08h", $time, tb_in_data, tb_out_data);


    tb_in_data = 32'hAABBCCDD;
    #10;
    tb_in_data = 32'h12345678;
    #10;

    $display("--------------------------------------------");
    $finish;
  end
endmodule
