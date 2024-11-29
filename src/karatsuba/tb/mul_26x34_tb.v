`timescale 1ns / 1ps
module mul_26x34_tb();

reg clk;
reg rst;
reg [25:0] A;
reg [33:0] B;
wire [59:0] C;

parameter HP = 5;
parameter FP = (2*HP);

parameter DSP_MACRO = 1;

parameter FF_IN     = 0;
parameter FF_MUL    = 1;
parameter FF_OUT    = 0;


always #HP clk = ~clk;


generate 

if (DSP_MACRO) begin

    mul_26x34_dsp 
       #(
            .FF_IN(FF_IN),
            .FF_MUL(FF_MUL),
            .FF_OUT(FF_OUT)
        ) mul (
            .clk(clk),
            .rst(rst),
            .A(A),
            .B(B),
            .C(C)
        );
end
else begin

    mul_26x34_rtl 
       #(
            .FF_IN(FF_IN),
            .FF_MUL(FF_MUL),
            .FF_OUT(FF_OUT)
        ) mul (
            .clk(clk),
            .rst(rst),
            .A(A),
            .B(B),
            .C(C)
        );


end

endgenerate

initial begin


    $display("Simulation started.");

    clk = 1'b0;
    rst = 1'b0;
    #FP;
    rst = 1'b1;
    #FP;
    rst = 1'b0;
    #(HP);
    #(1);
    // Initialize inputs
    A = 26'h3BBCCDD;
    B = 34'h33456ABCD;
    // expected C: 0xf6cfcc2578abf9
    if (FF_IN) begin
        #(FP);
        A = 26'h0;
        B = 34'h0;
        end
    if (FF_MUL) begin
        #(FP);
        A = 26'h0;
        B = 34'h0;
    end
    if (FF_OUT) begin
        #(FP);
        A = 26'h0;
        B = 34'h0;
    end
    $display("A = %x, B = %x, C = %x", A, B, C);
    if (C == 60'hbf6cfcc2578abf9)
        $display("SUCCESS!\n");
    #FP;
    #FP;


    $finish;
end

endmodule

