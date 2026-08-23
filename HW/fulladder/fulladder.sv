module fulladder (
    input  logic a_i,
    b_i,
    cin_i,
    output logic s_o,
    cout_o
);


  logic sum_1, cout_1, cout_2;


  half_adder part1 (
      .a_i(a_i),
      .b_i(b_i),
      .sum_o(sum_1),
      .carry_o(cout_1)
  );

  half_adder part2 (
      .a_i(sum_1),
      .b_i(cin_i),
      .sum_o(s_o),
      .carry_o(cout_2)
  );

  assign cout_o = cout_1 | cout_2;

endmodule : fulladder






