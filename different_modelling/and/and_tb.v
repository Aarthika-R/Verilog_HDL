module and_tb();
    reg b_a,b_b,d_a,d_b,g_a,g_b,s_a,s_b;
    wire b_y,d_y,g_y,s_y;

    behavioural dut(.a(b_a),.b(b_b),.y(b_y));
    dataflow uut(.a(d_a),.b(d_b),.y(d_y));
    gatelevel dut1(.a(g_a),.b(g_b),.y(g_y));
    switchlevel uut1(.a(s_a),.b(s_b),.y(s_y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,and_tb);
        $monitor("and behavioural a=%b  b=%b  y=%b",b_a,b_b,b_y);

        b_a=0; b_b=0;#10;
        b_a=0; b_b=1;#10;
        b_a=1; b_b=0;#10;
        b_a=1; b_b=1;#10;
        $monitor("and dataflow a=%b  b=%b  y=%b",d_a,d_b,d_y);
        d_a=0; d_b=0;#10;
        d_a=0; d_b=1;#10;
        d_a=1; d_b=0;#10;
        d_a=1; d_b=1;#10;
        $monitor("and gatelevel a=%b  b=%b  y=%b",g_a,g_b,g_y);
        g_a=0; g_b=0;#10;
        g_a=0; g_b=1;#10;
        g_a=1; g_b=0;#10;
        g_a=1; g_b=1;#10;
        $monitor("and switchlevel a=%b  b=%b  y=%b",s_a,s_b,s_y);
        s_a=0; s_b=0;#10;
        s_a=0; s_b=1;#10;
        s_a=1; s_b=0;#10;
        s_a=1; s_b=1;#10;
        $finish;
    end
endmodule