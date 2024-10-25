
`include "defines.v"

module modmul(
  input        clk,
  input        rst,
  input [`WORD_SIZE-1:0] q,
  input [`WORD_SIZE-1:0] A,B,
  output[`WORD_SIZE-1:0] C
);

// q registers
reg [`WORD_SIZE-1:0] qred,qint;

`ifdef USE_DFF_MODMUL
always @(posedge clk or posedge rst) begin
  if(rst)
    {qred,qint} <= 0;
  else
    {qred,qint} <= {qint,q};
end
`else
always @(posedge clk or posedge rst) begin
  if(rst)
    qred <= 0;
  else
    qred <= q;
end
`endif

// connections
wire [2*`WORD_SIZE-1:0] D ;
reg  [2*`WORD_SIZE-1:0] D2;

// integer mult
intmul im (clk,rst,A,B,D);

// connection
`ifdef USE_DFF_MODMUL
always @(posedge clk or posedge rst) begin
  if(rst)
    D2 <= 0;
  else
    D2 <= D;
end
`else
always @(*) begin
  D2 = D;
end
`endif

// modular reduction
modred mr (clk,rst,qred,D2,C);

// // final 32-bit
// shiftreg #(.SHIFT(`MODRED_CC), .DATA(32)) sre00 (clk,rst,D2[`WORD_SIZE-1:0],C_32);

endmodule
