module mux21_Behavioural (i0,i1,sel,y);
input i0,i1,sel;
output y;
reg y;
always@(*)
begin
if(sel==0) y=i0;
if(sel==1)y=i1;
end
endmodule
