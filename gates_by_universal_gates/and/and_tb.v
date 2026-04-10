module and_by_nand_nor();
    reg nand_a,nand_b,nor_a,nor_b;
    wire nand_y,nor_y;

    and_by_nand dut (.a(nand_a),.b(nand_b),.y(nand_y));

    and_by_nor uut(.a(nor_a),.b(nor_b),.y(nor_y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,and_by_nand_nor);
        $monitor("AND_BY_NAND ---  a: %b, b: %b, out: %b", nand_a, nand_b,
                     nand_y);
        nand_a=0; nand_b=0; #10;
        nand_a=0; nand_b=1; #10;
        nand_a=1; nand_b=0; #10;
        nand_a=1; nand_b=1; #10;
        $monitor("AND_BY_NOR ---  a: %b, b: %b, out: %b", nor_a, nor_b, nor_y);

        
        

        nor_a=0; nor_b=0; #10;
        nor_a=0; nor_b=1; #10;
        nor_a=1; nor_b=0; #10;
        nor_a=1; nor_b=1; #10;

        

        $finish;
    end
endmodule
