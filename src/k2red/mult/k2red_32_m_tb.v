module k2red_tb();

parameter HP = 5;
parameter FP = (2*HP);

reg clk;
reg rst;

reg [63:0] A;
reg [31:0] Q;
reg [14:0] k;
reg [5:0] m;
wire [31:0] C2;
wire [30:0] C2o;

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
    A = 63'd2908716686513839620; // 1477978579 -> 581829D3
    Q = 31'd2147352577;
    k = 16383;
    m = 17;
    #FP;
    rst = 0;

    #(21*FP);
    //
    $display("Simulation finished."); 
    $finish(); // Finish simulation.
end

endmodule