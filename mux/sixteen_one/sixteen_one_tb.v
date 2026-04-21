module sixteen_one_tb();
    reg [15:0] i;
    reg [3:0] s;
    wire y;
    integer k;
    sixteen_one dut(.i(i),.s(s),.y(y));
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,sixteen_one_tb);
        $monitor("i = %b  s = %b  y = %b",i,s,y);

        i = 16'b0000110101001101;
        s = 4'b0000;

        for (k =0 ;k<16 ;k++ ) begin
            s = k;
            #10;
        end

        $finish;

    end
    endmodule