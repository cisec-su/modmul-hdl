`include "modadd.svh"

module modadd
    #(
        parameter LOGA     = 64,
        parameter LOGB     = 64,
        parameter LOGQ     = 64,
        parameter LOGQH    = 47, 
        parameter FF_IN    = 1 ,
        parameter FF_ADD   = 1 ,
        parameter FF_OUT   = 1
    )
    (
        input                 clk ,
        input  [LOGA    -1:0] A   ,
        input  [LOGB    -1:0] B   ,
        input  [LOGQH   -1:0] qH  ,
        output [LOGQ    -1:0] C
    );

///////////////////////////// parameters ////////////////////////////////

localparam W = LOGQ - LOGQH;
localparam modadd_params_t params = {FF_IN, FF_ADD, FF_OUT};
localparam LAT = modadd_lat(params);

/////////////////////////////////////////////////////////////////////////

///////////////////////// Signals Declaration ///////////////////////////

reg  [LOGA-1:0] A_q;
wire [LOGA-1:0] A_mx;

reg  [LOGB-1:0] B_q;
wire [LOGB-1:0] B_mx;

reg  [LOGQ-1:0] qH_q;
wire [LOGQ-1:0] qH_mx;

reg  [LOGA:0] R;
reg  [LOGA:0] R_q;
wire [LOGA:0] R_mx;

reg  [LOGA:0] Rq;
reg  [LOGA:0] Rq_q;
wire [LOGA:0] Rq_mx;

reg  [LOGQ-1:0] S;
reg  [LOGQ-1:0] S_q;

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Pipeline Steps ////////////////////////////

assign A_mx = (FF_IN) ? A_q : A;
assign B_mx = (FF_IN) ? B_q : B;
assign qH_mx = (FF_IN) ? qH_q : qH;

assign R_mx = (FF_ADD) ? R_q : R;
assign Rq_mx = (FF_ADD) ? Rq_q : Rq;

assign C = (FF_OUT) ? S_q : S;

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Assignments ///////////////////////////////

always @(*) begin
    R = A_mx + B_mx;
    Rq = (A_mx + B_mx) - {1'b0, qH_mx, {(W-1){1'b0}}, 1'b1};
    S = (Rq_mx[LOGA] == 0) ? Rq_mx[LOGQ-1:0] : R_mx[LOGQ-1:0];
end

/////////////////////////////////////////////////////////////////////////

/////////////////////////// Sequential Logic ////////////////////////////

if (FF_IN) begin
    always @(posedge clk) begin
        A_q <= A;
        B_q <= B;
        qH_q <= qH;
    end
end

if (FF_ADD) begin
    always @(posedge clk) begin
        R_q <= R;
        Rq_q <= Rq;
    end
end 

if (FF_OUT) begin
    always @(posedge clk) begin
        S_q <= S;
    end
end

endmodule