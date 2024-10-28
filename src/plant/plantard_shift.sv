module plantard_shift
   #(
        parameter  LOGQ    = 64 ,
        parameter  LOGK1   = 8  ,
        parameter  LOGK2   = 8  ,
        parameter  CORRECT = 1  ,
        parameter  FF_IN   = 1  ,
        parameter  FF_SHF  = 0  ,
        parameter  FF_SUB  = 1  ,
        parameter  FF_SUM  = 1  ,
        parameter  FF_OUT  = 1
    )
    (
        input               clk,
        input               rst,
        input  [LOGQ*2-1:0] C  ,
        input  [LOGQ  -1:0] Q  ,
        output [LOGQ  -1:0] T  ,
        input  [LOGK1 -1:0] K1 ,
        input  [LOGK2 -1:0] K2
    );

///////////////////////////// parameters ////////////////////////////////

localparam plantard_shift_params_t params = {CORRECT, FF_IN, FF_SHF, FF_SUB, FF_SUM, FF_OUT};
localparam FF_OUT_ = plantard_shift_ff_out(params);
localparam LAT = plantard_shift_lat(params);
localparam K1_MAX = (1 << LOGK1) - 1;
localparam K2_MAX = (1 << LOGK2) - 1;
localparam LOGT0  = (K1_MAX > K2_MAX) ? LOGQ + K1_MAX : LOGQ + K2_MAX;

/////////////////////////////////////////////////////////////////////////



///////////////////////////// signals ///////////////////////////////////

wire [LOGQ-1:0] CH;
reg  [LOGQ-1:0] CH_q [0:1];
wire [LOGQ-1:0] CH_mx [0:1];

wire [LOGQ+K1_MAX-1:0] CH_K1;
reg  [LOGQ+K1_MAX-1:0] CH_K1_q;
wire [LOGQ+K1_MAX-1:0] CH_K1_mx;

wire [LOGQ+K2_MAX-1:0] CH_K2;
reg  [LOGQ+K2_MAX-1:0] CH_K2_q;
wire [LOGQ+K2_MAX-1:0] CH_K2_mx;

wire [LOGT0-1:0] T0;
reg  [LOGT0-1:0] T0_q;
wire [LOGT0-1:0] T0_mx;

wire [LOGQ:0] T1;
reg  [LOGQ:0] T1_q;
wire [LOGQ:0] T1_mx;

wire [LOGQ-1:0] T2;
reg  [LOGQ-1:0] T2_q;
wire [LOGQ-1:0] T2_mx;

wire [LOGQ-1:0] T3;
reg  [LOGQ-1:0] T3_q;

/////////////////////////////////////////////////////////////////////////


/////////////////////////// partitioning  ///////////////////////////////

assign CH = C[K-1:LOGQ];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps  /////////////////////////////

assign CH_mx[0] = (FF_IN) ? CH_q[0] : CH;

assign CH_K1_mx = (FF_SHF) ? CH_K1_q : CH_K1;
assign CH_K2_mx = (FF_SHF) ? CH_K2_q : CH_K2;
assign CH_mx[1] = (FF_SHF) ? CH_q[1] : CH_mx[0];

assign T0_mx = (FF_SUB ) ? T0_q : T0;
assign T1_mx = (FF_SUB ) ? T1_q : T1;

assign T2_mx = (FF_SUM ) ? T2_q : T2;

assign T     = (FF_OUT_) ? T3_q : T3;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// barrel shifters  ////////////////////////////

assign CH_K1 = CH_mx[0] << K1;
assign CH_K2 = CH_mx[0] << K2;


/////////////////////////////////////////////////////////////////////////




/////////////////////////// summation  //////////////////////////////////

assign T0 = CH_K1_mx - CH_K2_mx;
assign T1 = CH_mx[1] + Q;
assign T2 = (T0_mx + T1_mx) >> LOGQ;

/////////////////////////////////////////////////////////////////////////



/////////////////////////// correction  /////////////////////////////////

assign T3 = (!CORRECT) ? T2_mx : (T2_mx == Q) ? 0 : T2_mx;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////


always @(posedge clk) begin

    if (FF_IN) begin
        CH_q[0] <= CH;
    end

    if (FF_SHF) begin
        CH_K1_q <= CH_K1;
        CH_K2_q <= CH_K2;
        CH_q[1] <= CH_mx[0];
    end

    if (FF_SUB) begin
        T0_q <= T0;
        T1_q <= T1;
    end

    if (FF_SUM) begin
        T2_q <= T2;
    end

    if (FF_OUT) begin
        T3_q <= T3;
    end

end

/////////////////////////////////////////////////////////////////////////


endmodule

