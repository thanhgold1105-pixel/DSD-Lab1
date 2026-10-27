// Lab 1 - Experiment 1 - Behavior model
// [SUA] Bo tu khoa 'assign' ben trong khoi always
//       (procedural continuous assignment - Quartus khong tong hop duoc)
module allgate_BH ( a, b, yand,yor,ynot,ynand,ynor,yxor,yxnor );
input a,b;
output yand, yor, ynot, ynand, ynor, yxor, yxnor;
reg yand, yor, ynot, ynand, ynor, yxor, yxnor;
always @(*)
begin
    yand = a & b;      // AND Operation
    yor = a | b;       // OR Operation
    ynot = ~a ;        // NOT Operation
    ynand = ~(a & b);  // NAND Operation
    ynor = ~(a | b);   //NOR Operation
    yxor = a ^ b;      //XOR Operation
    yxnor =~(a^b);     //XNOR Operation
end
endmodule // END of the module
