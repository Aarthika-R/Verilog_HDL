module design_alu (
    input [15:0] a, input [15:0] b,
    input [2:0] ctl,
    output reg [15:0] out,
    output reg zero, carry, overflow, negative
);
    parameter ADD = 3'b000;
    parameter SUB = 3'b001;
    parameter AND = 3'b010;
    parameter OR = 3'b011;
    parameter XOR = 3'b100;
    parameter NOT = 3'b101;
    parameter SHL = 3'b110;
    parameter SHR = 3'b111;
    reg [16:0] out_temp;

    always @(*) begin
        zero = 0;
        overflow = 0;
        carry = 0;
        out_temp = 0;
        case (ctl)
            ADD:begin
                out_temp = a+b;
                out = out_temp[15:0];
                carry = out_temp[16];
                overflow = (~(a[15] ^ b[15]) &(a[15]^out[15]));
            end
            SUB:begin
                out_temp = a-b;
                out = out_temp[15:0];
                carry = out_temp[16];
                overflow = ((a[15] ^ b[15]) &(a[15]^out[15]));
            end
            AND:begin
                out=a&b;
            end
            OR:begin
                out=a|b;
            end
            XOR:begin
                out = a^b;
            end
            NOT:begin
                out=~a;
            end
            SHL:begin
                out = a<<b[3:0];
            end
            SHR:begin
                out = a>>b[3:0];
            end
            default: begin
                out = 0;
            end
        endcase
        zero = (out == 0);
        negative = out[15];
    end
endmodule