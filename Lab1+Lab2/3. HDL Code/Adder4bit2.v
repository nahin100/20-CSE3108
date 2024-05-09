module Adder4bit 
(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
);

    wire [4:0] combined;
    assign combined = A+B;
    assign Cout = combined[4];
    assign S = combined[3:0];
    
endmodule