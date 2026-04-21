module eight_one_tb();
    reg [7:0] i;
    reg [2:0] s;
    wire y;
    integer k;
    eight_one dut(.i(i),.s(s),.y(y));
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,eight_one_tb);
        $monitor("i = %b  s = %b  y = %b",i,s,y);

        i = 8'b00001101;
        s = 3'b000;

        for (k =0 ;k<8 ;k++ ) begin
            s = k;
            #10;
        end

        $finish;

    end
    endmodule