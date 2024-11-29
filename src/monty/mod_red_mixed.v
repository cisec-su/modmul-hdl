
module mod_red_mixed 
   #(
        parameter K      = 128,
        parameter Q_LEN  = 64,  // 
        parameter FF_OUT = 1
    )
    (
        input                     clk,
        input                     rst,
        input  wire [Q_LEN  -1:0] q  ,
        input  wire [K      -1:0] C  ,
        output wire [Q_LEN  -1:0] T
    );


localparam TL_LEN = 26;  // don't change

localparam QH26_LAT = 5;

///////////////////////////// signals ///////////////////////////////////

wire [89:0] C_i;
reg [25:0] qH_d [0:QH26_LAT-1];

wire [TL_LEN-1:0] TL;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// reduction iterations ////////////////////////

word_red_qh26
    #(
        .K(K),
        .FF_OUT(0),
        .TL_LEN(TL_LEN),
        .FF_CL(1),
        .Q_LEN(Q_LEN)
    )
word_red_38_inst
    (
        .clk(clk          ),
        .rst(rst          ),
        .qH (q[Q_LEN-1:38]),
        .C  (C            ),
        .T  (C_i          ),
        .TL (TL           )
    );


word_red_r26
    #(
        .K(90),
        .Q_LEN(Q_LEN),
        .Y(12),
        .TL_LEN(26),
        .FF_OUT(FF_OUT)
    )
word_red_26_inst
    (
        .clk(clk          ),
        .rst(rst          ),
        .qH (qH_d[QH26_LAT-1]),
        .C ({C_i[89:26],TL}),
        .T  (T            )
    );

/////////////////////////////////////////////////////////////////////////


generate

for (genvar i = 0; i < QH26_LAT; i = i + 1) begin : gen_qh26
    always @(posedge clk) begin
        qH_d[i] <= (i == 0) ? q[Q_LEN-1:38] : qH_d[i-1];
    end
end
endgenerate

endmodule
