`timescale 1ns / 1ps
/*
 
 Computes C = A*B
 using 3 DSP blocks.
 Each DSP performs 18x27 signed multiplication.


 Throughput-oriented, e.g. TP = 1

 Tested configurations (encoding w.r.t. parameters),  delays (d) in cc, and worst negative slack (WNS, for 2.5ns period), LUT and FF:

  000, d = 1
  001, d = 2, WNS = 0.214, LUT = 60, FF = 77
  011, d = 3, WNS = 0.980, LUT = 60, FF = 154
  101, d = 3, WNS = 0.214, LUT = 60, FF = 77


  Tests with flip-flop input (through top_karatsuba_34x43_rtl.v):
  
  001, d = 2, WNS = 0.191, LUT = 60, FF = 154

*/
module karatsuba_34x43  
   #(
        parameter FF_SUM_0  = 0,
        parameter FF_SUM_1  = 0,
        parameter FF_OUT    = 1
    )
    (
        input              clk,
        input              rst,
        input wire  [33:0] A,
        input wire  [42:0] B,
        output wire [76:0] C
    );
    
// A = A1*2^17 + A0
wire [16:0] A0;
wire [16:0] A1;
// B = B1*2^24 + B0
wire [25:0] B0;
wire [16:0] B1;

wire [25:0] B1_SL9;

(* use_dsp = "no" *) wire signed [17:0] A1A0;

wire [42:0] A0B0;
wire [47:0] A0B0_PC;
reg  [42:0] A0B0_q;

wire [33:0] A1B1;
reg  [33:0] A1B1_q;

wire [42:0] A1B1_SL9;

wire [42:0] A1B0_B1A0;

wire [76:0] AB;
reg  [76:0] AB_q;

assign A0 = A[16:0];
assign A1 = A[33:17];
assign B0 = B[25:0];
assign B1 = B[42:26];

assign B1_SL9 = {B1, 9'd0};

// 18-bit in 2s complement
assign A1A0 = $signed({1'b0, A1}) - $signed({1'b0, A0});

assign A1B1_SL9 = {A1B1, 9'd0};


// A1A0_B1B0 = (A1 - A0) * (B0 - B1*2^9) + A0*B0 + A1*B1*2^9;
generate
    if (FF_SUM_1) begin
        dsp_macro_karatsuba_34x43_0_s1ff dsp_inst_0 (
                .CLK(clk),
                .PCIN(A0B0_PC),
                .A({1'b0, B1_SL9}),
                .B(A1A0),
                .C({1'b0, A1B1_SL9}),
                .D({1'b0, B0}),
                .P(A1B0_B1A0)
            );
    end
    else if (FF_SUM_0) begin
        dsp_macro_karatsuba_34x43_0_s0ff dsp_inst_0 (
                .CLK(clk),
                .PCIN(A0B0_PC),
                .A({1'b0, B1_SL9}),
                .B(A1A0),
                .C({1'b0, A1B1_SL9}),
                .D({1'b0, B0}),
                .P(A1B0_B1A0)
            );
    end
    else begin
        dsp_macro_karatsuba_34x43_0 dsp_inst_0 (
                .CLK(clk),
                .PCIN(A0B0_PC),
                .A({1'b0, B1_SL9}),
                .B(A1A0),
                .C({1'b0, A1B1_SL9}),
                .D({1'b0, B0}),
                .P(A1B0_B1A0)
            );
    end
endgenerate


generate
    if (FF_SUM_0) begin
        dsp_macro_karatsuba_34x43_1_s0ff dsp_inst_1 (
                .CLK(clk),
                .A({1'b0, B0}),
                .B({1'b0, A0}),
                .PCOUT(A0B0_PC),
                .P(A0B0)
            );
    end
    else begin
        dsp_macro_karatsuba_34x43_1 dsp_inst_1 (
                .CLK(clk),
                .A({1'b0, B0}),
                .B({1'b0, A0}),
                .PCOUT(A0B0_PC),
                .P(A0B0)
            );
    end
endgenerate


// A1*B1*2^9;
generate
    if (FF_SUM_0) begin
        dsp_macro_karatsuba_34x43_2_s0ff dsp_inst_2 (
                .CLK(clk),
                .A({1'b0, A1}),
                .B({1'b0, B1}),
                .P(A1B1)
            );
    end
    else begin
        dsp_macro_karatsuba_34x43_2 dsp_inst_2 (
                .CLK(clk),
                .A({1'b0, A1}),
                .B({1'b0, B1}),
                .P(A1B1)
            );
    end
endgenerate


// final summation
assign AB = (FF_SUM_1)? {A1B1_q, A0B0_q} + {A1B0_B1A0, 17'd0} : {A1B1, A0B0} + {A1B0_B1A0, 17'd0};

assign C = (FF_OUT) ? AB_q : AB;

always @(posedge clk) begin
    if (rst) begin

        if (FF_SUM_1) begin
            A0B0_q <= 0;
            A1B1_q <= 0;
        end

        if (FF_OUT)
            AB_q <= 0;
    end
    else begin

        if (FF_SUM_1) begin
            A0B0_q <= A0B0;
            A1B1_q <= A1B1;
        end

        if (FF_OUT)
            AB_q <= AB;
    end
end


endmodule