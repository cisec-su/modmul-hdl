`include "montgomery_shift.svh"

/*

  Q    = 2^(LOGQ-1) + (2^K1 - 2^K2 + 2^K3)*2^M + 1
 -Q^-1 = 2^(LOGQ-1) + (2^K1 - 2^K2 + 2^K3)*2^M - 1

*/

module montgomery_shift
   #(
        parameter  LOGQ    = 64,
        parameter  LOGQH   = 32,
        parameter  LOGK1   = 5 ,
        parameter  LOGK2   = 5 ,
        parameter  USE_K3  = 1 ,
        parameter  LOGK3   = 5 ,
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
        output [LOGQ  -1:0] T  ,
        input  [LOGQH -1:0] qH ,
        input  [LOGK1 -1:0] K1 ,
        input  [LOGK2 -1:0] K2 ,
        input  [LOGK3 -1:0] K3
    );

///////////////////////////// parameters ////////////////////////////////

localparam montgomery_shift_params_t params = {CORRECT, FF_IN, FF_SHF0, FF_SUB0, FF_SHF1, FF_SUB1, FF_SUM, FF_OUT};
localparam M = LOGQ - LOGQH;
localparam LAT = montgomery_shift_lat(params);
localparam LAT_1 = (CORRECT) ? LAT - montgomery_shift_correction_lat(params) : 1;
localparam K1_MAX = (1 << LOGK1) - 1;
localparam K2_MAX = (1 << LOGK2) - 1;
localparam K3_MAX = (1 << LOGK3) - 1;

/////////////////////////////////////////////////////////////////////////



///////////////////////////// signals ///////////////////////////////////

reg  [LOGQH-1:0] qH_d [0:LAT_1-1];

wire [LOGQ-1:0] CH;
reg  [LOGQ-1:0] CH_q [0:4];
wire [LOGQ-1:0] CH_mx[0:4];
wire [LOGQ-1:0] CL;
reg  [LOGQ-1:0] CL_q;
wire [LOGQ-1:0] CL_mx;

reg  [LOGK1-1:0] K1_q [0:2];
wire [LOGK1-1:0] K1_mx [0:2];
reg  [LOGK2-1:0] K2_q [0:2];
wire [LOGK2-1:0] K2_mx [0:2];
reg  [LOGK3-1:0] K3_q [0:2];
wire [LOGK3-1:0] K3_mx [0:2];


wire CL1;
reg  CL1_q [0:3];
wire CL1_mx[0:3];

wire [LOGQ+K1_MAX-1:0] CL_K1;
reg  [LOGQ+K1_MAX-1:0] CL_K1_q;
wire [LOGQ+K1_MAX-1:0] CL_K1_mx;

wire [LOGQ+K2_MAX-1:0] CL_K2;
reg  [LOGQ+K2_MAX-1:0] CL_K2_q;
wire [LOGQ+K2_MAX-1:0] CL_K2_mx;

wire [LOGQ+K2_MAX-1:0] CL_K3;
reg  [LOGQ+K2_MAX-1:0] CL_K3_q;
wire [LOGQ+K2_MAX-1:0] CL_K3_mx;

wire [LOGQ-1:0] CL_Q;
reg  [LOGQ-1:0] CL_Q_q;
wire [LOGQ-1:0] CL_Q_mx;

wire [LOGQ-1:0] T0;
reg  [LOGQ-1:0] T0_q;
wire [LOGQ-1:0] T0_mx;

wire [2*LOGQ-2:0] T0_Q;
reg  [2*LOGQ-2:0] T0_Q_q;
wire [2*LOGQ-2:0] T0_Q_mx;

wire [LOGQ+K1_MAX-1:0] T0_K1;
reg  [LOGQ+K1_MAX-1:0] T0_K1_q;
wire [LOGQ+K1_MAX-1:0] T0_K1_mx;

wire [LOGQ+K2_MAX-1:0] T0_K2;
reg  [LOGQ+K2_MAX-1:0] T0_K2_q;
wire [LOGQ+K2_MAX-1:0] T0_K2_mx;

wire [LOGQ+K3_MAX-1:0] T0_K3;
reg  [LOGQ+K3_MAX-1:0] T0_K3_q;
wire [LOGQ+K3_MAX-1:0] T0_K3_mx;

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
assign K1_mx[0] = (FF_IN) ? K1_q[0] : K1;
assign K2_mx[0] = (FF_IN) ? K2_q[0] : K2;
assign K3_mx[0] = (FF_IN && USE_K3) ? K3_q[0] : K3;

assign CL_K1_mx = (FF_SHF0) ? CL_K1_q : CL_K1;
assign CL_K2_mx = (FF_SHF0) ? CL_K2_q : CL_K2;
assign CL_K3_mx = (FF_SHF0 && USE_K3) ? CL_K3_q : CL_K3;
assign CL_Q_mx  = (FF_SHF0) ? CL_Q_q  : CL_Q;
assign CH_mx[1] = (FF_SHF0) ? CH_q[1] : CH_mx[0];
assign CL1_mx[0]= (FF_SHF0) ? CL1_q[0] : CL1;
assign K1_mx[1] = (FF_SHF0) ? K1_q[1] : K1_mx[0];
assign K2_mx[1] = (FF_SHF0) ? K2_q[1] : K2_mx[0];
assign K3_mx[1] = (FF_SHF0 && USE_K3) ? K3_q[1] : K3_mx[0];

assign T0_mx    = (FF_SUB0) ? T0_q    : T0;
assign CH_mx[2] = (FF_SUB0) ? CH_q[2] : CH_mx[1];
assign CL1_mx[1]= (FF_SUB0) ? CL1_q[1]: CL1_mx[0];
assign K1_mx[2] = (FF_SHF0) ? K1_q[2] : K1_mx[1];
assign K2_mx[2] = (FF_SHF0) ? K2_q[2] : K2_mx[1];
assign K3_mx[2] = (FF_SHF0 && USE_K3) ? K3_q[2] : K3_mx[1];

assign T0_K1_mx = (FF_SHF1) ? T0_K1_q : T0_K1;
assign T0_K2_mx = (FF_SHF1) ? T0_K2_q : T0_K2;
assign T0_K3_mx = (FF_SHF1 && USE_K3) ? T0_K3_q : T0_K3;
assign T0_Q_mx  = (FF_SHF1) ? T0_Q_q  : T0_Q;
assign CH_mx[3] = (FF_SHF1) ? CH_q[3] : CH_mx[2];
assign CL1_mx[2]= (FF_SUB0) ? CL1_q[2]: CL1_mx[1];

assign T1_mx =    (FF_SUB1) ? T1_q    : T1;
assign CH_mx[4] = (FF_SUB1) ? CH_q[4] : CH_mx[3];
assign CL1_mx[3]= (FF_SUB0) ? CL1_q[3]: CL1_mx[2];

assign T2_mx = (FF_SUM) ? T2_q : T2;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplication by q^-1 //////////////////////

assign CL1 = CL_mx[LOGQ-1]; // for carry computation

assign CL_K1 =  CL_mx << K1_mx[0];
assign CL_K2 =  CL_mx << K2_mx[0];
assign CL_K3 = (USE_K3) ? (CL_mx << K3_mx[0]) : 0;
assign CL_Q  = (CL_mx << (LOGQ - 1)) - CL_mx;
assign T0    = ((CL_K1_mx - CL_K2_mx + CL_K3_mx) << M) + CL_Q_mx;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplication by q /////////////////////////

assign T0_K1 =  T0_mx << K1_mx[2];
assign T0_K2 =  T0_mx << K2_mx[2];
assign T0_K3 =  (USE_K3) ? (T0_mx << K3_mx[2]) : 0;
assign T0_Q  = (T0_mx << (LOGQ - 1)) + T0_mx;
assign T1 = (((T0_K1_mx - T0_K2_mx + T0_K3_mx) << M) + T0_Q_mx) >> (LOGQ - 1);

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
        K1_q[0] <= K1;
        K2_q[0] <= K2;
        if (USE_K3) begin
            K3_q[0] <= K3;
        end
    end

    if (FF_SHF0) begin
        CL_K1_q <= CL_K1;
        CL_K2_q <= CL_K2;
        if (USE_K3) begin
            CL_K3_q <= CL_K3;
        end
        CL_Q_q  <= CL_Q;
        CH_q[1] <= CH_mx[0];
        CL1_q[0]<= CL1;
        K1_q[1] <= K1_mx[0];
        K2_q[1] <= K2_mx[0];
        if (USE_K3) begin
            K3_q[1] <= K3_mx[0];
        end
    end

    if (FF_SUB0) begin
        T0_q    <= T0;
        CH_q[2] <= CH_mx[1];
        CL1_q[1]<= CL1_mx[0];
        K1_q[2] <= K1_mx[1];
        K2_q[2] <= K2_mx[1];
        if (USE_K3) begin
            K3_q[2] <= K3_mx[1];
        end
    end

    if (FF_SHF1) begin
        T0_K1_q <= T0_K1;
        T0_K2_q <= T0_K2;
        if (USE_K3) begin
            T0_K3_q <= T0_K3;
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