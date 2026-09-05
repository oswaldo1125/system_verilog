module reset_register (
    input logic clk_i,
    input logic rst_i,
    input logic [3:0] d_i,
    output logic [3:0] q_o
);
  always_ff @(posedge clk_i)
    if (rst_i) q_o <= 4'b0;
    else q_o <= d_i;
endmodule : reset_register
