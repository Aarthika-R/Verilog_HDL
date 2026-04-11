module full (
    a,b,c,diff,bor
);
    input a,b,c;
    output reg diff,bor;

    always @(*) begin
        diff = a^b^c;
        bor = ~a&b|~(a^b)&c;
    end
endmodule