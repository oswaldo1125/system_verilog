module flip_flop (
    input logic clk_i,
    input logic [3:0] d_i,
    output logic [3:0] q_o
);
  always_ff @(posedge clk) q <= d;
endmodule : flip_flop
