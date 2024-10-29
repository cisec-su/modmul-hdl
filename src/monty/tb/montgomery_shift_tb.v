`timescale 1ns / 1ps

module montgomery_shift_tb();

reg clk;
reg rst;


// uncomment only one of below
//`define TEST_WLM
`define TEST_WLM_MIXED


localparam LOGQ = 64;
localparam LOGQH  = 32;
localparam FF_IN  = 1;
localparam FF_SHF0= 1;
localparam FF_SUB0= 1;
localparam FF_SHF1= 1;
localparam FF_SUB1= 1;
localparam FF_SUM = 1;
localparam FF_OUT = 1;
localparam CORRECT = 1;
localparam USE_K3 = 1;
localparam LOGK1 = 5;
localparam LOGK2 = 5;
localparam LOGK3 = 5;


localparam K = LOGQ*2;

localparam HP = 5;
localparam FP = (2*HP);

always #HP clk = ~clk;

wire [LOGQ-1:0] Q_;
wire [K    -1:0] C_;
wire [LOGQ-1:0] T_;
wire [LOGK1-1:0] K1_;
wire [LOGK2-1:0] K2_;
wire [LOGK3-1:0] K3_;

assign Q_ = (LOGQ == 64) ? 64'hb040000000000001 : 0;
assign C_ = (LOGQ == 64) ? 128'h7958100000000001607ffffffffffffd : 0;
assign T_ = (LOGQ == 64) ? 64'h2b5fc00000000003 : 0;
assign K1_ = (LOGQ == 64) ? 5'd30 : 0;
assign K2_ = (LOGQ == 64) ? 5'd28 : 0;
assign K3_ = (LOGQ == 64) ? 5'd22 : 0;



reg  [LOGQ-1:0] q;
wire [LOGQ-1:0] T;
reg  [K   -1:0] C;
reg  [LOGK1-1:0] K1;
reg  [LOGK2-1:0] K2;
reg  [LOGK3-1:0] K3;


montgomery_shift
#(
    .LOGQ  (LOGQ),
    .LOGQH (LOGQH),
    .CORRECT(CORRECT),
    .FF_IN (FF_IN),
    .FF_SUB0(FF_SUB0),
    .FF_SHF0(FF_SHF0),
    .FF_SUB1(FF_SUB1),
    .FF_SHF1(FF_SHF1),
    .FF_SUM (FF_SUM),
    .FF_OUT (FF_OUT),
    .USE_K3 (USE_K3),
    .LOGK1  (LOGK1),
    .LOGK2  (LOGK2),
    .LOGK3  (LOGK3)
) mod_red_inst (
    .clk(clk),
    .rst(rst),
    .qH (q[LOGQ-1-:LOGQH]),
    .C  (C ),
    .K1 (K1),
    .K2 (K2),
    .K3 (K3),
    .T  (T )
);


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
    K1 = K1_;
    K2 = K2_;
    K3 = K3_;
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