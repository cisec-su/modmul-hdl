`include "dsp_def_new.vh"
`include "word_red.svh"

module word_red 
       #(
            parameter  K      = 120  ,
            parameter  LOGQH  = 26   ,
            parameter  R      = 34   ,
            parameter  Y      = 0    ,
            parameter  FF_IN  = 1    ,
            parameter  FF_SUB = 0    ,
            parameter  FF_MUL = 1    ,
            parameter  FF_SUM = 0    ,
            parameter  FF_OUT = 1    ,
            parameter  O_SIZE = K - R + 1
        )
        (
            input                 clk,
            input                 rst,
            input  [LOGQH   -1:0]  qH,
            input  [K       -1:0]   C,
            output [O_SIZE  -1:0]   T
        );

///////////////////////////// parameters ////////////////////////////////

localparam word_red_params_t params = {R, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT};
localparam FF_SUM_ = word_red_ff_sum(params);
localparam MODE = word_red_mode(params);
localparam P1_SHFT = (MODE == 0 || MODE == 1) ? `DSP_B_U : 
                     (MODE == 2 || MODE == 4) ? `DSP_A_U : 0;
localparam DO_P1 = word_red_do_p1(params);
localparam LAT = word_red_lat(params);


/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

reg  [K-1:0] C_q;
wire [K-1:0] C_mx;

wire [  R-1:0] CL;
wire [K-R-1:0] CH;

wire [R-1:0] CL_N;
reg  [R-1:0] CL_N_q;
wire [R-1:0] CL_N_mx;

reg  [K-R-1:0] CH_q  [0:1];
wire [K-R-1:0] CH_mx [0:1];

wire carry;
reg  carry_q  [0:1];
wire carry_mx [0:1];

(* use_dsp = "yes" *) wire [`DSP_M_U-1:0] P0;
(* use_dsp = "yes" *) wire [`DSP_M_U-1:0] P1;

reg  [`DSP_M_U-1:0] P0_q  [0:1];
wire [`DSP_M_U-1:0] P0_mx [0:1];


reg  [`DSP_M_U-1:0] P1_q;
wire [`DSP_M_U-1:0] P1_mx;


wire [K-1:0] T0;
reg  [K-1:0] T0_q;
wire [K-1:0] T0_mx;


reg  [O_SIZE-1:0] T1_q;
wire [O_SIZE-1:0] T1;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// partitioning  ///////////////////////////////

assign CL = C_mx[R-1:0];
assign CH = C_mx[K-1:R];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps  /////////////////////////////

assign C_mx = (FF_IN) ? C_q : C;

assign CL_N_mx     = (FF_SUB) ? CL_N_q     : CL_N;
assign CH_mx[0]    = (FF_SUB) ? CH_q[0]    : CH;
assign carry_mx[0] = (FF_SUB) ? carry_q[0] : carry;

assign P0_mx[0]    = (FF_MUL) ? P0_q[0]    : P0;
assign P1_mx       = (!DO_P1) ? 0 : (FF_MUL) ? P1_q       : P1;
assign carry_mx[1] = (FF_MUL) ? carry_q[1] : carry_mx[0];
assign CH_mx[1]    = (FF_MUL) ? CH_q[1]    : CH_mx[0];

assign T0_mx       = (FF_SUM_) ? T0_q       : T0;
assign P0_mx[1]    = (FF_SUM_) ? P0_q[1]    : P0_mx[0];

assign T           = (FF_OUT) ? T1_q       : T1;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// negation and or  ////////////////////////////

assign CL_N = -CL;
assign carry = CL[R-1] | CL_N[R-1];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplication  /////////////////////////////

assign P0     = (MODE == 0) ? qH     [`DSP_B_U-1:0] * CL_N_mx :
                (MODE == 1) ? CL_N_mx[`DSP_B_U-1:0] * qH :
                (MODE == 2) ? CL_N_mx[`DSP_A_U-1:0] * qH :
                (MODE == 3) ? CL_N_mx              * qH :
                (MODE == 4) ? qH     [`DSP_A_U-1:0] * CL_N_mx :
                0;

assign P1     = (MODE == 0) ? qH     [LOGQH -1:`DSP_B_U] * CL_N_mx :
                (MODE == 1) ? CL_N_mx[R     -1:`DSP_B_U] * qH :
                (MODE == 2) ? CL_N_mx[R     -1:`DSP_A_U] * qH :
                (MODE == 4) ? qH     [LOGQH -1:`DSP_A_U] * CL_N_mx :
                0;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// summation  //////////////////////////////////

assign T0     = (P1_mx    << (Y + P1_SHFT)) + CH_mx[1] + carry_mx[1];
assign T1     = (P0_mx[1] <<  Y) + T0_mx;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////


always @(posedge clk) begin

    if (FF_IN) begin
        C_q <= C;
    end

    if (FF_SUB) begin
        CL_N_q     <= CL_N;
        CH_q[0]    <= CH;
        carry_q[0] <= carry;
    end

    if (FF_MUL) begin
        P0_q[0]    <= P0;
        if (DO_P1) begin
            P1_q       <= P1;
        end
        carry_q[1] <= carry_mx[0];
        CH_q[1]    <= CH_mx[0];
    end

    if (FF_SUM_ == 1) begin
        T0_q    <= T0;
        P0_q[1] <= P0_mx[0];
    end

    if (FF_OUT) begin
        T1_q <= T1;
    end

end

/////////////////////////////////////////////////////////////////////////



endmodule