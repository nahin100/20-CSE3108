module RF4bit (
    input wire clk,
    input wire reset,
    input wire [3:0] Din,
    input wire Sel,  
    output wire [3:0] Dout
);

    RF1bit cir1stbit (.clk(clk), .reset(reset), .Din(Din[0]), .Sel(Sel), .Dout(Dout[0]));
    RF1bit cir2ndbit (.clk(clk), .reset(reset), .Din(Din[1]), .Sel(Sel), .Dout(Dout[1]));
    RF1bit cir3rdbit (.clk(clk), .reset(reset), .Din(Din[2]), .Sel(Sel), .Dout(Dout[2]));
    RF1bit cir4thbit (.clk(clk), .reset(reset), .Din(Din[3]), .Sel(Sel), .Dout(Dout[3]));
    
endmodule
