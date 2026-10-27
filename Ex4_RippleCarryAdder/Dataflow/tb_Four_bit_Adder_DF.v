`timescale 1ns/1ps
// Testbench - Lab 1 Experiment 4 (4-bit ripple carry adder) - Four_bit_Adder_DF
module tb_Four_bit_Adder_DF;
reg  [3:0] A, B;
reg        Cin;
wire [3:0] Sum;
wire       Cout;
integer errors;

Four_bit_Adder_DF DUT(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

task check; input [3:0] ta, tb; input tc;
begin
    A = ta; B = tb; Cin = tc; #10;
    $display(" %2d + %2d + %b = %2d   Cout=%b Sum=%b", A, B, Cin, {Cout, Sum}, Cout, Sum);
    if ({Cout, Sum} !== A + B + Cin) errors = errors + 1;
end
endtask

initial begin
    errors = 0;
    $display("  A +  B +Cin = result");
    check(4'd0,  4'd0,  1'b0);
    check(4'd4,  4'd4,  1'b0);
    check(4'd10, 4'd10, 1'b0);
    check(4'd15, 4'd15, 1'b0);
    check(4'd15, 4'd0,  1'b1);
    check(4'd2,  4'd10, 1'b0);
    check(4'd5,  4'd8,  1'b0);
    check(4'd5,  4'd4,  1'b0);
    check(4'd7,  4'd9,  1'b1);
    check(4'd8,  4'd8,  1'b0);
    if (errors == 0) $display("RESULT: PASSED - all cases correct");
    else             $display("RESULT: FAILED - %0d wrong cases", errors);
    $stop;
end
endmodule
