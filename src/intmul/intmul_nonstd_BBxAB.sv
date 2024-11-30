`include "dsp.vh"
`include "intmul_nonstd_BBxAB.svh"

module intmul_nonstd_BBxAB
   #(
        parameter LOGA     = 34,       
        parameter LOGB     = 43,
        parameter FF_IN    = 1 ,
        parameter FF_MUL   = 1 ,
        parameter FF_OUT   = 1 ,
        parameter USE_CSA  = 0 ,
        parameter FF_CSA   = 0 , 
        parameter MORE_DSP = 0 
    )
    (
        input                  clk,
        input                  rst, 
        input  [LOGA     -1:0] A  ,
        input  [LOGB     -1:0] B  ,
        output [LOGA+LOGB-1:0] C
    );

localparam intmul_nonstd_BBxAB_params_t params = {FF_IN, FF_MUL, FF_OUT, FF_CSA, USE_CSA, MORE_DSP};
localparam LAT = intmul_nonstd_BBxAB_lat(params);

localparam N_A = ((LOGA - 1) / `DSP_A_U) + 1;
localparam N_B = ((LOGB - 1) / `DSP_B_U) + 1;
localparam N_D = N_A + N_B - 1;
localparam CSA_OUT_W = LOGA + LOGB + $rtoi($ceil($clog2(N_D)));

integer i;

///////////////////////////// Signals Declaration ///////////////////////////////////

wire [`DSP_A_U-1:0] A_0;
wire [`DSP_B_U-1:0] A_1;
wire [LOGA-1:`DSP_A_U] A_2;
wire [LOGA-1:`DSP_B_U] A_3;
wire [`DSP_A_U-1:0] B_0;
wire [LOGB-1:`DSP_A_U] B_1;

reg [`DSP_A_U-1:0] A_0_q;
reg [`DSP_B_U-1:0] A_1_q;
reg [LOGA-1:`DSP_A_U] A_2_q;
reg [LOGA-1:`DSP_B_U] A_3_q;
reg [`DSP_A_U-1:0] B_0_q;
reg [LOGB-1:`DSP_A_U] B_1_q;

wire [`DSP_A_U-1:0] A_0_mx;
wire [`DSP_B_U-1:0] A_1_mx;
wire [LOGA-1:`DSP_A_U] A_2_mx;
wire [LOGA-1:`DSP_B_U] A_3_mx;
wire [`DSP_A_U-1:0] B_0_mx;
wire [LOGB-1:`DSP_A_U] B_1_mx;

(* MORE_DSP = "yes" *) wire [`DSP_M_U-1:0] P [0:3]; 
reg  [`DSP_M_U-1:0] P_q [0:3];
wire [`DSP_M_U-1:0] P_mx [0:3];

(* MORE_DSP = "yes" *) wire [`DSP_A_U - 1:0] M_dsp; 
(* MORE_DSP = "no" *) wire [`DSP_A_U - 1:0] M_lut; 
wire [`DSP_A_U - 1:0] M;
reg [`DSP_A_U - 1:0] M_q;
wire [`DSP_A_U - 1:0] M_mx; 

reg  [LOGA+LOGB-1:0] S;
reg  [LOGA+LOGB-1:0] S_q;

reg [LOGA+LOGB-1:0] D[0:3]; 
for (genvar i = 0; i < 4; i = i + 1) begin
    initial D[i] = 0;
end

wire [CSA_OUT_W-1:0] CSA_OUT    [0:1];
reg  [CSA_OUT_W-1:0] CSA_OUT_q  [0:1];
wire [CSA_OUT_W-1:0] CSA_OUT_mx [0:1];

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Partitioning //////////////////////////////

assign A_0 = A[`DSP_A_U-1:0];
assign A_1 = A[`DSP_B_U-1:0];
assign A_2 = A[LOGA-1:`DSP_A_U];
assign A_3 = A[LOGA-1:`DSP_B_U];

assign B_0 = B[`DSP_A_U-1:0];
assign B_1 = B[LOGB-1:`DSP_A_U];

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Pipeline Steps ////////////////////////////

assign A_0_mx = (FF_IN) ? A_0_q : A_0;
assign A_1_mx = (FF_IN) ? A_1_q : A_1;
assign A_2_mx = (FF_IN) ? A_2_q : A_2;
assign A_3_mx = (FF_IN) ? A_3_q : A_3;

assign B_0_mx = (FF_IN) ? B_0_q : B_0;
assign B_1_mx = (FF_IN) ? B_1_q : B_1;

for (genvar i = 0; i < 3; i = i + 1) begin
    assign P_mx[i] = (FF_MUL) ? P_q[i] : P[i];
end

assign M = (MORE_DSP) ? M_dsp : M_lut;
assign M_mx = (FF_MUL) ? M_q : M;

for (genvar i = 0; i < 2; i = i + 1) begin
    assign CSA_OUT_mx[i] = (FF_CSA) ? CSA_OUT_q[i] : CSA_OUT[i];
end

assign C = (FF_OUT) ? S_q : S;

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Multiplication ////////////////////////////

assign P[0] = A_1_mx * B_0_mx;
assign P[1] = A_0_mx * B_1_mx;
assign P[2] = A_3_mx * B_0_mx;

if (MORE_DSP) begin
    assign M_dsp = A_2_mx * B_1_mx;
end else begin
    assign M_lut = A_2_mx * B_1_mx;
end

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Assignment ////////////////////////////

always @(*) begin
    D[0] = { {(LOGA+LOGB-`DSP_M_U){1'b0}}, P_mx[0] };
    D[1] = { {(LOGA+LOGB-`DSP_M_U-`DSP_A_U){1'b0}}, P_mx[1], {`DSP_A_U{1'b0}} };
    D[2] = { {(LOGA+LOGB-`DSP_M_U-`DSP_B_U){1'b0}}, P_mx[2], {`DSP_B_U{1'b0}} };
    D[3] = { M_mx, {(2*`DSP_A_U){1'b0}} };
end

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Summation /////////////////////////////////

if (USE_CSA) begin

    csa_tree #(
        LOGA + LOGB,
        4
    ) CSA_TREE (
        D,
        CSA_OUT
    );

    always @(*) begin
        S = CSA_OUT_mx[0] + CSA_OUT_mx[1];
    end

end 
else begin
    always @(*) begin
        S = 0;
        for (i = 0; i < 4; i = i + 1) begin
            S = S + D[i];
        end
    end
end

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Sequential Logic //////////////////////////

if (FF_IN) begin
    always @(posedge clk) begin
        A_0_q <= A_0;
        A_1_q <= A_1;
        A_2_q <= A_2;
        A_3_q <= A_3;
    end
    always @(posedge clk) begin
        B_0_q <= B_0;
        B_1_q <= B_1;
    end
end

if (FF_MUL) begin
    for (genvar i = 0; i < 3; i = i + 1) begin
        always @(posedge clk) begin
            P_q[i] <= P[i];
        end
    end
    always @(posedge clk) begin
        M_q <= M;
    end
end

if (FF_CSA) begin
    for (genvar i = 0; i < 2; i = i + 1) begin
        always @(posedge clk) begin
            CSA_OUT_q[i] <= CSA_OUT[i];
        end
    end
end

if (FF_OUT) begin
    always @(posedge clk) begin
        S_q <= S;
    end
end

/////////////////////////////////////////////////////////////////////////

endmodule