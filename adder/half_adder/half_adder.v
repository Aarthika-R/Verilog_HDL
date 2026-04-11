module half_adder_by_gatelevel (
    a,b,sum,carry
);
    output sum,carry;
    input a,b;

    xor g1(sum,a,b);
    and g2(carry,a,b);
endmodule

module half_adder_by_dataflow (
    a,b,sum,carry
);
    output sum,carry;
    input a,b;

    assign sum = a^b;
    assign carry = a&b;
endmodule

module half_adder_by_behavioural (
    a,b,sum,carry
);
    output reg sum,carry;
    input a,b;

    always @(*) begin
        sum = a^b;
        carry =a&b;
    end
    
endmodule

