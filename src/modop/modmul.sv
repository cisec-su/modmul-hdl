`include "modmul.svh"

module modmul
   #(
        parameter LOGA                   = 32,
        parameter LOGB                   = 32,
        parameter LOGQ                   = 32,
        parameter LOGQH                  = 15,
        parameter CORRECT                = 1 ,
        parameter FF_IN                  = 1 ,
        parameter FF_MUL                 = 1 ,
        parameter FF_SUM                 = 0 ,
        parameter FF_SUB                 = 0 ,
        parameter FF_OUT                 = 1 ,
        parameter USE_CSA                = 1 ,
        parameter FF_CSA                 = 1 ,
        parameter MORE_DSP               = 1 ,
        parameter DSP_B                  = 17, 
        parameter intmul_mode_t MUL_MODE = USE_STD
    )
    (
        input               clk,
        input               rst,
        input  [LOGA  -1:0] A  ,
        input  [LOGB  -1:0] B  ,
        input  [LOGQH -1:0] qH ,
        output [LOGT - 1:0] T
    );

    localparam W    = LOGQ - LOGQH;
    localparam LOGT = (CORRECT) ? LOGQ : LOGQ + 1;
    
    localparam intmul_params_t intmul_params = {FF_IN, FF_MUL, FF_OUT, FF_CSA, USE_CSA};
    localparam wlm_mixed_params_t wlm_mixed_params = {LOGQ, LOGQH, CORRECT, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT};
    localparam wlm_params_t wlm_params = {W, LOGQ, LOGQH, CORRECT, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT};
    localparam modmul_params_t modmul_params = {W, LOGQ, LOGQH, CORRECT, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT, DSP_B};
    localparam LAT = modmul_lat(intmul_params, wlm_mixed_params, wlm_params, modmul_params);

    localparam reduction_mode_t RED_MODE = (LOGQH < DSP_B) ? USE_WLM_MIXED : USE_WLM;

    wire [2*LOGQ-1:0] product;

    intmul #(
        .LOGA(LOGA),
        .LOGB(LOGB),
        .FF_IN(FF_IN),
        .FF_MUL(FF_MUL),
        .FF_OUT(FF_OUT),
        .USE_CSA(USE_CSA),
        .FF_CSA(FF_CSA),
        .MORE_DSP(MORE_DSP),
        .MUL_MODE(MUL_MODE)
    ) u_intmul (
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .C(product)
    );

    generate
        if (RED_MODE == USE_WLM_MIXED) begin
            wlm_mixed #(
                .LOGQ(LOGQ),
                .LOGQH(LOGQH),
                .CORRECT(CORRECT),
                .FF_IN(FF_IN),
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
                .FF_IN(FF_IN),
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
