// Plantard reduction prototype
// 15/12/2023

module plantard_m #(
    parameter W = 32
) (
    input clk, input rst,
    input signed [2*W-1:0] A,
    input [W-1:0] Q,
    output reg [W-1:0] T
);

reg [W-1:0]     A_SHIFT;
reg signed [2*W-1:0]   TQ;
reg signed [W-1:0]     T_SHIFT;

always @(posedge clk ) begin
    if (rst) begin
        A_SHIFT <= 0;
        TQ <= 0;
        T_SHIFT <= 0;
        T <= 0;
    end else begin
        A_SHIFT <=  A >>> W;
        TQ <= (A_SHIFT * Q) + Q;
        T_SHIFT <= TQ >> W;
        // $display("A[44:0] %h, (A >> 45) %h, C_1 %h",A[44:0],(A >> 45),C_1);
        $display("T_SHIFT %h, TQ %h, A_SHIFT %h, A %h", T_SHIFT, TQ, A_SHIFT, A);
        if (T_SHIFT == Q) begin
            T <= 0;
        end else begin
            T <= T_SHIFT;
        end
    end
end
    
endmodule