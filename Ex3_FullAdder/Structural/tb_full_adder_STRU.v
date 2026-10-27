`timescale 1ns/1ps
// Testbench - Lab 1 Experiment 3 (full adder) - full_adder_STRU
module tb_full_adder_STRU;
reg A, B, Cin;
wire S, Cout;
integer i, errors;

full_adder_STRU DUT(.A(A), .B(B), .Cin(Cin), .Sum(S), .Carry(Cout));

initial begin
    errors = 0;
    $display(" A B Cin | Cout S");
    for (i = 0; i < 8; i = i + 1) begin
        {A, B, Cin} = i;
        #10;
        $display(" %b %b  %b  |   %b  %b", A, B, Cin, Cout, S);
        if ({Cout, S} !== A + B + Cin) errors = errors + 1;
    end
    if (errors == 0) $display("RESULT: PASSED - all 8 cases correct");
    else             $display("RESULT: FAILED - %0d wrong cases", errors);
    $stop;
end
endmodule
