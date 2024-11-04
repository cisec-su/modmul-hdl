
`include "wlm.svh"

module wlm 
   #(
        parameter  LOGQ    = 60 ,
        parameter  LOGQH   = 43 ,
        parameter  CORRECT = 1  ,
        parameter  FF_IN   = 1  ,
        parameter  FF_SUM  = 0  ,
        parameter  FF_MUL  = 1  ,
        parameter  FF_SUB  = 0  ,
        parameter  FF_OUT  = 1  ,
        localparam K       = 2*LOGQ
    )
    (
        input                   clk,
        input                   rst,
        input  wire [LOGQH-1:0] qH ,
        input  wire [K    -1:0] C  ,
        output wire [LOGQ -1:0] T
    );


///////////////////////////// parameters ////////////////////////////////

localparam W = LOGQ - LOGQH;
localparam wlm_params_t params = {W, LOGQ, LOGQH, CORRECT, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT};
localparam ITER = wlm_iter(params);
localparam LAT =  wlm_lat(params);
localparam LAT_1 = (CORRECT) ? LAT - wlm_correction_lat(params) : 
                               LAT - wlm_wordred_i_lat(wlm_iter(params) - 1, params) + FF_SUB;
localparam C_N = (CORRECT) ? ITER + 2 : ITER + 1;
localparam Q_N = C_N - 1;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

wire [K-1:0] C_i [0:C_N-1];
reg  [LOGQH-1:0] qH_d [0:LAT_1-1];
wire [LOGQH-1:0] qH_d_mx [0:Q_N-1];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// reduction iterations ////////////////////////

assign C_i[0] = C;

generate

    for (genvar i = 0; i < ITER; i = i + 1) begin : gen_block

        localparam FF_IN_  = wlm_wordred_ff_in(i, params);
        localparam FF_OUT_ = wlm_wordred_ff_out(i, params);
        localparam W_ = wlm_wordred_w(i, params);
        localparam Y_ = wlm_wordred_y(i, params);

        if (i == 0) begin
            localparam qH_d_id = FF_SUB + FF_IN - 1;
            assign qH_d_mx[i] = (qH_d_id == (-1)) ? qH : qH_d[qH_d_id];        
        end
        else if (i == 1) begin
            localparam qH_d_id = wlm_wordred_i_lat(0, params) + FF_SUB - 1;
            assign qH_d_mx[i] = qH_d[qH_d_id];
        end
        else begin
            localparam qH_d_id = wlm_wordred_i_lat(0, params) + FF_SUB +
                                (wlm_wordred_i_lat(1, params) * (i - 1)) - 1;
            assign qH_d_mx[i] = qH_d[qH_d_id];
        end


        wordred
            #(
                .K     (K-i*(W-1)),
                .LOGQH (LOGQH  ),
                .W     (W_     ),
                .Y     (Y_     ),
                .FF_IN (FF_IN_ ),
                .FF_SUM(FF_SUM ),
                .FF_SUB(FF_SUB ),
                .FF_MUL(FF_MUL ),
                .FF_OUT(FF_OUT_)
            )
        wordred_inst
            (
                .clk(clk       ),
                .rst(rst       ),
                .qH (qH_d_mx[i]),
                .C  (C_i[i]    ),
                .T  (C_i[i + 1])
            );

    end

endgenerate

/////////////////////////////////////////////////////////////////////////




/////////////////////////// final correction  ///////////////////////////

generate

if (CORRECT) begin : correction_block

    localparam qH_d_id = wlm_lat(params) - wlm_correction_lat(params) - 1;
    assign qH_d_mx[ITER] = qH_d[qH_d_id];

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
            .clk(clk),
            .rst(rst),
            .qH (qH_d_mx[ITER]),
            .C  (C_i    [ITER]),
            .T  (T  )
        );

end
else begin

    assign T = C_i[ITER];

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
