
`include "dsp_def_new.vh"
`include "wlm_mixed.svh"

module wlm_mixed 
   #(
        parameter  LOGQ    = 60 ,
        parameter  QH_MODE = 1  , // 0 -> LOGQH = 26, (else) -> LOGQH = 17
        parameter  FF_IN   = 1  ,
        parameter  FF_SUM  = 1  ,
        parameter  FF_MUL  = 1  ,
        parameter  FF_SUB  = 1  ,
        parameter  FF_OUT  = 1  ,
        localparam K       = 2*LOGQ,
        localparam LOGQH   = (QH_MODE == 0) ? 26 : 17
    )
    (
        input                    clk,
        input                    rst,
        input  wire [LOGQH -1:0] qH ,
        input  wire [K     -1:0] C  ,
        output wire [LOGQ  -1:0] T
    );


///////////////////////////// parameters ////////////////////////////////

localparam wlm_mixed_params_t params = {LOGQ, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT};
localparam R0     = wlm_mixed_R0(params);
localparam R1     = wlm_mixed_R1(params);
localparam Y      = R0 - R1;
localparam LAT0   = wlm_mixed_word_red_0_lat(params);
localparam LAT    = wlm_mixed_word_red_0_lat(params) + wlm_mixed_word_red_1_lat(params);

/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

wire [K -R0-1:0] C_i;
reg  [LOGQH-1:0] qH_d [0:LAT0-1];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// reduction iterations ////////////////////////

word_red
    #(
        .K     (K     ),
        .LOGQH (LOGQH ),
        .R     (R0    ),
        .Y     (0     ),
        .FF_IN (FF_IN ),
        .FF_SUM(FF_SUM),
        .FF_SUB(FF_SUB),
        .FF_MUL(FF_MUL),
        .FF_OUT(1     )
    )
word_red_inst_0
    (
        .clk(clk         ),
        .rst(rst         ),
        .qH (qH_d[FF_SUB]),
        .C  (C           ),
        .T  (C_i         )
    );


word_red
    #(
        .K     (K - R0),
        .LOGQH (LOGQH ),
        .R     (R1    ),
        .Y     (Y     ),
        .FF_IN (0     ),
        .FF_SUM(FF_SUM),
        .FF_MUL(FF_MUL),
        .FF_SUB(FF_SUB),
        .FF_OUT(FF_OUT)
    )
word_red_inst_1
    (
        .clk(clk         ),
        .rst(rst         ),
        .qH (qH_d[LAT0-1]),
        .C  (C_i         ),
        .T  (T           )
    );

/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////

generate

for (genvar i = 0; i < LAT0; i = i + 1) begin
    always @(posedge clk) begin
        qH_d[i] <= (i == 0) ? qH : qH_d[i - 1];
    end
end
endgenerate

/////////////////////////////////////////////////////////////////////////

endmodule
