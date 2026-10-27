module full_adder_DF(input a, b, cin, output S, Cout);
assign S = a ^ b ^ cin;
assign Cout = (a & b) | (b & cin) | (a & cin);
endmodule
