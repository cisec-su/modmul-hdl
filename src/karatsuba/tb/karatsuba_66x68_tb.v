`timescale 1ns / 1ps
module karatsuba_66x68_tb();

reg clk;
reg rst;
reg [65:0] A;
reg [67:0] B;
wire [133:0] C;

parameter HP = 5;
parameter FP = (2*HP);

parameter DSP_MACRO = 1;
parameter FF_IN     = 1;
parameter FF_SUM0   = 1;
parameter FF_SUB0   = 1;
parameter FF_MUL    = 1;
parameter FF_SUM1   = 1;
parameter FF_SUM2   = 1;
parameter FF_SUB1   = 1;
parameter FF_OUT    = 1;

always #HP clk = ~clk;


karatsuba_66x68_csa
   #(
        .DSP_MACRO(DSP_MACRO),
        .FF_IN(FF_IN),
        .FF_SUM0(FF_SUM0),
        .FF_SUB0(FF_SUB0), 
        .FF_MUL(FF_MUL),
        .FF_SUM1(FF_SUM1),
        .FF_SUM2(FF_SUM2),
        .FF_SUB1(FF_SUB1),
        .FF_OUT(FF_OUT)
    )  karatsuba (
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .C(C)
    );


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
    A = 66'h3AABBCCDDAABBCCDD;
    B = 68'hF123456123456ABCD;
    // expected C: 0x3743c21f280bfbb920424b44cae078abf9
    if (FF_IN) begin
        #(FP);
        A = 66'h0;
        B = 68'h0;
        end
    if (FF_SUM0) begin
        #(FP);
        A = 66'h0;
        B = 68'h0;
    end
    if (FF_SUB0) begin
        #(FP);
        A = 66'h0;
        B = 68'h0;
    end
    if (FF_MUL) begin
        #(FP);
        A = 66'h0;
        B = 68'h0;
    end
    if (FF_SUM1) begin
        #(FP);
        A = 66'h0;
        B = 68'h0;
    end
    if (FF_SUM2) begin
        #(FP);
        A = 66'h0;
        B = 68'h0;
    end
    if (FF_SUB1) begin
        #(FP);
        A = 66'h0;
        B = 68'h0;
    end
    if (FF_OUT) begin
        #(FP);
        A = 66'h0;
        B = 68'h0;
    end
    $display("A = %x, B = %x, C = %x", A, B, C);
    if (C == 134'h3743c21f280bfbb920424b44cae078abf9)
        $display("SUCCESS!\n");
    #FP;
    #FP;
    #FP;
    #FP;
    #FP;


    $finish;
end

endmodule

