module testbench();
    reg [3:0] i;
    wire [1:0] y;
    encoder4x2 uut(i,y);
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, testbench);
        $monitor("i=%b, y=%b", i, y);
        i=4'b0000; #10;
        i=4'b0001; #10;
        i=4'b0010; #10;
        i=4'b0100; #10;
        i=4'b1000; #10;
        $finish;
    end
endmodule