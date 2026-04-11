module or_tb();
    reg nor_a,nor_b,nand_a,nand_b;
    wire nor_y,nand_y;

    or_by_nor dut(.a(nor_a),.b(nor_b),.y(nor_y));
    or_by_nand uut(.a(nand_a),.b(nand_b),.y(nand_y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,or_tb);

        $monitor("or_by_nor  a=%b  b=%b  y=%b", nor_a,nor_b,nor_y);
        nor_a=0; nor_b=0; #10;
        nor_a=0; nor_b=1; #10;
        nor_a=1; nor_b=0; #10;
        nor_a=1; nor_b=1; #10;
        $monitor("or_by_nand  a=%b  b=%b  y=%b", nand_a,nand_b,nand_y);
        nand_a=0; nand_b=0; #10;
        nand_a=0; nand_b=1; #10;
        nand_a=1; nand_b=0; #10;
        nand_a=1; nand_b=1; #10;
        $finish;
    end
endmodule