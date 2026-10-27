module half_adder_dataflow(input a, b, output s, Cout);
assign s = a ^ b;
assign Cout = a & b;
endmodule
