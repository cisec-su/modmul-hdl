`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 05:29:34 PM
// Design Name: 
// Module Name: word_red_r26_tb
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


module word_red_r26_tb();


reg clk;
reg rst;
parameter K = 90;
parameter Q_LEN = 64;
parameter Y = 12;
parameter R = 26;
reg [25:0] qH;
wire [K-R-1:0] T;
reg [K-1:0] C;

reg [K-1:0] C_LONG = 90'h328b4fa42485e3a0a5d2f34;

parameter HP = 5;
parameter FP = (2*HP);

parameter FF_OUT = 1;

always #HP clk = ~clk;

parameter LAT = 4;

integer i;

word_red_r26 
   #(
        .K     (K),
        .Q_LEN (Q_LEN),  // don't change
        .TL_LEN(26),
        .Y(Y),
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
    C = C_LONG[R-1:0];
    qH = 26'h2000046;
    #(FP);
    C = C_LONG[K-1:R] << R;
    qH = 26'h0;

    for(i=0;i<LAT;i=i+1) begin
        #(FP);
        C = 90'h0;
        qH = 26'h0;
    end

    if (FF_OUT) begin
        #(FP);
    end
    $display("C = %x, T = %x", C, T);
    if (T == 90'hfe875f38e3940e83)
        $display("SUCCESS!\n");
    #FP;
    #FP;
    #FP;
    #FP;
    #FP;


    $finish;
end

endmodule
