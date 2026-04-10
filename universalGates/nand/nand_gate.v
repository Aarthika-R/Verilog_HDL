module nand_gate (
     output y, input a,b
);
    supply1 vdd;
    supply0 gnd;
    
    wire n;
    //pmos(darin,source,gate)
    pmos s1(y,vdd,a);
    pmos s2(y,vdd,b);

    //nmos(drain,source,gate)
    nmos(n,gnd,b);
    nmos(y,n,a);
    
    
endmodule