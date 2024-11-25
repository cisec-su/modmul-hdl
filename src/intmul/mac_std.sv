`include "dsp.vh"
`include "mac_std.svh"

module mac_std
   #(  
        parameter          LOGA    = 60    ,
        parameter          LOGB    = 60    ,
        parameter mode_e_t MODE_E  = DIS_E ,
        parameter          LOGE    = 32    ,
        parameter          FF_IN_A = 1     ,
        parameter          FF_IN_B = 1     ,
        parameter          FF_IN_E = 0     ,
        parameter          FF_MUL  = 1     ,
        parameter          FF_OUT  = 1     ,
        parameter          USE_CSA = 0     ,
        parameter          FF_CSA  = 0
    )
    (
        input                clk,
        input     [LOGA-1:0] A  ,
        input     [LOGB-1:0] B  ,
        input     [LOGE-1:0] E  ,
        output    [LOGC-1:0] C
    );

localparam mac_std_params_t params = {LOGA, LOGB, MODE_E, LOGE, FF_IN_A, FF_IN_B, FF_IN_E, FF_MUL, FF_OUT, FF_CSA, USE_CSA};
localparam LOGD = mac_std_logd(params);
localparam LOGC = mac_std_logc(params);
localparam LAT  = mac_std_lat(params);

localparam DSP_A_U = (LOGA >= LOGB) ? `DSP_A_U : `DSP_B_U;
localparam DSP_B_U = (LOGA >= LOGB) ? `DSP_B_U : `DSP_A_U;

localparam N_A = ((LOGA - 1) / DSP_A_U) + 1;
localparam N_B = ((LOGB - 1) / DSP_B_U) + 1;
localparam N_D = N_A + N_B - 1;

localparam CSA_DEPTH  = (MODE_E == 0) ? N_D  : N_D + 1;
localparam LOGCI      = (MODE_E == 0) ? LOGD : (MODE_E == 1) ? LOGC - 1 : LOGC;
localparam LOGCO      = LOGCI + $rtoi($ceil($clog2(CSA_DEPTH)));
localparam CSA_NEG    = MODE_E == 2 && USE_CSA;

integer i;

///////////////////////////// signals ///////////////////////////////////

wire [DSP_A_U-1:0] A_i   [0:N_A-1];
reg  [DSP_A_U-1:0] A_i_q [0:N_A-1];
wire [DSP_A_U-1:0] A_i_mx[0:N_A-1];

wire [DSP_B_U-1:0] B_i   [0:N_B-1];
reg  [DSP_B_U-1:0] B_i_q [0:N_B-1];
wire [DSP_B_U-1:0] B_i_mx[0:N_B-1];


generate
    if (MODE_E != 0) begin : E_int
        localparam E_len = (CSA_NEG) ? 1 : 2;
        wire [LOGE-1:0] mx [0:E_len-1];
        reg  [LOGE-1:0] q  [0:E_len-1];
    end
    if (CSA_NEG) begin : E_N
        wire [LOGCI-1:0] E_N;
        wire [LOGCI-1:0] mx ;
        reg  [LOGCI-1:0] q  ;
    end
endgenerate

