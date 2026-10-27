// MUX 16:1 - Structural model tu 5 MUX 4:1 (tu viet theo so do trong de)
// Tang 1: 4 MUX 4:1 chon trong tung nhom 4 dau vao, dung chung s1 s0
// Tang 2: 1 MUX 4:1 chon 1 trong 4 ket qua tang 1, dung s3 s2
module mux161_structural(d, s, y);
input [15:0] d;     // d[0]..d[15] = D0..D15
input [3:0]  s;     // s[3] = S3 (bit cao) ... s[0] = S0 (bit thap)
output y;
wire [3:0] m;       // dau ra cua 4 MUX tang 1

mux41_strutural M0(d[0],  d[1],  d[2],  d[3],  s[0], s[1], m[0]);  // D0 - D3
mux41_strutural M1(d[4],  d[5],  d[6],  d[7],  s[0], s[1], m[1]);  // D4 - D7
mux41_strutural M2(d[8],  d[9],  d[10], d[11], s[0], s[1], m[2]);  // D8 - D11
mux41_strutural M3(d[12], d[13], d[14], d[15], s[0], s[1], m[3]);  // D12 - D15

mux41_strutural M4(m[0], m[1], m[2], m[3], s[2], s[3], y);         // tang 2
endmodule
