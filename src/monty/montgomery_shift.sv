`include "montgomery_shift.svh"

/*

  Q    = 2^(LOGQ-1) + (2^L1 - 2^L2 + 2^L3)*2^M + 1
 -Q^-1 = 2^(LOGQ-1) + (2^L1 - 2^L2 + 2^L3)*2^M - 1

*/

module montgomery_shift
   #(
        parameter  LOGQ    = 64,
        parameter  LOGQH   = 32,
        parameter  LOGL1   = 5 ,
        parameter  LOGL2   = 5 ,
        parameter  USE_L3  = 1 ,
        parameter  LOGL3   = 5 ,
        parameter  CORRECT = 1 ,
        parameter  FF_IN   = 1 ,
        parameter  FF_SHF0 = 1 ,
        parameter  FF_SUB0 = 1 ,
        parameter  FF_SHF1 = 1 ,
        parameter  FF_SUB1 = 1 ,
        parameter  FF_SUM  = 1 ,
        parameter  FF_OUT  = 1
    )
    (
        input               clk,
        input               rst,
        input  [LOGQ*2-1:0] C  ,
        output [LOGT  -1:0] T  ,
        input  [LOGQH -1:0] qH ,
        input  [LOGL1 -1:0] L1 ,
        input  [LOGL2 -1:0] L2 ,
        input  [LOGL3 -1:0] L3
    );

///////////////////////////// parameters ////////////////////////////////

localparam LOGT = (CORRECT) ? LOGQ : LOGQ + 1;
localparam montgomery_shift_params_t params = {CORRECT, FF_IN, FF_SHF0, FF_SUB0, FF_SHF1, FF_SUB1, FF_SUM, FF_OUT};
localparam M = LOGQ - LOGQH;
localparam LAT = montgomery_shift_lat(params);
localparam LAT_1 = (CORRECT) ? LAT - montgomery_shift_correction_lat(params) : 1;
localparam L1_MAX = (1 << LOGL1) - 1;
localparam L2_MAX = (1 << LOGL2) - 1;
localparam L3_MAX = (1 << LOGL3) - 1;

/////////////////////////////////////////////////////////////////////////



///////////////////////////// signals ///////////////////////////////////

reg  [LOGQH-1:0] qH_d [0:LAT_1-1];

wire [LOGQ-1:0] CH;
reg  [LOGQ-1:0] CH_q [0:4];
wire [LOGQ-1:0] CH_mx[0:4];
wire [LOGQ-1:0] CL;
reg  [LOGQ-1:0] CL_q;
wire [LOGQ-1:0] CL_mx;

reg  [LOGL1-1:0] L1_q [0:2];
wire [LOGL1-1:0] L1_mx [0:2];
reg  [LOGL2-1:0] L2_q [0:2];
wire [LOGL2-1:0] L2_mx [0:2];
reg  [LOGL3-1:0] L3_q [0:2];
wire [LOGL3-1:0] L3_mx [0:2];


wire CL1;
reg  CL1_q [0:3];
wire CL1_mx[0:3];

wire [LOGQ+L1_MAX-1:0] CL_L1;
reg  [LOGQ+L1_MAX-1:0] CL_L1_q;
wire [LOGQ+L1_MAX-1:0] CL_L1_mx;

wire [LOGQ+L2_MAX-1:0] CL_L2;
reg  [LOGQ+L2_MAX-1:0] CL_L2_q;
wire [LOGQ+L2_MAX-1:0] CL_L2_mx;

wire [LOGQ+L2_MAX-1:0] CL_L3;
reg  [LOGQ+L2_MAX-1:0] CL_L3_q;
wire [LOGQ+L2_MAX-1:0] CL_L3_mx;

wire [LOGQ-1:0] CL_Q;
reg  [LOGQ-1:0] CL_Q_q;
wire [LOGQ-1:0] CL_Q_mx;

wire [LOGQ-1:0] T0;
reg  [LOGQ-1:0] T0_q;
wire [LOGQ-1:0] T0_mx;

wire [2*LOGQ-2:0] T0_Q;
reg  [2*LOGQ-2:0] T0_Q_q;
wire [2*LOGQ-2:0] T0_Q_mx;

wire [LOGQ+L1_MAX-1:0] T0_L1;
reg  [LOGQ+L1_MAX-1:0] T0_L1_q;
wire [LOGQ+L1_MAX-1:0] T0_L1_mx;

wire [LOGQ+L2_MAX-1:0] T0_L2;
reg  [LOGQ+L2_MAX-1:0] T0_L2_q;
wire [LOGQ+L2_MAX-1:0] T0_L2_mx;

wire [LOGQ+L3_MAX-1:0] T0_L3;
reg  [LOGQ+L3_MAX-1:0] T0_L3_q;
wire [LOGQ+L3_MAX-1:0] T0_L3_mx;

wire [LOGQ:0] T1;
reg  [LOGQ:0] T1_q;
wire [LOGQ:0] T1_mx;

wire carry;

wire [LOGQ:0] T2;
reg  [LOGQ:0] T2_q;
wire [LOGQ:0] T2_mx;


/////////////////////////////////////////////////////////////////////////


/////////////////////////// partitioning  ///////////////////////////////

assign CL = C[LOGQ-1:0];
assign CH = C[2*LOGQ-1:LOGQ];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps  /////////////////////////////

assign CL_mx    = (FF_IN) ? CL_q    : CL;
assign CH_mx[0] = (FF_IN) ? CH_q[0] : CH;
assign L1_mx[0] = (FF_IN) ? L1_q[0] : L1;
assign L2_mx[0] = (FF_IN) ? L2_q[0] : L2;
assign L3_mx[0] = (FF_IN && USE_L3) ? L3_q[0] : L3;

assign CL_L1_mx = (FF_SHF0) ? CL_L1_q : CL_L1;
assign CL_L2_mx = (FF_SHF0) ? CL_L2_q : CL_L2;
assign CL_L3_mx = (FF_SHF0 && USE_L3) ? CL_L3_q : CL_L3;
assign CL_Q_mx  = (FF_SHF0) ? CL_Q_q  : CL_Q;
assign CH_mx[1] = (FF_SHF0) ? CH_q[1] : CH_mx[0];
assign CL1_mx[0]= (FF_SHF0) ? CL1_q[0] : CL1;
assign L1_mx[1] = (FF_SHF0) ? L1_q[1] : L1_mx[0];
assign L2_mx[1] = (FF_SHF0) ? L2_q[1] : L2_mx[0];
assign L3_mx[1] = (FF_SHF0 && USE_L3) ? L3_q[1] : L3_mx[0];

assign T0_mx    = (FF_SUB0) ? T0_q    : T0;
assign CH_mx[2] = (FF_SUB0) ? CH_q[2] : CH_mx[1];
assign CL1_mx[1]= (FF_SUB0) ? CL1_q[1]: CL1_mx[0];
assign L1_mx[2] = (FF_SUB0) ? L1_q[2] : L1_mx[1];
assign L2_mx[2] = (FF_SUB0) ? L2_q[2] : L2_mx[1];
assign L3_mx[2] = (FF_SUB0 && USE_L3) ? L3_q[2] : L3_mx[1];

assign T0_L1_mx = (FF_SHF1) ? T0_L1_q : T0_L1;
assign T0_L2_mx = (FF_SHF1) ? T0_L2_q : T0_L2;
assign T0_L3_mx = (FF_SHF1 && USE_L3) ? T0_L3_q : T0_L3;
assign T0_Q_mx  = (FF_SHF1) ? T0_Q_q  : T0_Q;
assign CH_mx[3] = (FF_SHF1) ? CH_q[3] : CH_mx[2];
assign CL1_mx[2]= (FF_SHF1) ? CL1_q[2]: CL1_mx[1];

assign T1_mx =    (FF_SUB1) ? T1_q    : T1;
assign CH_mx[4] = (FF_SUB1) ? CH_q[4] : CH_mx[3];
assign CL1_mx[3]= (FF_SUB1) ? CL1_q[3]: CL1_mx[2];

assign T2_mx = (FF_SUM) ? T2_q : T2;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplication by q^-1 //////////////////////

assign CL1 = CL_mx[LOGQ-1]; // for carry computation

assign CL_L1 =  CL_mx << L1_mx[0];
assign CL_L2 =  CL_mx << L2_mx[0];
assign CL_L3 = (USE_L3) ? (CL_mx << L3_mx[0]) : 0;
assign CL_Q  = (CL_mx << (LOGQ - 1)) - CL_mx;
assign T0    = ((CL_L1_mx - CL_L2_mx + CL_L3_mx) << M) + CL_Q_mx;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplication by q /////////////////////////

assign T0_L1 =  T0_mx << L1_mx[2];
assign T0_L2 =  T0_mx << L2_mx[2];
assign T0_L3 = (USE_L3) ? (T0_mx << L3_mx[2]) : 0;
assign T0_Q  = (T0_mx << (LOGQ - 1)) + T0_mx;
assign T1    = (((T0_L1_mx - T0_L2_mx + T0_L3_mx) << M) + {1'b0, T0_Q_mx}) >> (LOGQ - 1);

/////////////////////////////////////////////////////////////////////////




/////////////////////////// summation ///////////////////////////////////

assign carry = CL1_mx[3] | T1_mx[0];
assign T2 = CH_mx[4] + (T1_mx >> 1) + carry;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// final correction  ///////////////////////////

generate

if (CORRECT) begin : correction_block

    correction_u
        #(
            .LOGQ  (LOGQ  ),
            .LOGQH (LOGQH ),
            .LOGC  (LOGQ+1),
            .FF_IN (0     ),
            .FF_SUB(0     ),
            .FF_OUT(FF_OUT)
        )
    correction_u_inst
        (
            .clk(clk           ),
            .rst(rst           ),
            .qH (qH_d[LAT_1-1] ),
            .C  (T2_mx         ),
            .T  (T             )
        );

end
else begin

    assign T = T2_mx;

end

endgenerate

/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////


always @(posedge clk) begin

    if (FF_IN) begin
        CL_q    <= CL;
        CH_q[0] <= CH;
        L1_q[0] <= L1;
        L2_q[0] <= L2;
        if (USE_L3) begin
            L3_q[0] <= L3;
        end
    end

    if (FF_SHF0) begin
        CL_L1_q <= CL_L1;
        CL_L2_q <= CL_L2;
        if (USE_L3) begin
            CL_L3_q <= CL_L3;
        end
        CL_Q_q  <= CL_Q;
        CH_q[1] <= CH_mx[0];
        CL1_q[0]<= CL1;
        L1_q[1] <= L1_mx[0];
        L2_q[1] <= L2_mx[0];
        if (USE_L3) begin
            L3_q[1] <= L3_mx[0];
        end
    end

    if (FF_SUB0) begin
        T0_q    <= T0;
        CH_q[2] <= CH_mx[1];
        CL1_q[1]<= CL1_mx[0];
        L1_q[2] <= L1_mx[1];
        L2_q[2] <= L2_mx[1];
        if (USE_L3) begin
            L3_q[2] <= L3_mx[1];
        end
    end

    if (FF_SHF1) begin
        T0_L1_q <= T0_L1;
        T0_L2_q <= T0_L2;
        if (USE_L3) begin
            T0_L3_q <= T0_L3;
        end
        T0_Q_q  <= T0_Q;
        CH_q[3] <= CH_mx[2];
        CL1_q[2]<= CL1_mx[1];
    end

    if (FF_SUB1) begin
        T1_q <= T1;
        CH_q[4] <= CH_mx[3];
        CL1_q[3]<= CL1_mx[2];
    end

    if (FF_SUM) begin
        T2_q <= T2;
    end

end

generate

if (CORRECT) begin

    for (genvar i = 0; i < LAT_1; i = i + 1) begin
        always @(posedge clk) begin
            qH_d[i] <= (i == 0) ? qH : qH_d[i - 1];
        end
    end

end

endgenerate


/////////////////////////////////////////////////////////////////////////


endmodule