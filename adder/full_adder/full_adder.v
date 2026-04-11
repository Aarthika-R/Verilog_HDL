module full_adder (
    input a,
    input b,
    input c,
    output y,
    output Cout
);
   
    assign y = a^b^c;
    assign Cout = (a&b)|(a&c)|(b&c);
endmodule