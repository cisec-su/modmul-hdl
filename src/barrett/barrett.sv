`include "barrett.svh"

module barrett
   #(
        parameter  LOGQ     = 32,
        parameter  LOGQH    = 15,
        parameter  PIPE_Q   = 1 ,
        parameter  CORRECT  = 1 ,
        parameter  FF_IN    = 1 ,
        parameter  FF_SHF   = 1 ,
        parameter  FF_MUL   = 1 ,
        parameter  USE_CSA  = 1 ,
        parameter  FF_CSA   = 1 ,
        parameter  FF_NEG   = 0 ,
        parameter  FF_CORR  = 0 ,
        parameter  FF_OUT   = 1
    )
    (
        input                clk ,
        input  [LOGC   -1:0] C   ,
        output [LOGT   -1:0] T   ,
        input  [LOGLOGQ-1:0] B   ,   // 2^{B-1} < q < 2^B
        input  [LOGQ     :0] MU  ,
        input  [LOGQH  -1:0] qH
    );

///////////////////////////// parameters ////////////////////////////////

localparam barrett_params_t params = {LOGQ, LOGQH, CORRECT, FF_IN, FF_SHF, FF_MUL, USE_CSA, FF_CSA, FF_NEG, FF_CORR, FF_OUT};
localparam mac_std_params_t mac_0_params = barrett_mac_0_params(params);
localparam mac_std_params_t mac_1_params = barrett_mac_1_params(params);

localparam LOGT  = (CORRECT) ? LOGQ : LOGQ + 2;
localparam LOGC  = 2*LOGQ;
localparam LOGT0 = barrett_logt0(params);
localparam LOGLOGQ = $rtoi($ceil($clog2(LOGQ + 1)));
localparam LOGT1   = barrett_logt1(params);
localparam W       = LOGQ - LOGQH;

localparam FF_NEG_ = barrett_ff_neg(params);
localparam LAT    = barrett_lat(params);
localparam LAT_0  = barrett_mac_0_lat(params);
localparam LAT_1  = barrett_mac_1_lat(params);

localparam CL_D   = LAT_0;
localparam Q_D    = (PIPE_Q) ? FF_NEG_ + LAT_1 + LAT_0 + FF_IN : 0;
localparam LOGQ_D = (PIPE_Q) ? LAT_0 + FF_IN : 0;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

generate
    if (FF_IN) begin : C_GEN
        reg  [LOGC-1:0] C_q;
    end
endgenerate

generate
    if (FF_IN && PIPE_Q) begin : MU_GEN
        reg  [LOGQ:0] mu_q;
    end
endgenerate

generate
    if (Q_D) begin : Q_GEN
        reg  [LOGQH-1:0] qH_q [0:Q_D-1];
    end
endgenerate

generate
    if (LOGQ_D) begin : LOGQ_GEN
        reg  [LOGLOGQ-1:0] B_q [0:LOGQ_D-1];
    end
endgenerate

wire [LOGC -1:0] C_mx;
wire [LOGQH-1:0] qH_mx   [0:1];
wire [LOGLOGQ:0] B_mx [0:1];
wire [LOGQ   :0] mu_mx;

wire [LOGQ -1:0] CH;
wire [LOGQ +1:0] CL;
generate
    if (CL_D) begin : CL_GEN
        reg [LOGQ+1:0] CL_q [0:CL_D-1];
    end
endgenerate
wire [LOGQ +1:0] CL_mx;

wire [LOGT0-1:0] T0;
wire [LOGQ   :0] T0H;

wire [LOGT1-1:0] T1;
wire [LOGT1-1:0] T1N;
generate
    if (FF_NEG_) begin : T1N_GEN
        reg [LOGT1-1:0] T1N_q;
    end
endgenerate
wire [LOGT1-1:0] T1N_mx;

wire [LOGQ-1:0] q;

generate
    if (CORRECT) begin : CORR_GEN
        wire [LOGQ -1:0] q;
        wire [LOGT1-1:0] T1N_d1_mx;
        wire [LOGT1-1:0] T2;
        wire [LOGT1-1:0] T2_mx;
        wire [LOGT1-1:0] T3;
        wire [LOGT1-1:0] T3_mx;
        if (FF_CORR) begin : FF
            reg  [LOGT1-1:0] T1N_d1_q;
            reg  [LOGT1-1:0] T2_q;
            reg  [LOGT1-1:0] T3_q;
        end
    end    
endgenerate

wire [LOGQ-1:0] T4;

if (FF_OUT) begin : OUT_GEN
    reg  [LOGQ-1:0] T4_q;
end


/////////////////////////////////////////////////////////////////////////




/////////////////////////// shifting  and negation //////////////////////

assign CH  = C_mx >> B_mx[0];
assign CL  = C_mx & ((1 << (LOGQ + 2)) - 1);
assign T0H = T0 >> B_mx[1];

assign T1N = -T1;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps  /////////////////////////////

generate
    if (FF_IN) begin
        assign C_mx = C_GEN.C_q;
    end
    else begin
        assign C_mx = C;
    end
endgenerate

generate
    if (CL_D) begin
        assign CL_mx = CL_GEN.CL_q[CL_D - 1];
    end
    else begin
        assign CL_mx = CL;
    end
endgenerate

generate
    if (FF_IN && PIPE_Q) begin
        assign mu_mx = MU_GEN.mu_q;
    end
    else begin
        assign mu_mx = MU;
    end
endgenerate

generate
    if (Q_D) begin
        assign qH_mx[0] = Q_GEN.qH_q[FF_IN + LAT_0 - 1];
        assign qH_mx[1] = Q_GEN.qH_q[          Q_D - 1];
    end
    else begin
        assign qH_mx[0] = qH;
        assign qH_mx[1] = qH;
    end
endgenerate

generate
    if (LOGQ_D) begin
        assign B_mx[0] = LOGQ_GEN.B_q[ FF_IN - 1];
        assign B_mx[1] = LOGQ_GEN.B_q[LOGQ_D - 1];
    end
    else begin
        assign B_mx[0] = B;
        assign B_mx[1] = B;
    end
endgenerate

generate
    if (FF_NEG_) begin
        assign T1N_mx = T1N_GEN.T1N_q;
    end
    else begin
        assign T1N_mx = T1N;
    end
endgenerate

generate
    if (CORRECT) begin
        if (FF_CORR) begin
            assign CORR_GEN.T1N_d1_mx = CORR_GEN.FF.T1N_d1_q;
            assign CORR_GEN.T2_mx     = CORR_GEN.FF.T2_q;
            assign CORR_GEN.T3_mx     = CORR_GEN.FF.T3_q;
        end
        else begin
            assign CORR_GEN.T1N_d1_mx = T1N_mx;
            assign CORR_GEN.T2_mx     = CORR_GEN.T2;
            assign CORR_GEN.T3_mx     = CORR_GEN.T3;
        end
    end
endgenerate

generate
    if (FF_OUT) begin
        assign T = OUT_GEN.T4_q;
    end
    else begin
        assign T = T4;
    end
endgenerate

/////////////////////////////////////////////////////////////////////////




/////////////////////////// mac 0 ///////////////////////////////////////

mac_std
    #(
        .LOGA    (mac_0_params.LOGA   ),
        .LOGB    (mac_0_params.LOGB   ),
        .MODE_E  (mac_0_params.MODE_E ),
        .LOGE    (mac_0_params.LOGE   ),
        .FF_IN_A (mac_0_params.FF_IN_A),
        .FF_IN_B (mac_0_params.FF_IN_B),
        .FF_IN_E (mac_0_params.FF_IN_E),
        .FF_MUL  (mac_0_params.FF_MUL ),
        .FF_OUT  (mac_0_params.FF_OUT ),
        .USE_CSA (mac_0_params.USE_CSA),
        .FF_CSA  (mac_0_params.FF_CSA )
    )
mac_std_inst_0
    (
        .clk(clk       ),
        .A  (CH        ),
        .B  (mu_mx     ),
        .C  (T0        )
    );

/////////////////////////////////////////////////////////////////////////




/////////////////////////// mac 1 ///////////////////////////////////////

assign q = (LOGQ > LOGQH) ? {qH_mx[0], {(W - 1){1'b0}}, 1'b1} : qH_mx[0];

mac_std
#(
    .LOGA    (mac_1_params.LOGA   ),
    .LOGB    (mac_1_params.LOGB   ),
    .MODE_E  (mac_1_params.MODE_E ),
    .LOGE    (mac_1_params.LOGE   ),
    .FF_IN_A (mac_1_params.FF_IN_A),
    .FF_IN_B (mac_1_params.FF_IN_B),
    .FF_IN_E (mac_1_params.FF_IN_E),
    .FF_MUL  (mac_1_params.FF_MUL ),
    .FF_OUT  (mac_1_params.FF_OUT ),
    .USE_CSA (mac_1_params.USE_CSA),
    .FF_CSA  (mac_1_params.FF_CSA )
)
mac_std_inst_1
    (
        .clk(clk     ),
        .A  (q       ),
        .B  (T0H     ),
        .E  (CL_mx   ),
        .C  (T1      )
    );

/////////////////////////////////////////////////////////////////////////




/////////////////////////// correction //////////////////////////////////

if (CORRECT) begin
    assign CORR_GEN.q = (LOGQ > LOGQH) ? {qH_mx[1], {(W - 1){1'b0}}, 1'b1} : qH_mx[1];
    assign CORR_GEN.T2 = T1N_mx - CORR_GEN.q;
    assign CORR_GEN.T3 = T1N_mx - {CORR_GEN.q, 1'b0};

    assign T4 = (CORR_GEN.T2_mx[LOGQ+1] == 1'b1) ? CORR_GEN.T1N_d1_mx :
                (CORR_GEN.T3_mx[LOGQ+1] == 1'b1) ? CORR_GEN.T2_mx : CORR_GEN.T3_mx;
end
else begin
    assign T4 = T1N_mx;
end

/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////

generate
    if (FF_IN) begin
        always @(posedge clk) begin           
            C_GEN.C_q <= C;
        end
    end
endgenerate

generate
    if (CL_D) begin
        for (genvar i = 0; i < CL_D; i = i + 1) begin
            always @(posedge clk) begin
                CL_GEN.CL_q[i] <= (i == 0) ? CL : CL_GEN.CL_q[i - 1];
            end
        end
    end
endgenerate


generate
    if (FF_IN && PIPE_Q) begin
        always @(posedge clk) begin           
            MU_GEN.mu_q <= MU;
        end
    end
endgenerate


generate
    if (Q_D) begin
        for (genvar i = 0; i < Q_D; i = i + 1) begin
            always @(posedge clk) begin
                Q_GEN.qH_q[i] <= (i == 0) ? qH : Q_GEN.qH_q[i - 1];
            end
        end
    end
endgenerate

generate
    if (LOGQ_D) begin
        for (genvar i = 0; i < LOGQ_D; i = i + 1) begin
            always @(posedge clk) begin
                LOGQ_GEN.B_q[i] <= (i == 0) ? B : LOGQ_GEN.B_q[i - 1];
            end
        end
    end
endgenerate

generate
    if (FF_NEG_) begin
        always @(posedge clk) begin
            T1N_GEN.T1N_q <= T1N;
        end
    end
endgenerate

generate
    if (CORRECT && FF_CORR) begin
        always @(posedge clk) begin
            CORR_GEN.FF.T1N_d1_q <= T1N_mx;
            CORR_GEN.FF.T2_q <= CORR_GEN.T2;
            CORR_GEN.FF.T3_q <= CORR_GEN.T3;
        end
    end
endgenerate

if (FF_OUT) begin
    always @(posedge clk) begin
        OUT_GEN.T4_q <= T4;
    end
end

/////////////////////////////////////////////////////////////////////////


endmodule