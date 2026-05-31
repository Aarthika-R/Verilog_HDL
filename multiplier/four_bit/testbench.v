module testbench();
    reg [3:0] A, B;
    wire [7:0] P;

    multiplier uut (
        .A(A),
        .B(B),
        .P(P)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, testbench);
        $monitor("A=%b, B=%b, P=%b", A, B, P);
        A = 4'b0011; 
        B = 4'b0010; 
        #10; 
        $monitor("A=%b, B=%b, P=%b", A, B, P);
        A = 4'b0101; 
        B = 4'b0100; 
        #10; 
        $monitor("A=%b, B=%b, P=%b", A, B, P);
        A = 4'b1111; 
        B = 4'b1111; 
        #10; 

        $finish; 
    end
    endmodule