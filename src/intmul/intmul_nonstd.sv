`timescale 1ns / 1ps

module intmul_nonstd(input clk,rst,
              input [59:0] A,
              input [59:0] B,
              output reg [119:0] D);


(* use_dsp = "yes" *) reg [42:0] m1, m2, m3, m4, m5, m6, m7, m8, s;


always @(posedge clk or posedge rst) begin
    if(rst) begin
        m1 <= 0;
        m2 <= 0;
        m3 <= 0;
        m4 <= 0;
        m5 <= 0;
        m6 <= 0;
        m7 <= 0;
        m8 <= 0;
        s <= 0;

    end
    else begin
        m1 <= A[25:0] * B[16:0];
        m2 <= A[25:0] * B[33:17];
        m3 <= A[16:0] * B[59:34];
        m4 <= A[33:17] * B[59:34];
        m5 <= A[59:34] * B[59:43];
        m6 <= A[59:34] * B[42:26];
        m7 <= A[59:43] * B[25:0];
        m8 <= A[42:26] * B[25:0];
        s <= A[33:26] * B[33:26];
    end
end

wire [119:0] p;

assign p = {{77'b0, m1}} + {{60'b0, m2, 17'b0}} + {{43'b0, m3, 34'b0}} + {{26'b0, m4, 51'b0}} + {{51'b0, m8, 26'b0}} + {{34'b0, m7, 43'b0}} + {{17'b0, m6, 60'b0}} + {{m5, 77'b0}} + {{52'b0, s, 52'b0}}; 

always @(*) begin
    D = p;
end
          
endmodule



