module k2red_tb();

parameter HP = 5;
parameter FP = (2*HP);

reg clk;
reg rst;

reg [127:0] A;
reg [63:0] Q;
reg [32:0] k;
reg [6:0] m;
wire [63:0] C2;

k2red_m dut(.clk(clk),.rst(rst),.A(A),.Q(Q),.k(k),.m(m),.C2(C2));

always #HP clk = ~clk;

initial begin
    $dumpfile("k2red.vcd"); 

    $dumpvars(0,k2red_tb);  // * Get the variables from the module.

    $display("Simulation started.");
    //
    clk = 1;
    rst = 1;
    A = 0;
    Q = 0;
    k = 0;
    m = 0;
    #FP;
    rst = 0;
    A = 127'd15503864686927983900306131265744894665; // RES 8123906769876496122
    Q = 63'd9223336852482686977;
    k = 33'd262143;
    m = 7'd45;
    #FP;
    rst = 0;

    #(21*FP);
    //
    $display("Simulation finished."); 
    $finish(); // Finish simulation.
end

endmodule