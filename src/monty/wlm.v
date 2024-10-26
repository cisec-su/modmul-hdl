
`include "dsp_def_new.vh"
`include "wlm.svh"

module wlm 
   #(
        parameter  LOGQ    = 60 ,
        parameter  R       = 17 ,
        parameter  FF_IN   = 1  ,
        parameter  FF_SUM  = 0  ,
        parameter  FF_MUL  = 1  ,
        parameter  FF_SUB  = 1  ,
        parameter  FF_OUT  = 1  ,
        localparam K       = 2*LOGQ,
        localparam LOGQH   = LOGQ - R
    )
    (
        input                   clk,
        input                   rst,
        input  wire [LOGQH-1:0] qH ,
        input  wire [K    -1:0] C  ,
        output wire [LOGQ -1:0] T
    );


///////////////////////////// parameters ////////////////////////////////

localparam wlm_params_t params = {R, LOGQ, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT};
localparam ITER = wlm_iter(params);
localparam LAT =  wlm_lat(params);
localparam LAT_1 = LAT - wlm_word_red_i_lat(wlm_iter(params) - 1, params) + FF_SUB;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

wire [K-1:0] C_i [0:ITER];
reg  [LOGQH-1:0] qH_d [0:LAT_1-1];
wire [LOGQH-1:0] qH_d_mx [0:ITER-1];


/////////////////////////////////////////////////////////////////////////




/////////////////////////// reduction iterations ////////////////////////

assign C_i[0] = C;

generate

    for (genvar i = 0; i < ITER; i = i + 1) begin : gen_block

        localparam FF_IN_  = wlm_word_red_ff_in(i, params);
        localparam FF_OUT_ = wlm_word_red_ff_out(i, params);
        localparam R_ = wlm_word_red_r(i, params);
        localparam Y_ = wlm_word_red_y(i, params);

        if (i == 0) begin
            localparam qH_d_id = FF_SUB;
            assign qH_d_mx[i] = qH_d[qH_d_id];        
        end
        else if (i == 1) begin
            localparam qH_d_id = wlm_word_red_i_lat(0, params) + FF_SUB - 1;
            assign qH_d_mx[i] = qH_d[qH_d_id];
        end
        else begin
            localparam qH_d_id = wlm_word_red_i_lat(0, params) + FF_SUB +
                                 wlm_word_red_i_lat(1, params)*(i - 1) - 1;
            assign qH_d_mx[i] = qH_d[qH_d_id];
        end


        word_red
            #(
                .K     (K-i*R  ),
                .LOGQH (LOGQH  ),
                .R     (R_     ),
                .Y     (Y_     ),
                .FF_IN (FF_IN_ ),
                .FF_SUM(FF_SUM ),
                .FF_SUB(FF_SUB ),
                .FF_MUL(FF_MUL ),
                .FF_OUT(FF_OUT_)
            )
        word_red_inst
            (
                .clk(clk       ),
                .rst(rst       ),
                .qH (qH_d_mx[i]),
                .C  (C_i[i]    ),
                .T  (C_i[i + 1])
            );

    end


endgenerate

assign T = C_i[ITER];


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
