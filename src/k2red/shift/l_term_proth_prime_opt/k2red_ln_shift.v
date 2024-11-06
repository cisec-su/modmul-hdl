module k2red_ln_shift #(parameter W = 32) (
  input                        clk,
  input                        rst,
  input      [      (2*W)-1:0] A  ,
  input      [          W-1:0] Q  ,
  input      [$clog2(2*W)-1:0] l1 ,
  input      [$clog2(2*W)-1:0] l2 ,
  input      [$clog2(2*W)-1:0] l3 ,
  input      [$clog2(2*W)-1:0] m  , // m can be a design time parameter, would help performance
  output reg [          W-1:0] C2
);

  reg  signed [(2*W)-1:0] C1 ;
  wire        [(2*W)-1:0] C1L;
  wire        [(2*W)-1:0] C1H;
  wire        [(2*W)-1:0] AH   ;
  wire        [(2*W)-1:0] AL   ;
  reg  signed [(2*W)-1:0] C2int;

  barrelmask #(.W(2*W)) d00(clk,rst,A,m,AH,AL);
  barrelmask #(.W(2*W)) d01(clk,rst,C1,m,C1H,C1L);

  always @(posedge clk )
    begin
      if (rst)
        begin
          C2    <= 0;
          C1    <= 0;
          C2int <= 0;
        end
      else
        begin
          C1    <= ((AL  << (W-1-m)) + (AL  << l1) + (AL  << l3)) - ((AL  << l2) + AH);
          C2int <= ((C1L << (W-1-m)) + (C1L << l1) + (C1L << l3)) - ((C1L << l2) + C1H);
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


module barrelmask #(parameter W = 64) (
  input                             clk   ,
  input                             rst   ,
  input      signed [        W-1:0] A     ,
  input             [$clog2(W)-1:0] select,
  output reg signed [        W-1:0] AH    , // this might be negative
  output reg        [        W-1:0] AL
);

  reg signed [W-1:0] mask   ;
  reg        [W-1:0] midmask;

  always @(posedge clk) begin
    if (rst) begin
      AH      <= 0;
      AL      <= 0;
      mask    <= (1 << W-1);
      midmask <= 0;
    end else begin
      midmask <= (mask >>> (W-select-1));
      AH      <= A >>> select;
      AL      <= A & ~midmask;
    end
  end

endmodule