module not_tb();
    reg nor_a,nand_a;
    wire nor_y,nand_y;

    not_by_nor uut(.a(nor_a),.y(nor_y));
    not_by_nand dut(.a(nand_a),.y(nand_y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,not_tb);

        $monitor("not by nor  a=%b  y=%b",nor_a,nor_y);
        nor_a=0; #10;
        nor_a=1; #10;

        $monitor("not by nand a=%b  y=%b", nand_a,nand_y); 
        nand_a=0; #10;
        nand_a=1; #10;
        $finish;
    end
endmodule