`timescale 1ns/1ps
// Testbench - Lab 1 Experiment 2 (half adder) - half_adder_behavior
module tb_half_adder_behavior;
reg A, B;
wire S, Cout;
integer i, errors;

half_adder_behavior DUT(.a(A), .b(B), .sum(S), .carry(Cout));

initial begin
    errors = 0;
    $display(" A B | Cout S");
    for (i = 0; i < 4; i = i + 1) begin
        {A, B} = i;
        #10;
        $display(" %b %b |   %b  %b", A, B, Cout, S);
        if ({Cout, S} !== A + B) errors = errors + 1;
    end
    if (errors == 0) $display("RESULT: PASSED - all 4 cases correct");
    else             $display("RESULT: FAILED - %0d wrong cases", errors);
    $stop;
end
endmodule
