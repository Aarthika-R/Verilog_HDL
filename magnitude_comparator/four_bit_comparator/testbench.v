module testbench();
    reg [3:0] a,b;
    wire gt,lt,eq;

    four_bit_com uut(.a(a),.b(b),.eq(eq),.gt(gt),.lt(lt));
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,testbench);

        $monitor("a = %b  b = %b  gt = %b  lt = %b  eq = %b", a,b,gt,lt,eq);

        a=4'b0001;
        b=4'b1001; #10;

        a=4'b1100;
        b=4'b10110; #10;

        $finish;
    end
endmodule