module lab1_ex4(SW,LEDG,LEDR);
input[17:0] SW;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
four_bit_adder_STRU DUT(SW[8],SW[3:0],SW[7:4],LEDG[3:0],LEDG[4]);  // (cin,a,b,s,cout)
endmodule
