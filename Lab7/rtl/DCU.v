module DCU(
    input               clk,
    input               rst,
    input               enable,
    input   [20:0]      hist_addr_offset,

    output  reg [20:0]  hist_addr_train,
    output  reg         hist_ren_train,
    input   [7:0]       hist_rdata_train,// 8 bits

    output  reg [13:0]  hist_addr_predict,
    output  reg         hist_ren_predict,
    input   [7:0]       hist_rdata_predict,// 8 bits

    output  reg [17:0]  distance,// 18 bits
    output  reg         valid
);
    // put your design here
    parameter state_bit = 3;

    reg [state_bit-1:0] cur_state;
    reg [state_bit-1:0] next_state;

    localparam [state_bit-1:0] UNENABLE = 3'd0;
    localparam [state_bit-1:0] INITIAL_HIST_ADDR = 3'd1;
    localparam [state_bit-1:0] WAIT_HIST_DATA = 3'd2;
    localparam [state_bit-1:0] CAL_DISTANCE = 3'd3;
    localparam [state_bit-1:0] FINISH = 3'd4;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cur_state <= UNENABLE;
            hist_addr_train <= 21'd0;
            hist_ren_train <= 1'd0;

            hist_addr_predict <= 14'd0;
            hist_ren_predict <= 1'd0;
            distance <= 18'd0;
            valid <= 1'd0;
        end
        else begin
            cur_state <= next_state;
            case (cur_state)
                UNENABLE: begin
                    hist_addr_train <= 21'd0;// maybe don't need
                    hist_ren_train <= 1'd0;

                    hist_addr_predict <= 14'd0;
                    hist_ren_predict <= 1'd0;
                    distance <= 18'd0;
                    valid <= 1'd0;
                end
                INITIAL_HIST_ADDR: begin// SEND_HIST_ADDR
                    hist_addr_train <= hist_addr_offset;
                end
                WAIT_HIST_DATA: begin
                    hist_ren_train <= 1'd1;
                    hist_ren_predict <= 1'd1;
                end
                CAL_DISTANCE: begin
                    // also calculate new hist addr
                    hist_addr_train <= hist_addr_train + 21'd1;
                    hist_ren_train <= 1'd0;
                    hist_addr_predict <= hist_addr_predict + 14'd1;
                    hist_ren_predict <= 1'd0;

                    // distance <= distance + {2'd0, (hist_rdata_predict - hist_rdata_train) ** 2'd2};// maybe can not use
                    distance <= distance + ((hist_rdata_predict - hist_rdata_train) * (hist_rdata_predict - hist_rdata_train));
                end
                FINISH: begin
                    valid <= 1'd1;
                end
                default: ;
            endcase
        end
    end

    always @(*) begin
        case (cur_state)
            UNENABLE: begin
                if (enable) begin
                    next_state = INITIAL_HIST_ADDR;
                end
                else begin
                    next_state = UNENABLE;
                end
            end
            INITIAL_HIST_ADDR: begin
                next_state = WAIT_HIST_DATA;
            end
            WAIT_HIST_DATA: begin// next addr
                next_state = CAL_DISTANCE;
            end
            CAL_DISTANCE: begin
                if (hist_addr_predict == 14'd16383) begin
                    next_state = FINISH;
                end
                else begin
                    next_state = WAIT_HIST_DATA;
                end
            end
            FINISH: begin
                next_state = UNENABLE;
            end
            default: begin
                next_state = UNENABLE;
            end
        endcase
    end

endmodule   