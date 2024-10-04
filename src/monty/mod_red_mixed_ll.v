
module mod_red_mixed_ll 
   #(
       `include "dsp_def.vh"
       ,
        parameter K       = 120,
        parameter Q_LEN   = 60,  // 
        parameter QH_MODE = 1, // 0 -> QH_LEN = 26, (else) -> QH_LEN = 17
        parameter FF_SUM  = 0,
        parameter FF_MUL  = 1,
        parameter FF_SUB  = 1,
        parameter FF_OUT  = 1
    )
    (
        input                     clk,
        input                     rst,
        input  wire [Q_LEN  -1:0] q  ,
        input  wire [K      -1:0] C  ,
        output wire [Q_LEN  -1:0] T
    );


///////////////////////////// parameters ////////////////////////////////

localparam QH_LEN = (QH_MODE == 0) ? 26 : 17;
localparam R0     = Q_LEN - QH_LEN;
localparam R1     = QH_LEN;
localparam Y      = R0 - R1;

localparam WR0_LAT    = 3 + FF_SUM + FF_SUB*2; // ceil(R0 / DSP_B_U) + 2
localparam WR1_FF_SUM = (QH_MODE == 0) ? FF_SUM : 0;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// signals ///////////////////////////////////

wire [K  -R0-1:0] C_i;
reg  [QH_LEN-1:0] qH_d [0:WR0_LAT-1];

reg [K-1:0] C_q;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// reduction iterations ////////////////////////

parametric_wordred
    #(
        .K(K),
        .Q_LEN(Q_LEN),
        .R(R0),
        .Y(0),
        .FF_SUM(FF_SUM),
        .FF_MUL(FF_MUL),
        .FF_SUB(FF_SUB),
        .FF_OUT(1)
    )
word_red_inst_0
    (
        .clk(clk          ),
        .rst(rst          ),
        .qH (qH_d[FF_SUB]),
        .C  (C_q          ),
        .T  (C_i          )
    );


parametric_wordred
    #(
        .K(K-R0),
        .Q_LEN(Q_LEN),
        .R(R1),
        .Y(Y),
        .FF_SUM(WR1_FF_SUM),
        .FF_MUL(FF_MUL),
        .FF_SUB(FF_SUB),
        .FF_OUT(FF_OUT)
    )
word_red_inst_1
    (
        .clk(clk          ),
        .rst(rst          ),
        .qH (qH_d[WR0_LAT-1]),
        .C  (C_i),
        .T  (T            )
    );


/////////////////////////////////////////////////////////////////////////




/////////////////////////// sequential logic  ///////////////////////////

generate

for (genvar i = 0; i < WR0_LAT; i = i + 1) begin : gen_qh26
    always @(posedge clk) begin
        qH_d[i] <= (i == 0) ? q[Q_LEN - 1 -: QH_LEN] : qH_d[i - 1];
    end
end
endgenerate


always @(posedge clk) begin
    C_q <= C;
end

/////////////////////////////////////////////////////////////////////////

endmodule
