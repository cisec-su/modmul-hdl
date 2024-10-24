module k2red_s (
    input clk, input rst,
    input [63:0] A,
    input [31:0] Q,
    input [5:0]  k1,
    input [5:0]  k2,
    input [5:0]  m,
    output reg [31:0] C2
  );

  reg signed [63:0] C1;
  wire [63:0] C1L;
  wire [63:0] C1H;
  // reg [$clog2(64)-1:0] select;
  wire [63:0] AH;
  wire [63:0] AL;
  reg signed [63:0] C2int;

  barrelmask d00(clk,rst,A,m,AH,AL);
  barrelmask d01(clk,rst,C1,m,C1H,C1L);

  always @(posedge clk )
  begin
    if (rst)
    begin
      C2 <= 0;
      C1 <= 0;
      C2int <= 0;
    end
    else
    begin
      C1 <= (AL << k1) - ((AL << k2) + AH);
      C2int <= (C1L << k1) - ((C1L << k2) + C1H);
      // 3rd stage
      if ((C2int > Q) || (C2int == Q))
      begin
        C2 <= C2int - Q;
      end
      else
      begin
        C2 <= C2int;
      end
    end
  end

endmodule


module barrelmask (
    input clk , input rst,
    input signed [63:0] A,
    input [5:0]  select,
    output reg signed [63:0] AH,
    output reg [63:0] AL
);

reg signed [63:0] mask;
reg [63:0] midmask;

always @(posedge clk) begin
    if (rst) begin
        AH <= 0;
        AL <= 0;
        mask <= (1 << 63);
        midmask <= 0;
    end else begin
        midmask <= (mask >>> (64-select-1));
        AH <= A >>> select;
        AL <= A & ~midmask;
    end
end
    
endmodule