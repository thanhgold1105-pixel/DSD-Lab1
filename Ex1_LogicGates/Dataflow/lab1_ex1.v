// Lab 1 - Experiment 1 - Top-level cho kit DE2 (Cyclone II) - model allgate_DF
// [SUA] Them LEDG[6] cho cong yxnor (code goc chi noi 8 tin hieu, yxnor bi bo trong)
// Gan chan:  SW[1] = a , SW[2] = b
//   LEDG[5]=AND  LEDG[4]=OR  LEDG[3]=NOT(a)  LEDG[2]=NAND
//   LEDG[1]=NOR  LEDG[0]=XOR LEDG[6]=XNOR    LEDR = SW (hien thi trang thai cong tac)
module lab1_ex1(SW,LEDG,LEDR);
input[17:0] SW;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
allgate_DF DUT(SW[1],SW[2],LEDG[5],LEDG[4],LEDG[3],LEDG[2],LEDG[1],LEDG[0],LEDG[6]);
endmodule
