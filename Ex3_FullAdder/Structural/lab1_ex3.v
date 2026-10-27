module lab1_ex3(SW,LEDG,LEDR);
input[17:0] SW;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
full_adder_STRU DUT(SW[1],SW[2],SW[3],LEDG[0],LEDG[1]);  // (A,B,Cin,S,Cout)
endmodule
