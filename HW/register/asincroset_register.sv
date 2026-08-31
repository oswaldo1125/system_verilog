module asincroset_register (
    input logic clk,
    input logic rst,
    input logic [3:0] d,
    output logic [3:0] q
);
  always_ff @(posedge clk)
    if (rst) q <= 4'b0;
    else q <= d;
endmodule : asincroset_register
