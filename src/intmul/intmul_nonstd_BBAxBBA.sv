`include "dsp.vh"
`include "intmul_nonstd_BBAxBBA.svh"

module intmul_nonstd_BBAxBBA
   #(
        parameter LOGA     = 60,       
        parameter LOGB     = 60,
        parameter FF_IN    = 1 ,
        parameter FF_MUL   = 1 ,
        parameter FF_OUT   = 1 ,
        parameter USE_CSA  = 0 ,
        parameter FF_CSA   = 0 , 
        parameter MORE_DSP = 0 
    )
    (
        input                  clk,
        input  [LOGA     -1:0] A  ,
        input  [LOGB     -1:0] B  ,
        output [LOGA+LOGB-1:0] C
    );

localparam intmul_nonstd_BBAxBBA_params_t params = {LOGA, LOGB, FF_IN, FF_MUL, FF_OUT, FF_CSA, USE_CSA, MORE_DSP};
localparam LAT = intmul_nonstd_BBAxBBA_lat(params);

integer i;

///////////////////////////// Signals Declaration ///////////////////////////////////

wire [`DSP_A_U-1:0] A_0, A_1, A_4, A_5, B_2, B_3, B_6, B_7;
wire [`DSP_B_U-1:0] A_2, A_3, A_6, A_7, B_0, B_1, B_4, B_5;
wire [2*`DSP_B_U-1:`DSP_A_U] A_p, B_p;
reg [`DSP_A_U-1:0] A_0_q, A_1_q, A_4_q, A_5_q, B_2_q, B_3_q, B_6_q, B_7_q;
reg [`DSP_B_U-1:0] A_2_q, A_3_q, A_6_q, A_7_q, B_0_q, B_1_q, B_4_q, B_5_q;
reg [2*`DSP_B_U-1:`DSP_A_U] A_p_q, B_p_q;
wire [`DSP_A_U-1:0] A_0_mx, A_1_mx, A_4_mx, A_5_mx, B_2_mx, B_3_mx, B_6_mx, B_7_mx;
wire [`DSP_B_U-1:0] A_2_mx, A_3_mx, A_6_mx, A_7_mx, B_0_mx, B_1_mx, B_4_mx, B_5_mx;
wire [2*`DSP_B_U-1:`DSP_A_U] A_p_mx, B_p_mx;

(* MORE_DSP = "yes" *) wire [`DSP_M_U-1:0] P [0:7]; 
reg  [`DSP_M_U-1:0] P_q [0:7];
wire [`DSP_M_U-1:0] P_mx [0:7];

(* MORE_DSP = "yes" *) wire [`DSP_M_U - 1:0] M_dsp; 
(* MORE_DSP = "no" *) wire [`DSP_M_U - 1:0] M_lut; 
wire [`DSP_M_U - 1:0] M;
reg [`DSP_M_U - 1:0] M_q;
wire [`DSP_M_U - 1:0] M_mx; 

reg  [LOGA+LOGB-1:0] S;
reg  [LOGA+LOGB-1:0] S_q;

reg [LOGA+LOGB-1:0] D[0:8]; 
for (genvar i = 0; i < 9; i = i + 1) begin
    initial D[i] = 0;
end

wire [LOGA+LOGB+3:0] CSA_OUT    [0:1];
reg  [LOGA+LOGB+3:0] CSA_OUT_q  [0:1];
wire [LOGA+LOGB+3:0] CSA_OUT_mx [0:1];

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Partitioning //////////////////////////////

assign A_0 = A[`DSP_A_U-1:0];
assign A_1 = A[`DSP_A_U-1:0];
assign A_2 = A[`DSP_B_U-1:0];
assign A_3 = A[2*`DSP_B_U-1:`DSP_B_U];
assign A_4 = A[LOGA-1:2*`DSP_B_U];
assign A_5 = A[LOGA-1:2*`DSP_B_U];
assign A_6 = A[LOGA-1:`DSP_M_U];
assign A_7 = A[`DSP_M_U-1:`DSP_A_U];
assign A_p = A[2*`DSP_B_U-1:`DSP_A_U];

assign B_0 = B[`DSP_B_U-1:0];
assign B_1 = B[2*`DSP_B_U-1:`DSP_B_U];
assign B_2 = B[LOGA-1:2*`DSP_B_U];
assign B_3 = B[LOGA-1:2*`DSP_B_U];
assign B_4 = B[LOGA-1:`DSP_M_U];
assign B_5 = B[`DSP_M_U-1:`DSP_A_U];
assign B_6 = B[`DSP_A_U-1:0];
assign B_7 = B[`DSP_A_U-1:0];
assign B_p = B[2*`DSP_B_U-1:`DSP_A_U];

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Pipeline Steps ////////////////////////////

