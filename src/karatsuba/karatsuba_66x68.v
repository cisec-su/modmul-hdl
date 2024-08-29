`timescale 1ns / 1ps
/*///////////////////////////////////////////////////////////////////////
 
 Computes C = A*B
 using 8 DSP blocks.
 instantiates 2 karatsuba_34x41 and 1 mul_26x34.

 Throughput-oriented, e.g. TP = 1

 Latency is equal to sum of parameters (FF_IN + FF_SUM0 + FF_SUB0 + FF_MUL + FF_SUM1 + FF_SUM2 + FF_SUB1 + FF_OUT).

 Tested configurations (encoding w.r.t. parameters),  delays (d) in cc, and worst negative slack (WNS, for 5ns period), LUT and FF:


*////////////////////////////////////////////////////////////////////////
module karatsuba_66x68
   #(  
        parameter DSP_MACRO = 1,
        parameter FF_IN     = 1,
        parameter FF_SUM0   = 1,
        parameter FF_SUB0   = 1,
        parameter FF_MUL    = 1,
        parameter FF_SUM1   = 1,
        parameter FF_SUM2   = 1,
        parameter FF_SUB1   = 1,
        parameter FF_OUT    = 1
    )
    (
        input               clk,
        input               rst,
        input wire  [65:0]  A,
        input wire  [67:0]  B,
        output wire [133:0] C
    );




///////////////////////////// signals ///////////////////////////////////

// B = B1*2^33 + B0
wire [32:0] A0;
reg  [32:0] A0_q;
wire [32:0] A0_mx;

wire [32:0] A1;
reg  [32:0] A1_q;
wire [32:0] A1_mx;
reg  [33:0] A1_d1;
wire [32:0] A1_mx_d1;

// A = A1*2^42 + A0
wire [41:0] B0;
reg  [41:0] B0_q;
wire [41:0] B0_mx;

wire [25:0] B1;
reg  [25:0] B1_q;
wire [25:0] B1_mx;
reg  [25:0] B1_d1;
wire [25:0] B1_mx_d1;

wire [74:0] A0B0;
reg  [74:0] A0B0_q;
wire [74:0] A0B0_mx;

wire [58:0] A1B1;
reg  [58:0] A1B1_q;
wire [58:0] A1B1_mx;
reg  [58:0] A1B1_d1;
wire [58:0] A1B1_mx_d1;

wire [33:0] A1A0;
reg  [33:0] A1A0_q;

wire [42:0] B1B0;
reg  [42:0] B1B0_q;

wire [76:0] A1A0_B1B0;
reg  [76:0] A1A0_B1B0_q;

wire [76:0] A1B0_A0B1;
reg  [76:0] A1B0_A0B1_q;
wire [76:0] A1B0_A0B1_mx;

wire [133:0] AB;
reg  [133:0] AB_q;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// partitioning //////////////////////////////

assign A0 = A[32:0];
assign A1 = A[65:33];
assign B0 = B[41:0];
assign B1 = B[67:42];

/////////////////////////////////////////////////////////////////////////




///////////////////////////// pipeline steps ////////////////////////////

assign A0_mx = (FF_IN) ? A0_q : A0;
assign A1_mx = (FF_IN) ? A1_q : A1;
assign B0_mx = (FF_IN) ? B0_q : B0;
assign B1_mx = (FF_IN) ? B1_q : B1;

assign A1_mx_d1  = (FF_SUM0) ? A1_d1 : A1_mx;
assign B1_mx_d1  = (FF_SUM0) ? B1_d1 : B1_mx;

assign A1B1_mx      = (FF_SUM2) ? A1B1_q : A1B1;


assign A0B0_mx        = (FF_SUB1) ? A0B0_q      : A0B0;
assign A1B1_mx_d1     = (FF_SUB1) ? A1B1_d1     : A1B1_mx;
assign A1B0_A0B1_mx   = (FF_SUB1) ? A1B0_A0B1_q : A1B0_A0B1;

assign C                   = (FF_OUT) ? AB_q : AB;

/////////////////////////////////////////////////////////////////////////




////////////////////////// karatsuba pre-addition ///////////////////////

assign A1A0 = A1_mx         + A0_mx; // 34-bit
assign B1B0 = {B1_mx, 9'd0} + B0_mx; // B0 + B1*2^9, 43-bit

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplications /////////////////////////////

generate
    if (DSP_MACRO) begin

        karatsuba_34x43_dsp
           #(
                .FF_IN (FF_SUM0),
                .FF_SUB(FF_SUB0),
                .FF_MUL(FF_MUL),
                .FF_SUM(FF_SUM1),
                .FF_OUT(FF_SUM2)
            )  karatsuba_0 (
                .clk(clk),
                .rst(rst),
                .A({1'b0, A0_mx}),
                .B({1'b0, B0_mx}),
                .C(A0B0)
            );

        karatsuba_34x43_dsp
           #(
                .FF_IN (FF_SUM0),
                .FF_SUB(FF_SUB0),
                .FF_MUL(FF_MUL),
                .FF_SUM(FF_SUM1),
                .FF_OUT(FF_SUM2)
            )  karatsuba_1 (
                .clk(clk),
                .rst(rst),
                .A(A1A0),
                .B(B1B0),
                .C(A1A0_B1B0)
            );

        mul_26x34_dsp 
           #(
                .FF_IN (FF_SUB0),
                .FF_MUL(FF_MUL),
                .FF_OUT(FF_SUM1)
            ) mul_0 (
                .clk(clk),
                .rst(rst),
                .A(B1_mx_d1),
                .B({1'b0, A1_mx_d1}),
                .C(A1B1)
            );

    end
    else begin

        karatsuba_34x43_rtl
           #(
                .FF_IN (FF_SUM0),
                .FF_SUB(FF_SUB0),
                .FF_MUL(FF_MUL),
                .FF_SUM(FF_SUM1),
                .FF_OUT(FF_SUM2)
            )  karatsuba_0 (
                .clk(clk),
                .rst(rst),
                .A({1'b0, A0_mx}),
                .B({1'b0, B0_mx}),
                .C(A0B0)
            );

        karatsuba_34x43_rtl
           #(
                .FF_IN (FF_SUM0),
                .FF_SUB(FF_SUB0),
                .FF_MUL(FF_MUL),
                .FF_SUM(FF_SUM1),
                .FF_OUT(FF_SUM2)
            )  karatsuba_1 (
                .clk(clk),
                .rst(rst),
                .A(A1A0),
                .B(B1B0),
                .C(A1A0_B1B0)
            );


        mul_26x34_rtl 
           #(
                .FF_IN (FF_SUB0),
                .FF_MUL(FF_MUL),
                .FF_OUT(FF_SUM1)
            ) mul_0 (
                .clk(clk),
                .rst(rst),
                .A(B1_mx_d1),
                .B({1'b0, A1_mx_d1}),
                .C(A1B1)
            );

    end
endgenerate





/////////////////////////////////////////////////////////////////////////




////////////////////////// karatsuba post-subtraction ///////////////////

assign A1B0_A0B1 = A1A0_B1B0 - {9'd0, A1B1_mx, 9'd0} - {2'd0, A0B0};

/////////////////////////////////////////////////////////////////////////




/////////////////////////////// final summation /////////////////////////

assign AB = {A1B1_mx_d1, A0B0_mx} + {A1B0_A0B1_mx, 33'd0};

/////////////////////////////////////////////////////////////////////////



///////////////////////////// sequential logic ///////////////////////////

always @(posedge clk) begin

    if (rst) begin

        if (FF_IN) begin
            A0_q <= 0;
            A1_q <= 0;
            B0_q <= 0;
            B1_q <= 0;
        end

        if (FF_SUM0) begin
            A1_d1 <= 0;
            B1_d1 <= 0;
        end

        if (FF_SUM2) begin
            A1B1_q <= 0;
        end

        if (FF_SUB1) begin
            A0B0_q <= 0;
            A1B1_d1 <= 0;
            A1B0_A0B1_q <= 0;
        end

        if (FF_OUT)
            AB_q <= 0;

    end
    else begin

        if (FF_IN) begin
            A0_q <= A0;
            A1_q <= A1;
            B0_q <= B0;
            B1_q <= B1;
        end

        if (FF_SUM0) begin
            A1_d1 <= A1_mx;
            B1_d1 <= B1_mx;
        end

        if (FF_SUM2) begin
            A1B1_q <= A1B1;
        end

        if (FF_SUB1) begin
            A1B1_d1 <= A1B1_mx;
            A0B0_q <= A0B0;
            A1B0_A0B1_q <= A1B0_A0B1;
        end

        if (FF_OUT)
            AB_q <= AB;

    end
end

/////////////////////////////////////////////////////////////////////////

endmodule
