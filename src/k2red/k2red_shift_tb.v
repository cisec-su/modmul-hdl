module k2red_shift_tb();

`define USE_32_BITS

`ifdef USE_32_BITS
localparam LOGQ = 32;
localparam LOGQH = LOGQ-17;
localparam LOGL = 4;
`else
localparam LOGQ = 64;
localparam LOGQH = LOGQ-47;
localparam LOGL = 4;
`endif

localparam USE_L3 = 1;
localparam FF_SHF = 1;
parameter HP = 5;
parameter FP = (2*HP);

reg clk;
reg rst;

reg [(2*LOGQ)-1:0] C;
reg [LOGQH-1:0] Q;
reg [LOGL-1:0] L1;
reg [LOGL-1:0] L2;
reg [LOGL-1:0] L3;
reg valid_in;
wire [LOGQ-1:0] T;
wire valid_out;

k2red_shift # (
    .LOGQ(LOGQ),
    .LOGQH(LOGQH),
    .LOGL(LOGL),
    .USE_L3(USE_L3),
    .FF_SHF(FF_SHF)
  )
  dut (
    .clk(clk),
    .C(C),
    .qH(qH),
    .L1(L1),
    .L2(L2),
    .L3(L3),
    .T(T)
  );

always #HP clk = ~clk;

wire [LOGQH-1:0] qH = Q[LOGQ-1:LOGQ-LOGQH];

initial begin
    $dumpfile("k2red.vcd"); 

    $dumpvars(0,k2red_shift_tb);  // * Get the variables from the module.

    $display("Simulation started.");
    //
    clk = 1;
    C = 0;
    Q = 0;
    L1 = 0;
    L2 = 0;
    L3 = 0;
    #FP;
    `ifdef USE_32_BITS
    C = 63'd2500883870215315764; // k^2*C mod q =  1965696994
    Q = 32'd2148794369;
    L1 = 2;
    L2 = 1;
    L3 = 3;
    #FP; // Verify that it works pipelined
    C = 0;
    Q = 0;
    L1 = 0;
    L2 = 0;
    L3 = 0;
    #((3+(FF_SHF*2))*FP);
    if (T == 32'd1965696994) begin
        $display("Correct :)");
    end else begin
        $display("Incorrect :(");
    end
    `else
    C = 128'd21267647932558653966460912964485513217; // k^2*C mod q =  6509854724
    Q = 64'd10376575016438333441;
    L1 = 2;
    L2 = 1;
    L3 = 13;
    #FP; // Verify that it works pipelined
    C = 0;
    Q = 0;
    L1 = 0;
    L2 = 0;
    L3 = 0;
    #((3+(FF_SHF*2))*FP);
    if (T == 64'd6509854724) begin
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