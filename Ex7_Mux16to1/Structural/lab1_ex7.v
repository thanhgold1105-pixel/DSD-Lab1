// Top-level Lab 1 - Ex7 cho kit DE2
// Kit chi co 18 switch, mach can 16 dau vao du lieu + 4 bit chon = 20
//   S3 S2 S1 S0 = SW17 SW16 SW15 SW14
//   D0 .. D13   = SW0 .. SW13
//   D14 = KEY0, D15 = KEY1 (nut nhan: nhan giu = 1; KEY tich cuc muc thap nen phai dao ~)
//   y = LEDG0
module lab1_ex7(SW,KEY,LEDG,LEDR);
input[17:0] SW;
input[3:0] KEY;
output[7:0] LEDG;
output[17:0] LEDR;
assign LEDR=SW;
mux161_structural DUT({~KEY[1],~KEY[0],SW[13:0]}, SW[17:14], LEDG[0]);  // (d,s,y)
endmodule
