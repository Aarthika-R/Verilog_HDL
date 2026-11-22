module testbench();
    reg clk, rst, d;
    wire q;

    design_d dut (.clk(clk), .q(q), .rst(rst), .d(d));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,testbench);

        rst = 0; d =0;
        #10 rst = 1;
        #12 d = 1;
        #10 d = 0;
        #5 rst = 0;
        #6 rst = 1; d = 1;
        #15 $finish;

    end
endmodule