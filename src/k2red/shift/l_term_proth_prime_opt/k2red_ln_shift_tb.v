module k2red_ln_shift_tb();

// Parameters
localparam  W = 32;

parameter HP = 5;
parameter FP = (2*HP);

reg clk;
reg rst;

reg [63:0] A;
reg [31:0] Q;
reg [5:0] l1;
reg [5:0] l2;
reg [5:0] l3;
reg [5:0] m;
wire [31:0] C2;

k2red_ln_shift # (
    .W(W)
  )
  dut (
    .clk(clk),
    .rst(rst),
    .A(A),
    .Q(Q),
    .l1(l1),
    .l2(l2),
    .l3(l3),
    .m(m),
    .C2(C2)
  );

always #HP clk = ~clk;

initial begin
    $dumpfile("k2red.vcd"); 

    $dumpvars(0,k2red_ln_shift_tb);  // * Get the variables from the module.

    $display("Simulation started.");
    //
    clk = 0;
    rst = 1;
    A = 0;
    Q = 0;
    l1 = 0;
    l2 = 0;
    l3 = 0;
    m = 0;
    #FP;
    rst = 0;
    A = 63'd2500883870215315764; // k^2*C mod q =  1965696994
    Q = 32'd2148794369;
    l1 = 2;
    l2 = 1;
    l3 = 3;
    m = 17;
    #FP;
    rst = 0;
    #(5*FP);
    if (C2 == 32'd1965696994) begin
        $display("Correct :)");
    end else begin
        $display("Incorrect :(");
    end
    //
    $display("Simulation finished."); 
    $finish(); // Finish simulation.
end


endmodule