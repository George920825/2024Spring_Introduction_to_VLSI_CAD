module pattern_gen(clk, rst, en, sel, pattern, valid);

input clk, rst;
input en;
input [2:0] sel;
output reg pattern;
output reg valid;

parameter state_bit=3;

reg [state_bit-1:0] cur_state;
reg [state_bit-1:0] next_state;

localparam [state_bit-1:0] A=3'd0;
localparam [state_bit-1:0] B=3'd1;
localparam [state_bit-1:0] C=3'd2;
localparam [state_bit-1:0] D=3'd3;
localparam [state_bit-1:0] R=3'd4;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        cur_state <= A;
        pattern <= 1'b0;
        valid <= 1'b0;
    end
    else if (en) begin
        cur_state<=next_state;
        case (cur_state)
            A: begin
                case (sel)
                    3'b000: pattern <= 1'b0;
                    3'b001: pattern <= 1'b0;
                    3'b010: pattern <= 1'b0;
                    3'b011: pattern <= 1'b0;
                    3'b100: pattern <= 1'b1;
                    3'b101: pattern <= 1'b1;
                    3'b110: pattern <= 1'b1;
                    3'b111: pattern <= 1'b1;
                endcase
                valid <= 1'b1;
            end
            B: begin
                case (sel)
                    3'b000: pattern <= 1'b0;
                    3'b001: pattern <= 1'b0;
                    3'b010: pattern <= 1'b0;
                    3'b011: pattern <= 1'b0;
                    3'b100: pattern <= 1'b1;
                    3'b101: pattern <= 1'b1;
                    3'b110: pattern <= 1'b1;
                    3'b111: pattern <= 1'b1;
                endcase
                valid <= 1'b1;
            end
            C: begin
                case (sel)
                    3'b000: pattern <= 1'b0;
                    3'b001: pattern <= 1'b0;
                    3'b010: pattern <= 1'b1;
                    3'b011: pattern <= 1'b1;
                    3'b100: pattern <= 1'b0;
                    3'b101: pattern <= 1'b0;
                    3'b110: pattern <= 1'b1;
                    3'b111: pattern <= 1'b1;
                endcase
                valid <= 1'b1;
            end
            D: begin
                case (sel)
                    3'b000: pattern <= 1'b0;
                    3'b001: pattern <= 1'b1;
                    3'b010: pattern <= 1'b0;
                    3'b011: pattern <= 1'b1;
                    3'b100: pattern <= 1'b0;
                    3'b101: pattern <= 1'b1;
                    3'b110: pattern <= 1'b0;
                    3'b111: pattern <= 1'b1;
                endcase
                valid <= 1'b1;
            end
            R: begin
                case (sel)
                    3'b000: pattern <= 1'b0;
                    3'b001: pattern <= 1'b0;
                    3'b010: pattern <= 1'b0;
                    3'b011: pattern <= 1'b0;
                    3'b100: pattern <= 1'b0;
                    3'b101: pattern <= 1'b0;
                    3'b110: pattern <= 1'b0;
                    3'b111: pattern <= 1'b0;
                endcase
                valid <= 1'b0;
            end
        endcase
    end
end

always @(*) begin
    if (en) begin
        case (cur_state)
            A: begin
                next_state = B;
            end
            B: begin
                next_state = C;
            end
            C: begin
                next_state = D;
            end
            D: begin
                next_state = R;
            end
            R: begin
                next_state = A;
            end
            default: begin
                next_state = R;
            end
        endcase
    end
    else begin
        next_state = R;
    end
end

endmodule