
module word_red_38 
   #(
        parameter K      = 128, // don't change
        parameter Q_LEN  = 64,  // don't change
        parameter R      = 38,  // don't change
        parameter TL_LEN = 26,  // don't change
        parameter FF_OUT = 1
    )
    (
        input                      clk,
        input                      rst,
        input  wire [Q_LEN-R-1 :0] qH ,
        input  wire [K      -1 :0] C  ,
        output wire [K    -R-1 :0] T  ,
        output wire [TL_LEN -1 :0] TL , // as soon as TL is ready, next iteration can start
        output wire [Q_LEN-R-1 :0] qH_d 
    );


localparam CH_HALF   = 17;
localparam CH_REM    = 4;

localparam TREE_SIZE_IN   = Q_LEN - R + CH_REM - 1;
localparam TREE_SIZE_OUT  = (TREE_SIZE_IN + $rtoi($ceil($clog2(CH_REM))));

localparam TREE_DEPTH_L2     = 4;
localparam TREE_SIZE_IN_L2   = K - R - CH_HALF - CH_HALF;
localparam TREE_SIZE_OUTL2  = (TREE_SIZE_IN_L2 + $rtoi($ceil($clog2(TREE_DEPTH_L2))));


///////////////////////////// signals ///////////////////////////////////

wire [K-R-1:0] CH;
reg  [K-R-1-64:0] CH_q;
reg  [K-R-1-64:0] CH_d1;
reg  [K-R-1-64:0] CH_d2;
reg  [K-R-1-64:0] CH_d3;
reg  [K-R-1-64:0] CH_d4;



wire [R-1:0] CL;
wire [R-1:0] CL_N;
reg  [R-1:0] CL_q;
reg  [R-1:0] CL_N_q;

wire [CH_HALF-1:0] CL_N_L;
wire [CH_HALF-1:0] CL_N_H;
wire [CH_REM -1:0] CL_N_R;

reg  [CH_REM -1:0] CL_N_R_d1;
reg  [CH_REM -1:0] CL_N_R_d2;
reg  [CH_REM -1:0] CL_N_R_d3;


wire [47:0] T0;

wire [47:0] T0_PC;

reg  [Q_LEN-R-1:0] qH_q;
reg  [Q_LEN-R-1:0] qH_d1;
reg  [Q_LEN-R-1:0] qH_d2;
reg  [Q_LEN-R-1:0] qH_d3;
reg  [Q_LEN-R-1:0] qH_d4;


wire [47   :0] T1;

reg [CH_HALF-1:0] T0_q;
reg [CH_HALF-1:0] T0_d1;
reg [CH_HALF-1:0] T1_q;

wire [K-R-1:0] T3;
reg  [K-R-1:0] T3_q;

wire carry;

wire [TREE_SIZE_IN    - 1:0] CSA_IN      [0:CH_REM-1       ];
wire [TREE_SIZE_OUT   - 1:0] CSA_OUT     [0:1              ];
reg  [TREE_SIZE_OUT   - 1:0] CSA_OUT_q   [0:1              ];
wire [TREE_SIZE_IN_L2 - 1:0] CSA_IN_L2   [0:TREE_DEPTH_L2-1];
wire [TREE_SIZE_OUTL2- 1:0] CSA_OUTL2  [0:1              ];
reg  [TREE_SIZE_OUTL2- 1:0] CSA_OUTL2_q[0:1              ];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// partitioning ////////////////////////////////

assign CH = C[K-1:R];
assign CL = C[R-1:0];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// combinational logic /////////////////////////

assign CL_N       = - CL_q;
assign CL_N_L     =   CL_N[CH_HALF  -1:0        ];
assign CL_N_H     =   CL_N[2*CH_HALF-1:  CH_HALF];
assign CL_N_R     =   CL_N[R        -1:2*CH_HALF];

assign carry =   CL_q[R-1] | CL_N[R-1];


assign T3 = {(CSA_OUTL2_q[0] + CSA_OUTL2_q[1]), T1_q, T0_d1};

assign TL = (FF_OUT) ? {T1_q, T0_d1} : {T1, T0_q};
assign qH_d = (FF_OUT) ? qH_d4 : qH_d3;


/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps //////////////////////////////

assign T = (FF_OUT) ? T3_q : T3;

/////////////////////////////////////////////////////////////////////////



/////////////////////////// multiplication and adds (DSPs) //////////////


dsp_macro_monty_38_0_iff dsp_inst_0 (
    .CLK(clk),
    .B({1'b0, CL_N_L}),
    .A({1'b0, qH}),
    .C({1'b0, CH[46:0]}),
    .CARRYIN(carry),
    .P(T0),
    .PCOUT(T0_PC)
);


dsp_macro_monty_38_1_ioff dsp_inst_1 (
    .CLK(clk),
    .B({1'b0, CL_N_H}),
    .A({1'b0, qH}),
    .C({1'b0, CH[63:47], 30'd0}),
    .PCIN(T0_PC),
    .P(T1)
);


/////////////////////////////////////////////////////////////////////////




///////////////////////// csa tree assignment //////////////////////////


for (genvar i = 0; i < CH_REM; i = i + 1) begin
    assign CSA_IN[i] = ((({qH_d3 << i}))) & {TREE_SIZE_IN{CL_N_R_d3[i]}};
end

csa_tree #(
    TREE_SIZE_IN,
    CH_REM
) CSA_TREE_L1 (
    CSA_IN,
    CSA_OUT
);

assign CSA_IN_L2[0] = (CSA_OUT_q[0]);
assign CSA_IN_L2[1] = (CSA_OUT_q[1]);
assign CSA_IN_L2[2] = (T1[47:CH_HALF]);
assign CSA_IN_L2[3] = {CH_d4, {(64 - (2*CH_HALF)){1'b0}}};

csa_tree #(
    TREE_SIZE_IN_L2,
    TREE_DEPTH_L2
) CSA_TREE_L2 (
    CSA_IN_L2,
    CSA_OUTL2
);

/////////////////////////////////////////////////////////////////////////



always @(posedge clk) begin

    qH_q <= qH;
    qH_d1 <= qH_q;
    qH_d2 <= qH_d1;
    qH_d3 <= qH_d2;
    qH_d4 <= qH_d3;

    CH_q <= CH[K-R-1:64];
    CH_d1 <= CH_q;
    CH_d2 <= CH_d1;
    CH_d3 <= CH_d2;
    CH_d4 <= CH_d3;

    CL_q <= CL;
    CL_N_R_d1 <= CL_N_R;
    CL_N_R_d2 <= CL_N_R_d1;
    CL_N_R_d3 <= CL_N_R_d2;


    CSA_OUT_q[0] <= CSA_OUT[0];
    CSA_OUT_q[1] <= CSA_OUT[1];

    CSA_OUTL2_q[0] <= CSA_OUTL2[0];
    CSA_OUTL2_q[1] <= CSA_OUTL2[1];

    T1_q <= T1[CH_HALF-1:0];
    T0_q <= T0[CH_HALF-1:0];
    T0_d1 <= T0_q;


    if (FF_OUT)
        T3_q <= T3;

end


endmodule
