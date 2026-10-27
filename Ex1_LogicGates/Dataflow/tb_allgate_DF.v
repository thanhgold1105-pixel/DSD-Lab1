`timescale 1ns/1ps
// Testbench - Lab 1 Experiment 1 (basic logic gates) - allgate_DF
module tb_allgate_DF;
reg a, b;
wire yand, yor, ynot, ynand, ynor, yxor, yxnor;
integer i, errors;

allgate_DF DUT(.a(a), .b(b), .yand(yand), .yor(yor), .ynot(ynot), .ynand(ynand),
        .ynor(ynor), .yxor(yxor), .yxnor(yxnor));

initial begin
    errors = 0;
    $display(" a b | AND OR NOT NAND NOR XOR XNOR");
    for (i = 0; i < 4; i = i + 1) begin
        {a, b} = i;
        #10;
        $display(" %b %b |  %b   %b   %b    %b    %b   %b    %b",
                 a, b, yand, yor, ynot, ynand, ynor, yxor, yxnor);
        if ({yand,yor,ynot,ynand,ynor,yxor,yxnor} !==
            {a&b, a|b, ~a, ~(a&b), ~(a|b), a^b, ~(a^b)}) errors = errors + 1;
    end
    if (errors == 0) $display("RESULT: PASSED - all 4 cases correct");
    else             $display("RESULT: FAILED - %0d wrong cases", errors);
    $stop;
end
endmodule
