module flip_flop (
    input logic clk_i,
    input logic [3:0] d_i,
    output logic [3:0] q_o
);
  always_ff @(posedge clk_i) q_o <= d_i;
endmodule : flip_flop
