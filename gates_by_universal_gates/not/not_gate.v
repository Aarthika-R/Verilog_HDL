`include "../../universalGates/nand/nand_gate.v"
`include "../../universalGates/nor/nor_gate.v"

module not_by_nor (
    output y, input a
);
    nor_gate nor1(.a(a),.b(a),.y(y));
endmodule
module not_by_nand (
    output y, input a
);
    nand_gate nand1(.a(a),.b(a),.y(y));
endmodule