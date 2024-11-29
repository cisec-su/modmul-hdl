`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2024 01:53:31 PM
// Design Name: 
// Module Name: mod_red_mixed_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod_red_mixed_tb();

reg clk;
reg rst;
reg [63:0] q;
wire [63:0] T;
reg [127:0] C;

parameter HP = 5;
parameter FP = (2*HP);

parameter FF_OUT = 1;

always #HP clk = ~clk;

parameter LAT = 10;

integer i;


mod_red_mixed
   #(
        .K     (128),
        .Q_LEN (64),  // don't change
        .FF_OUT(FF_OUT )
    ) mod_red_inst (
        .clk(clk),
        .rst(rst),
        .q  (q  ),
        .C  (C ),
        .T  (T  )
    );

initial begin


    $display("Simulation started.");

    clk = 1'b0;
    rst = 1'b0;
    #FP;
    rst = 1'b1;
    #FP;
    rst = 1'b0;
    #(HP);
    #(1);
    // Initialize inputs
    C = 128'h82e2e662f728b4fa42485e3a0a5d2f34;
    q = 64'h8000118000000001;
    // expected C: 0x3743c21f280bfbb920424b44cae078abf9
    for(i=0;i<LAT;i=i+1) begin
        #(FP);
        C = 128'h0;
        q = 64'h0;
    end

    if (FF_OUT) begin
        #(FP);
    end
    $display("C = %x, T = %x", C, T);
    if (T == 64'h911bc037b77e25ab)
        $display("SUCCESS!\n");
    #FP;
    #FP;
    #FP;
    #FP;
    #FP;


    $finish;
end

endmodule