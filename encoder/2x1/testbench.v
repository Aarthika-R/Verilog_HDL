module testbench_e();
    reg [1:0] i;
    wire y;

    encoder2x1 dut(.i(i),.y(y));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,testbench_e);

        $monitor("i = %b   y = %b",i,y);

        i[0] = 0; i[1] = 0; #10;
        i[0] = 0; i[1] = 1; #10;
        i[0] = 1; i[1] = 0; #10;
        i[0] = 1; i[1] = 1; #10;
        $finish;


    end
endmodule