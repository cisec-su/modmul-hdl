`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 13:10:07
// Design Name: 
// Module Name: plantard
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


module plantard_s(
    input clk, rst,
    input  wire [31:0] a,
    input  wire [63:0] b,
    input  wire [63:0] q,
    input  wire [ 7:0] k1,
    input  wire [ 7:0] m,
    output reg  [63:0] c_
);

    reg [15:0] a0, a1, b0, b1, b2, b3;
    reg [63:0] c0, c1, c2, c3, d0, d1, d2;
    reg [63:0] result;
    reg [63:0] T, T1, T2;

    always @(posedge clk) begin
        a0 <=  a[15:0];
        a1 <=  a[31:16];

        b0 <=  b[15:0];
        b1 <=  b[31:16];
        b2 <=  b[47:32];
        b3 <=  b[63:48];

        c0 <= a0 * b0;
        c1 <= (a0 * b1) << 16;
        c2 <= (a0 * b2) << 32;
        c3 <= (a0 * b3) << 48;
        d0 <= (a1 * b0) << 16;
        d1 <= (a1 * b1) << 32;
        d2 <= (a1 * b2) << 48;

        result <= c0 + c1 + c2 +c3 + d0 + d1 + d2;

        T <= result >> 32;
        T1 <= ((T << (k1 + m)) - (T << m) + T) + q;
        T2 <= T1 >> 32;
        //if (T2 == q) begin
            //T3 <= 64'h0;
        //end

        c_ <= T2;
    end
endmodule

