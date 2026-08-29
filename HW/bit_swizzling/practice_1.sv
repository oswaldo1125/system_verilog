module practice_1 (

    input  logic [31:0] in_data,
    output logic [31:0] out_data


);

  logic [7:0] b0;
  logic [7:0] b1;
  logic [7:0] b2;
  logic [7:0] b3;

  assign b0 = in_data[7:0];
  assign b1 = in_data[15:8];
  assign b2 = in_data[23:16];
  assign b3 = in_data[31:24];

  assign out_data = {b0, b1, b2, b3};

endmodule : practice_1