(* use_dsp = "yes" *) wire [`DSP_M_U-1:0] P [0:N_A-1][0:N_B-1];
reg  [`DSP_M_U-1:0] P_q [0:N_A-1][0:N_B-1];
wire [`DSP_M_U-1:0] P_mx[0:N_A-1][0:N_B-1];

reg  [LOGD-1:0] D [0:N_D-1];
for (genvar i = 0; i < N_D; i = i + 1) begin
    initial D[i] = 0;
end

(* use_dsp = "no" *) reg  [LOGC-1:0] S;
reg  [LOGC-1:0] S_q;

generate
    if (USE_CSA) begin : CSA
        wire [LOGCI-1:0] IN     [0:CSA_DEPTH-1];
        wire [LOGCO-1:0] OUT    [0:          1];
        reg  [LOGCO-1:0] OUT_q  [0:          1];
        wire [LOGCO-1:0] OUT_mx [0:          1];
    end
    else begin : S_int
        reg  [LOGC-1:0] S;
    end
endgenerate

/////////////////////////////////////////////////////////////////////////




///////////////////////////// partitioning //////////////////////////////

for (genvar i = 0; i < N_A; i = i + 1) begin
    if (i == (N_A - 1)) begin
        assign A_i[i] = A[LOGA - 1 : DSP_A_U*i];
    end
    else begin
        assign A_i[i] = A[DSP_A_U*i +: DSP_A_U];
    end
end

for (genvar i = 0; i < N_B; i = i + 1) begin
    if (i == (N_B - 1)) begin
        assign B_i[i] = B[LOGB - 1 : DSP_B_U*i];
    end
    else begin
        assign B_i[i] = B[DSP_B_U*i +: DSP_B_U];
    end
end

/////////////////////////////////////////////////////////////////////////




///////////////////////////// pipeline steps ////////////////////////////

for (genvar i = 0; i < N_A; i = i + 1) begin
    assign A_i_mx[i] = (FF_IN_A) ? A_i_q[i] : A_i[i];
end

for (genvar i = 0; i < N_B; i = i + 1) begin
    assign B_i_mx[i] = (FF_IN_B) ? B_i_q[i] : B_i[i];
end

if (MODE_E != 0) begin
    assign E_int.mx[0] = (FF_IN_E) ? E_int.q[0] : E;
end

for (genvar i = 0; i < N_A; i = i + 1) begin
    for (genvar j = 0; j < N_B; j = j + 1) begin
        assign P_mx[i][j] = (FF_MUL) ? P_q[i][j] : P[i][j];
    end
end

if (MODE_E != 0) begin
    if (CSA_NEG) begin
        assign E_N.mx = (FF_MUL) ? E_N.q : E_N.E_N;
    end
    else begin
        assign E_int.mx[1]   = (FF_MUL) ? E_int.q[1] : E_int.mx[0];
    end
end

if (USE_CSA) begin
    for (genvar i = 0; i < 2; i = i + 1) begin
        assign CSA.OUT_mx[i] = (FF_CSA) ? CSA.OUT_q[i] : CSA.OUT[i];
    end
end

assign C = (FF_OUT) ? S_q : S;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// multiplication ////////////////////////////

for (genvar i = 0; i < N_A; i = i + 1) begin
    for (genvar j = 0; j < N_B; j = j + 1) begin
        assign P[i][j] = A_i_mx[i] * B_i_mx[j];
    end
end

/////////////////////////////////////////////////////////////////////////




///////////////////////////// optional negation /////////////////////////

if (CSA_NEG) begin
    assign E_N.E_N = -$signed(E_int.mx[0]);
end

/////////////////////////////////////////////////////////////////////////




///////////////////////////// diagonal assignments //////////////////////

for (genvar i = 0; i < N_A; i = i + 1) begin
    for (genvar j = 0; j < N_B; j = j + 1) begin
        always @(*) begin
            if (((i*DSP_A_U) + (j*DSP_B_U) + `DSP_M_U) <= (LOGA+LOGB)) begin
                D[(i-j+N_D) % N_D][(i*DSP_A_U) + (j*DSP_B_U) +: `DSP_M_U] = P_mx[i][j];
            end
            else begin
                D[(i-j+N_D) % N_D][LOGA + LOGB - 1 : (i*DSP_A_U) + (j*DSP_B_U)] = P_mx[i][j];
            end
        end

    end
end

/////////////////////////////////////////////////////////////////////////




///////////////////////////// summation /////////////////////////////////

if (USE_CSA) begin

    for (genvar i = 0; i < N_D; i = i + 1) begin
        assign CSA.IN[i] = D[i];
    end

    if (MODE_E == 1) begin
        assign CSA.IN[N_D] = E_int.mx[1];
    end
    else if (MODE_E == 2) begin
        assign CSA.IN[N_D] = E_N.mx;
    end

    csa_tree #(
        LOGCI,
        CSA_DEPTH
    ) CSA_TREE (
        CSA.IN,
        CSA.OUT
    );

    always @(*) begin
        S = CSA.OUT_mx[0] + CSA.OUT_mx[1];
    end

end 
else begin

    always @(*) begin
        S_int.S = 0;
        for (i = 0; i < N_D; i = i + 1) begin
            S_int.S = S_int.S + D[i];
        end
    end
    if (MODE_E == 0) begin
        always @(*) begin
            S = S_int.S;
        end
    end
    else if (MODE_E == 1) begin
        always @(*) begin
            S = S_int.S + E_int.mx[1];
        end
    end
    else if (MODE_E == 2) begin
        always @(*) begin
            S = $signed({1'b0, S_int.S}) - $signed(E_int.mx[1]);
        end
    end
end

/////////////////////////////////////////////////////////////////////////




///////////////////////////// sequential logic //////////////////////////

if (FF_IN_A) begin
    for (genvar i = 0; i < N_A; i = i + 1) begin
        always @(posedge clk) begin
            A_i_q[i] <= A_i[i];
        end
    end
end
if (FF_IN_B) begin
    for (genvar i = 0; i < N_B; i = i + 1) begin
        always @(posedge clk) begin
            B_i_q[i] <= B_i[i];
        end
    end
end
if (FF_IN_E) begin
    if (MODE_E != 0) begin
        always @(posedge clk) begin
            E_int.q[0] <= E;
        end
    end
end

if (FF_MUL) begin
    for (genvar i = 0; i < N_A; i = i + 1) begin
        for (genvar j = 0; j < N_B; j = j + 1) begin
            always @(posedge clk) begin
                P_q[i][j] <= P[i][j];
            end
        end
    end
    if (CSA_NEG) begin
        always @(posedge clk) begin
            E_N.q <= E_N.E_N;
        end
    end
    else if (MODE_E != 0) begin
        always @(posedge clk) begin
            E_int.q[1] <= E_int.mx[0];
        end
    end
end

if (USE_CSA && FF_CSA) begin
    for (genvar i = 0; i < 2; i = i + 1) begin
        always @(posedge clk) begin
            CSA.OUT_q[i] <= CSA.OUT[i];
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
