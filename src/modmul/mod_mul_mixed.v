
module mod_mul_mixed 
   #(
        parameter Q_LEN  = 64,  // don't change
        parameter FF_OUT = 1
    )
    (
        input                     clk,
        input                     rst,
        input  wire [Q_LEN  -1:0]  A ,
        input  wire [Q_LEN  -1:0]  B ,
        input  wire [Q_LEN  -1:0]  q ,
        output wire [Q_LEN  -1:0]  C

    );



///////////////////////////// signals ///////////////////////////////////

wire [Q_LEN*2-1:0] AB;

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplication //////////////////////////////

karatsuba_66x68_csa
   #(
        .DSP_MACRO(1),
        .FF_IN    (1),
        .FF_SUM0  (1),
        .FF_SUB0  (1), 
        .FF_MUL   (1),
        .FF_SUM1  (1),
        .FF_SUM2  (1),
        .FF_SUB1  (1),
        .FF_OUT   (0)
    )  karatsuba (
        .clk(clk),
        .rst(rst),
        .A  (A  ),
        .B  (B  ),
        .C  (AB )
    );

/////////////////////////////////////////////////////////////////////////




/////////////////////////// reduction ///////////////////////////////////

mod_red_mixed
   #(
        .K     (Q_LEN*2),
        .Q_LEN (Q_LEN  ),  // don't change
        .FF_OUT(FF_OUT )
    ) mod_red_inst (
        .clk(clk),
        .rst(rst),
        .q  (q  ),
        .C  (AB ),
        .T  (C  )
    );

/////////////////////////////////////////////////////////////////////////


endmodule
