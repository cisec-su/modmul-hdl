`timescale 1ns / 1ps
module intmul_nonstd_BBAxBBA_tb();

parameter LOGA = 60;
parameter LOGB = 60;

reg                     clk;
reg   [LOGA     -1:0]   A;
reg   [LOGB     -1:0]   B;
wire  [LOGA+LOGB-1:0]   C;
reg   [LOGA+LOGB-1:0]   C_;

parameter HP        = 5;
parameter FP = (2 * HP);

parameter FF_IN     = 1;
parameter FF_MUL    = 1;
parameter FF_OUT    = 1;
parameter USE_CSA   = 1;
parameter FF_CSA    = 1;
parameter MORE_DSP  = 1;

always #HP clk = ~clk;

integer i = 0;

intmul_nonstd_BBAxBBA 
    #(
        .LOGA(LOGA),
        .LOGB(LOGB),
        .FF_IN(FF_IN),
        .FF_MUL(FF_MUL),
        .FF_OUT(FF_OUT),
        .USE_CSA(USE_CSA),
        .FF_CSA(FF_CSA),
        .MORE_DSP(MORE_DSP)
    ) mul (
        .clk(clk),
        .A(A),
        .B(B),
        .C(C)
    );

initial begin
    $display("Simulation started.");

    clk = 1'b0;
    #(HP);

    A = {LOGA{1'b1}};
    B = {LOGB{1'b1}};
    C_ = A * B;

    for (i = 0; i < mul.LAT; i = i + 1) begin
        #(FP);
        A = 0;
        B = 0;    
    end

    $display("A = %x, B = %x, C = %x", A, B, C);

    if (C == C_)
        $display("SUCCESS!\n");
    else
        $display("FAILED! Expected C = %x, Got C = %x\n", C_, C);

    #FP;
    $finish;
end

endmodule
