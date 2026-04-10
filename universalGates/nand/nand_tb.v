module nand_tb();
    reg a,b;
    wire y;

    nand_gate dut(.a(a),.b(b),.y(y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,nand_tb);
        $monitor("a=%b  b=%b  y=%b",a,b,y);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule