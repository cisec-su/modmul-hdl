`include "correction_u.svh"

module correction_u 
       #(
            parameter  LOGQ   = 64,
            parameter  LOGQH  = 17,
            parameter  FF_IN  = 1 ,
            parameter  FF_SUB = 1 ,
            parameter  FF_OUT = 1
        )
        (
            input              clk,
            input              rst,
            input  [LOGQH-1:0] qH ,
            input  [LOGQ   :0] C  ,
            output [LOGQ -1:0] T
        );

///////////////////////////// parameters ////////////////////////////////

localparam R = LOGQ - LOGQH;
localparam correction_u_params_t params = {FF_IN, FF_SUB, FF_OUT};
localparam LAT = correction_u_lat(params);

/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

reg  [LOGQ:0] C_q [0:1];
wire [LOGQ:0] C_mx [0:1];

wire [LOGQ:0] S;
reg  [LOGQ:0] S_q;
wire [LOGQ:0] S_mx;

wire [LOGQ:0] O;
reg  [LOGQ:0] O_q;

wire [LOGQ-1:0] q;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps  /////////////////////////////

assign C_mx[0] = (FF_IN)  ? C_q[0] : C;

assign S_mx    = (FF_SUB) ? S_q    : S;
assign C_mx[1] = (FF_SUB) ? C_q[1] : C_mx[0];

assign T       = (FF_OUT) ? O_q    : O;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// subtraction  and assignment /////////////////

assign q = (R != 0) ? {qH, {(R-1){1'b0}}, 1'b1} : qH;
assign S = C_mx[0] - q;
assign O = (S[LOGQ]) ? C_mx[1] : S_mx;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////


always @(posedge clk) begin

    if (FF_IN) begin
        C_q[0] <= C;
    end

    if (FF_SUB) begin
        S_q <= S;
        C_q[1] <= C_mx[0];
    end

    if (FF_OUT) begin
        O_q <= O;
    end

end

/////////////////////////////////////////////////////////////////////////



endmodule