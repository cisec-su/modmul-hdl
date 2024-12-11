`include "intmul.svh"

module intmul
   #(
        parameter LOGA     = 32,
        parameter LOGB     = 32,
        parameter FF_IN    = 1 ,
        parameter FF_MUL   = 1 ,
        parameter FF_OUT   = 1 ,
        parameter USE_CSA  = 0 ,
        parameter FF_CSA   = 0 ,
        parameter MORE_DSP = 0 ,
        parameter NON_STD  = 1
    )
    (
        input                  clk,
        input  [LOGA     -1:0] A  ,
        input  [LOGB     -1:0] B  ,
        output [LOGA+LOGB-1:0] C
    );

localparam intmul_params_t params = {FF_IN, FF_MUL, FF_OUT, FF_CSA, USE_CSA};
localparam LAT = intmul_lat(params);

generate
    if (NON_STD) begin
        mac_std #(
            .LOGA(LOGA),
            .LOGB(LOGB),
            .MODE_E(DIS_E),
            .LOGE(0),
            .FF_IN_A(FF_IN),
            .FF_IN_B(FF_IN),
            .FF_IN_E(0),
            .FF_MUL(FF_MUL),
            .FF_OUT(FF_OUT),
            .USE_CSA(USE_CSA),
            .FF_CSA(FF_CSA)
        ) u_mac_std (
            .clk(clk),
            .A(A),
            .B(B),
            .E(0),
            .C(C)
        );
    end else begin 
        if (((LOGA <= 34) && (LOGB <= 43)) || ((LOGA <= 43) && (LOGB <= 34))) begin
            if (LOGA < LOGB) begin
                intmul_nonstd_BBxAB #(
                    .LOGA(LOGA),
                    .LOGB(LOGB),
                    .FF_IN(FF_IN),
                    .FF_MUL(FF_MUL),
                    .FF_OUT(FF_OUT),
                    .USE_CSA(USE_CSA),
                    .FF_CSA(FF_CSA),
                    .MORE_DSP(MORE_DSP)
                ) u_intmul_nonstd_BBxAB (
                    .clk(clk),
                    .rst(rst),
                    .A(A),
                    .B(B),
                    .C(C)
                );
            end else begin
                intmul_nonstd_BBxAB #(
                    .LOGA(LOGB),
                    .LOGB(LOGA),
                    .FF_IN(FF_IN),
                    .FF_MUL(FF_MUL),
                    .FF_OUT(FF_OUT),
                    .USE_CSA(USE_CSA),
                    .FF_CSA(FF_CSA),
                    .MORE_DSP(MORE_DSP)
                ) u_intmul_nonstd_BBxAB (
                    .clk(clk),
                    .rst(rst),
                    .A(B),
                    .B(A),
                    .C(C)
                );
            end
        end else begin
            intmul_nonstd_BBAxBBA #(
                .LOGA(LOGA),
                .LOGB(LOGB),
                .FF_IN(FF_IN),
                .FF_MUL(FF_MUL),
                .FF_OUT(FF_OUT),
                .USE_CSA(USE_CSA),
                .FF_CSA(FF_CSA),
                .MORE_DSP(MORE_DSP)
            ) u_intmul_nonstd_BBAxBBA (
                .clk(clk),
                .rst(rst),
                .A(A),
                .B(B),
                .C(C)
            );
        end 
    end
endgenerate

endmodule
