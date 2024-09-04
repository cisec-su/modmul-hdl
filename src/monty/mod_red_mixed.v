
module mod_red_mixed 
   #(
       `include "dsp_def.vh"
       ,
        parameter K      = 120,
        parameter Q_LEN  = 60,  // 
        parameter FF_OUT = 1
    )
    (
        input                     clk,
        input                     rst,
        input  wire [Q_LEN  -1:0] q  ,
        input  wire [K      -1:0] C  ,
        output wire [Q_LEN  -1:0] T
    );


localparam QH_LEN = 26;
localparam R0     = Q_LEN - QH_LEN;
localparam R1     = QH_LEN;

localparam FF_CL = (R0 > (2*DSP_B_U)) ? 1 : 0;

localparam QH26_LAT = 2 + ((R0 + DSP_B_U -1) / DSP_B_U); // ceil(R0 / DSP_B_U) + 2


///////////////////////////// signals ///////////////////////////////////

wire [K-R0-1:0] C_i;
reg [K-R0-R1-1:0] C_iq;
reg [QH_LEN-1:0] qH_d [0:QH26_LAT-1];

wire [R1-1:0] TL;

/////////////////////////////////////////////////////////////////////////

always @(posedge clk) begin
    C_iq <= C_i[K-R0-1:R1];
end


/////////////////////////// reduction iterations ////////////////////////

word_red_qh26
    #(
        .K(K),
        .FF_OUT(0),
        .TL_LEN(R1),
        .FF_CL(1),
        .Q_LEN(Q_LEN)
    )
word_red_38_inst
    (
        .clk(clk          ),
        .rst(rst          ),
        .qH (q[Q_LEN-1-:QH_LEN]),
        .C  (C            ),
        .T  (C_i          ),
        .TL (TL           )
    );


word_red_r26
    #(
        .K(K-R0),
        .Q_LEN(Q_LEN),
        .Y(R0-R1),
        .TL_LEN(R1),
        .FF_CL(FF_CL),
        .FF_OUT(FF_OUT),
        .ASN_CL(1)
    )
word_red_26_inst
    (
        .clk(clk          ),
        .rst(rst          ),
        .qH (qH_d[QH26_LAT-1]),
        .C ({C_i[K-R0-1:R1],TL}),
        .T  (T            )
    );

/////////////////////////////////////////////////////////////////////////


generate

for (genvar i = 0; i < QH26_LAT; i = i + 1) begin : gen_qh26
    always @(posedge clk) begin
        qH_d[i] <= (i == 0) ? q[Q_LEN - 1 -: QH_LEN] : qH_d[i - 1];
    end
end
endgenerate

endmodule
