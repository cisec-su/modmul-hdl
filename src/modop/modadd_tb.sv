`timescale 1ns / 1ps

module modadd_tb();

parameter LOGQ     = 64;
parameter LOGQH    = 47; 
parameter FF_IN    = 0 ;
parameter FF_ADD   = 0 ;
parameter FF_OUT   = 1 ;

reg                   clk;
reg   [LOGQ   -1:0]   A  ;
reg   [LOGQ   -1:0]   B  ;
reg   [LOGQH  -1:0]   qH ;
wire  [LOGQ   -1:0]   C  ;

reg [LOGQ  :0] R;
reg [LOGQ  :0] Rq;
reg [LOGQ-1:0] C_;

parameter HP = 5;
parameter FP = (2 * HP);

always #HP clk = ~clk;

integer i = 0;

modadd
    #(
        .LOGQ  (LOGQ  ),
        .LOGQH (LOGQH ),
        .FF_IN (FF_IN ),
        .FF_ADD(FF_ADD),
        .FF_OUT(FF_OUT)
    ) modadd_inst (
        .clk(clk),
        .A  (A  ),
        .B  (B  ),
        .qH (qH ),
        .C  (C  )
    );

initial begin
    $display("Simulation started.");

    clk = 1'b0;
    #(HP);

    A = 64'h010000000000000A; 
    B = 64'h1000000000000005;
    qH = 47'h400008C00000; 
    
    R = A + B;
    Rq = (A + B) - {1'b0, qH, {(LOGQ-LOGQH-1){1'b0}}, 1'b1};
    C_ = (Rq[LOGQ] == 0) ? Rq[LOGQ-1:0] : R[LOGQ-1:0];

    for (i = 0; i < modadd_inst.LAT; i = i + 1) begin
        #(FP);
        A = 0;
        B = 0;    
        qH = 0;
    end

    if (C == C_)
        $display("SUCCESS!\n");
    else
        $display("FAILED! Expected C = %x, Got C = %x\n", C_, C);

    #FP;
    $finish;
end

endmodule