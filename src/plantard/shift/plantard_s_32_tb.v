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
    reg [31:0] a;
    reg [63:0] b;
    reg [7:0] k1;
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
        .m(m),
        .q(q)
    );
    
    always #5 clk = ~clk;
    
    // Testbench logic
    initial begin
        clk = 0;
        rst = 0;
        #50;
        // Initialize inputs
        a = 32'h4D843C8F;
        b = 64'h9EDBD117D3C59A2A;
        k1 = 8'h0C;
        m = 8'h13;
        q = 64'h7FF80001;

        // Wait some time for computation to complete (adjust based on your design)
        #100;

        // Display results
        $display("c_: %h", c_);

        // End simulation
        $finish;
    end

endmodule
