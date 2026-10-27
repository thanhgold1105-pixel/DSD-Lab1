module lab1_ex2(SW,LEDG,LEDR);
input[17:0] SW;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
half_adder_structeral DUT(SW[1],SW[2],LEDG[0],LEDG[1]);  // (a,b,s,Cout)
endmodule
