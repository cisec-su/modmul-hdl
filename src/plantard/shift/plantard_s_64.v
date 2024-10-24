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
// Additional Comments: Selim: Modified for 64-bit, optimized for multiplier usage, verified with testbench
//
//////////////////////////////////////////////////////////////////////////////////


module plantard_s(
    input clk, rst,
    input  wire [63:0] a,
    input  wire [127:0] b,
    input  wire [63:0] q,
    input  wire [ 7:0] k1,
    input  wire [ 7:0] k2,
    input  wire [ 7:0] m,
    output reg  [63:0] c_,
    output      [63:0] c_32
  );
  reg [127:0] c0, c1, c2, c3, c4, d0, d1, d2, d3, d4, e0, e1, e2, e3, f0, f1, f2;
  reg [127:0] result;
  reg [127:0] T, T1, T2;

  always @(posedge clk)
  begin
    if (rst)
    begin
      c_ <= 0;
    end
    else
    begin
      // Stage 1 // parametric olarak yapıabilir proteus
      c0 <= a[17:0] * b[26:0];
      c1 <= (a[17:0] * b[53:27]) << 27;
      c2 <= (a[17:0] * b[80:54]) << 54;
      c3 <= (a[17:0] * b[107:81]) << 81;
      c4 <= (a[17:0] * b[127:108]) << 108;
      d0 <=  a[35:18] * b[26:0] << 18;
      d1 <= (a[35:18] * b[53:27]) << (45);
      d2 <= (a[35:18] * b[80:54]) << (72);
      d3 <= (a[35:18] * b[107:81]) << (99);
      d4 <= (a[35:18] * b[127:108]) << (126);
      e0 <=  a[53:36] * b[26:0] << 36;
      e1 <= (a[53:36] * b[53:27]) << (63);
      e2 <= (a[53:36] * b[80:54]) << (90);
      e3 <= (a[53:36] * b[107:81]) << (117);
      f0 <=  a[63:54] * b[26:0] << 54;
      f1 <= (a[63:54] * b[53:27]) << (81);
      f2 <= (a[63:54] * b[80:54]) << (108);

      // Stage 2
      result <= (c0 + c1 + c2 +c3 + c4 + d0 + d1 + d2 + d3 + d4 + e0 + e1 + e2 + e3 + f0 + f1 + f2);

      // Stage 3
      T <= result >> 64;

      // Stage 4
      T1 <= (((T << (k1 + m)) - (T << (k2 + m)) + T) + q) >> 64;

      // Stage 5
      if (T1 == q)
      begin
        c_ <= 64'h0;
      end
      else
      begin
        c_ <= T1;
      end
    end
  end

  assign c_32 = c_;

endmodule

