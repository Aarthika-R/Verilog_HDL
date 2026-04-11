module behavioural (
    input a,b,output reg y
);
    always @(a or b) begin
        y = a&b;
    end
endmodule

module dataflow (
    input a,b,output y
);
    assign y = a&b;
endmodule

module gatelevel (
    input a,b,output y
);
    and g1(y,a,b);
endmodule

module switchlevel (
    input a,b,output y
);
    supply0 gnd;
    supply1 vdd;
    wire n,y1;

    pmos p1(y1,vdd,a);
    pmos p2(y1,vdd,b);

    nmos n1(n,gnd,a);
    nmos n2(y1,n,b);

    pmos p3(y,vdd,y1);
    nmos n3(y,gnd,y1);

endmodule