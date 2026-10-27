module mux21_structural(i0,i1,sel,y);
input i0,i1,sel;
output y;
wire net1,net2,net3;
not g1(net1,sel);
and g2(net2,i1,sel);
and g3(net3,i0,net1);
or g4(y,net3,net2);
endmodule
