module nor_gate (
    output y,input a,b
);
    supply1 vdd;
    supply0 gnd;
    wire p;
    //series pmos(drain,soure,gate)
    pmos (p,vdd,a);
    pmos (y,p,b);

    //parallel nmos(drain source gate)

    nmos(y,gnd,a);
    nmos(y,gnd,b);

endmodule