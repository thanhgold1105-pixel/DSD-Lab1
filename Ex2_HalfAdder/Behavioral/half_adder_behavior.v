module half_adder_behavior(sum,carry,a,b );
output sum,carry;
input a,b;
reg sum,carry;
always @(a,b)
begin
sum <= a ^ b;
carry <= a&b ;
end
endmodule
