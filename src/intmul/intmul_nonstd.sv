`include "dsp.vh"

module intmul_nonstd
   #(
        parameter W_A     = 60,       
        parameter W_B     = 60,
        parameter FF_IN   = 1,
        parameter FF_MUL  = 1,
        parameter FF_OUT  = 1,
        parameter USE_CSA = 0,
        parameter FF_CSA  = 0, 
        parameter USE_DSP = 0 
    )
    (
        input                      clk,
        input                      rst, 
        input wire  [W_A    -1:0]  A,
        input wire  [W_B    -1:0]  B,
        output wire [W_A+W_B-1:0]  C
    );

integer i;

///////////////////////////// Signals Declaration ///////////////////////////////////

wire [`DSP_A_U-1:0] A_1, A_2, A_5, A_6, B_3, B_4, B_7, B_8;
wire [`DSP_B_U-1:0] A_3, A_4, A_7, A_8, B_1, B_2, B_5, B_6;
wire [2*`DSP_B_U-1:`DSP_A_U] A_s, B_s;
reg [`DSP_A_U-1:0] A_1_q, A_2_q, A_5_q, A_6_q, B_3_q, B_4_q, B_7_q, B_8_q;
reg [`DSP_B_U-1:0] A_3_q, A_4_q, A_7_q, A_8_q, B_1_q, B_2_q, B_5_q, B_6_q;
reg [2*`DSP_B_U-1:`DSP_A_U] A_s_q, B_s_q;
wire [`DSP_A_U-1:0] A_1_mx, A_2_mx, A_5_mx, A_6_mx, B_3_mx, B_4_mx, B_7_mx, B_8_mx;
wire [`DSP_B_U-1:0] A_3_mx, A_4_mx, A_7_mx, A_8_mx, B_1_mx, B_2_mx, B_5_mx, B_6_mx;
wire [2*`DSP_B_U-1:`DSP_A_U] A_s_mx, B_s_mx;

(* use_dsp = "yes" *) wire [`DSP_M_U-1:0] M [0:7]; 
reg  [`DSP_M_U-1:0] M_q [0:7];
wire [`DSP_M_U-1:0] M_mx[0:7];

(* use_dsp = "yes" *) wire [`DSP_M_U - 1:0] S_dsp; 
wire [`DSP_M_U - 1:0] S_no_dsp; 
reg [`DSP_M_U - 1:0] S_dsp_q; 
reg [`DSP_M_U - 1:0] S_no_dsp_q; 
wire [`DSP_M_U - 1:0] S_dsp_mx; 
wire [`DSP_M_U - 1:0] S_no_dsp_mx; 

reg  [W_A+W_B-1:0] P;
reg  [W_A+W_B-1:0] P_q;

reg [W_A+W_B-1:0] CSA_IN[0:8]; 
for (genvar i = 0; i < 9; i = i + 1) begin
    initial CSA_IN[i] = 0;
end

wire [W_A+W_B+3:0] CSA_OUT    [0:1];
reg  [W_A+W_B+3:0] CSA_OUT_q  [0:1];
wire [W_A+W_B+3:0] CSA_OUT_mx [0:1];

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Partitioning //////////////////////////////

assign A_1 = A[`DSP_A_U-1:0];
assign A_2 = A[`DSP_A_U-1:0];
assign A_3 = A[`DSP_B_U-1:0];
assign A_4 = A[2*`DSP_B_U-1:`DSP_B_U];
assign A_5 = A[W_A-1:2*`DSP_B_U];
assign A_6 = A[W_A-1:2*`DSP_B_U];
assign A_7 = A[W_A-1:`DSP_M_U];
assign A_8 = A[`DSP_M_U-1:`DSP_A_U];
assign A_s = A[2*`DSP_B_U-1:`DSP_A_U];

assign B_1 = B[`DSP_B_U-1:0];
assign B_2 = B[2*`DSP_B_U-1:`DSP_B_U];
assign B_3 = B[W_A-1:2*`DSP_B_U];
assign B_4 = B[W_A-1:2*`DSP_B_U];
assign B_5 = B[W_A-1:`DSP_M_U];
assign B_6 = B[`DSP_M_U-1:`DSP_A_U];
assign B_7 = B[`DSP_A_U-1:0];
assign B_8 = B[`DSP_A_U-1:0];
assign B_s = B[2*`DSP_B_U-1:`DSP_A_U];

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Pipeline Steps ////////////////////////////

assign A_1_mx = (FF_IN) ? A_1_q : A_1;
assign A_2_mx = (FF_IN) ? A_2_q : A_2;
assign A_3_mx = (FF_IN) ? A_3_q : A_3;
assign A_4_mx = (FF_IN) ? A_4_q : A_4;
assign A_5_mx = (FF_IN) ? A_5_q : A_5;
assign A_6_mx = (FF_IN) ? A_6_q : A_6;
assign A_7_mx = (FF_IN) ? A_7_q : A_7;
assign A_8_mx = (FF_IN) ? A_8_q : A_8;

assign B_1_mx = (FF_IN) ? B_1_q : B_1;
assign B_2_mx = (FF_IN) ? B_2_q : B_2;
assign B_3_mx = (FF_IN) ? B_3_q : B_3;
assign B_4_mx = (FF_IN) ? B_4_q : B_4;
assign B_5_mx = (FF_IN) ? B_5_q : B_5;
assign B_6_mx = (FF_IN) ? B_6_q : B_6;
assign B_7_mx = (FF_IN) ? B_7_q : B_7;
assign B_8_mx = (FF_IN) ? B_8_q : B_8;

