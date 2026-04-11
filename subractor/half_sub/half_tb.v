module half_tb;
    reg a_b,b_b,a_g,b_g,a_d,b_d;
    wire  bor_b,diff_b,bor_g,diff_g,bor_d,diff_d;

    half_dataflow dut_dataflow(.a(a_b),.b(b_b),.diff(diff_b),.bor(bor_b));
    half_behavioural dut_behavioural(.a(a_g),.b(b_g),.diff(diff_g),.bor(bor_g));
    half_gatelevel dut_gatelevel(.a(a_d),.b(b_d),.diff(diff_d),.bor(bor_d));

    initial begin
        $dumpfile("half_output.vcd");
        $dumpvars(0,half_tb);

        $monitor("behavioural: a=%b   b=%b   diff=%b   borrow=%b", a_b,b_b,diff_b,bor_b);
        a_b=0; b_b=0; #10;
        a_b=0; b_b=1; #10;
        a_b=1; b_b=0; #10;
        a_b=1; b_b=1; #10;

        $monitor("gate-level: a=%b   b=%b   diff=%b   borrow=%b", a_g,b_g,diff_g,bor_g);
        a_g=0; b_g=0; #10;
        a_g=0; b_g=1; #10;
        a_g=1; b_g=0; #10;
        a_g=1; b_g=1; #10;

        $monitor("dataflow: a=%b   b=%b   diff=%b   borrow=%b", a_d,b_d,diff_d,bor_d);
        a_d=0; b_d=0; #10;
        a_d=0; b_d=1; #10;
        a_d=1; b_d=0; #10;
        a_d=1; b_d=1; #10;
        $finish;
    end
endmodule