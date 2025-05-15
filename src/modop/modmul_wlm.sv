`include "modmul_wlm.svh"
`include "intmul_wrapper.svh"

module modmul_wlm
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
        parameter NON_STD  = 0
    )
    (
        input               clk,
        input  [LOGQ  -1:0] A  ,
        input  [LOGQ  -1:0] B  ,
        input  [LOGQH -1:0] qH ,
        output [LOGT - 1:0] T
    );

localparam LOGT = (CORRECT) ? LOGQ : LOGQ + 1;

localparam modmul_wlm_params_t params = {LOGQ, LOGQH, CORRECT, FF_IN, FF_MUL, FF_SUM, FF_SUB, FF_OUT, USE_CSA, FF_CSA, MORE_DSP, NON_STD};
localparam LAT = modmul_wlm_lat(params);

localparam intmul_wrapper_params_t intmul_params = {LOGQ, LOGQ, FF_IN, FF_MUL, FF_OUT, USE_CSA, FF_CSA, MORE_DSP, NON_STD};
localparam INTMUL_LAT = intmul_wrapper_lat(intmul_params);

localparam SHIFT_QH = INTMUL_LAT;

localparam USE_WLM_MIXED = (LOGQH <= `DSP_B_U) ? 1 : 0;

wire [2*LOGQ - 1:0] C;

wire [LOGQH  - 1:0] qH_q;

shift_reg #(
    .SHIFT (SHIFT_QH),
    .WIDTH (LOGQH   ),
    .RST_EN(0)
) shift_reg_qh (
    .clk    (clk ),
    .rst    (rst ),
    .i_data (qH  ),
    .o_data (qH_q)
);

intmul_wrapper #(
    .LOGA    (LOGQ    ),
    .LOGB    (LOGQ    ),
    .FF_IN   (FF_IN   ),
    .FF_MUL  (FF_MUL  ),
    .FF_OUT  (1       ),
    .USE_CSA (USE_CSA ),
    .FF_CSA  (FF_CSA  ),
    .MORE_DSP(MORE_DSP),
    .NON_STD (NON_STD )
) intmul_wrapper_inst (
    .clk(clk),
    .A  (A  ),
    .B  (B  ),
    .C  (C  )
);

generate
    if (USE_WLM_MIXED) begin
        wlm_mixed #(
            .LOGQ   (LOGQ   ),
            .LOGQH  (LOGQH  ),
            .CORRECT(CORRECT),
            .FF_IN  (0      ),
            .FF_SUM (FF_SUM ),
            .FF_MUL (FF_MUL ),
            .FF_SUB (FF_SUB ),
            .FF_OUT (FF_OUT )
        ) wlm_mixed_inst (
            .clk(clk ),
            .qH (qH_q),
            .C  (C   ),
            .T  (T   )
        );
    end else begin
        wlm #(
            .LOGQ   (LOGQ   ),
            .LOGQH  (LOGQH  ),
            .CORRECT(CORRECT),
            .FF_IN  (0      ),
            .FF_SUM (FF_SUM ),
            .FF_MUL (FF_MUL ),
            .FF_SUB (FF_SUB ),
            .FF_OUT (FF_OUT )
        ) wlm_inst (
            .clk(clk ),
            .qH (qH_q),
            .C  (C   ),
            .T  (T   )
        );
    end
endgenerate

endmodule
