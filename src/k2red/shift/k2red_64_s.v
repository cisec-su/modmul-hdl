module k2red_s (
    input clk, input rst,
    input [127:0] A,
    input [63:0] Q,
    input [6:0]  k1,
    input [6:0]  k2,
    input [6:0]  m,
    output reg [63:0] C2
  );

  reg signed [127:0] C1;
  wire [127:0] C1L;
  wire [127:0] C1H;
  // reg [$clog2(64)-1:0] select;
  wire [127:0] AH;
  wire [127:0] AL;
  reg signed [127:0] C2int;

  barrelmask b00(.clk(clk),.rst(rst),.A(A),.select(m),.AH(AH),.AL(AL));    // 1st and 2nd stages
  barrelmask b01(.clk(clk),.rst(rst),.A(C1),.select(m),.AH(C1H),.AL(C1L)); // 1st and 2nd stages

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
      // 3rd stage
      C1 <= (AL << k1) - ((AL << k2) + AH);
      // 4th stage
      C2int <= (C1L << k1) - ((C1L << k2) + C1H);
      // 5th stage
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
