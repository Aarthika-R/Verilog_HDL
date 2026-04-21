 
module four_one_tb;

    reg  a, b, c, d;
    reg  [1:0] sel;
    wire y;

     four_one dut (
        .a(a), .b(b), .c(c), .d(d),
        .sel(sel), .y(y)
        
    );

    initial begin

        $dumpfile("wave.vcd");
        $dumpvars(0, four_one_tb);
        $monitor("Time=%0t | sel=%b | a=%b b=%b c=%b d=%b y=%b",$time, sel, a, b, c, d, y);
         
         a = 0; b = 1; c = 0; d = 1;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

         a = 1; b = 0; c = 1; d = 0;

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;
    end

endmodule

