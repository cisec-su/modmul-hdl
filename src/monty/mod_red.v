
module mod_red 
   #(
        parameter K      = 128,
        parameter Q_LEN  = 64,  // 
        parameter R      = 32,  // don't change
        parameter FF_OUT = 1
    )
    (
        input                     clk,
        input                     rst,
        input  wire [Q_LEN-R-1:0] qH ,
        input  wire [K      -1:0] C  ,
        output wire [Q_LEN  -1:0] T
    );


localparam STEP   = (K - Q_LEN) / R;


///////////////////////////// signals ///////////////////////////////////

wire [K-R - 1:0] C_i [0:STEP];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// reduction iterations ////////////////////////

generate

    for(genvar i = 0; i < STEP; i = i + 1) begin

        localparam FF_OUT_i = (i == (STEP-1)) ? 1 : 0;

        word_red_32
           #(
                .K     (K - R*i ),
                .Q_LEN (Q_LEN   ),  // don't change
                .R     (R       ),  // don't change
                .FF_OUT(FF_OUT_i)
            )
        word_red_32_inst
            (
                .clk(clk     ),
                .rst(rst     ),
                .qH (qH      ),
                .C  (C_i[i]  ),
                .T  (C_i[i+1])
            );
    end

endgenerate

/////////////////////////////////////////////////////////////////////////




/////////////////////////// combinational logic /////////////////////////

assign C_i[0] = C;
assign T      = C_i[STEP];

/////////////////////////////////////////////////////////////////////////



endmodule
