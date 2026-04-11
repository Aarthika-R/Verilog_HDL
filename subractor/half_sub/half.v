module half_dataflow(
    a,b,diff,bor
);
    input a,b;
    output diff,bor;

    assign diff = a^b;
    assign bor = ~a&b;
endmodule

module half_behavioural (
    a,b,diff,bor
);
    input a,b;
    output reg diff,bor;
    always @(*) begin
        diff = a^b;
        bor = ~a&b;
    end
endmodule

module half_gatelevel (
    a,b,diff,bor
);
    input a,b;
    output diff,bor;
    wire n;

    xor g1(diff,a,b);
    not g2(n,a);
    and g3(bor,n,b);
endmodule