assign A_s_mx = (FF_IN) ? A_s_q : A_s;
assign B_s_mx = (FF_IN) ? B_s_q : B_s;

for (genvar i = 0; i < 8; i = i + 1) begin
    assign M_mx[i] = (FF_MUL) ? M_q[i] : M[i];
end

if (USE_DSP) begin
    assign S_dsp_mx = (FF_MUL) ? S_dsp_q : S_dsp;
end else begin
    assign S_no_dsp_mx = (FF_MUL) ? S_no_dsp_q : S_no_dsp;
end

for (genvar i = 0; i < 2; i = i + 1) begin
    assign CSA_OUT_mx[i] = (FF_CSA) ? CSA_OUT_q[i] : CSA_OUT[i];
end

assign C = (FF_OUT) ? P_q : P;

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Multiplication ////////////////////////////

assign M[0] = A_1_mx * B_1_mx;
assign M[1] = A_2_mx * B_2_mx;
assign M[2] = A_3_mx * B_3_mx;
assign M[3] = A_4_mx * B_4_mx;
assign M[4] = A_5_mx * B_5_mx;
assign M[5] = A_6_mx * B_6_mx;
assign M[6] = A_7_mx * B_7_mx;
assign M[7] = A_8_mx * B_8_mx;

if (USE_DSP) begin
    assign S_dsp = A_s_mx * B_s_mx;
end else begin
    assign S_no_dsp = A_s_mx * B_s_mx;
end

/////////////////////////////////////////////////////////////////////////

///////////////////////////// CSA_IN Assignment////////////////////////////

for (genvar i = 0; i < 9; i = i + 1) begin
    always @(*) begin
         CSA_IN[0] = { {(W_A+W_B-`DSP_M_U){1'b0}}, M_mx[0] };
         CSA_IN[1] = { {(W_A+W_B-`DSP_M_U-`DSP_B_U){1'b0}}, M_mx[1], {`DSP_B_U{1'b0}} };
         CSA_IN[2] = { {(W_A+W_B-`DSP_M_U-2*`DSP_B_U){1'b0}}, M_mx[2], {2*`DSP_B_U{1'b0}} };
         CSA_IN[3] = { {`DSP_A_U{1'b0}}, M_mx[3], {(W_A+W_B-`DSP_M_U-`DSP_A_U){1'b0}} };
         CSA_IN[4] = { {(W_A+W_B-`DSP_M_U-`DSP_A_U){1'b0}}, M_mx[7], {`DSP_A_U{1'b0}} };
         CSA_IN[5] = { {2*`DSP_B_U{1'b0}}, M_mx[6], {(W_A+W_B-`DSP_M_U-2*`DSP_B_U){1'b0}} };
         CSA_IN[6] = { {`DSP_B_U{1'b0}}, M_mx[5], {(W_A+W_B-`DSP_M_U-`DSP_B_U){1'b0}} };
         CSA_IN[7] = { M_mx[4], {(W_A+W_B-`DSP_M_U){1'b0}} };
        if (USE_DSP) begin
            CSA_IN[8] = { {(W_A+W_B-`DSP_M_U-`DSP_A_U+1){1'b0}}, S_dsp_mx, {(W_A+W_B-`DSP_M_U-`DSP_A_U+1){1'b0}} };
        end else begin
            CSA_IN[8] = { {(W_A+W_B-`DSP_M_U-`DSP_A_U+1){1'b0}}, S_no_dsp_mx, {(W_A+W_B-`DSP_M_U-`DSP_A_U+1){1'b0}} };
        end
    end
end

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Summation /////////////////////////////////

if (USE_CSA) begin

    csa_tree #(
        W_A + W_B,
        9
    ) CSA_TREE (
        CSA_IN,
        CSA_OUT
    );

    always @(*) begin
        P = CSA_OUT_mx[0] + CSA_OUT_mx[1];
    end

end 
else begin
    always @(*) begin
        P = 0;
        for (i = 0; i < 9; i = i + 1) begin
            P = P + CSA_IN[i];
        end
    end
end

/////////////////////////////////////////////////////////////////////////

///////////////////////////// Sequential Logic //////////////////////////

if (FF_IN) begin
    always @(posedge clk) begin
        A_1_q <= A_1;
        A_2_q <= A_2;
        A_3_q <= A_3;
        A_4_q <= A_4;
        A_5_q <= A_5;
        A_6_q <= A_6;
        A_7_q <= A_7;
        A_8_q <= A_8;
        A_s_q <= A_s;
    end
    always @(posedge clk) begin
        B_1_q <= B_1;
        B_2_q <= B_2;
        B_3_q <= B_3;
        B_4_q <= B_4;
        B_5_q <= B_5;
        B_6_q <= B_6;
        B_7_q <= B_7;
        B_8_q <= B_8;
        B_s_q <= B_s;
    end
end

if (FF_MUL) begin
    for (genvar i = 0; i < 8; i = i + 1) begin
        always @(posedge clk) begin
            M_q[i] <= M[i];
        end
    end
    always @(posedge clk) begin
        if (USE_DSP) begin
            S_dsp_q <= S_dsp;
        end else begin
            S_no_dsp_q <= S_no_dsp;
        end
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
        P_q <= P;
    end
end

/////////////////////////////////////////////////////////////////////////

endmodule
