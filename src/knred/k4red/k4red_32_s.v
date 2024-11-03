// Prototype

/*
def k2red(a, k, k1, k2, k3, m, q, w):
  C_0_L       = a & ((1<<m) -1) # take the least significant m-bits
  C_0_H       = a >> m    # 64-m

  C_1         = (C_0_L << w-1-m) - ((C_0_L << k1) + (C_0_L << k2) + (C_0_L << k3) + C_0_L + C_0_H)

  C_1_L       = C_1 & ((1<<m) -1) # C_1_L       = C_1 % (1 << m)
  C_1_H       = C_1 >> m       # 64-m bit 

  C_2         = (C_1_L << w-1-m) - ((C_1_L << k1) + (C_1_L << k2) + (C_1_L << k3) + C_1_L + C_1_H)
  if C_2 >= q:                 # this is required, but we need proof (how do we do this efficiently in hardware) 
    C_2 = C_2-q
  elif C_2 < 0:
    C_2 = C_2+q
  
  return C_2
*/

module k4red_s (
    input clk, input rst,
    input [63:0] A,
    input [31:0] Q,
    input [5:0]  k1,
    input [5:0]  k2,
    input [5:0]  k3,
    input [5:0]  k4,
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

  barrelmask d00(clk,rst,A,m,AH,AL); // Will get rid of these to fix m for specific nth root of unities possibly
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
      C1 <= (AL << (32-1-m)) - ((AL << k1) + (AL << k2) + (AL << k3) + (AL << k4) + AL + AH);
      C2int <= (C1L << (32-1-m)) - ((C1L << k1) + (C1L << k2) + (C1L << k3) + (C1L << k4) + C1L + C1H);
      // 3rd stage
      if ((C2int > Q) || (C2int == Q))
      begin
        C2 <= C2int - Q;
      end
      else
      begin
        if (C2int < 0) begin
          C2 <= C2int + Q;
        end else begin
          C2 <= C2int;
        end
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