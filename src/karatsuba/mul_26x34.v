`timescale 1ns / 1ps
/*
 
 Computes C = A*B
 using 2 DSP blocks.
 Each DSP performs 18x27 signed multiplication.


 Throughput-oriented, e.g. TP = 1

 Tested configurations (encoding w.r.t. parameters),  delays (d) in cc, and worst negative slack (WNS, for 2.5ns period):

  00, d = 1
  01, d = 2, WNS = 1.615, LUT = 0, FF = 17
  10, d = 3, WNS = 0.952, LUT = 0, FF = 17

*/
module mul_26x34
   #(
        parameter FF_INOUT  = 1,
        parameter FF_OUT    = 0
    )
    (
        input clk,
        input rst,
        input wire  [25:0] A,
        input wire  [33:0] B,
        output wire [59:0] C
    );


wire [16:0] B0;
wire [16:0] B1;

wire [47:0] PC;

wire [42:0] AB0;
wire [42:0] AB1;

reg [16:0] AB0_q;

assign B0 = B[16:0];
assign B1 = B[33:17];



generate
    if (FF_INOUT) begin
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
    if (FF_INOUT) begin
        dsp_macro_mul_26x34_1_ioff dsp_inst_1 (
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

assign C = (FF_OUT || FF_INOUT)? {AB1, AB0_q} : {AB1, AB0[16:0]};


always @(posedge clk) begin
    if (rst) begin
        if (FF_OUT || FF_INOUT)
            AB0_q <= 0;
    end
    else begin
        if (FF_OUT || FF_INOUT)
            AB0_q <= AB0[16:0];
    end
end

endmodule
