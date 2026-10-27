module half_adder_structeral(input a, b, output s, Cout);
xor G1(s,a,b);
and G2(Cout,a,b);
endmodule
