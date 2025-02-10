module HCU(
    input               clk,
    input               rst,
    input               mode,
    input               enable,
    input   [3:0]       gridX,
    input   [3:0]       gridY,
    output  reg         lbp_ren,
    output  reg [11:0]  lbp_addr,
    input       [7:0]   lbp_rdata,
    // if mode 0
    output  reg         hist_wen_train,
    output  reg [7:0]   hist_wdata_train,
    output  reg [20:0]  hist_addr_train,// 2^14 = 16384
    output  reg         hist_ren_train,
    input   [7:0]       hist_rdata_train,
    // if mode 1
    output  reg         hist_wen_predict,
    output  reg [7:0]   hist_wdata_predict,
    output  reg [13:0]  hist_addr_predict,
    output  reg         hist_ren_predict,
    input   [7:0]       hist_rdata_predict,

    output  reg         done
    );

    // put your design here
	parameter state_bit = 4;

    reg [state_bit-1:0] cur_state;
    reg [state_bit-1:0] next_state;

    localparam [state_bit-1:0] UNENABLE = 4'd0;
    localparam [state_bit-1:0] INITIAL_HIST = 4'd1;
    localparam [state_bit-1:0] INITIAL_HIST_ADDR = 4'd2;
    localparam [state_bit-1:0] INITIAL_HIST_END = 4'd3;
    localparam [state_bit-1:0] SEND_LBP_ADDR = 4'd4;
    localparam [state_bit-1:0] WAIT_LBP_DATA = 4'd5;
    localparam [state_bit-1:0] SEND_HIST_ADDR = 4'd6;
    localparam [state_bit-1:0] WAIT_HIST_DATA = 4'd7;
    localparam [state_bit-1:0] WRITE_HIST_DATA = 4'd8;
    localparam [state_bit-1:0] NEXT_ADDR = 4'd9;

    // reg [2:0] gridX_counter;// now X(column) value
    reg [11:0] lbp_addr_counter;// now grid start addr
    reg [20:0] hist_addr_counter;// save and count the start addr of a picture
    // reg loop_counter;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cur_state <= UNENABLE;
            lbp_ren <= 1'd0;
            lbp_addr <= 12'd0;

            hist_wen_train <= 1'd0;
            hist_wdata_train <= 8'd0;
            hist_addr_train <= 21'd0;
            hist_ren_train <= 1'd0;

            hist_wen_predict <= 1'd0;
            hist_wdata_predict <= 8'd0;
            hist_addr_predict <= 14'd0;
            hist_ren_predict <= 1'd0;

            lbp_addr_counter <= 12'd0;
            hist_addr_counter <= 21'd0;
            // hist_addr_counter2 <= 14'd0;
			done <= 1'd0;
        end
        else begin
            cur_state <= next_state;
            case (cur_state)
                UNENABLE: begin
                    lbp_ren <= 1'd0;
                    lbp_addr <= 12'd0;
                    done <= 1'd0;
                    // hist_addr_counter2 <= 14'd0;
                    if (mode) begin
                        hist_addr_counter <= 21'd0;
                        hist_addr_predict <= hist_addr_counter;
                    end
                    else begin
                        hist_addr_train <= hist_addr_counter;
                    end
                end
                INITIAL_HIST: begin
                    if (mode) begin
                        hist_wen_predict <= 1'd1;
                        hist_wdata_predict <= 8'd0;
                    end
                    else begin
                        hist_wen_train <= 1'd1;
                        hist_wdata_train <= 8'd0;
                    end
                end
                INITIAL_HIST_ADDR: begin
                    if (mode) begin
                        hist_addr_predict <= hist_addr_predict + 14'd1;
                    end
                    else begin
                        hist_addr_train <= hist_addr_train + 21'd1;
                    end
                end
                INITIAL_HIST_END: begin
                    if (mode) begin
                        hist_wen_predict <= 1'd0;
                    end
                    else begin
                        hist_wen_train <= 1'd0;
                    end
                end
                SEND_LBP_ADDR: begin
                    lbp_ren <= 1'd1;
                    // lbp_addr <= lbp_addr + 12'd1;
                end
                // WAIT_LBP_DATA: begin
                    // lbp_ren <= 1'd0;
                // end
                SEND_HIST_ADDR: begin
                    lbp_ren <= 1'd0;
                    // hist_ren_train <= 1'd1;
                    if (mode) begin
                        // hist_addr_predict <= {6'd0, lbp_rdata};// hist_addr_counter2 <= 14'd0;
                        hist_addr_predict <= hist_addr_counter[13:0] + {6'd0, lbp_rdata};// hist_addr_counter2 <= 14'd0;
                    end
                    else begin
                        hist_addr_train <= hist_addr_counter + {13'd0, lbp_rdata};// send hist addr of lbp data
                    end
                end
                WAIT_HIST_DATA: begin
                    if (mode) begin
                        hist_ren_predict <= 1'd1;
                    end
                    else begin
                        hist_ren_train <= 1'd1;
                    end
                end
                WRITE_HIST_DATA: begin
                    if (mode) begin
                        hist_ren_predict <= 1'd0;
                        hist_wen_predict <= 1'd1;
                        hist_wdata_predict <= hist_rdata_predict + 8'd1;
                    end
                    else begin
                        hist_ren_train <= 1'd0;
                        hist_wen_train <= 1'd1;
                        hist_wdata_train <= hist_rdata_train + 8'd1;
                    end
                end
                // hist_wen_train <= 1'd0;// remember to add!!!
                NEXT_ADDR: begin
                    if (mode) begin
                        hist_wen_predict <= 1'd0;// remember to add!!!
                    end
                    else begin
                        hist_wen_train <= 1'd0;// remember to add!!!
                    end
                    
                    if (lbp_addr == 12'd4095) begin// next pic
                        lbp_addr <= lbp_addr + 12'd1;
                        lbp_addr_counter <= lbp_addr + 12'd1;
                        hist_addr_counter <= hist_addr_counter + 21'd256;// hist_addr_counter2 <= 14'd0;
                        done <= 1'd1;
                    end
                    else if (lbp_addr[8:0] == 9'd511) begin// next grid row
                        lbp_addr <= lbp_addr + 12'd1;
                        lbp_addr_counter <= lbp_addr + 12'd1;
                        hist_addr_counter <= hist_addr_counter + 21'd256;// hist_addr_counter2 <= 14'd0;
                    end
                    else if (lbp_addr[8:0] == lbp_addr_counter[8:0] + 9'd455) begin// next grid
                        lbp_addr <= lbp_addr_counter + 12'd8;
                        lbp_addr_counter <= lbp_addr_counter + 12'd8;
                        hist_addr_counter <= hist_addr_counter + 21'd256;// hist_addr_counter2 <= 14'd0;
                    end
                    else if (lbp_addr[2:0] == lbp_addr_counter[2:0] + 3'd7) begin// next row
                        lbp_addr <= lbp_addr + 12'd57;
                    end
                    else begin// next addr
                        lbp_addr <= lbp_addr + 12'd1;
                    end
                end
                // FINISH_PIC: begin
                //     hist_wen_train <= 1'd0;// remember to add!!!
                //     done <= 1'd1;
                // end
                default: ;
            endcase
        end
    end

    always @(*) begin
        case (cur_state)
            UNENABLE: begin
                if (enable) 
                    next_state = INITIAL_HIST;
                else
                    next_state = UNENABLE;
            end
            INITIAL_HIST: begin
                if (mode) begin
                    if (hist_addr_predict == 14'd16383) begin
                        next_state = INITIAL_HIST_END;
                    end
                    else begin
                        next_state = INITIAL_HIST_ADDR;
                    end
                end
                else begin
                    if (hist_addr_train == hist_addr_counter + 21'd16383) begin
                        next_state = INITIAL_HIST_END;
                    end
                    else begin
                        next_state = INITIAL_HIST_ADDR;
                    end
                end
            end
            INITIAL_HIST_ADDR: begin
                next_state = INITIAL_HIST;
            end
            INITIAL_HIST_END: begin
                next_state = SEND_LBP_ADDR;
            end
            SEND_LBP_ADDR: begin
                // next_state = WAIT_LBP_DATA;
                next_state = SEND_HIST_ADDR;
            end
            // WAIT_LBP_DATA: begin
            //     next_state = SEND_HIST_ADDR;
            // end
            SEND_HIST_ADDR: begin
                next_state = WAIT_HIST_DATA;
            end
            WAIT_HIST_DATA: begin
                next_state = WRITE_HIST_DATA;
            end
            WRITE_HIST_DATA: begin
                next_state = NEXT_ADDR;
            end
            NEXT_ADDR: begin
                if (lbp_addr == 12'd4095) begin// next pic
                    next_state = UNENABLE;
                end
                else begin
                    next_state = SEND_LBP_ADDR;
                end
            end
            default: begin
                next_state = UNENABLE;
            end
        endcase
    end

endmodule
                // READ_AND_WRITE: begin
                //     case (counter)
                //         0: begin
                //             lbp_ren <= 1'd1;
                //             lbp_addr <= lbp_addr + 12'd1;
                //         end
                //         1: lbp_ren <= 1'd0;
                //         2: begin
                //             hist_ren_train <= 1'd1;
                //             hist_addr_train <= hist_addr_counter + {14'd0, lbp_data};// send hist addr of lbp data
                //         end
                //         3: hist_ren_train <= 1'd0;
                //         4: begin
                //             hist_wen_train <= 1'd1;
                //             hist_wdata_train <= hist_rdata_train + 8'd1;
                //         end
                //         5: hist_wen_train <= 1'd0;
                //         // default: 
                //     endcase
                // end