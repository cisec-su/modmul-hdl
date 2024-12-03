module k2red_shift #(parameter LOGQ = 32, LOGQH = LOGQ-17, LOGL = 4, USE_L3 = 1, FF_SHF = 1) (
  input                     clk,
  input      [(2*LOGQ)-1:0] C  ,
  input      [   LOGQH-1:0] qH ,
  input      [    LOGL-1:0] L1 ,
  input      [    LOGL-1:0] L2 ,
  input      [    LOGL-1:0] L3 ,
  output reg [    LOGQ-1:0] T
);

  localparam L_MAX  = (1 << LOGL)     ; // Maximum shift amount for Ls
  localparam LOGC1T = (2*LOGQ) - M + 1; // Bit-width for C1 and T (+1 for sign bit)
  localparam DELAY  = 4 + (2*FF_SHF)  ; // Latency of the module
  localparam M      = LOGQ-LOGQH      ;

  // Pipeline registers for stream processing
  reg [LOGQ-M-1:0] q_pipeline [ DELAY-2:0];
  reg [  LOGL-1:0] L1_pipeline[1+FF_SHF:0];
  reg [  LOGL-1:0] L2_pipeline[1+FF_SHF:0];
  reg [  LOGL-1:0] L3_pipeline[1+FF_SHF:0];

  reg  [(2*LOGQ)-(M)-1:0] CH,CH_q;
  wire [  (2*LOGQ)-M-1:0] CH_mx  ; // Pipeline mux output
  reg  [             M:0] CL,CL_q; // Pipeline reg output
  wire [             M:0] CL_mx  ; // Pipeline mux output
  wire [       L_MAX+M:0] CLw1m  ;
  wire [       L_MAX+M:0] CLL1,CLL2,CLL3;
  reg  [       L_MAX+M:0] CLL1_q,CLL2_q,CLL3_q; // Pipeline reg output
  wire [       L_MAX+M:0] CLL1_mx,CLL2_mx,CLL3_mx; // Pipeline mux output

  reg  signed [  LOGC1T-1:0] C1    ;
  reg  signed [         M:0] C1L_q ;
  wire signed [         M:0] C1L   ;
  wire signed [         M:0] C1L_mx;
  wire signed [LOGC1T-M-1:0] C1H   ;
  reg  signed [LOGC1T-M-1:0] C1H_q ;
  wire signed [LOGC1T-M-1:0] C1H_mx;

  wire signed [L_MAX+M:0] C1w1m,C1L1,C1L2,C1L3; // Added 1 bit for sign
  reg  signed [L_MAX+M:0] C1L1_q,C1L2_q,C1L3_q; // Added 1 bit for sign
  wire signed [L_MAX+M:0] C1L1_mx,C1L2_mx,C1L3_mx; // Added 1 bit for sign

  localparam LOG_T = ((L_MAX + M) > (LOGC1T-M)) ? ((L_MAX + M) + 2) : ((LOGC1T-M) + 2);

  reg  signed [LOG_T-1:0] Tint    ;
  wire signed [ LOGQ+1:0] Tint_sub;

  // Barrel Shifters
  // C Shift Pipeline Steps
  assign CLw1m = CL_mx << (LOGQ-1-M);
  assign CLL1  = CL << L1_pipeline[0];
  assign CLL2  = CL << L2_pipeline[0];
  assign CLL3  = (USE_L3) ? CL << L3_pipeline[0] : 0;

  // C1 Shift Pipeline Steps
  assign C1w1m = C1L_mx << (LOGQ-1-M);
  assign C1L1  = C1L << L1_pipeline[1+FF_SHF];
  assign C1L2  = C1L << L2_pipeline[1+FF_SHF];
  assign C1L3  = (USE_L3) ? C1L << L3_pipeline[1+FF_SHF] : 0;

  // Pipeline Multiplexers
  assign CH_mx   = (FF_SHF) ? CH_q    : CH;
  assign CL_mx   = (FF_SHF) ? CL_q    : CL;
  assign CLL1_mx = (FF_SHF) ? CLL1_q  : CLL1;
  assign CLL2_mx = (FF_SHF) ? CLL2_q  : CLL2;
  assign CLL3_mx = (FF_SHF) ? CLL3_q  : CLL3;

  assign C1L_mx  = (FF_SHF) ? C1L_q   : C1L;
  assign C1H_mx  = (FF_SHF) ? C1H_q   : C1H;
  assign C1L1_mx = (FF_SHF) ? C1L1_q  : C1L1;
  assign C1L2_mx = (FF_SHF) ? C1L2_q  : C1L2;
  assign C1L3_mx = (FF_SHF) ? C1L3_q  : C1L3;

  assign C1H = C1[LOGC1T-1:M];
  assign C1L = {1'b0,C1[M-1:0]};

  assign Tint_sub = Tint - {q_pipeline[DELAY-2],{(M-1){1'b0}},1'b1};

  generate
    if (FF_SHF) begin
      always @(posedge clk )
        begin
          CH_q    <= CH;
          CL_q    <= CL;
          CLL1_q  <= CLL1;
          CLL2_q  <= CLL2;
          CLL3_q  <= CLL3;
        end
      end
    endgenerate

    generate
      if (FF_SHF) begin
        always @(posedge clk )
        begin
          C1L_q   <= C1L;
          C1H_q   <= C1H;
          C1L1_q  <= C1L1;
          C1L2_q  <= C1L2;
          C1L3_q  <= C1L3;
        end
      end
    endgenerate

    generate
      for(genvar dly=0; dly < DELAY-1; dly=dly+1)
        begin
          always @(posedge clk)
          begin
            q_pipeline[dly] <= (dly == 0) ? qH : q_pipeline[dly - 1];
          end
        end
    endgenerate

    generate
      for(genvar dly_l=0; dly_l < (2+(FF_SHF)); dly_l=dly_l+1)
        begin
          always @(posedge clk)
          begin
            L1_pipeline[dly_l] <= (dly_l == 0) ? L1 : L1_pipeline[dly_l - 1];
            L2_pipeline[dly_l] <= (dly_l == 0) ? L2 : L2_pipeline[dly_l - 1];
            L3_pipeline[dly_l] <= (dly_l == 0) ? L3 : L3_pipeline[dly_l - 1];
          end
        end
    endgenerate

    always @(posedge clk )
    begin
      // 1st stage
      CH <= C[(2*LOGQ)-1:M]; // Get (LOGQ-M)-bit MSBs
      CL <= C[M    -1:0]; // Get M-bit LSBs
      // 2nd stage
      if (USE_L3) begin
        C1 <= ((CLw1m) + (CLL1_mx) + (CLL3_mx)) - ((CLL2_mx) + {CH_mx}); // First k*C_L - C_H --> 1cc/2cc (FF_SHF)
      end else begin
        C1 <= ((CLw1m) + (CLL1_mx)) - ((CLL2_mx) + {CH_mx}); // First k*C_L - C_H
      end
      // 3rd stage
      if (USE_L3) begin
        Tint <= ((C1w1m) + (C1L1_mx) + (C1L3_mx)) - ((C1L2_mx) + (C1H_mx)); // Second k*C1_L - C1_H --> 1cc/2cc (FF_SHF)
      end else begin
        Tint <= ((C1w1m) + (C1L1_mx)) - ((C1L2_mx) + (C1H_mx)); // Second k*C1_L - C1_H
      end
      // 4th stage
      if ((Tint_sub[LOGQ] == 0)|| (Tint_sub == 0)) // Correction to fully reduce
        begin
          T <= Tint_sub;
        end
      else
        begin
          if (Tint < 0) begin
            T <= Tint + {q_pipeline[DELAY-2],{(M-1){1'b0}},1'b1};
          end else begin
            T <= Tint;
          end
        end
    end
endmodule