// [SUA 1] Danh sach cong (a,b,cin,Cum,Carry) -> (A,B,Cin,Sum,Carry)
//         cho khop voi khai bao ben duoi (Verilog phan biet hoa/thuong, 'Cum' go nham)
module full_adder_STRU(A,B,Cin,Sum,Carry);
output Sum,Carry;
input A,B,Cin;
wire x,y,z;
xor g1(x,A,B);
xor g2(Sum,x,Cin);
and g3(y,x,Cin);
and g4(z,A,B);
// [SUA 2] or g5(Carry,x,y) -> or g5(Carry,y,z)  (theo so do: Carry = Y + Z)
or g5(Carry,y,z);
endmodule
