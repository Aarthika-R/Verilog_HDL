module design_d (
    clk, d, q, qbar, rst
);
    input clk,d, rst;
    output reg q;
    output qbar;

    assign qbar = ~q;
    always @(posedge clk or posedge rst) begin
        if (!rst) begin
            q <= 1'b0;
        end
        else
            q <= d;
    end
endmodule