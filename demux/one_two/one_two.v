module one_two (
    input i,s,
    output [1:0] y
);
    assign y[0] = ~i&s;
    assign y[1] = i&s;
endmodule