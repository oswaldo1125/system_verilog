module enabled_register (
    input logic clk_i,
    input logic rst_i,
    input logic en_i,
    input logic [3:0] d_i,
    output logic [3:0] q_o
);

  always_ff @(posedge clk_i, posedge rst_i) begin
    if (rst_i) q_o <= 4'b0000;
    else if (en_i) q_o <= d_i;
  end
endmodule : enabled_register
