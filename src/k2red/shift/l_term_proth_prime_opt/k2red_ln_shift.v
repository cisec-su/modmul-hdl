// #(parameter LOG_Q = 32, M = 17, LOG_L = 4)
// #(parameter LOG_Q = 64, M = 46, LOG_L = 4)

module k2red_ln_shift #(parameter LOG_Q = 32, M = 17, LOG_L = 4, USE_L3 = 1, SPEED_OPT = 1) (
  input                      clk,
  input      [(2*LOG_Q)-1:0] A  ,
  input      [    LOG_Q-1:0] Q  ,
  input      [    LOG_L-1:0] l1 ,
  input      [    LOG_L-1:0] l2 ,
  input      [    LOG_L-1:0] l3 ,
  output reg [    LOG_Q-1:0] C2
);

  localparam L_MAX  = (1 << LOG_L) - 1 ;
  localparam LOG_C1 = (2*LOG_Q) - M + 1;
  localparam DELAY  = 5 + (2*SPEED_OPT);

  reg [LOG_Q-1:0] q_pipeline[DELAY-1:0];

  reg  [(2*LOG_Q)-M-1:0] AH,AH_q;
  wire [(2*LOG_Q)-M-1:0] AH_mx  ;
  reg  [          M-1:0] AL,AL_q;
  wire [          M-1:0] AL_mx  ;
  wire [    L_MAX+M-1:0] ALw1m  ;
  wire [    L_MAX+M-1:0] ALl1,ALl2,ALl3;
  reg  [    L_MAX+M-1:0] ALl1_q,ALl2_q,ALl3_q;
  wire [    L_MAX+M-1:0] ALl1_mx,ALl2_mx,ALl3_mx;

  reg  signed [  LOG_C1-1:0] C1    ;
  reg         [       M-1:0] C1L, C1L_q;
  wire        [       M-1:0] C1L_mx;
  reg  signed [LOG_C1-M-1:0] C1H,C1H_q;
  wire signed [LOG_C1-M-1:0] C1H_mx;

  wire signed [L_MAX+M-1:0] C1w1m,C1l1,C1l2,C1l3;
  reg  signed [L_MAX+M-1:0] C1l1_q,C1l2_q,C1l3_q;
  wire signed [L_MAX+M-1:0] C1l1_mx,C1l2_mx,C1l3_mx;


  reg signed [(2*LOG_Q)-1:0] C2int;

  // Barrel Shifters
  // A Shift Pipeline Steps
  assign ALw1m = AL_mx << (LOG_Q-1-M);
  assign ALl1  = AL << l1;
  assign ALl2  = AL << l2;
  assign ALl3  = (USE_L3) ? AL << l3 : 0;

// C1 Shift Pipeline Steps
  assign C1w1m = C1L_mx << (LOG_Q-1-M);
  assign C1l1  = C1L << l1;
  assign C1l2  = C1L << l2;
  assign C1l3  = (USE_L3) ? C1L << l3 : 0;


  assign AH_mx   = (SPEED_OPT) ? AH_q    : AH;
  assign AL_mx   = (SPEED_OPT) ? AL_q    : AL;
  assign ALl1_mx = (SPEED_OPT) ? ALl1_q  : ALl1;
  assign ALl2_mx = (SPEED_OPT) ? ALl2_q  : ALl2;
  assign ALl3_mx = (SPEED_OPT) ? ALl3_q  : ALl3;

  assign C1L_mx  = (SPEED_OPT) ? C1L_q   : C1L;
  assign C1H_mx  = (SPEED_OPT) ? C1H_q   : C1H;
  assign C1l1_mx = (SPEED_OPT) ? C1l1_q  : C1l1;
  assign C1l2_mx = (SPEED_OPT) ? C1l2_q  : C1l2;
  assign C1l3_mx = (SPEED_OPT) ? C1l3_q  : C1l3;


  generate
    if (SPEED_OPT) begin
      always @(posedge clk )
        begin
          AH_q    <= AH;
          AL_q    <= AL;
          ALl1_q  <= ALl1;
          ALl2_q  <= ALl2;
          ALl3_q  <= ALl3;
        end
      end
    endgenerate

    generate
      if (SPEED_OPT) begin
        always @(posedge clk )
        begin
          C1L_q   <= C1L;
          C1H_q   <= C1H;
          C1l1_q  <= C1l1;
          C1l2_q  <= C1l2;
          C1l3_q  <= C1l3;
        end
      end
    endgenerate

    generate
      for(genvar dly=0; dly < DELAY; dly=dly+1)
        begin
          always @(posedge clk)
          begin
            q_pipeline[dly] <= (dly == 0) ? Q : q_pipeline[dly - 1];
          end
        end
    endgenerate

    always @(posedge clk )
    begin
      // 1st stage
      AH <= A[(2*LOG_Q)-1:M]; // Get (LOG_Q-M)-bit MSBs
      AL <= A[M    -1:0]; // Get M-bit LSBs
      // 2nd stage
      if (USE_L3) begin
        C1 <= ((ALw1m) + (ALl1_mx) + (ALl3_mx)) - ((ALl2_mx) + AH_mx); // First k*A_L - A_H
      end else begin
        C1 <= ((ALw1m) + (ALl1_mx)) - ((ALl2_mx) + AH_mx); // First k*A_L - A_H
      end
      // 3rd stage
      C1H <= C1[LOG_C1-1:M]; // Get (2W-M) MSBs
      C1L <= C1[M-1:0];
      // 4th stage
      if (USE_L3) begin
        C2int <= ((C1w1m) + (C1l1_mx) + (C1l3_mx)) - ((C1l2_mx) + C1H_mx); // Second k*C_L - C_H (4 Shift)
      end else begin
        C2int <= ((C1w1m) + (C1l1_mx)) - ((C1l2_mx) + C1H_mx); // Second k*C_L - C_H (4 Shift)
      end

      // 5th stage
      if ((C2int > q_pipeline[DELAY-1]) || (C2int == q_pipeline[DELAY-1])) // Correction to fully reduce
        begin
          C2 <= C2int - q_pipeline[DELAY-1];
        end
      else
        begin
          if (C2int < 0) begin
            C2 <= C2int + q_pipeline[DELAY-1];
          end else begin
            C2 <= C2int;
          end
        end
    end
endmodule
