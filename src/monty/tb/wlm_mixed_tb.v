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


module wlm_mixed_tb();

reg clk;
reg rst;


// uncomment only one of below
//`define TEST_WLM
`define TEST_WLM_MIXED



localparam FF_IN  = 1;
localparam FF_SUB = 1;
localparam FF_MUL = 1;
localparam FF_SUM = 1;
localparam QH_MODE= 1;
localparam FF_OUT = 1;
localparam CORRECT = 1;

localparam LOGQ = 64;
localparam K = LOGQ*2;

// only valid for TEST_WLM
localparam R = 17;

localparam HP = 5;
localparam FP = (2*HP);

always #HP clk = ~clk;

wire [LOGQ-1:0] Q_;
wire [K    -1:0] C_;
wire [LOGQ-1:0] T_;

assign Q_ = (LOGQ == 64) ? (QH_MODE == 1) ? 64'h800a000000000001 :  64'h8000118000000001 :
            (LOGQ == 60) ? (QH_MODE == 1) ? 60'hffcf00000000001 : 60'h882d43400000001 :
            (LOGQ == 32) ? 32'h80140001 : 0;

assign C_ = (LOGQ == 64) ? 128'h82e2e662f728b4fa42485e3a0a5d2f34 :
            (LOGQ == 60) ? 120'h474ee28133287637ebdcd9e87a1613 :
            (LOGQ == 32) ? 64'h387a1613e87a1613 : 0;


assign T_ = (LOGQ == 64) ? (QH_MODE == 1) ? (CORRECT == 1) ? 64'h4dbe90c243b5b5bc : 64'hcdc890c243b5b5bd : 64'h911bc037b77e25ab :
            (LOGQ == 60) ? (QH_MODE == 1) ? 60'h8ee05f6a06df0af : 60'h9241d1764781ae2 :
            (LOGQ == 32) ? 32'h61015f31 : 0;

// applies to wlm_mixed only
localparam LOGQH = (QH_MODE == 0) ? 26 : 17;

reg  [LOGQ-1:0] q;
wire [LOGQ-1:0] T;
reg  [K   -1:0] C;

`ifdef TEST_WLM_MIXED

wlm_mixed
#(
    .LOGQ  (LOGQ),
    .CORRECT(CORRECT),
    .FF_IN (FF_IN),
    .FF_SUM(FF_SUM),
    .FF_SUB(FF_SUB),
    .FF_MUL(FF_MUL),
    .QH_MODE(QH_MODE),
    .FF_OUT(FF_OUT)
) mod_red_inst (
    .clk(clk),
    .rst(rst),
    .qH (q[LOGQ-1-:LOGQH]),
    .C  (C ),
    .T  (T  )
);

`endif

`ifdef TEST_WLM

wlm
#(
    .LOGQ  (LOGQ),
    .R(R),
    .CORRECT(CORRECT),
    .FF_IN (FF_IN),
    .FF_SUM(FF_SUM),
    .FF_SUB(FF_SUB),
    .FF_MUL(FF_MUL),
    .FF_OUT(FF_OUT)
) mod_red_inst (
    .clk(clk),
    .rst(rst),
    .qH (q[LOGQ-1:R]),
    .C  (C ),
    .T  (T  )
);

`endif

integer i;

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
    C = C_;
    q = Q_;
    for (i = 0; i < mod_red_inst.LAT; i = i + 1) begin
        #(FP);
        C = 0;
        q = 0;
    end
    $display("C = 0x%x, T = 0x%x", C, T);
    if (T == T_)
        $display("SUCCESS!\n");
    #FP;
    #FP;
    #FP;
    #FP;
    #FP;


    $finish;
end

endmodule