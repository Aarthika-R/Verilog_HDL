module testbench();
    reg [15:0] a,b;
    reg [2:0] ctl;
    wire [15:0] out;
    wire zero,negative,carry,overflow;

    design_alu dut(.a(a), .b(b), .ctl(ctl), .out(out), .zero(zero), .carry(carry), .overflow(overflow), .negative(negative));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,testbench);

        $monitor("T=%0t | CTRL=%b | A=%h B=%h | RES=%h | Z=%b N=%b C=%b V=%b", $time, ctl, a, b, out, zero, negative, carry, overflow);

        a = 16'd10;   b = 16'd5;    ctl = 4'b0000; #10; // ADD (expect 000f)
        a = 16'd20;   b = 16'd8;    ctl = 4'b0001; #10; // SUB (expect 000c)
        a = 16'h00FF; b = 16'h0F0F; ctl = 4'b0010; #10; // AND (expect 000f)
        a = 16'h00F0; b = 16'h000F; ctl = 4'b0011; #10; // OR  (expect 00ff)
        a = 16'hAAAA; b = 16'h5555; ctl = 4'b0100; #10; // XOR (expect ffff)
        a = 16'h00FF; b = 16'h0000; ctl = 4'b0101; #10; // NOT (expect ff00)
        a = 16'h0003; b = 16'd2;    ctl = 4'b0110; #10; // SHL (expect 000c)
        a = 16'h0010; b = 16'd2;    ctl = 4'b0111; #10; // SHR (expect 0004)
        a = 16'd10;   b = 16'd10;   ctl = 4'b0001; #10; // ZERO flag (expect Z=1)
        a = 16'hFFFF; b = 16'h0001; ctl = 4'b0000; #10; // CARRY flag (expect C=1)

        $finish;
        
    end
endmodule