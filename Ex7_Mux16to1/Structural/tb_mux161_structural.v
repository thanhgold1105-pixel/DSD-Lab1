`timescale 1ns/1ps
// Testbench - Lab 1 Experiment 7 (16:1 MUX from five 4:1 MUX) - mux161_structural
module tb_mux161_structural;
reg  [15:0] d;
reg  [3:0]  s;
wire y;
integer k, errors;

mux161_structural DUT(.d(d), .s(s), .y(y));

initial begin
    errors = 0;
    $display(" S3S2S1S0 | sel. | y (sel. = 1) | y (sel. = 0)");
    for (k = 0; k < 16; k = k + 1) begin
        s = k;
        d = 16'h0001 << k;    #10;
        if (y !== 1'b1) errors = errors + 1;
        $write("   %b   | D%0d\t |      %b", s, k, y);
        d = ~(16'h0001 << k); #10;
        if (y !== 1'b0) errors = errors + 1;
        $display("       |      %b", y);
    end
    if (errors == 0) $display("RESULT: PASSED - all 32 cases correct");
    else             $display("RESULT: FAILED - %0d wrong cases", errors);
    $stop;
end
endmodule
