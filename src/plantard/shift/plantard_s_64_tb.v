`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 13:10:58
// Design Name: 
// Module Name: plantard_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module plantard_tb;

    // Inputs
    reg [63:0] a;
    reg [127:0] b;
    reg [7:0] k1;
    reg [7:0] k2;
    reg [7:0] m;
    reg [63:0] q;
    
    reg clk, rst;

    // Outputs
    wire [63:0] c_;

    // Instantiate the unit under test (plantard)
    plantard_s plantard_inst(
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .c_(c_),
        .k1(k1),
        .k2(k2),
        .m(m),
        .q(q)
    );
    
    always #5 clk = ~clk;
    
    // Testbench logic
    initial begin
        clk = 0;
        rst = 0;
        #50;

        a = 1046808672121123921;
        b = 287595557807817422238232685719981542541; // RES 6438337719655601596
        k1 = 18;
        k2 = 0;
        m = 45;
        q = 9223336852482686977;

        // Wait some time for computation to complete (adjust based on your design)
        #100;

        // Display results
        $display("c_: %h", c_);
        $display("c_: %0d", c_);

        // End simulation
        $finish;
    end

endmodule
