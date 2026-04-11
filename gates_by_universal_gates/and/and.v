`include "../../universalGates/nand/nand_gate.v"
`include "../../universalGates/nor/nor_gate.v"
module and_by_nand (
    y,a,b
);
    input a,b;
    output y;
    wire t1;
    nand_gate nand1(.a(a),.b(b),.y(t1));
    nand_gate nand2(.a(t1),.b(t1),.y(y));
endmodule

module and_by_nor (
    output y,input a,b
);
    wire t1,t2;
    nor_gate nor1(.a(a),.b(a),.y(t1));
    nor_gate nor2(.a(b),.b(b),.y(t2));
    nor_gate nor3(.a(t1),.b(t2),.y(y));
endmodule

// module nor_gate (
//     output y,input a,b
// );
//     supply1 vdd;
//     supply0 gnd;
//     wire p;
//     //series pmos(drain,soure,gate)
//     pmos (p,vdd,a);
//     pmos (y,p,b);

//     //parallel nmos(drain source gate)

//     nmos(y,gnd,a);
//     nmos(y,gnd,b);

// endmodule


// module nand_gate(output y, input a,b);
//     supply1 vdd;
//     supply0 gnd;
    
//     wire n;
//     //pmos(darin,source,gate)
//     pmos s1(y,vdd,a);
//     pmos s2(y,vdd,b);

//     //nmos(drain,source,gate)
//     nmos(n,gnd,b);
//     nmos(y,n,a);
    
    
// endmodule