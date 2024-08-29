`timescale 1ns / 1ps
module karatsuba_34x43_tb();

reg clk;
reg rst;
reg [33:0] A;
reg [42:0] B;
wire [76:0] C;

parameter HP = 5;
parameter FP = (2*HP);

parameter DSP_MACRO = 1;

parameter FF_IN     = 1;
parameter FF_SUB    = 1;
parameter FF_MUL    = 1;
parameter FF_SUM    = 1;
parameter FF_OUT    = 1;

always #HP clk = ~clk;

generate 

if (DSP_MACRO) begin

karatsuba_34x43_dsp
   #(
        .FF_IN(FF_IN),
        .FF_SUB(FF_SUB),
        .FF_MUL(FF_MUL),
        .FF_SUM(FF_SUM),
        .FF_OUT(FF_OUT)
    )  karatsuba (
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .C(C)
    );

end
else begin


karatsuba_34x43_rtl
   #(
        .FF_IN(FF_IN),
        .FF_SUB(FF_SUB),
        .FF_MUL(FF_MUL),
        .FF_SUM(FF_SUM),
        .FF_OUT(FF_OUT)
    )  karatsuba (
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
    A = 34'h3AABBCCDD;
    B = 43'h1123456ABCD;
    // expected C: 0x3ed7ced3b38e078abf9
    if (FF_IN) begin
        #(FP);
        A = 34'h0;
        B = 43'h0;
    end
    if (FF_SUB) begin
        #(FP);
        A = 34'h0;
        B = 43'h0;
    end
    if (FF_MUL) begin
        #(FP);
        A = 34'h0;
        B = 43'h0;
    end
    if (FF_SUM) begin
        #(FP);
        A = 34'h0;
        B = 43'h0;
    end
    if (FF_OUT) begin
        #(FP);
        A = 34'h0;
        B = 43'h0;
    end
    $display("A = %x, B = %x, C = %x", A, B, C);
    if (C == 77'h3ed7ced3b38e078abf9)
        $display("SUCCESS!\n");
    #FP;
    #FP;


    $finish;
end

endmodule

