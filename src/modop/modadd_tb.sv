`timescale 1ns / 1ps
module modadd_tb();

parameter LOGA     = 64;
parameter LOGB     = 64;
parameter LOGQ     = 64;
parameter LOGQH    = 47; 
parameter FF_IN    = 1 ;
parameter FF_ADD   = 1 ;
parameter FF_OUT   = 1 ;

reg                  clk;
reg                  rst;
reg   [LOGA  -1:0]   A  ;
reg   [LOGB  -1:0]   B  ;
reg   [LOGQ  -1:0]   q  ;
wire  [LOGQ  -1:0]   C  ;

reg [LOGA  :0] R;
reg [LOGA  :0] Rq;
reg [LOGQ-1:0] C_;

parameter HP = 5;
parameter FP = (2 * HP);

always #HP clk = ~clk;

integer i = 0;

modadd
    #(
        .LOGA(LOGA),
        .LOGB(LOGB),
        .LOGQ(LOGQ),
        .LOGQH(LOGQH),
        .FF_IN(FF_IN),
        .FF_ADD(FF_ADD),
        .FF_OUT(FF_OUT)
    ) add (
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .q(q),
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

    A = 64'h010000000000000A; 
    B = 64'h1000000000000005;
    q = 64'h111110000000000C; 
    
    R = A + B;
    Rq = (A + B) - {1'b0, q[LOGQ-1:(LOGQ-LOGQH)], {(LOGQ-LOGQH-1){1'b0}}, q[0]};
    C_ = (Rq[LOGA] == 0) ? Rq[LOGQ-1:0] : R[LOGQ-1:0];

    for (i = 0; i < add.LAT; i = i + 1) begin
        #(FP);
        A = 0;
        B = 0;    
        q = 0;
    end

    if (C == C_)
        $display("SUCCESS!\n");
    else
        $display("FAILED! Expected C = %x, Got C = %x\n", C_, C);

    #FP;
    $finish;
end

endmodule