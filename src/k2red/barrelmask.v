module barrelmask #(parameter W = 64)(
    input clk , input rst,
    input signed [W-1:0] A,
    input [$clog2(W)-1:0]  select,
    output reg signed [W-1:0] AH, // this might be negative
    output reg [W-1:0] AL
);

reg signed [W-1:0] mask;
reg [W-1:0] midmask;

always @(posedge clk) begin
    if (rst) begin
        AH <= 0;
        AL <= 0;
        mask <= (1 << W-1);
        midmask <= 0;
    end else begin
        midmask <= (mask >>> (W-select-1));
        AH <= A >>> select;
        AL <= A & ~midmask;
    end
end
    
endmodule