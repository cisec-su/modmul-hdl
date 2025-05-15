`include "modadd.svh"

module modadd
    #(
        parameter LOGQ     = 64,
        parameter LOGQH    = 47, 
        parameter FF_IN    = 1 ,
        parameter FF_ADD   = 1 ,
        parameter FF_OUT   = 1
    )
    (
        input                 clk ,
        input  [LOGQ    -1:0] A   ,
        input  [LOGQ    -1:0] B   ,
        input  [LOGQH   -1:0] qH  ,
        output [LOGQ    -1:0] C
    );

///////////////////////////// parameters ////////////////////////////////

localparam W = LOGQ - LOGQH;
localparam modadd_params_t params = {LOGQ, LOGQH, FF_IN, FF_ADD, FF_OUT};
localparam LAT = modadd_lat(params);

/////////////////////////////////////////////////////////////////////////




///////////////////////// Signals Declaration ///////////////////////////

reg  [LOGQ-1:0] A_q;
wire [LOGQ-1:0] A_mx;

reg  [LOGQ-1:0] B_q;
wire [LOGQ-1:0] B_mx;

reg  [LOGQ-1:0] qH_q;
wire [LOGQ-1:0] qH_mx;

wire [LOGQ:0] R;
reg  [LOGQ:0] R_q;
wire [LOGQ:0] R_mx;

wire [LOGQ:0] Rq;
reg  [LOGQ:0] Rq_q;
wire [LOGQ:0] Rq_mx;

wire [LOGQ-1:0] S;
reg  [LOGQ-1:0] S_q;

wire [LOGQ-1:0] q;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// Pipeline Steps ////////////////////////////

assign A_mx  = (FF_IN) ? A_q  : A;
assign B_mx  = (FF_IN) ? B_q  : B;
assign qH_mx = (FF_IN) ? qH_q : qH;

assign R_mx  = (FF_ADD) ? R_q  : R;
assign Rq_mx = (FF_ADD) ? Rq_q : Rq;

assign C = (FF_OUT) ? S_q : S;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// Assignments ///////////////////////////////

assign q = (LOGQ > LOGQH) ? {1'b0, qH_mx, {(W - 1){1'b0}}, 1'b1} : qH_mx;
assign R  = A_mx + B_mx;
assign Rq = R - q;
assign S  = (Rq_mx[LOGQ] == 0) ? Rq_mx[LOGQ-1:0] : R_mx[LOGQ-1:0];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// Sequential Logic ////////////////////////////

if (FF_IN) begin
    always @(posedge clk) begin
        A_q  <= A;
        B_q  <= B;
        qH_q <= qH;
    end
end

if (FF_ADD) begin
    always @(posedge clk) begin
        R_q  <= R;
        Rq_q <= Rq;
    end
end 

if (FF_OUT) begin
    always @(posedge clk) begin
        S_q <= S;
    end
end

endmodule