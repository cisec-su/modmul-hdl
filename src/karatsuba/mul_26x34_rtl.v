`timescale 1ns / 1ps
/*///////////////////////////////////////////////////////////////////////
 
 Computes C = A*B
 using 2 DSP blocks.
 Each DSP performs 18x27 signed multiplication.


 Throughput-oriented, e.g. TP = 1

 Latency is equal to sum of parameters (FF_IN + FF_MUL + FF_OUT).


 Tested configurations (encoding w.r.t. parameters),  delays (d) in cc, and worst negative slack (WNS, for 2.5ns period):

 111: d = 3, WNS = 0.020, LUT = 26, FF = 60

*////////////////////////////////////////////////////////////////////////
module mul_26x34_rtl
   #(
        parameter FF_IN     = 1,
        parameter FF_MUL    = 1,
        parameter FF_OUT    = 1
    )
    (
        input              clk,
        input              rst,
        input  wire [25:0] A  ,
        input  wire [33:0] B  ,
        output wire [59:0] C
    );



///////////////////////////// signals ///////////////////////////////////

reg  [25:0] A_q;
wire [25:0] A_mx;
reg  [33:0] B_q;
wire [33:0] B_mx;

wire [16:0] B0;
wire [16:0] B1;

wire [42:0] AB0;
reg  [42:0] AB0_q;
wire [42:0] AB0_mx;

wire [42:0] AB1;
reg  [42:0] AB1_q;
wire [42:0] AB1_mx;

wire [59:0] AB;
reg  [59:0] AB_q;


/////////////////////////////////////////////////////////////////////////




///////////////////////////// partitioning //////////////////////////////

assign B0 = B_mx[16:0];
assign B1 = B_mx[33:17];

/////////////////////////////////////////////////////////////////////////




///////////////////////////// pipeline steps ////////////////////////////

assign A_mx = (FF_IN) ? A_q : A;
assign B_mx = (FF_IN) ? B_q : B;

assign AB0_mx = (FF_MUL) ? AB0_q : AB0;
assign AB1_mx = (FF_MUL) ? AB1_q : AB1;

assign C        = (FF_OUT) ? AB_q : AB;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// multiplications ///////////////////////////

assign AB0 = A_mx * B0;
assign AB1 = A_mx * B1;

/////////////////////////////////////////////////////////////////////////




///////////////////////////// summation /////////////////////////////////

assign AB = AB0_mx + {AB1_mx, 17'd0};

/////////////////////////////////////////////////////////////////////////




///////////////////////////// sequential logic ///////////////////////////

always @(posedge clk) begin

    if (rst) begin

        if (FF_IN) begin
            A_q <= 0;
            B_q <= 0;
        end

        if (FF_MUL) begin
            AB0_q <= 0;
            AB1_q <= 0;
        end

        if (FF_OUT)
            AB_q <= 0;

    end
    else begin

        if (FF_IN) begin
            A_q <= A;
            B_q <= B;
        end

        if (FF_MUL) begin
            AB0_q <= AB0;
            AB1_q <= AB1;
        end

        if (FF_OUT)
            AB_q <= AB;

    end
end

/////////////////////////////////////////////////////////////////////////

endmodule
