`timescale 1ns / 1ps
/*////////////////////////////////////////////////////////////////
 
 Computes C = A*B
 using 3 DSP blocks.
 Each DSP performs 18x27 signed multiplication.


 Throughput-oriented, e.g. TP = 1

 Latency is equal to sum of parameters (FF_IN + FF_SUB + FF_MUL + FF_SUM + FF_OUT).

 Tested configurations (encoding w.r.t. parameters),  delays (d) in cc, and worst negative slack (WNS, for 2.5ns period), LUT and FF:

 NA

*/////////////////////////////////////////////////////////////////
module karatsuba_34x43_dsp  
   #(
        parameter FF_IN     = 1,
        parameter FF_SUB    = 1,
        parameter FF_MUL    = 1, // always 1 for now
        parameter FF_SUM    = 1,
        parameter FF_OUT    = 1
    )
    (
        input              clk,
        input              rst,
        input wire  [33:0] A,
        input wire  [42:0] B,
        output wire [76:0] C
    );



///////////////////////////// signals ///////////////////////////////////


// A = A1*2^17 + A0
wire [16:0] A0;
reg  [16:0] A0_q;
wire [16:0] A0_mx;

wire [16:0] A1;
reg  [16:0] A1_q;
wire [16:0] A1_mx;

// B = B1*2^24 + B0
wire [25:0] B0;
// reg  [25:0] B0_q;
// wire [25:0] B0_mx;

wire [16:0] B1;
// reg  [16:0] B1_q;
// wire [16:0] B1_mx;

(* use_dsp = "no" *) wire signed [17:0] A1A0;

wire [42:0] A0B0;
wire [47:0] A0B0_PC;
reg  [42:0] A0B0_q;
wire [42:0] A0B0_mx;

wire [33:0] A1B1;
reg  [33:0] A1B1_q;
wire [33:0] A1B1_mx;

wire [42:0] A1B0_B1A0;

wire [76:0] AB;
reg  [76:0] AB_q;

assign A0 = A[16:0];
assign A1 = A[33:17];
assign B0 = B[25:0];
assign B1 = B[42:26];

/////////////////////////////////////////////////////////////////////////




////////////////////////////////////// pipeline steps ///////////////////

assign A0_mx = (FF_IN) ? A0_q : A0;
assign A1_mx = (FF_IN) ? A1_q : A1;
// assign B0_mx = (FF_IN) ? B0_q : B0;
// assign B1_mx = (FF_IN) ? B1_q : B1;

assign A0B0_mx = (FF_SUM) ? A0B0_q : A0B0;
assign A1B1_mx = (FF_SUM) ? A1B1_q : A1B1;

assign C =         (FF_OUT) ? AB_q : AB;

/////////////////////////////////////////////////////////////////////////




////////////////////////// karatsuba pre-subtraction ////////////////////

// 18-bit in 2s complement
assign A1A0 = $signed({1'b0, A1_mx}) - $signed({1'b0, A0_mx});

/////////////////////////////////////////////////////////////////////////




/////////////////////////// multiplication and adds (DSPs) //////////////

// A1A0_B1B0 = (A1 - A0) * (B0 - B1*2^9) + A0*B0 + A1*B1*2^9;
generate
    if (FF_IN && FF_SUM && FF_SUB) begin
        dsp_macro_karatsuba_34x43_0_iffs0s1ff dsp_inst_0 (
                .CLK(clk),
                .PCIN(A0B0_PC),
                .A({1'b0, B1, 9'd0}),
                .B(A1A0),
                .C({1'b0, A1B1, 9'd0}),
                .D({1'b0, B0}),
                .P(A1B0_B1A0)
            );
    end
    else if (FF_SUM && FF_SUB) begin
        dsp_macro_karatsuba_34x43_0_s0s1ff dsp_inst_0 (
                .CLK(clk),
                .PCIN(A0B0_PC),
                .A({1'b0, B1_mx, 9'd0}),
                .B(A1A0),
                .C({1'b0, A1B1, 9'd0}),
                .D({1'b0, B0_mx}),
                .P(A1B0_B1A0)
            );
    end
    else if (FF_SUM) begin
        dsp_macro_karatsuba_34x43_0_s1ff dsp_inst_0 (
                .CLK(clk),
                .PCIN(A0B0_PC),
                .A({1'b0, B1_mx, 9'd0}),
                .B(A1A0),
                .C({1'b0, A1B1, 9'd0}),
                .D({1'b0, B0_mx}),
                .P(A1B0_B1A0)
            );
    end
    else if (FF_SUB) begin
        dsp_macro_karatsuba_34x43_0_s0ff dsp_inst_0 (
                .CLK(clk),
                .PCIN(A0B0_PC),
                .A({1'b0, B1_mx, 9'd0}),
                .B(A1A0),
                .C({1'b0, A1B1, 9'd0}),
                .D({1'b0, B0_mx}),
                .P(A1B0_B1A0)
            );
    end
    else begin
        dsp_macro_karatsuba_34x43_0 dsp_inst_0 (
                .CLK(clk),
                .PCIN(A0B0_PC),
                .A({1'b0, B1_mx, 9'd0}),
                .B(A1A0),
                .C({1'b0, A1B1, 9'd0}),
                .D({1'b0, B0_mx}),
                .P(A1B0_B1A0)
            );
    end
endgenerate


generate
    if (FF_IN && FF_SUB) begin
        dsp_macro_karatsuba_34x43_1_iffs0ff dsp_inst_1 (
                .CLK(clk),
                .A({1'b0, B0}),
                .B({1'b0, A0}),
                .PCOUT(A0B0_PC),
                .P(A0B0)
            );
    end
    else if (FF_SUB) begin
        dsp_macro_karatsuba_34x43_1_s0ff dsp_inst_1 (
                .CLK(clk),
                .A({1'b0, B0_mx}),
                .B({1'b0, A0_mx}),
                .PCOUT(A0B0_PC),
                .P(A0B0)
            );
    end
    else begin
        dsp_macro_karatsuba_34x43_1 dsp_inst_1 (
                .CLK(clk),
                .A({1'b0, B0_mx}),
                .B({1'b0, A0_mx}),
                .PCOUT(A0B0_PC),
                .P(A0B0)
            );
    end
endgenerate


// A1*B1*2^9;
generate
    if (FF_IN && FF_SUB) begin
        dsp_macro_karatsuba_34x43_2_iffs0ff dsp_inst_2 (
                .CLK(clk),
                .A({1'b0, A1}),
                .B({1'b0, B1}),
                .P(A1B1)
            );
    end
    else if (FF_SUB) begin
        dsp_macro_karatsuba_34x43_2_s0ff dsp_inst_2 (
                .CLK(clk),
                .A({1'b0, A1_mx}),
                .B({1'b0, B1_mx}),
                .P(A1B1)
            );
    end
    else begin
        dsp_macro_karatsuba_34x43_2 dsp_inst_2 (
                .CLK(clk),
                .A({1'b0, A1_mx}),
                .B({1'b0, B1_mx}),
                .P(A1B1)
            );
    end
endgenerate

/////////////////////////////////////////////////////////////////////////




///////////////////////////// final summation ///////////////////////////

assign AB = {A1B1_mx, A0B0_mx} + {A1B0_B1A0, 17'd0};

/////////////////////////////////////////////////////////////////////////




///////////////////////////// sequential logic ///////////////////////////

always @(posedge clk) begin
    // if (rst) begin

    //     if (FF_IN) begin
    //         A0_q <= 0;
    //         A1_q <= 0;
    //         B0_q <= 0;
    //         B1_q <= 0;
    //     end

    //     if (FF_SUM) begin
    //         A0B0_q <= 0;
    //         A1B1_q <= 0;
    //     end

    //     if (FF_OUT)
    //         AB_q <= 0;
    // end
    // else begin

        if (FF_IN) begin
            A0_q <= A0;
            A1_q <= A1;
            // B0_q <= B0;
            // B1_q <= B1;
        end

        if (FF_SUM) begin
            A0B0_q <= A0B0;
            A1B1_q <= A1B1;
        end

        if (FF_OUT)
            AB_q <= AB;
    // end
end

/////////////////////////////////////////////////////////////////////////


endmodule