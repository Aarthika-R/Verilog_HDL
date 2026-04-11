module full_adder_tb();
    reg a_d,b_d,c_d,a_b,b_b,c_b,a_g,b_g,c_g;
    wire Cout_d,y_d,Cout_b,sum_b,Cout_g,sum_g;

    full_adder_dataflow uut_d(
        .a(a_d),
        .b(b_d),
        .c(c_d),
        .y(y_d),
        .Cout(Cout_d)
    
    );
    full_adder_behavioural uut_b(
        .a(a_b),
        .b(b_b),
        .c(c_b),
        .sum(sum_b),
        .carry(Cout_b)
    
    );
    full_adder_gatelevel uut_g(
        .a(a_g),
        .b(b_g),
        .c(c_g),
        .sum(sum_g),
        .carry(Cout_g)
    
    );
    initial begin

        $dumpfile("wave.vcd");   
        $dumpvars(0, full_adder_tb);
        $monitor("dataflow  Time=%0t | a=%b b=%b c=%b -> y=%b Cout=%b", $time, a_d, b_d, c_d, y_d, Cout_d);
        a_d=0; b_d=0; c_d=0; #10; 
        a_d=0; b_d=0; c_d=1; #10;   
        a_d=0; b_d=1; c_d=0; #10;   
        a_d=0; b_d=1; c_d=1; #10;    
        a_d=1; b_d=0; c_d=0; #10;  
        a_d=1; b_d=0; c_d=1; #10;   
        a_d=1; b_d=1; c_d=0; #10;   
        a_d=1; b_d=1; c_d=1; #10;   


        $monitor("behavioural  Time=%0t | a=%b b=%b c=%b -> sum=%b carry=%b", $time, a_b, b_b, c_b, sum_b, Cout_b);
        a_b=0; b_b=0; c_b=0; #10;
        a_b=0; b_b=0; c_b=1; #10;
        a_b=0; b_b=1; c_b=0; #10;
        a_b=0; b_b=1; c_b=1; #10;
        a_b=1; b_b=0; c_b=0; #10;
        a_b=1; b_b=0; c_b=1; #10;
        a_b=1; b_b=1; c_b=0; #10;
        a_b=1; b_b=1; c_b=1; #10;
        
        $monitor("gatelevel  Time=%0t | a=%b b=%b c=%b -> sum=%b carry=%b", $time, a_g, b_g, c_g, sum_g, Cout_g);
        a_g=0; b_g=0; c_g=0; #10;
        a_g=0; b_g=0; c_g=1; #10;
        a_g=0; b_g=1; c_g=0; #10;
        a_g=0; b_g=1; c_g=1; #10;
        a_g=1; b_g=0; c_g=0; #10;
        a_g=1; b_g=0; c_g=1; #10;
        a_g=1; b_g=1; c_g=0; #10;
        a_g=1; b_g=1; c_g=1; #10;
        

        $finish;
    end
endmodule
