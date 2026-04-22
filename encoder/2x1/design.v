module encoder2x1 (
    input [1:0] i,
    output reg y
);
    always @(*) begin
        case (i)
            2'b01:y=0;
            2'b10:y=1;
            default: y=0;
        endcase
    end
endmodule