module one_four_tb();
    reg i;
    reg [1:0] s;
    wire [3:0] y;
    integer k;

    one_four dut(.i(i),.y(y),.s(s));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,one_four_tb);

        $monitor("i = %b  y = %b  s = %b", i,y,s);

        s[0] = 0; s[1] = 0; i = 1; #10;
        s[0] = 1; s[1] = 0; i = 1; #10;
        s[0] = 0; s[1] = 1; i = 1; #10;
        s[0] = 1; s[1] = 1; i = 1; #10;
        $finish;
    end
endmodule