module full_adder_tb();
    reg a,b,c;
    wire Cout,y;

    full_adder uut(
        .a(a),
        .b(b),
        .c(c),
        .y(y),
        .Cout(Cout)
    
    );
    initial begin

        $dumpfile("wave.vcd");   
        $dumpvars(0, full_adder_tb);
        $monitor("Time=%0t | a=%b b=%b c=%b -> y=%b Cout=%b", $time, a, b, c, y, Cout);
        a=0; b=0; c=0; #10; 
        a=0; b=0; c=1; #10;   
        a=0; b=1; c=0; #10;   
        a=0; b=1; c=1; #10;    
        a=1; b=0; c=0; #10;  
        a=1; b=0; c=1; #10;   
        a=1; b=1; c=0; #10;   
        a=1; b=1; c=1; #10;   

        $finish;
    end
endmodule
