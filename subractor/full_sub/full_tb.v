module full_tb;
    reg a_b,b_b,c_b,a_d,b_d,c_d,a_g,b_g,c_g;
    wire diff_b,bor_b,diff_d,bor_d,diff_g,bor_g;

    full_behavioural dut_b(.a(a_b),.b(b_b),.c(c_b),.diff(diff_b),.bor(bor_b));
    full_dataflow dut_d(.a(a_d),.b(b_d),.c(c_d),.diff(diff_d),.bor(bor_d));
    full_gatelevel dut_g(.a(a_g),.b(b_g),.c(c_g),.diff(diff_g),.bor(bor_g));

    initial begin
        $dumpfile("full_output.vcd");
        $dumpvars(0,full_tb);
        $monitor("behavioural: a=%b  b=%b  c=%b  diff=%b   bor=%b", a_b,b_b,c_b,diff_b,bor_b);
        a_b=0; b_b=0; c_b=0; #10; 
        a_b=0; b_b=0; c_b=1; #10;   
        a_b=0; b_b=1; c_b=0; #10;   
        a_b=0; b_b=1; c_b=1; #10;    
        a_b=1; b_b=0; c_b=0; #10;  
        a_b=1; b_b=0; c_b=1; #10;   
        a_d=1; b_d=1; c_d=0; #10;   
        a_d=1; b_d=1; c_d=1; #10; 

        $monitor("dataflow: a=%b  b=%b  c=%b  diff=%b   bor=%b", a_d,b_d,c_d,diff_d,bor_d);
        a_d=0; b_d=0; c_d=0; #10;
        a_d=0; b_d=0; c_d=1; #10;
        a_d=0; b_d=1; c_d=0; #10;
        a_d=0; b_d=1; c_d=1; #10;
        a_d=1; b_d=0; c_d=0; #10;
        a_d=1; b_d=0; c_d=1; #10;
        a_d=1; b_d=1; c_d=0; #10;
        a_d=1; b_d=1; c_d=1; #10;
        $monitor("gatelevel: a=%b  b=%b  c=%b  diff=%b   bor=%b", a_g,b_g,c_g,diff_g,bor_g);
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