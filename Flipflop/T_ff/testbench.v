module testbench ();
    reg t,clk;
    wire q, qbar;

    design_t dut(.q(q), .clk(clk), .t(t), .qbar(qbar));

    initial begin
        clk = 0;
        forever begin
            #5 clk = ~clk;
        end
    end
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,testbench);

        t = 0; #10;
        t = 1; #10;

        $finish;
    end
endmodule