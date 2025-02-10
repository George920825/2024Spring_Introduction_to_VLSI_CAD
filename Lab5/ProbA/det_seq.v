module det_seq(clk, rst, d, q, num);

input clk, rst;
input d;
output reg q;
output reg [2:0] num;
	
parameter state_bit=3;

reg [state_bit-1:0] cur_state;
reg [state_bit-1:0] next_state;

localparam [state_bit-1:0] A=3'd0;
localparam [state_bit-1:0] B=3'd1;
localparam [state_bit-1:0] C=3'd2;
localparam [state_bit-1:0] D=3'd3;
localparam [state_bit-1:0] E=3'd4;
localparam [state_bit-1:0] F=3'd5;
localparam [state_bit-1:0] G=3'd6;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        num <= 3'b0;
        cur_state <= A;
    end
    else begin
        cur_state <= next_state;
        case (cur_state)
            A: begin
                num <= num;
            end
            B: begin
                num <= num;
            end
            C: begin
                num <= num;
            end
            D: begin
                num <= num;
            end
            E: begin
                num <= num;
            end
            F: begin
                num <= num;
            end
            G: begin
                num <= num + 3'b1;
            end
        endcase
    end
end

always @(*) begin
    case (cur_state)
        A: begin
            q = 1'b0;
            if (d) 
                next_state = B;
            else
                next_state = A;
        end
        B: begin
            q = 1'b0;
            if (d) 
                next_state = B;
            else
                next_state = C;
        end
        C: begin
            q = 1'b0;
            if (d) 
                next_state = D;
            else
                next_state = A;
        end
        D: begin
            q = 1'b0;
            if (d) 
                next_state = B;
            else
                next_state = E;
        end
        E: begin
            q = 1'b0;
            if (d) 
                next_state = F;
            else
                next_state = A;
        end
        F: begin
            q = 1'b0;
            if (d) 
                next_state = G;
            else
                next_state = E;
        end
        G: begin
            q = 1'b1;
            if (d) 
                next_state = B;
            else
                next_state = C;
        end
        default: begin
            q = 1'b0;
            next_state = A;
        end
    endcase
end

endmodule