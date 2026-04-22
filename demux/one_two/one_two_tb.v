module one_two_tb();
    reg i,s;
    wire [1:0] y;

    one_two dut(.i(i),.s(s),.y(y));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,one_two_tb);
        $monitor("i = %b  s = %b  y = %b", i,s,y);

        i = 0; s = 0; #10;
        i = 1; s = 1; #10;

        i = 1; s = 0; #10;
        i = 0; s = 1; #10;

        $finish;
    end
    endmodule