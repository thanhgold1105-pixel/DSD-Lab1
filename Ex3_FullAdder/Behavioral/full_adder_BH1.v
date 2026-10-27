// [SUA 1] Them tu khoa 'module' (code goc thieu)
module full_adder_BH1 (input wire A, B, Cin, output reg S, output reg Cout);
always @(A or B or Cin)
begin
// [SUA 2] case (A | B | Cin) -> case ({A,B,Cin})
//         Dau | la phep OR (ra 1 bit), dung { } de ghep thanh so 3 bit
case ({A,B,Cin})
3'b000: begin S = 0; Cout = 0; end
3'b001: begin S = 1; Cout = 0; end
3'b010: begin S = 1; Cout = 0; end
3'b011: begin S = 0; Cout = 1; end
3'b100: begin S = 1; Cout = 0; end
3'b101: begin S = 0; Cout = 1; end
3'b110: begin S = 0; Cout = 1; end
3'b111: begin S = 1; Cout = 1; end
endcase
end
endmodule
// [SUA 3] Them 'endmodule' (code goc thieu)
