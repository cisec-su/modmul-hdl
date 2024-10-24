module k2red_tb();

parameter HP = 5;
parameter FP = (2*HP);

reg clk;
reg rst;

reg [63:0] A;
reg [31:0] Q;
reg [5:0] k1;
reg [5:0] k2;
reg [5:0] m;
wire [31:0] C2;

k2red_s dut(.clk(clk),.rst(rst),.A(A),.Q(Q),.k1(k1),.k2(k2),.C2(C2));

always #HP clk = ~clk;

initial begin
    $dumpfile("k2red.vcd"); 

    $dumpvars(0,k2red_tb);  // * Get the variables from the module.

    $display("Simulation started.");
    //
    clk = 0;
    rst = 1;
    A = 0;
    Q = 0;
    k1 = 0;
    k2 = 0;
    m = 0;
    #FP;
    rst = 0;
    A = 63'd139801577094305698; // 81510080 -> 04DBBEC0
    Q = 31'd2147352577;
    k1 = 14;
    k2 = 0;
    m = 17;
    #FP;
    rst = 0;

    #(21*FP);
    //
    $display("Simulation finished."); 
    $finish(); // Finish simulation.
end


endmodule