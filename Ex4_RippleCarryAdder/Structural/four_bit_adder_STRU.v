module four_bit_adder_STRU(cin,a,b,s,cout);
input [3:0] a,b;
input cin;
output [3:0] s;
output cout;
wire [2:0] w_carry;
full_adder_STRU C1(a[0],b[0],cin,s[0], w_carry[0]);
full_adder_STRU C2(a[1],b[1], w_carry[0],s[1], w_carry[1]);
full_adder_STRU C3(a[2],b[2], w_carry[1],s[2], w_carry[2]);
full_adder_STRU C4(a[3],b[3], w_carry[2],s[3], cout);
endmodule
