module word_red_qh26 
   #(
       `include "dsp_def.vh"
       ,
        parameter  K      = 128,
        localparam QH_LEN = 26,
        parameter  Q_LEN  = 64,  // must be less than 41+QH_LEN
        localparam R      = Q_LEN - QH_LEN,
        parameter  TL_LEN = 26,
        parameter  FF_CL  = 1, // todo: does not work for FF_CL = 0
        parameter  FF_OUT = 1
    )
    (
        input                      clk,
        input                      rst,
        input  wire [QH_LEN -1 :0] qH ,
        input  wire [K      -1 :0] C  ,
        output wire [K    -R-1 :0] T  ,
        output wire [TL_LEN -1 :0] TL  
    );


localparam CL_LEN = R;
localparam CL_NUM = ((CL_LEN % DSP_B_U) == 0) ? (CL_LEN / DSP_B_U) : (CL_LEN / DSP_B_U) + 1;
localparam CL_DIV = DSP_B_U;
localparam CL_LST = ((CL_LEN % DSP_B_U) == 0) ? CL_DIV : (CL_LEN % DSP_B_U);

localparam CH_LEN = K - R;
localparam CH_REM = (CH_LEN > (DSP_C_U + (CL_NUM - 1)*DSP_B_U)) ? CH_LEN - DSP_C_U - (CL_NUM - 1)*DSP_B_U : 0;

localparam CH_0   = (CH_LEN > DSP_C_U) ? DSP_C_U : CH_LEN;

localparam CH_1_S = DSP_C_U - DSP_B_U;
localparam CH_1_R = CH_LEN - CH_0;
localparam CH_1   = (CH_1_R == 0) ? 0 : 
                    (CH_1_R < DSP_B_U) ? CH_1_R : DSP_B_U;

localparam CH_2_S = DSP_C_U - DSP_B_U;
localparam CH_2_R = CH_LEN - CH_0 - CH_1;
localparam CH_2   = (CH_2_R == 0) ? 0 : 
                    (CH_2_R < DSP_B_U) ? CH_2_R : DSP_B_U;


localparam TL_NUM = ((TL_LEN % DSP_B_U) == 0) ? (TL_LEN / DSP_B_U) : (TL_LEN / DSP_B_U) + 1;
localparam TL_DIV = CL_DIV;
localparam TL_LST = ((TL_LEN % DSP_B_U) == 0) ? TL_DIV : (TL_DIV % DSP_B_U);

localparam LAT    = 3 + CL_NUM;


///////////////////////////// signals ///////////////////////////////////

wire [CH_LEN-1:0] CH;


wire [R-1:0] CL;
wire [R-1:0] CL_N;
reg  [R-1:0] CL_q;


wire [DSP_C-1:0] CH_IN  [0:CL_NUM-1];
wire [DSP_B-1:0] CLN_IN [0:CL_NUM-1];


reg [CH_REM-1:0] CH_q [0:LAT-1];

reg [CL_DIV-1:0] P_q [0:CL_NUM-2][0:CL_NUM-2]; // not all are used

wire [DSP_P-1:0] PC [0:CL_NUM-1];
wire  [DSP_P-1:0] P  [0:CL_NUM-1];

wire [DSP_A-1:0] ACOUT [0:CL_NUM-2];

wire [CH_LEN-1:0] T2;
wire [CH_LEN-1:0] T3;
reg  [CH_LEN-1:0] T3_q;

wire carry;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// partitioning ////////////////////////////////

assign CH = C[K-1:R];
assign CL = C[R-1:0];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// combinational logic /////////////////////////

assign CL_N       =   (FF_CL) ? - CL_q                   : - CL;
assign carry      =   (FF_CL) ?  (CL_q[R-1] | CL_N[R-1]) :  (CL[R-1] | CL_N[R-1]);

generate
    for (genvar i = 0; i < CL_NUM - 1; i = i + 1) begin
        assign T2[i*CL_DIV +: CL_DIV] = P_q[i][CL_NUM-2-i];
    end
endgenerate
assign T2[K-R-1 : (CL_NUM - 1)*CL_DIV] = P[CL_NUM-1];

assign T3 = (CH_REM > 0) ? T2 + (CH_q[LAT-1] << (CH_LEN-CH_REM)) : T2;

generate
    for (genvar i = 0; i < TL_NUM - 1; i = i + 1) begin
        assign TL[i*TL_DIV +: TL_DIV] = P_q[i][TL_NUM-2-i];
    end
endgenerate
assign TL[TL_LEN-1 : (TL_NUM-1)*TL_DIV] = P[TL_NUM-1];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps //////////////////////////////

assign T = (FF_OUT && (CH_REM != 0)) ? T3_q : T3;

/////////////////////////////////////////////////////////////////////////



/////////////////////////// multiplication and adds (DSPs) //////////////
assign CH_IN [0] = CH[CH_0 - 1 : 0];
assign CLN_IN[0] = (CL_NUM > 1) ? CL_N[CL_DIV-1 : 0] : CL_N[CL_LST-1 : 0];

word_red_qh26_0 dsp_inst_0 (
    .CLK(clk),
    .B(CLN_IN[0]),
    .A({1'b0, qH}),
    .C(CH_IN[0]),
    .CARRYIN(carry),
    .ACOUT(ACOUT[0]),
    .P(P[0]),
    .PCOUT(PC[0])
);


generate

    if (CL_NUM > 1) begin
        assign CH_IN [1] = (CH_1 == 0) ? 0 : CH[CH_0 +: CH_1] << CH_1_S;
        assign CLN_IN[1] = (CL_NUM > 2)? CL_N[CL_DIV +: CL_DIV] : CL_N[CL_DIV +: CL_LST];

        word_red_qh26_1 dsp_inst_1 (
            .CLK(clk),
            .B(CLN_IN[1]),
            .ACIN(ACOUT[0]),
            .C({CH_IN[1]}),
            .P(P[1]),
            .PCIN(PC[0]),
            .ACOUT(ACOUT[1]),
            .PCOUT(PC[1])
        );
    end

    if (CL_NUM > 2) begin //todo: apply CSA mult here instead of DSP
        assign CH_IN[2]  = (CH_2 == 0) ? 0 : CH[CH_0+CH_1 +: CH_2] << CH_2_S;
        assign CLN_IN[2] = CL_N[CL_DIV*2 +: CL_LST];

        word_red_qh26_2 dsp_inst_2 (
            .CLK(clk),
            .B(CLN_IN[2]), // CH_LEN - CH_0 + CH_1 + CH_2 remains unprocessed
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

    if (CH_REM > 0) begin
        for(genvar i = 0; i < LAT; i = i + 1) begin
            always @(posedge clk) begin
                CH_q[i] <= (i == 0) ? CH[CH_LEN-1:CH_LEN-CH_REM] : CH_q[i-1];
            end
        end
    end

endgenerate


generate

    for(genvar i = 0; i < CL_NUM - 1; i = i + 1) begin
        for(genvar j = 0; j < CL_NUM - 1 - i; j = j + 1) begin
            always @(posedge clk) begin
                P_q[i][j] <= (j == 0) ? P[i][CL_DIV-1:0] : P_q[i][j-1];
            end
        end
    end

endgenerate



always @(posedge clk) begin

    if (FF_CL)
        CL_q <= CL;

    if (FF_OUT && (CH_REM != 0))
        T3_q <= T3;

end


endmodule