assign A_0_mx = (FF_IN) ? A_0_q : A_0;
assign A_1_mx = (FF_IN) ? A_1_q : A_1;
assign A_2_mx = (FF_IN) ? A_2_q : A_2;
assign A_3_mx = (FF_IN) ? A_3_q : A_3;
assign A_4_mx = (FF_IN) ? A_4_q : A_4;
assign A_5_mx = (FF_IN) ? A_5_q : A_5;
assign A_6_mx = (FF_IN) ? A_6_q : A_6;
assign A_7_mx = (FF_IN) ? A_7_q : A_7;

assign B_0_mx = (FF_IN) ? B_0_q : B_0;
assign B_1_mx = (FF_IN) ? B_1_q : B_1;
assign B_2_mx = (FF_IN) ? B_2_q : B_2;
assign B_3_mx = (FF_IN) ? B_3_q : B_3;
assign B_4_mx = (FF_IN) ? B_4_q : B_4;
assign B_5_mx = (FF_IN) ? B_5_q : B_5;
assign B_6_mx = (FF_IN) ? B_6_q : B_6;
assign B_7_mx = (FF_IN) ? B_7_q : B_7;

assign A_p_mx = (FF_IN) ? A_p_q : A_p;
assign B_p_mx = (FF_IN) ? B_p_q : B_p;

for (genvar i = 0; i < 8; i = i + 1) begin
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

assign P[0] = A_0_mx * B_0_mx;
assign P[1] = A_1_mx * B_1_mx;
assign P[2] = A_2_mx * B_2_mx;
assign P[3] = A_3_mx * B_3_mx;
assign P[4] = A_4_mx * B_4_mx;
assign P[5] = A_5_mx * B_5_mx;
assign P[6] = A_6_mx * B_6_mx;
assign P[7] = A_7_mx * B_7_mx;

if (MORE_DSP) begin
    assign M_dsp = A_p_mx * B_p_mx;
end else begin
    assign M_lut = A_p_mx * B_p_mx;
end

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Assignment ////////////////////////////

always @(*) begin
    D[0] = { {(LOGA+LOGB-`DSP_M_U){1'b0}}, P_mx[0] };
    D[1] = { {(LOGA+LOGB-`DSP_M_U-`DSP_B_U){1'b0}}, P_mx[1], {`DSP_B_U{1'b0}} };
    D[2] = { {(LOGA+LOGB-`DSP_M_U-2*`DSP_B_U){1'b0}}, P_mx[2], {2*`DSP_B_U{1'b0}} };
    D[3] = { {`DSP_A_U{1'b0}}, P_mx[3], {(LOGA+LOGB-`DSP_M_U-`DSP_A_U){1'b0}} };
    D[4] = { {(LOGA+LOGB-`DSP_M_U-`DSP_A_U){1'b0}}, P_mx[7], {`DSP_A_U{1'b0}} };
    D[5] = { {2*`DSP_B_U{1'b0}}, P_mx[6], {(LOGA+LOGB-`DSP_M_U-2*`DSP_B_U){1'b0}} };
    D[6] = { {`DSP_B_U{1'b0}}, P_mx[5], {(LOGA+LOGB-`DSP_M_U-`DSP_B_U){1'b0}} };
    D[7] = { P_mx[4], {(LOGA+LOGB-`DSP_M_U){1'b0}} };
    D[8] = { {(LOGA+LOGB-`DSP_M_U-`DSP_A_U+1){1'b0}}, M_mx, {(LOGA+LOGB-`DSP_M_U-`DSP_A_U+1){1'b0}} };
end

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Summation /////////////////////////////////

if (USE_CSA) begin

    csa_tree #(
        LOGA + LOGB,
        9
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
        for (i = 0; i < 9; i = i + 1) begin
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
        A_4_q <= A_4;
        A_5_q <= A_5;
        A_6_q <= A_6;
        A_7_q <= A_7;
        A_p_q <= A_p;
    end
    always @(posedge clk) begin
        B_0_q <= B_0;
        B_1_q <= B_1;
        B_2_q <= B_2;
        B_3_q <= B_3;
        B_4_q <= B_4;
        B_5_q <= B_5;
        B_6_q <= B_6;
        B_7_q <= B_7;
        B_p_q <= B_p;
    end
end

if (FF_MUL) begin
    for (genvar i = 0; i < 8; i = i + 1) begin
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
