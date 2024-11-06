
`include "dsp.vh"
`include "wlm_mixed.svh"

module wlm_mixed 
   #(
        parameter         LOGQ    = 60      ,
        parameter         LOGQH   = 17      ,
        parameter         CORRECT = 1       ,
        parameter         FF_IN   = 1       ,
        parameter         FF_SUM  = 0       ,
        parameter         FF_MUL  = 1       ,
        parameter         FF_SUB  = 0       ,
        parameter         FF_OUT  = 1       ,
        localparam        LOGC    = 2*LOGQ
    )
    (
        input                clk,
        input   [LOGQH -1:0] qH ,
        input   [LOGC  -1:0] C  ,
        output  [LOGT  -1:0] T
    );


///////////////////////////// parameters ////////////////////////////////

localparam LOGT = (CORRECT) ? LOGQ : LOGQ + 1;
localparam wlm_mixed_params_t params = {LOGQ, LOGQH, CORRECT, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT};
localparam W0     = wlm_mixed_w0(params);
localparam W1     = wlm_mixed_w1(params);
localparam Y0     = wlm_mixed_y0(params);
localparam Y1     = wlm_mixed_y1(params);
localparam LAT    = wlm_mixed_lat(params);
localparam LAT_1  =(CORRECT) ? wlm_mixed_wordred_0_lat(params) + wlm_mixed_wordred_1_lat(params) : 
                               wlm_mixed_wordred_0_lat(params) + FF_SUB;
localparam qH_d_id1 = wlm_mixed_wordred_0_lat(params) + FF_SUB - 1;
localparam qH_d_idc = LAT_1 - 1;
localparam FF_OUT_1 = wlm_mixed_wordred_1_ff_out(params);

/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

wire [LOGC-W0:0] C_i  [0:      1];
reg  [LOGQH-1:0] qH_d [0:LAT_1-1];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// reduction iterations ////////////////////////

wordred
    #(
        .LOGC  (LOGC  ),
        .LOGQH (LOGQH ),
        .W     (W0    ),
        .Y     (Y0    ),
        .FF_IN (FF_IN ),
        .FF_SUM(FF_SUM),
        .FF_SUB(FF_SUB),
        .FF_MUL(FF_MUL),
        .FF_OUT(1     )
    )
wordred_inst_0
    (
        .clk(clk         ),
        .qH (qH_d[FF_SUB]),
        .C  (C           ),
        .T  (C_i[0]      )
    );

wordred
    #(
        .LOGC  (LOGC-W0+1),
        .LOGQH (LOGQH ),
        .W     (W1    ),
        .Y     (Y1    ),
        .FF_IN (0     ),
        .FF_SUM(FF_SUM),
        .FF_MUL(FF_MUL),
        .FF_SUB(FF_SUB),
        .FF_OUT(FF_OUT_1)
    )
wordred_inst_1
    (
        .clk(clk           ),
        .qH (qH_d[qH_d_id1]),
        .C  (C_i[0]        ),
        .T  (C_i[1]        )
    );

/////////////////////////////////////////////////////////////////////////




/////////////////////////// final correction  ///////////////////////////

generate

if (CORRECT) begin : correction_block

    correction_u
        #(
            .LOGQ  (LOGQ  ),
            .LOGQH (LOGQH ),
            .FF_IN (0     ),
            .FF_SUB(0     ),
            .FF_OUT(FF_OUT)
        )
    correction_u_inst
        (
            .clk(clk           ),
            .qH (qH_d[qH_d_idc]),
            .C  (C_i[1]        ),
            .T  (T             )
        );

end
else begin

    assign T = C_i[1];

end

endgenerate

/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////

generate

for (genvar i = 0; i < LAT_1; i = i + 1) begin
    always @(posedge clk) begin
        qH_d[i] <= (i == 0) ? qH : qH_d[i - 1];
    end
end
endgenerate

/////////////////////////////////////////////////////////////////////////

endmodule
