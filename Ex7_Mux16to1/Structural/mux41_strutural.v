module mux41_strutural (i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;
wire n_s0,n_s1, a0,a1,a2,a3;
not g0(n_s0,s0);
not g1(n_s1,s1);
and g2(a0,i0,n_s0,n_s1);
and g3(a1,i1,n_s1,s0);
and g4(a2,i2,s1,n_s0);
and g5(a3,i3,s1,s0);
or g6(y,a0,a1,a2,a3);
endmodule
