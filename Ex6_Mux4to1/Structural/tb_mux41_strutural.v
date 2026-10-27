`timescale 1ns/1ps
// Testbench - Lab 1 Experiment 6 (4:1 MUX) - mux41_strutural
// Convention: s[1] = s1 = MSB, s[0] = s0 = LSB
module tb_mux41_strutural;
reg  [3:0] in;
reg  [1:0] s;
wire y;
integer k, errors;

mux41_strutural DUT(.i0(in[0]), .i1(in[1]), .i2(in[2]), .i3(in[3]), .s0(s[0]), .s1(s[1]), .y(y));

initial begin
    errors = 0;
    $display(" s1 s0 | i3 i2 i1 i0 | y");
    // For each select value: only the selected input = 1 (y = 1),
    // then only the selected input = 0 (y = 0)
    for (k = 0; k < 4; k = k + 1) begin
        s = k;
        in = 4'b0001 << k;    #10;
        $display("  %b  %b |  %b  %b  %b  %b | %b", s[1], s[0], in[3], in[2], in[1], in[0], y);
        if (y !== 1'b1) errors = errors + 1;
        in = ~(4'b0001 << k); #10;
        $display("  %b  %b |  %b  %b  %b  %b | %b", s[1], s[0], in[3], in[2], in[1], in[0], y);
        if (y !== 1'b0) errors = errors + 1;
    end
    if (errors == 0) $display("RESULT: PASSED - all 8 cases correct");
    else             $display("RESULT: FAILED - %0d wrong cases", errors);
    $stop;
end
endmodule
