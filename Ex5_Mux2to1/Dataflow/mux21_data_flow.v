module mux21_data_flow(i0,i1,sel,y);
input i0,i1,sel;
output y;
assign y =(i0&(~sel))|(i1&sel);
endmodule
