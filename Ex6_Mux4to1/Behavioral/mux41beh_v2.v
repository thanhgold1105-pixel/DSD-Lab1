module mux41beh_v2(in,s,y );
output y ;
input [3:0]in ;
input [1:0]s ;
reg y;
always@(in,s)
begin
case ({s[1],s[0]})
2'b00: y <= in[0];
2'b01: y <= in[1];
2'b10: y <= in[2];
2'b11: y <= in[3];
endcase
end
endmodule
