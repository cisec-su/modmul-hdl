module parametric_wordred 
       #(
            parameter  K      = 120,
            parameter  Q_LEN  = 60,
            parameter  R      = 34,
            parameter  Y      = 0,
            parameter  FF_SUM = 0,
            parameter  FF_SUB = 0,
            localparam QH_LEN = Q_LEN-R-Y,
            localparam O_SIZE = K-R
        )
        (
            input                 clk,
            input                 rst,
            input  [QH_LEN  -1:0]  qH,
            input  [K-1:0]          C,
            output [O_SIZE  -1:0]   T
        );


localparam MODE = (R <= 26) ? 0 : 1;

/////////////////////////////////////////////////////////////////////////

wire [  R-1:0] CL;
wire [K-R-1:0] CH;


//(* use_dsp = "yes" *)reg [O_SIZE-1:0] DSPout;
(* use_dsp = "yes" *) reg [42:0] p0_0,p0_1;
(* use_dsp = "no" *) reg [O_SIZE-1:0] OUTPUT_RES;

wire [R-1:0] CLn;

reg  [R-1:0] CLn_q;
wire [R-1:0] CLn_mx;

wire        Cin;

reg  [K-1:0] CH_q  [0:1];
wire [K-1:0] CH_mx [0:1];
reg  Cin_q  [0:1];
wire Cin_mx [0:1]; // todo: only first elem is used


/////////////////////////// partitioning  ///////////////////////////////

assign CL = C[R-1:0];
assign CH = C[K-1:R];

/////////////////////////////////////////////////////////////////////////




/////////////////////////// pipeline steps  /////////////////////////////

assign CLn_mx = (FF_SUB) ? CLn_q : CLn;
assign CH_mx[0]  = (FF_SUB) ? CH_q[0] : CH;
assign Cin_mx[0] = (FF_SUB) ? Cin_q[0] : Cin;

/////////////////////////////////////////////////////////////////////////




assign CLn = -CL;
assign Cin = CL[R-1] | CLn[R-1];


reg [K-1:0] T0_q;
reg [42:0] T1_q;

always @(posedge clk) begin

    if (FF_SUB) begin
        CLn_q <= CLn;
        CH_q[0] <= CH;
        Cin_q[0] <= Cin;
    end

    if (MODE == 0) begin
        p0_0 <= CLn_mx[R-1:0] * qH[16:0];
        p0_1 <= CLn_mx[R-1:0] * qH[QH_LEN-1:17];
    end
    else begin
        p0_0 <= CLn_mx[16:0] * qH;
        p0_1 <= CLn_mx[R-1:17] * qH;
    end
    // CL_q <= CL;
    // qh_q <= qH;

    Cin_q[1] <= Cin_mx[0];
    CH_q[1] <= CH_mx[0];

    if (FF_SUM == 0) begin
        OUTPUT_RES <= (p0_0 << Y) + ({p0_1,17'd0} << Y) + CH_q[1] + Cin_q[1];
    end
    else begin
        T0_q <= ({p0_1,17'd0} << Y) + CH_q[1] + Cin_q[1];
        T1_q <= p0_0;
        OUTPUT_RES <= (T1_q << Y) + T0_q;
    end        
end

assign T = OUTPUT_RES;

endmodule

