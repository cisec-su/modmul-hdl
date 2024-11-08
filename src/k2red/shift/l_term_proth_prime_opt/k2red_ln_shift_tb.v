module k2red_ln_shift_tb();

`define USE_32_BITS

`ifdef USE_32_BITS
localparam W = 32;
localparam M = 17;
localparam LOG_L = 4;
`else
localparam W = 64;
localparam M = 46;
localparam LOG_L = 4;
`endif

localparam USE_L3 = 1;
localparam SPEED_OPT = 1;
parameter HP = 5;
parameter FP = (2*HP);

reg clk;
reg rst;

reg [(2*W)-1:0] A;
reg [W-1:0] Q;
reg [LOG_L-1:0] l1;
reg [LOG_L-1:0] l2;
reg [LOG_L-1:0] l3;
wire [W-1:0] C2;

k2red_ln_shift # (
    .W(W),
    .M(M),
    .LOG_L(LOG_L),
    .USE_L3(USE_L3),
    .SPEED_OPT(SPEED_OPT)
  )
  dut (
    .clk(clk),
    .A(A),
    .Q(Q),
    .l1(l1),
    .l2(l2),
    .l3(l3),
    .C2(C2)
  );

always #HP clk = ~clk;

initial begin
    $dumpfile("k2red.vcd"); 

    $dumpvars(0,k2red_ln_shift_tb);  // * Get the variables from the module.

    $display("Simulation started.");
    //
    clk = 1;
    A = 0;
    Q = 0;
    l1 = 0;
    l2 = 0;
    l3 = 0;
    #FP;
    `ifdef USE_32_BITS
    A = 63'd2500883870215315764; // k^2*C mod q =  1965696994
    Q = 32'd2148794369;
    l1 = 2;
    l2 = 1;
    l3 = 3;
    #FP;
    rst = 0;
    #((4+(SPEED_OPT*2))*FP);
    if (C2 == 32'd1965696994) begin
        $display("Correct :)");
    end else begin
        $display("Incorrect :(");
    end
    `else
    A = 128'd21267647932558653966460912964485513217; // k^2*C mod q =  6509854724
    Q = 64'd10376575016438333441;
    l1 = 2;
    l2 = 1;
    l3 = 13;
    #FP;
    rst = 0;
    #((4+(SPEED_OPT*2))*FP);
    if (C2 == 64'd6509854724) begin
        $display("Correct :)");
    end else begin
        $display("Incorrect :(");
    end
    `endif
    //
    $display("Simulation finished."); 
    $finish(); // Finish simulation.
end


endmodule