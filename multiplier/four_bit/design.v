// File: multiplier.v
module multiplier 
)(
    input [3:0] A,      
    input [3:0] B,       
    output reg [7:0] P 
);

    always @(*) begin
        P = A * B; 
    end

endmodule
