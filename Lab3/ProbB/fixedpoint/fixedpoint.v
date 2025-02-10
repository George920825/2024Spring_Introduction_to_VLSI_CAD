module fixedpoint(
    input [7:0] in1, // integer[7:5], decimal[4:0]
    input [7:0] in2, // integer[7:5], decimal[4:0]
    output reg [7:0] out // integer[7:2], decimal[1:0]
);

reg [15:0] mul_out;

always @(*) begin
    mul_out = in1 * in2;
    if (mul_out[7] == 1'b1)
        out = mul_out[15:8] + 8'b1;
    else 
        out = mul_out[15:8];
end

endmodule