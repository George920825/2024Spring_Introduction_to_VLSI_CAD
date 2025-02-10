module Comparator(
    input                   clk,
    input                   rst,
    input                   enable,
    input   [7:0]           histcount,
    input                   dcu_valid,
    input   [17:0]          distance,
    input   [4:0]           id,

    output  reg             id_ren,
    output  reg [7:0]       id_counter,// address of id ram
    output  reg             dcu_enable,
    output  reg [4:0]       label,
    output  reg [17:0]      minDistance,
    output  reg [20:0]      hist_addr_offset,
    output  reg             done
);
	// put your design here

    parameter state_bit = 3;

    reg [state_bit-1:0] cur_state;
    reg [state_bit-1:0] next_state;

    localparam [state_bit-1:0] UNENABLE = 3'd0;
    localparam [state_bit-1:0] DCU_ENABLE = 3'd1;
    localparam [state_bit-1:0] DCU_PROC = 3'd2;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cur_state <= UNENABLE;
            id_ren <= 1'd0;
            id_counter <= 8'd0;
//            dcu_enable <= 1'd0;
            label <= 5'd0;
            minDistance <= 18'd0;
            hist_addr_offset <= 21'd0;
            done <= 1'd0;
        end
        else begin
            cur_state <= next_state;
            case (cur_state)
                UNENABLE: begin
                    id_ren <= 1'd0;
                    id_counter <= 8'd0;
                    // dcu_enable <= 1'd0;
//                    label <= 5'd0;
                    minDistance <= 18'd262143;// the largest number prepare for the min comparision
                    hist_addr_offset <= 21'd0;
                    done <= 1'd0;
                end
                DCU_ENABLE: begin
                    hist_addr_offset <= {id_counter[6:0], 14'd0};// how about id_counter[7]???
                    id_ren <= 1'd1;
                end
                DCU_PROC: begin
                    if (dcu_valid) begin
                        if (distance < minDistance) begin
                            minDistance <= distance;// update minDistance
                            label <= id;
                        end
                        if (id_counter + 8'd1 == histcount) begin
                            done <= 1'd1;
                        end
                        id_ren <= 1'd0;
                        id_counter <= id_counter + 8'd1;
                    end
                end
                default: ;
            endcase
        end
    end

    always @(*) begin
        case (cur_state)
            UNENABLE: begin
                if (enable) begin
                    next_state = DCU_ENABLE;
                end
                else begin
                    next_state = UNENABLE;
                end
            end
            DCU_ENABLE: begin
                next_state = DCU_PROC;
            end
            DCU_PROC: begin
                if (dcu_valid) begin
                    if (id_counter + 8'd1 == histcount) begin
                        next_state = UNENABLE;
                    end
                    else begin
                        next_state = DCU_ENABLE;
                    end
                end
                else begin
                    next_state = DCU_PROC;
                end
            end
            default: next_state = UNENABLE;
        endcase
    end

    always @(*) begin
        case (cur_state)
            DCU_ENABLE: dcu_enable = 1'd1;
            default: dcu_enable = 1'd0;
        endcase
    end
endmodule