// Lab 1 - Experiment 1 - Gate-level (Structural) model
// Code goc cua thay - KHONG thay doi
module allgate_GL ( a, b, yand,yor,ynot,ynand,ynor,yxor,yxnor );
input a,b;
output yand, yor, ynot, ynand, ynor, yxor, yxnor;
and  G1(yand,a,b);    // AND Operation
or   G2(yor,a, b);    // OR Operation
not  G3(ynot,a) ;     // NOT Operation
nand G4(ynand,a,b);   // NAND Operation
nor  G5(ynor,a,b);    //NOR Operation
xor  G6(yxor,a,b);    //XOR Operation
xnor G7(yxnor,a,b);   //XNOR Operation
endmodule // END of the module
