
module word_red_r26 
   #(
       `include "dsp_def.vh"
       ,
        parameter  K      = 90,
        localparam R      = 26,
        parameter  Q_LEN  = 64,
        parameter  Y      = 12,
        localparam QH_LEN = Q_LEN - R - Y,
        parameter  TL_LEN = 26, // todo: don't return rest after returning with TL
        parameter  ASN_CL = 1, // todo: does not work for ASN_CL = 0
        parameter  FF_CL  = 1, // todo: does not work for FF_CL = 0
        parameter  FF_OUT = 1
    )
    (
        input                       clk,
        input                       rst,
        input  wire [Q_LEN-R-Y-1:0] qH ,
        input  wire [K        -1:0] C  ,
        output wire [K-R-1      :0] T  ,
        output wire [TL_LEN-1   :0] TL
    );


localparam QH_NUM = ((QH_LEN % DSP_B_U) == 0) ? (QH_LEN / DSP_B_U) : (QH_LEN / DSP_B_U) + 1;
localparam QH_DIV = DSP_B_U;
localparam QH_LST = ((QH_LEN % DSP_B_U) == 0) ? QH_DIV : (QH_LEN % DSP_B_U);

localparam CL_LEN = R;

localparam CH_LEN  = K - R;
localparam CHY_LEN = CH_LEN - Y; // todo: make these read from common header
localparam CHY_REM = (CHY_LEN > (DSP_C_U + (QH_NUM - 1)*DSP_B_U)) ? CHY_LEN - DSP_C_U - (QH_NUM - 1)*DSP_B_U : 0;

localparam CH_0   = (CHY_LEN > DSP_C_U) ? DSP_C_U : CHY_LEN;

localparam CH_1_S = DSP_C_U - DSP_B_U;
localparam CH_1_R = CHY_LEN - CH_0;
localparam CH_1   = (CH_1_R == 0) ? 0 : 
                    (CH_1_R < DSP_B_U) ? CH_1_R : DSP_B_U;

localparam CH_2_S = DSP_C_U - DSP_B_U;
localparam CH_2_R = CHY_LEN - CH_0 - CH_1;
localparam CH_2   = (CH_2_R == 0) ? 0 : 
                    (CH_2_R < DSP_B_U) ? CH_2_R : DSP_B_U;

localparam TLY_LEN = TL_LEN - Y;
localparam TL_NUM  = ((TLY_LEN % DSP_B_U) == 0) ? (TLY_LEN / DSP_B_U) : (TLY_LEN / DSP_B_U) + 1;
localparam TL_DIV  = QH_DIV;
localparam TL_LST  = ((TLY_LEN % DSP_B_U) == 0) ? TL_DIV : (TL_DIV % DSP_B_U);

localparam LAT     = 3 + QH_NUM - ASN_CL;



///////////////////////////// signals ///////////////////////////////////

wire [CH_LEN-1:0] CH;
wire [CHY_LEN-1:0] CHY;

reg  [CHY_REM-1:0] CHY_q [0:LAT-1];
reg  [Y-1:0] CY_q [0:LAT-1];

wire [R-1:0] CL;
wire [R-1  :0] CL_N;
reg  [R-1  :0] CL_q;

wire [DSP_C-1:0] CH_IN [0:QH_NUM-1];
wire [DSP_B-1:0] QH_IN [0:QH_NUM-1];

reg  [QH_DIV-1:0] P_q [0:QH_NUM-2][0:QH_NUM-2]; // not all are used

wire [DSP_P-1:0] PC [0:QH_NUM-1];
wire [DSP_P-1:0] P  [0:QH_NUM-1];

wire [DSP_A-1:0] ACOUT [0:QH_NUM-2];

wire [CHY_LEN-1:0] T2;
wire [CH_LEN -1:0] T2Y;
wire [CH_LEN -1:0] T3;
reg  [CH_LEN -1:0] T3_q;

wire carry;
reg  carry_q;

wire [Y:0] CY_carry;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// partitioning ////////////////////////////////

assign CH  = C[K-1:R];
assign CHY = C[K-1:R+Y];
assign CL  = C[R-1:0];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// combinational logic /////////////////////////

assign CL_N     = FF_CL ? -CL_q : -CL;
assign carry    = FF_CL ? (CL_q[R-1] | CL_N[R-1]) : CL[R-1] | CL_N[R-1];

assign CY_carry = CY_q[0] + carry_q;

generate
    for (genvar i = 0; i < QH_NUM - 1; i = i + 1) begin
        assign T2[i*QH_DIV +: QH_DIV] = P_q[i][QH_NUM-2-i];
    end
endgenerate
assign T2[K-Y-R-1 : (QH_NUM - 1)*QH_DIV] = P[QH_NUM-1];

assign T2Y = {T2, CY_q[LAT-1]};
assign T3 = (CHY_REM > 0) ? T2Y + (CHY_q[LAT-1] << (CH_LEN-CHY_REM)) : T2Y;

generate
    for (genvar i = 0; i < TL_NUM - 1; i = i + 1) begin
        assign TL[i*TL_DIV +: TL_DIV] = P_q[i][TL_NUM-2-i];
    end
endgenerate
assign TL[TL_LEN-1 : (TL_NUM-1)*TL_DIV] = P[TL_NUM-1];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps //////////////////////////////

assign T = (FF_OUT) ? T3_q : T3;

/////////////////////////////////////////////////////////////////////////



/////////////////////////// multiplication and adds (DSPs) //////////////

assign CH_IN[0] = CHY[CH_0 - 1 : 0];
assign QH_IN[0]  = (QH_NUM > 1) ? qH[QH_DIV-1 : 0] : qH[QH_LST-1 : 0];

word_red_r26_0 dsp_inst_0 (
    .CLK(clk),
    .B(QH_IN[0]),
    .A({1'b0, CL_N}),
    .C(CH_IN[0]),
    .CARRYIN(CY_carry[Y]),
    .ACOUT(ACOUT[0]),
    .P(P[0]),
    .PCOUT(PC[0])
);


generate
    if (QH_NUM > 1) begin
        assign CH_IN[1] = (CH_1 == 0) ? 0 : CHY[CH_0 +: CH_1] << CH_1_S;
        assign QH_IN[1] = (QH_NUM > 2)? qH[QH_DIV +: QH_DIV] : qH[QH_DIV +: QH_LST];

        word_red_c26_1 dsp_inst_1 (
            .CLK(clk),
            .B(QH_IN[1]),
            .ACIN(ACOUT[0]),
            .C({CH_IN[1]}),
            .P(P[1]),
            .PCIN(PC[0]),
            .ACOUT(ACOUT[1]),
            .PCOUT(PC[1])
        );
    end
endgenerate


generate
    if (QH_NUM > 2) begin
        assign CH_IN[2]  = (CH_2 == 0) ? 0 : CHY[CH_0+CH_1 +: CH_2] << CH_2_S;
        assign QH_IN[2] = qH[QH_DIV*2 +: QH_LST];

        word_red_qh26_2 dsp_inst_2 (
            .CLK(clk),
            .B(QH_IN[2]), // CH_LEN - CH_0 + CH_1 + CH_2 remains unprocessed
            .ACIN(ACOUT[1]),
            .C({CH_IN[2]}),
            .P(P[2]),
            .PCIN(PC[1])
        );
    end
endgenerate


/////////////////////////////////////////////////////////////////////////




///////////////////////// sequential logic //////////////////////////////

generate

    if (CHY_REM > 0) begin
        for(genvar i = 0; i < LAT; i = i + 1) begin
            always @(posedge clk) begin
                CHY_q[i] <= (i == 0) ? CH[CH_LEN-1:CHY_LEN-CHY_REM] : CHY_q[i-1];
            end
        end
    end

    for(genvar i = 0; i < LAT; i = i + 1) begin
        always @(posedge clk) begin
            CY_q[i] <= (i == 0) ? CH[0+:Y] : (i == 1) ? CY_carry[Y-1:0] : CY_q[i-1];
        end
    end

    for(genvar i = 0; i < QH_NUM - 1; i = i + 1) begin
        for(genvar j = 0; j < QH_NUM - 1 - i; j = j + 1) begin
            always @(posedge clk) begin
                P_q[i][j] <= (j == 0) ? P[i][QH_DIV-1:0] : P_q[i][j-1];
            end
        end
    end

endgenerate


always @(posedge clk) begin

    carry_q <= carry;

    if (FF_CL)
        CL_q   <= CL;

    if (FF_OUT)
        T3_q <= T3;
end


endmodule
