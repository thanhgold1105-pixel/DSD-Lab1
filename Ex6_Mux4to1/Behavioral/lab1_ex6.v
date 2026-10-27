module lab1_ex6(SW,LEDG,LEDR);
input[17:0] SW;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
mux41beh_v2 DUT(SW[3:0],SW[5:4],LEDG[0]);  // (in,s,y)
endmodule
