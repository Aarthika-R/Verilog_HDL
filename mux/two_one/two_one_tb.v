module two_mux_tb;
reg a,b,s;
wire y;

two_mux uut(a,b,s,y);

initial begin 
    $dumpfile("wave.vcd");
    $dumpvars(0,two_mux_tb);
    $monitor("a = %b b = %b s = %b y = %b",a,b,s,y);

    a = 0; b = 0; s = 0; #10;
    a = 1; b = 1; s = 1; #10;

    $finish;
end
endmodule