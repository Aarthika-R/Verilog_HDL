module half_adder_tb;
    reg a_g,a_d,a_b,b_g,b_b,b_d;
    wire sum_g,sum_d,sum_b,carry_g,carry_d,carry_b;

    half_adder_by_gatelevel dut1(.a(a_g),.b(b_g),.sum(sum_g),.carry(carry_g));
    half_adder_by_dataflow dut2(.a(a_d),.b(b_d),.sum(sum_d),.carry(carry_d));
    half_adder_by_behavioural dut3(.a(a_b),.b(b_b),.sum(sum_b),.carry(carry_b));

    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0,half_adder_tb);
        
        $monitor(" half_adder_by_gatelevel: a=%b  b=%b  sum=%b  carry=%b",a_g,b_g,sum_g,carry_g);
        a_g = 0; b_g = 0; #10;
        a_g = 0; b_g = 1; #10;
        a_g = 1; b_g = 0; #10;
        a_g = 1; b_g = 1; #10;

        $monitor(" half_adder_by_dataflow: a=%b  b=%b  sum=%b  carry=%b",a_d,b_d,sum_d,carry_d);
        a_d = 0; b_d = 0; #10;
        a_d = 0; b_d = 1; #10;
        a_d = 1; b_d = 0; #10;
        a_d = 1; b_d = 1; #10;

        $monitor(" half_adder_by_behavioural: a=%b  b=%b  sum=%b  carry=%b",a_b,b_b,sum_b,carry_b);
        a_b = 0; b_b = 0; #10;
        a_b = 0; b_b = 1; #10;
        a_b = 1; b_b = 0; #10;
        a_b = 1; b_b = 1; #10;

        $finish;

    end

endmodule
