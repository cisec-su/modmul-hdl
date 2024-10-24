module k2red_m (
    input clk, input rst,
    input [127:0] A,
    input [63:0] Q,
    input [32:0] k,
    input [6:0]  m,
    output reg [63:0] C2
  );

  reg signed [127:0] C1;
  wire [127:0] C1L;
  wire [127:0] C1H;
  wire [127:0] AH;
  wire [127:0] AL;
  reg signed [127:0] C2int;

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
