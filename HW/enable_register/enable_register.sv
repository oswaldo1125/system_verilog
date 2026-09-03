module enable_register (
    input logic clk,
    input logic rst,
    input logic en,
    input logic [3:0] d,
    output logic [3:0] q
);

  //asynchronous_reset
  always_ff @(posedge clk, posedge rst)
    if (rst) q <= 4'b0;
    else if (en) q <= d;
endmodule : enable_register
