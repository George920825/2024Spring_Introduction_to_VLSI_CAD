module branch_pred(clk, rst, taken,p_taken);

input       clk, rst;
input       taken;
output      p_taken;
reg         p_taken;

parameter state_bit=2;

reg [state_bit-1:0] cur_state;
reg [state_bit-1:0] next_state;

localparam [state_bit-1:0] A=2'd0;
localparam [state_bit-1:0] B=2'd1;
localparam [state_bit-1:0] C=2'd2;
localparam [state_bit-1:0] D=2'd3;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        cur_state <= A;
    end
    else begin
        cur_state <= next_state;
    end
end

always @(*) begin
    case (cur_state)
        A: begin
            if (taken) 
                next_state = A;
            else
                next_state = B;
        end
        B: begin
            if (taken) 
                next_state = A;
            else
                next_state = D;
        end
        C: begin
            if (taken) 
                next_state = A;
            else
                next_state = D;
        end
        D: begin
            if (taken) 
                next_state = C;
            else
                next_state = D;
        end
//        default: begin
//            next_state = A;
//        end
    endcase
end

always @(*) begin
    case (cur_state)
        A: begin
            p_taken = 1'b1;
        end
        B: begin
            p_taken = 1'b1;
        end
        C: begin
            p_taken = 1'b0;
        end
        D: begin
            p_taken = 1'b0;
        end
//        default: begin
//            p_taken = 1'b1;
//        end
    endcase
end

endmodule