module nor_tb();
    reg a,b;
    wire y;

    nor_gate dut(.a(a),.b(b),.y(y));
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,nor_tb);
        $monitor("a=%b  b=%b  y=%b",a,b,y);
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        $finish;
    end
endmodule
