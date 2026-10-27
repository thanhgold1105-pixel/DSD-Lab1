`timescale 1ns/1ps
// Testbench - Lab 1 Experiment 5 (2:1 MUX) - mux21_Behavioural
module tb_mux21_Behavioural;
reg i0, i1, sel;
wire y;
integer i, errors;

mux21_Behavioural DUT(.i0(i0), .i1(i1), .sel(sel), .y(y));

initial begin
    errors = 0;
    $display(" sel i1 i0 | y");
    for (i = 0; i < 8; i = i + 1) begin
        {sel, i1, i0} = i;
        #10;
        $display("  %b   %b  %b | %b", sel, i1, i0, y);
        if (y !== (sel ? i1 : i0)) errors = errors + 1;
    end
    if (errors == 0) $display("RESULT: PASSED - all 8 cases correct");
    else             $display("RESULT: FAILED - %0d wrong cases", errors);
    $stop;
end
endmodule
