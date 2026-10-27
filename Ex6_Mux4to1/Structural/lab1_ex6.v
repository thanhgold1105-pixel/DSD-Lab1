module lab1_ex6(SW,LEDG,LEDR);
input[17:0] SW;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
mux41_strutural DUT(SW[0],SW[1],SW[2],SW[3],SW[4],SW[5],LEDG[0]);  // (i0,i1,i2,i3,s0,s1,y)
endmodule
