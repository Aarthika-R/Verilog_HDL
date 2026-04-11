module half_adder_tb;
    reg p,q;
    wire r,s;

    half_adder dut (.a(p),.b(q),.sum(r),.carry(s));

    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0,half_adder_tb);

        

        p = 0; q = 0; #10;
        p = 0; q = 1; #10;
        p = 1; q = 0; #10;
        p = 1; q = 1; #10;
        
        $finish;

    end

endmodule
