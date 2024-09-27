module RF_Nbit (
    input wire clk,
    input wire reset,
    input wire [2:0] Din,
    input wire Sel,  
    output wire [2:0] Dout
);

    RF_1bit cir1stbit (.clk(clk), .reset(reset), .Din(Din[0]), .Sel(Sel), .Dout(Dout[0]));
    RF_1bit cir2ndbit (.clk(clk), .reset(reset), .Din(Din[1]), .Sel(Sel), .Dout(Dout[1]));
    RF_1bit cir3rdbit (.clk(clk), .reset(reset), .Din(Din[2]), .Sel(Sel), .Dout(Dout[2]));
    
endmodule
