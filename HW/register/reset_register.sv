module reset_register (
    input logic clk,
    input logic rst,
    input logic [3:0] d,
    output logic [3:0] q
);
  always_ff @(posedge clk, posedge rst)
    if (rst) q <= 4'b0;
    else q <= d;
endmodule : reset_register
