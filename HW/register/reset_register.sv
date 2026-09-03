module reset_register (
    input logic clk_i,
    input logic rst_i,
    input logic [3:0] d_i,
    output logic [3:0] q_o
);
  always_ff @(posedge clk, posedge rst)
    if (rst) q <= 4'b0;
    else q <= d;
endmodule : reset_register
