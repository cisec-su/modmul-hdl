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

localparam TEST_MOD_RED_MIXED_LL = 0;
localparam TEST_MOD_RED_MIXED    = 1;

localparam TEST_IP = TEST_MOD_RED_MIXED_LL;

// brlow only active for TEST_MOD_RED_MIXED_LL
localparam FF_SUB = 0;
localparam FF_MUL = 1;
localparam FF_SUM = 0;
localparam QH_MODE= 1;
/////////////////////////////////////////////

localparam FF_OUT = 1;

localparam Q_LEN = 60;
localparam K = Q_LEN*2;

localparam LAT_ = (TEST_IP == TEST_MOD_RED_MIXED_LL) ? (4 + FF_SUM*2 + FF_SUB*2) : (TEST_IP == TEST_MOD_RED_MIXED) ? ((Q_LEN == 64) ? 10 : 9) : 0;

localparam LAT = LAT_ + FF_OUT;


localparam HP = 5;
localparam FP = (2*HP);

always #HP clk = ~clk;

wire [Q_LEN-1:0] Q_;
wire [K    -1:0] C_;
wire [Q_LEN-1:0] T_;

assign Q_ = (Q_LEN == 64) ? 64'h8000118000000001 :
           (Q_LEN == 60) ? (TEST_IP == TEST_MOD_RED_MIXED_LL && QH_MODE == 1) ? 60'hffcf00000000001 : 60'h882d43400000001 : 0;

assign C_ = (Q_LEN == 64) ? 128'h82e2e662f728b4fa42485e3a0a5d2f34 :
           (Q_LEN == 60) ? 120'h474ee28133287637ebdcd9e87a1613 : 0;

assign T_ = (Q_LEN == 64) ? 64'h911bc037b77e25ab :
           (Q_LEN == 60) ? (TEST_IP == TEST_MOD_RED_MIXED_LL && QH_MODE == 1) ? 60'h8ee05f6a06df0af : 60'h9241d1764781ae2 : 0;


reg  [Q_LEN-1:0] q;
wire [Q_LEN-1:0] T;
reg  [K    -1:0] C;

generate
    if (TEST_IP == TEST_MOD_RED_MIXED_LL) begin
       mod_red_mixed_ll
       #(
            .K     (K),
            .Q_LEN (Q_LEN),  // don't change
            .FF_SUM(FF_SUM),
            .FF_SUB(FF_SUB),
            .FF_MUL(FF_MUL),
            .QH_MODE(QH_MODE),
            .FF_OUT(FF_OUT)
        ) mod_red_inst (
            .clk(clk),
            .rst(rst),
            .q  (q  ),
            .C  (C ),
            .T  (T  )
        );
    end
    else if (TEST_IP == TEST_MOD_RED_MIXED) begin
       mod_red_mixed
       #(
            .K     (K),
            .Q_LEN (Q_LEN),  // don't change
            .FF_OUT(FF_OUT )
        ) mod_red_inst (
            .clk(clk),
            .rst(rst),
            .q  (q  ),
            .C  (C ),
            .T  (T  )
        );
    end
endgenerate


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
    for(i=0;i<LAT;i=i+1) begin
        #(FP);
        C = 0;
        q = 0;
    end
    $display("C = %x, T = %x", C, T);
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