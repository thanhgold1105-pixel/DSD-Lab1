module lab1_ex5(SW,LEDG,LEDR);
input[17:0] SW;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
mux21_Behavioural DUT(SW[1],SW[2],SW[3],LEDG[0]);  // (i0,i1,sel,y)
endmodule
