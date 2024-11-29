`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2024 10:45:45 PM
// Design Name: 
// Module Name: word_red_qh26_tb
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


module word_red_qh26_tb(

    );

reg clk;
reg rst;
parameter K = 128;
parameter Q_LEN = 64;
localparam R = Q_LEN - 26;
reg [25:0] qH;
wire [K-R-1:0] T;
reg [K-1:0] C;

parameter HP = 5;
parameter FP = (2*HP);

parameter FF_OUT = 1;

always #HP clk = ~clk;

parameter LAT = 6;

integer i;

word_red_qh26 
   #(
        .K     (K),
        .Q_LEN (Q_LEN),  // don't change
        .TL_LEN(26),
        .FF_CL(1), // todo, check false
        .FF_OUT(FF_OUT )
    ) mod_red_inst
    (
        .clk(clk),
        .rst(rst),
        .qH (qH  ),
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
    C = 128'h82e2e662f728b4fa42485e3a0a5d2f34 >> (128-K);
    qH = 26'h2000046;
    // expected C: 0x3743c21f280bfbb920424b44cae078abf9
    for(i=0;i<LAT;i=i+1) begin
        #(FP);
        C = 128'h0;
        qH = 26'h0;
    end

    if (FF_OUT) begin
        #(FP);
    end
    $display("C = %x, T = %x", C, T);
    if (T == 90'h20b8b9997c7ea16ab8e3941)
        $display("SUCCESS!\n");
    #FP;
    #FP;
    #FP;
    #FP;
    #FP;


    $finish;
end

endmodule