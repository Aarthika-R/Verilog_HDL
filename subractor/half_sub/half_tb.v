module half_tb;
    reg a,b;
    wire  bor,diff;

    half dut(.a(a),.b(b),.diff(diff),.bor(bor));

    initial begin
        $dumpfile("half_output.vcd");
        $dumpvars(0,half_tb);

        $monitor("a=%b   b=%b   diff=%b   borrow=%b", a,b,diff,bor);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end
endmodule