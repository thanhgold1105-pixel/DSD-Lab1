module lab1_ex4(SW,LEDG,LEDR);
input[17:0] SW;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
Four_bit_Adder_BH DUT(SW[3:0],SW[7:4],SW[8],LEDG[3:0],LEDG[4]);  // (A,B,Cin,Sum,Cout)
endmodule
