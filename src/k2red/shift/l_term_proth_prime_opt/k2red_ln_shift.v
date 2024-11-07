// #(parameter W = 32, M = 17, LOG_L = 4)
// #(parameter W = 64, M = 46, LOG_L = 4)

module k2red_ln_shift #(parameter W = 32, M = 17, LOG_L = 4) (
  input                  clk,
  input      [(2*W)-1:0] A  ,
  input      [    W-1:0] Q  ,
  input      [LOG_L-1:0] l1 ,
  input      [LOG_L-1:0] l2 ,
  input      [LOG_L-1:0] l3 ,
  output reg [    W-1:0] C2
);

  reg signed [(2*W)-1:0] C1   ;
  reg        [(2*W)-1:0] C1L  ;
  reg        [(2*W)-1:0] C1H  ;
  reg        [(2*W)-1:0] AH   ;
  reg        [(2*W)-1:0] AL   ;
  reg signed [(2*W)-1:0] C2int;

  always @(posedge clk )
    begin
      // 1st stage
      AH    <= A >>> M; // Get (W-M)-bit MSBs
      AL    <= {{W-M{1'b0}},A[M-1:0]}; // Get M-bit LSBs
      // 2nd stage
      C1    <= ((AL  << (W-1-M)) + (AL  << l1) + (AL  << l3)) - ((AL  << l2) + AH); // First k*A_L - A_H
      // 3rd stage
      C1H   <= C1 >>> M;
      C1L   <= {{W-M{1'b0}},C1[M-1:0]};
      // 4th stage
      C2int <= ((C1L << (W-1-M)) + (C1L << l1) + (C1L << l3)) - ((C1L << l2) + C1H); // Second k*C_L - C_H
      // 5th stage
      if ((C2int > Q) || (C2int == Q)) // Correction to fully reduce
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
endmodule
