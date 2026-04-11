`include "../../universalGates/nand/nand_gate.v"
`include "../../universalGates/nor/nor_gate.v"

module or_by_nor (
    output y, input a,b
);
    wire t1;
    nor_gate nor1(.a(a),.b(b),.y(t1));
    nor_gate nor2(.a(t1),.b(t1),.y(y));
    
endmodule

module or_by_nand (
    output y, input a,b
);
    wire t1,t2;
    nand_gate nand1(.a(a),.b(a),.y(t1));
    nand_gate nand2(.a(b),.b(b),.y(t2));
    nand_gate nand3(.a(t1),.b(t2),.y(y));
    
endmodule
