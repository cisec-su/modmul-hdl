`include "k2red.svh"

module k2red
   #(
        parameter  LOGQ     = 32,
        parameter  LOGQH    = 15,
        parameter  CORRECT  = 1 ,
        parameter  FF_IN    = 1 ,
        parameter  FF_MUL   = 1 ,
        parameter  USE_CSA  = 1 ,
        parameter  FF_CSA   = 1 ,
        parameter  FF_CORR  = 0 ,
        parameter  FF_OUT   = 1
    )
    (
        input              clk,
        input  [LOGC -1:0] C  ,
        output [LOGQ -1:0] T  ,
        input  [LOGQH-1:0] qH
    );

///////////////////////////// parameters ////////////////////////////////

localparam k2red_params_t params = {LOGQ, LOGQH, CORRECT, FF_IN, FF_MUL, USE_CSA, FF_CSA, FF_CORR, FF_OUT};
localparam mac_std_params_t mac_0_params = k2red_mac_0_params(params);
localparam mac_std_params_t mac_1_params = k2red_mac_1_params(params);

localparam LOGT = (CORRECT) ? LOGQ : LOGQ + 2;
localparam LOGC = k2red_logc(params);
localparam M    = k2red_logm(params);
localparam LAT  = k2red_lat(params);
localparam LOGT0 = k2red_logt0(params);
localparam LOGT1 = k2red_logt1(params);
localparam LAT_1  =(CORRECT) ? k2red_mac_0_lat(params) + k2red_mac_1_lat(params) : 
                               k2red_mac_0_lat(params);
localparam qH_MX_LEN = (CORRECT) ? 3 : 2;
localparam qH_d_id1 = k2red_mac_0_lat(params) - 1;
localparam qH_d_idc = LAT_1 - 1;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

reg  [LOGQH-1:0] qH_d  [0:LAT_1    -1];
reg  [LOGQH-1:0] qH_mx [0:qH_MX_LEN-1];
generate
    if (CORRECT) begin : corr
        wire [LOGQ-1:0] q;
    end
endgenerate

wire [LOGC-M-1:0] CH;
wire [     M-1:0] CL;

wire [LOGT0  -1:0] T0; // in 2's complement form
wire [LOGT0-M-1:0] T0H;
wire [      M-1:0] T0L;

wire [LOGT1-1:0] T1;
reg  [LOGT1-1:0] T1_q;
wire [LOGT1-1:0] T1_mx;

wire [LOGQ-1:0] T2;
reg  [LOGQ-1:0] T2_q;
wire [LOGQ-1:0] T2_mx;

wire [LOGQ  :0] T3;
reg  [LOGQ  :0] T3_q;
wire [LOGQ  :0] T3_mx;

reg  [LOGQ-1:0] T4;
reg  [LOGQ-1:0] T4_q;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// partitioning  ///////////////////////////////

assign CL = C[M   -1:0];
assign CH = C[LOGC-1:M];

assign T0L = T0[M-1    :0];
assign T0H = T0[LOGT0-1:M];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps  /////////////////////////////

assign qH_mx[0] = (FF_IN) ? qH_d[0] : qH;
assign qH_mx[1] = (qH_d_id1 > 0) ? qH_d[qH_d_id1] : qH;
assign qH_mx[2] = (qH_d_idc > 0) ? qH_d[qH_d_idc] : qH;

assign T1_mx = (FF_CORR) ? T1_q : T1;
assign T2_mx = (FF_CORR) ? T2_q : T2;
assign T3_mx = (FF_CORR) ? T3_q : T3;

assign T = (FF_OUT) ? T4_q : T4;


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
        .A  (qH_mx[0]  ),
        .B  (CL        ),
        .E  ({1'b0, CH}),
        .C  (T0        )
    );

/////////////////////////////////////////////////////////////////////////




/////////////////////////// mac 1 ///////////////////////////////////////

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
        .A  (qH_mx[1]),
        .B  (T0L     ),
        .E  (T0H     ),
        .C  (T1      )
    );

/////////////////////////////////////////////////////////////////////////




/////////////////////////// correction //////////////////////////////////

if (CORRECT) begin
    assign qH_mx[2] = (qH_d_idc > 0) ? qH_d[qH_d_idc] : qH;
    assign corr.q = {qH_mx[2], {(M - 1){1'b0}}, 1'b1};
    assign T2 = T1 + corr.q;
    assign T3 = T1 - corr.q;

    assign T4 = (T1_mx[LOGT1-1] == 1'b1) ? T2_mx : (T3_mx[LOGQ] == 1'b0) ? T3_mx : T1_mx;
end

/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////

for (genvar i = 0; i < LAT_1; i = i + 1) begin
    always @(posedge clk) begin
        qH_d[i] <= (i == 0) ? qH : qH_d[i - 1];
    end
end

always @(posedge clk) begin

    if (FF_CORR) begin
        T1_q <= T1;
        T2_q <= T2;
        T3_q <= T3;
    end

    if (FF_OUT) begin
        T4_q <= T4;
    end

end

/////////////////////////////////////////////////////////////////////////


endmodule