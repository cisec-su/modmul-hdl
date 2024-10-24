module k2red_m (
    input clk, input rst,
    input [63:0] A,
    input [31:0] Q,
    input [14:0] k,
    input [5:0]  m,
    output reg [31:0] C2
  );

  reg signed [63:0] C1;
  wire [63:0] C1L;
  wire [63:0] C1H;
  wire [63:0] AH;
  wire [63:0] AL;
  reg signed [63:0] C2int;

  barrelmask b00(.clk(clk),.rst(rst),.A(A),.select(m),.AH(AH),.AL(AL));
  barrelmask b01(.clk(clk),.rst(rst),.A(C1),.select(m),.AH(C1H),.AL(C1L));

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
      C1 <= k*AL - AH;
      C2int <= k*C1L - C1H;
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