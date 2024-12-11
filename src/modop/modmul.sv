`include "modmul.svh"

module modmul
   #(
        parameter LOGQ     = 32,
        parameter LOGQH    = 15,
        parameter CORRECT  = 1 ,
        parameter FF_IN    = 1 ,
        parameter FF_MUL   = 1 ,
        parameter FF_SUM   = 0 ,
        parameter FF_SUB   = 0 ,
        parameter FF_OUT   = 1 ,
        parameter USE_CSA  = 1 ,
        parameter FF_CSA   = 1 ,
        parameter MORE_DSP = 1 ,
        parameter NON_STD  = 1
    )
    (
        input               clk,
        input  [LOGQ  -1:0] A  ,
        input  [LOGQ  -1:0] B  ,
        input  [LOGQH -1:0] qH ,
        output [LOGT - 1:0] T
    );

    localparam W    = LOGQ - LOGQH;
    localparam LOGT = (CORRECT) ? LOGQ : LOGQ + 1;
    
    localparam modmul_params_t modmul_params = {W, LOGQ, LOGQH, CORRECT, FF_IN, FF_MUL, FF_SUM, FF_SUB, FF_OUT, USE_CSA, FF_CSA};
    localparam LAT = modmul_lat(modmul_params);

    localparam USE_WLM_MIXED = (LOGQH < `DSP_B_U) ? 1 : 0;

    wire [2*LOGQ-1:0] product;

    intmul #(
        .LOGA(LOGQ),
        .LOGB(LOGQ),
        .FF_IN(FF_IN),
        .FF_MUL(FF_MUL),
        .FF_OUT(1),
        .USE_CSA(USE_CSA),
        .FF_CSA(FF_CSA),
        .MORE_DSP(MORE_DSP),
        .NON_STD(NON_STD)
    ) u_intmul (
        .clk(clk),
        .A(A),
        .B(B),
        .C(product)
    );

    generate
        if (USE_WLM_MIXED) begin
            wlm_mixed #(
                .LOGQ(LOGQ),
                .LOGQH(LOGQH),
                .CORRECT(CORRECT),
                .FF_IN(0),
                .FF_SUM(FF_SUM),
                .FF_MUL(FF_MUL),
                .FF_SUB(FF_SUB),
                .FF_OUT(FF_OUT)
            ) u_wlm_mixed (
                .clk(clk),
                .qH(qH),
                .C(product),
                .T(T)
            );
        end else begin
            wlm #(
                .LOGQ(LOGQ),
                .LOGQH(LOGQH),
                .CORRECT(CORRECT),
                .FF_IN(0),
                .FF_SUM(FF_SUM),
                .FF_MUL(FF_MUL),
                .FF_SUB(FF_SUB),
                .FF_OUT(FF_OUT)
            ) u_wlm (
                .clk(clk),
                .qH(qH),
                .C(product),
                .T(T)
            );
        end
    endgenerate

endmodule
