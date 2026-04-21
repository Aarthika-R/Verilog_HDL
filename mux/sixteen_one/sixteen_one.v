module sixteen_one (
    input [15:0] i,
    input [3:0] s,
    output y
); 
    assign y = i[s];
    
endmodule