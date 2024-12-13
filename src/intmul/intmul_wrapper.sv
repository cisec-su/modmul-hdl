`include "dsp.vh"
`include "intmul_wrapper.svh"

module intmul_wrapper
   #(
        parameter LOGA     = 64,
        parameter LOGB     = 64,
        parameter FF_IN    = 1 ,
        parameter FF_MUL   = 1 ,
        parameter FF_OUT   = 1 ,
        parameter USE_CSA  = 0 ,
        parameter FF_CSA   = 0 ,
        parameter MORE_DSP = 0 ,
        parameter NON_STD  = 0
    )
    (
        input                  clk,
        input  [LOGA     -1:0] A,
        input  [LOGB     -1:0] B,
        output [LOGA+LOGB-1:0] C
    );

localparam intmul_wrapper_params_t params = {LOGA, LOGB, FF_IN, FF_MUL, FF_OUT, USE_CSA, FF_CSA, MORE_DSP, NON_STD};
localparam LAT = intmul_wrapper_lat(params);

generate
    if (NON_STD == 0) begin
        mac_std #(
            .LOGA   (LOGA   ),
            .LOGB   (LOGB   ),
            .MODE_E (DIS_E  ),
            .LOGE   (0      ),
            .FF_IN_A(FF_IN  ),
            .FF_IN_B(FF_IN  ),
            .FF_IN_E(0      ),
            .FF_MUL (FF_MUL ),
            .FF_OUT (FF_OUT ),
            .USE_CSA(USE_CSA),
            .FF_CSA (FF_CSA )
        ) mac_std_inst (
            .clk(clk),
            .A  (A  ),
            .B  (B  ),
            .E  (0  ),
            .C  (C  )
        );
    end else begin 
        if (((LOGA <= 2*`DSP_B_U) && (LOGB <= `DSP_A_U + `DSP_B_U)) || ((LOGA <= `DSP_A_U + `DSP_B_U) && (LOGB <= 2*`DSP_B_U))) begin
            if (LOGA < LOGB) begin
                intmul_nonstd_BBxAB #(
                    .LOGA    (LOGA    ),
                    .LOGB    (LOGB    ),
                    .FF_IN   (FF_IN   ),
                    .FF_MUL  (FF_MUL  ),
                    .FF_OUT  (FF_OUT  ),
                    .USE_CSA (USE_CSA ),
                    .FF_CSA  (FF_CSA  ),
                    .MORE_DSP(MORE_DSP)
                ) intmul_nonstd_BBxAB_inst (
                    .clk(clk),
                    .rst(rst),
                    .A  (A  ),
                    .B  (B  ),
                    .C  (C  )
                );
            end else begin
                intmul_nonstd_BBxAB #(
                    .LOGA    (LOGB    ),
                    .LOGB    (LOGA    ),
                    .FF_IN   (FF_IN   ),
                    .FF_MUL  (FF_MUL  ),
                    .FF_OUT  (FF_OUT  ),
                    .USE_CSA (USE_CSA ),
                    .FF_CSA  (FF_CSA  ),
                    .MORE_DSP(MORE_DSP)
                ) intmul_nonstd_BBxAB_inst (
                    .clk(clk),
                    .rst(rst),
                    .A  (B  ),
                    .B  (A  ),
                    .C  (C  )
                );
            end
        end else if (((LOGA <= `DSP_A_U + 2*`DSP_B_U) && (LOGB <= `DSP_A_U + 2*`DSP_B_U))) begin
            intmul_nonstd_BBAxBBA #(
                .LOGA    (LOGA    ),
                .LOGB    (LOGB    ),
                .FF_IN   (FF_IN   ),
                .FF_MUL  (FF_MUL  ),
                .FF_OUT  (FF_OUT  ),
                .USE_CSA (USE_CSA ),
                .FF_CSA  (FF_CSA  ),
                .MORE_DSP(MORE_DSP)
            ) intmul_nonstd_BBAxBBA_inst (
                .clk(clk),
                .rst(rst),
                .A  (A  ),
                .B  (B  ),
                .C  (C  )
            );
        end 
    end
endgenerate

endmodule
