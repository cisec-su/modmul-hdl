module plantard_m_tb();

parameter HP = 5;
parameter FP = (2*HP);

reg clk,rst;
reg [63:0] A;
reg [31:0] Q;
wire [31:0] T;
integer i;

PLANTARD dut(clk,rst,A,Q,T);

always #HP clk = ~clk;

initial begin
    $dumpfile("PLANTARD.vcd"); 
    
    // * Get the variables from the module.

    $dumpvars(0,PLANTARD_TB);

    $display("Simulation started.");

    clk = 0;
    rst = 1;
    A = 0;
    Q = 0;
    #FP;
    rst = 0;
    A = 64'd10492565405858659259; // 626802049 = 0x255c3d81
    Q = 32'd1073692673;
    #(5*FP);
    $display("Simulation finished.");
    $finish(); // Finish simulation.
end

endmodule