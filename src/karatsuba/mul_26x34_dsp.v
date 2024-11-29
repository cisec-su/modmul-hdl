`timescale 1ns / 1ps
/*////////////////////////////////////////////////////////////////
 
 Computes C = A*B
 using 2 DSP blocks.
 Each DSP performs 18x27 signed multiplication.


 Throughput-oriented, e.g. TP = 1

 Tested configurations (encoding w.r.t. parameters),  delays (d) in cc, and worst negative slack (WNS, for 2.5ns period):

 NA

*/////////////////////////////////////////////////////////////////
module mul_26x34_dsp
   #(
        parameter FF_IN     = 1,
        parameter FF_MUL    = 1, // always 1 for now
        parameter FF_OUT    = 1
    )
    (
        input clk,
        input rst,
        input wire  [25:0] A,
        input wire  [33:0] B,
        output wire [59:0] C
    );



///////////////////////////// signals ///////////////////////////////////

wire [16:0] B0;
wire [16:0] B1;

wire [47:0] PC;

wire [42:0] AB0;
wire [42:0] AB1;

reg  [16:0] AB0_q;
wire [16:0] AB0_mx;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// partitioning //////////////////////////////

assign B0 = B[16:0];
assign B1 = B[33:17];

/////////////////////////////////////////////////////////////////////////




///////////////////////////// pipeline steps ////////////////////////////

assign AB0_mx = (FF_OUT) ? AB0_q : AB0[16:0];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplication and adds (DSPs) //////////////

generate
    if (FF_IN) begin
        dsp_macro_mul_26x34_0_iff dsp_inst_0 (
                .CLK(clk),
                .A({1'b0, A}),
                .B({1'b0, B0}),
                .P(AB0),
                .PCOUT(PC)
            );
    end
    else begin
        dsp_macro_mul_26x34_0 dsp_inst_0 (
                .CLK(clk),
                .A({1'b0, A}),
                .B({1'b0, B0}),
                .P(AB0),
                .PCOUT(PC)
            );
    end
endgenerate



generate
    if (FF_IN && FF_OUT) begin
        dsp_macro_mul_26x34_1_ioff dsp_inst_1 (
                .CLK(clk),
                .PCIN(PC),
                .A({1'b0, A}),
                .B({1'b0, B1}),
                .P(AB1)
            );
    end
    else if (FF_IN) begin
        dsp_macro_mul_26x34_1_iff dsp_inst_1 (
                .CLK(clk),
                .PCIN(PC),
                .A({1'b0, A}),
                .B({1'b0, B1}),
                .P(AB1)
            );
    end
    else if (FF_OUT) begin
        dsp_macro_mul_26x34_1_off dsp_inst_1 (
                .CLK(clk),
                .PCIN(PC),
                .A({1'b0, A}),
                .B({1'b0, B1}),
                .P(AB1)
            );
    end
    else begin
        dsp_macro_mul_26x34_1 dsp_inst_1 (
                .CLK(clk),
                .PCIN(PC),
                .A({1'b0, A}),
                .B({1'b0, B1}),
                .P(AB1)
            );
    end
endgenerate

/////////////////////////////////////////////////////////////////////////




//////////////////////////// output /////////////////////////////////////

assign C = {AB1, AB0_mx};

/////////////////////////////////////////////////////////////////////////




//////////////////////////// sequential logic ///////////////////////////

always @(posedge clk) begin

    if (rst) begin
        if (FF_OUT)
            AB0_q <= 0;

    end
    else begin

        if (FF_OUT)
            AB0_q <= AB0[16:0];

    end
end

/////////////////////////////////////////////////////////////////////////

endmodule
