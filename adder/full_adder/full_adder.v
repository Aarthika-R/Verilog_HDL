module full_adder_dataflow(
    input a,
    input b,
    input c,
    output y,
    output Cout
);
   
    assign y = a^b^c;
    assign Cout = (a&b)|(a&c)|(b&c);
endmodule

module full_adder_behavioural (
    sum,carry,a,b,c
);
    input a,b,c;
    output reg sum,carry;
    always @(*) begin
        sum=a^b^c;
        carry=(a&b)|(a&c)|(b&c);
    end
endmodule

module full_adder_gatelevel (
    output sum,carry,input a,b,c
);
    wire t1,t2,t3,t4,t5;
    xor g1(t1,a,b);
    xor g2(sum,t1,c);
    and g3(t2,a,b);
    and g4(t3,b,c);
    and g5(t4,a,c);
    or g6(t5,t2,t3);
    or g7(carry,t4,t5);

endmodule