`timescale 1ns / 1ps
module intmul_standard_tb();

parameter W_A = 64;
parameter W_B = 64;

reg clk;
reg rst;
reg  [W_A    -1:0] A;
reg  [W_B    -1:0] B;
wire [W_A+W_B-1:0] C;
reg  [W_A+W_B-1:0] C_;

parameter HP = 5;
parameter FP = (2*HP);


parameter FF_IN     = 1;
parameter FF_MUL    = 1;
parameter FF_OUT    = 1;
parameter USE_CSA   = 1;
parameter FF_CSA    = 1;


always #HP clk = ~clk;

integer i = 0;


intmul_standard 
    #(
        .W_A(W_A),
        .W_B(W_B),
        .FF_IN(FF_IN),
        .FF_MUL(FF_MUL),
        .USE_CSA(USE_CSA),
        .FF_CSA(FF_CSA),
        .FF_OUT(FF_OUT)
    ) mul (
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
    A = {W_A{1'b1}};
    B = {W_B{1'b1}};
    C_ = A*B;
    // expected C: 0xf6cfcc2578abf9
    for (i = 0; i < mul.LAT; i = i + 1) begin
        #(FP);
        A = 0;
        B = 0;    
    end
    $display("A = %x, B = %x, C = %x", A, B, C);
    if (C == C_)
        $display("SUCCESS!\n");
    #FP;
    #FP;


    $finish;
end

endmodule

