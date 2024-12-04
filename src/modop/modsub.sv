`include "modsub.svh"

module modsub
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
        input                clk,
        input                rst,
        input  [LOGA   -1:0] A  ,
        input  [LOGB   -1:0] B  ,
        input  [LOGQ   -1:0] q  ,
        output [LOGQ   -1:0] C
    );

///////////////////////////// parameters ////////////////////////////////

localparam W = LOGQ - LOGQH;
localparam modsub_params_t params = {FF_IN, FF_SUB, FF_OUT};
localparam LAT = modsub_lat(params);

/////////////////////////////////////////////////////////////////////////

///////////////////////// Signals Declaration ///////////////////////////

reg  [LOGA-1:0] A_reg;
wire [LOGA-1:0] A_mx;

reg  [LOGB-1:0] B_reg;
wire [LOGB-1:0] B_mx;

reg  [LOGQ-1:0] q_reg;
wire [LOGQ-1:0] q_mx;

reg  [LOGA:0] R;
reg  [LOGA:0] R_reg;
wire [LOGA:0] R_mx;

reg  [LOGA:0] Rq;
reg  [LOGA:0] Rq_reg;
wire [LOGA:0] Rq_mx;

reg  [LOGQ-1:0] S;
reg  [LOGQ-1:0] S_reg;

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Pipeline Steps ////////////////////////////

assign A_mx = (FF_IN) ? A_reg : A;
assign B_mx = (FF_IN) ? B_reg : B;
assign q_mx = (FF_IN) ? q_reg : q;

assign R_mx = (FF_SUB) ? R_reg : R;
assign Rq_mx = (FF_SUB) ? Rq_reg : Rq;

assign C = (FF_OUT) ? S_reg : S;

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Assignments ///////////////////////////////

always @(*) begin
    R = A_mx - B_mx;
    Rq = (A_mx - B_mx) + {1'b0, q_mx[LOGQ-1:W], {(W-1){1'b0}}, q_mx[0]};
    S = (R_mx[LOGA] == 0) ? R_mx[LOGQ-1:0] : Rq_mx[LOGQ-1:0];
end

/////////////////////////////////////////////////////////////////////////

/////////////////////////// Sequential Logic ////////////////////////////

if (FF_IN) begin
    always @(posedge clk) begin
        A_reg <= A;
        B_reg <= B;
        q_reg <= q;
    end
end

if (FF_SUB) begin
    always @(posedge clk) begin
        R_reg <= R;
        Rq_reg <= Rq;
    end
end 

if (FF_OUT) begin
    always @(posedge clk) begin
        S_reg <= S;
    end
end

endmodule