// Behavior model - tu viet (de khong cho san)
// Mo ta hanh vi cong lan truyen nho (ripple): cong tung bit tu bit 0 len bit 3,
// so nho c cua bit truoc duoc dua vao bit sau.
module Four_bit_Adder_BH(A,B,Cin,Sum,Cout);
input [3:0] A,B;
input Cin;
output reg [3:0] Sum;
output reg Cout;
reg c;
integer i;
always @(A or B or Cin)
begin
    c = Cin;
    for (i = 0; i < 4; i = i + 1)
    begin
        Sum[i] = A[i] ^ B[i] ^ c;
        c = (A[i] & B[i]) | (A[i] & c) | (B[i] & c);
    end
    Cout = c;
end
endmodule
