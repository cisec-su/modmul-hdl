`timescale 1ns / 1ps
module mac_std_tb();

parameter LOGA      = 64;
parameter LOGB      = 64;
parameter LOGE      = 126;
parameter MODE_E    = 2;
parameter DELAY_E   = 0;
parameter FF_IN_A     = 1;
parameter FF_IN_B     = 1;
parameter FF_IN_E     = 1;
parameter FF_MUL    = 1;
parameter FF_OUT    = 1;
parameter USE_CSA   = 1;
parameter FF_CSA    = 1;


reg clk;
reg rst;
reg  [LOGA    -1:0] A;
reg  [LOGB    -1:0] B;
reg  [mul.LOGD-1:0] D;
reg  [LOGE    -1:0] E_;
reg  [LOGE    -1:0] E;
wire [mul.LOGC-1:0] C;
reg  [mul.LOGC-1:0] C_;

parameter HP = 5;
parameter FP = (2*HP);


always #HP clk = ~clk;

integer i = 0;


mac_std 
    #(
        .LOGA(LOGA),
        .LOGB(LOGB),
        .LOGE(LOGE),
        .MODE_E(MODE_E),
        .FF_IN_A(FF_IN_A),
        .FF_IN_B(FF_IN_B),
        .FF_IN_E(FF_IN_E),
        .FF_MUL(FF_MUL),
        .USE_CSA(USE_CSA),
        .FF_CSA(FF_CSA),
        .FF_OUT(FF_OUT)
    ) mul (
        .clk(clk),
        .A(A),
        .B(B),
        .E(E),
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
    A = 64'hffffffffffffffff;//{LOGA{1'b1}};
    B = 64'd8963783824838420066;//{LOGB{1'b1}};
    E_ = 132'hffffffffffffffffffffffffffffffff;//{LOGB{1'b1}};
    D = A*B;
    C_ = (MODE_E == 1) ? D + E_ : (MODE_E == 2) ? $signed({1'b0, D}) - $signed(E_) : D;
    // expected C: 0xf6cfcc2578abf9
    for (i = 0; i < mul.LAT; i = i + 1) begin
        if (i == DELAY_E) begin
            E = E_;        
        end
        else if (i == (DELAY_E + 1)) begin
            E = 0;        
        end
        #(FP);
        A = 0;
        B = 0;    
    end
    $display("A = %x, B = %x, C = %x", A, B, C);
    if (C == C_)
        $display("SUCCESS!\n");
    else
        $display("FAILURE!\n");
        $display("Expected C: %x\n", C_);
    #FP;
    #FP;


    $finish;
end

endmodule

