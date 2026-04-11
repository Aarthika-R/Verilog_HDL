module full_behavioural (
    a,b,c,diff,bor
);
    input a,b,c;
    output reg diff,bor;

    always @(*) begin
        diff = a^b^c;
        bor = ~a&b|~(a^b)&c;
    end
endmodule

module full_dataflow (
    a,b,c,diff,bor
);
    input a,b,c;
    output diff,bor;

    assign diff = a^b^c;
    assign bor = (~a&b)|~(a^b)&c;
endmodule

module full_gatelevel (
    a,b,c,diff,bor
);
    input a,b,c;
    output diff,bor;
    wire t1,t2,t3,t4;

    xor g1(t1,a,b);
    xor g2(diff,t1,c);
    not g3(t2,a);
    and g4(t3,t2,b);
    not g5(t4,t1);
    and g6(t5,t4,c);
    or g7(bor,t3,t5);
endmodule