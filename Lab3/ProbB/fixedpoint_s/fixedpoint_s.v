module fixedpoint_s(
    input  [7:0] in1, // signed integer[7:4], decimal[3:0]
    input  [7:0] in2, // signed integer[7:4], decimal[3:0]
    output reg  [7:0] out // 8 bit signed integer[7:0]
);

reg [15:0] mul_out;

// reg [8:0] in1_s;
// reg [8:0] in2_s;
// reg [15:0] mul_out_us;

always @(*) begin

    // case ({in1[7], in2[7]})
    //     2'b00: begin
    //         in1_s = {1'b0, in1};
    //         in2_s = {1'b0, in2};
    //     end
    //     2'b01: begin
    //         in1_s = {1'b0, in1};
    //         in2_s = {1'b1, in2};
    //     end
    //     2'b10: begin
    //         in1_s = {1'b1, in1};
    //         in2_s = {1'b0, in2};
    //     end
    //     2'b11: begin
    //         in1_s = {1'b1, in1};
    //         in2_s = {1'b1, in2};
    //     end
    //     default: 
    //         out = 8'bx;
    // endcase

    // mul_out = $signed(in1_s) * $signed(in2_s);
   
    // if (mul_out[15] == 1'b1) begin
    //     mul_out_us = ~mul_out + 16'b1;
    //     if (mul_out_us[7] == 1'b1) 
    //         out = ~(mul_out_us[15:8] + 8'b1) + 8'b1;
    //     else 
    //         out = mul_out[15:8];
    // end else begin
    //     if (mul_out[7] == 1'b1)
    //         out = mul_out[15:8] + 8'b1;
    //     else 
    //         out = mul_out[15:8];
    // end
    

    case ({in1[7], in2[7]})
        2'b00: begin
            mul_out = {8'h00, in1} * {8'h00, in2};
            if (mul_out[7] == 1'b1)
                out = mul_out[15:8] + 8'b1;
            else 
                out = mul_out[15:8];
        end
        2'b01: begin
            mul_out = {8'h00, in1} * ({8'h00, ~in2} + 16'b1);
            if (mul_out[7] == 1'b1)
                out = ~(mul_out[15:8] + 8'b1) + 8'b1;
            else 
                out = ~mul_out[15:8] + 8'b1;
        end
        2'b10: begin
            mul_out = ({8'h00, ~in1} + 16'b1) * {8'h00, in2};
            if (mul_out[7] == 1'b1)
                out = ~(mul_out[15:8] + 8'b1) + 8'b1;
            else 
                out = ~mul_out[15:8] + 8'b1;
        end
        2'b11: begin
            // mul_out = {8'h00, (~in1 + 1)} * {8'h00, (~in2 + 1)};
            mul_out = ({8'h00, ~in1} + 16'b1) * ({8'h00, ~in2} + 16'b1);
            if (mul_out[7] == 1'b1)
                out = mul_out[15:8] + 8'b1;
            else 
                out = mul_out[15:8];
        end
//        default: begin
//			mul_out = 16'b0;
//            out = 8'b0;
//		end
    endcase
end

endmodule