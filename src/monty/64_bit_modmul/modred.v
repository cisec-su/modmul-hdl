module modred (
  input              clk, rst,
  input      [ 63:0] q  ,
  input      [127:0] D  ,
  output reg [ 63:0] C
);

  wire [46:0] q2, q3, q4, q5;

  shiftreg #(.SHIFT(2), .DATA(47)) sr1 (.clk(clk), .reset(rst), .data_in(q[63:17]), .data_out(q2));
  shiftreg #(.SHIFT(2), .DATA(47)) sr2 (.clk(clk), .reset(rst), .data_in(q2),       .data_out(q3));
  shiftreg #(.SHIFT(2), .DATA(47)) sr3 (.clk(clk), .reset(rst), .data_in(q3),       .data_out(q4));
  shiftreg #(.SHIFT(2), .DATA(47)) sr4 (.clk(clk), .reset(rst), .data_in(q4),       .data_out(q5));

// Step#1
  wire [110:0] D2;

  parametric_wordred #(128) step1 (clk,rst,q[63:17],D,D2);//1_cc

// Step#2
  wire [93:0] D3;

  parametric_wordred #(111) step2 (clk,rst,q2,D2,D3);//1_cc

// Step#3
  wire [76:0] D4;

  parametric_wordred #(94) step3 (clk,rst,q3,D3,D4);//1_cc

// Step#4
  wire [63:0] D5;

  parametric_wordred #(77,64) step4 (clk,rst,q4,D4,D5);//1_cc

  wire signed [65:0] D6;

//assign D6 = D5[63:0]-{1'b0,q5,17'b1};
  assign D6 = D5-{1'b0,q5,17'b1};

  always @(posedge clk or posedge rst) begin //1_cc
    if(rst) begin
      C <= 0;
    end
    else begin
      case(D6[65])
        0 : C <= D6[63:0];
        1 : C <= D5[63:0];
      endcase
    end
  end

// `ifdef COCOTB_SIM
//   initial
//     begin
//       $dumpfile ("modred.vcd");
//       $dumpvars (0, modred);
//     end
// `endif

endmodule