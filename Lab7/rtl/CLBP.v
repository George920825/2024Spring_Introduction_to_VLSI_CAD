module CLBP
#(
    parameter INT_WIDTH     = 9,
    parameter FRAC_WIDTH    = 16
)
(
    input                                       clk,
    input                                       rst,
    input                                       enable,
    output reg  [11:0]                          gray_addr,
    output reg                                  gray_OE,
    input       [7:0]                           gray_data,
    output reg  [11:0]                          lbp_addr,
    output reg                                  lbp_WEN,
    output reg  [7:0]                           lbp_data,
    output reg  [(INT_WIDTH+FRAC_WIDTH)-1:0]    theta, // in radian
    output reg                                  theta_valid,
    input       [(INT_WIDTH+FRAC_WIDTH)-1:0]    cos_data,
    input                                       cos_valid,
    input       [(INT_WIDTH+FRAC_WIDTH)-1:0]    sin_data,
    input                                       sin_valid,
    output reg                                  finish
    );  

    // fixed-point representation -> 9 -bit integer + 16-bit fraction -> total 25 bits
	
    parameter state_bit = 4;

    reg [state_bit-1:0] cur_state;
    reg [state_bit-1:0] next_state;

    localparam [state_bit-1:0] UNENABLE = 4'd0;
    localparam [state_bit-1:0] READY = 4'd1;
    localparam [state_bit-1:0] WAIT_AND_READ = 4'd2;
    localparam [state_bit-1:0] BILINEAR_INTERPOLATION = 4'd3;
    localparam [state_bit-1:0] WRITE = 4'd4;
    localparam [state_bit-1:0] FINISH = 4'd5;
    

    reg [11:0] addr;
    reg [7:0] center_value;
    reg [3:0] counter;
    reg [2:0] k;
    reg signed [(INT_WIDTH+FRAC_WIDTH)-1:0] rx;
    reg signed [(INT_WIDTH+FRAC_WIDTH)-1:0] ry;
    reg signed [(INT_WIDTH+FRAC_WIDTH)-1:0] x_1;
    reg signed [(INT_WIDTH+FRAC_WIDTH)-1:0] x_2;
    reg signed [(INT_WIDTH+FRAC_WIDTH)-1:0] y_1;
    reg signed [(INT_WIDTH+FRAC_WIDTH)-1:0] y_2;
    reg signed [(INT_WIDTH+FRAC_WIDTH)-1:0] tx;
    reg signed [(INT_WIDTH+FRAC_WIDTH)-1:0] ty;
    reg signed [((INT_WIDTH+FRAC_WIDTH)*2)-1:0] w; // [49:32] + [31:0]: 18 + 32
    reg signed [((INT_WIDTH+FRAC_WIDTH)*2+8)-1:0] neighbor; // [57:32] + [31:0]: 26 + 32

    // parameter [(INT_WIDTH+FRAC_WIDTH)-1:0] A_QUARTER_OF_PI = 25'd51471;
    parameter [(INT_WIDTH+FRAC_WIDTH)-1:0] PI = 25'd205887;
    parameter signed [(INT_WIDTH+FRAC_WIDTH)-1:0] ONE = 25'd65536;
    parameter signed [(INT_WIDTH+FRAC_WIDTH)-1:0] ZERO = 25'd0;

	always @(posedge clk or posedge rst) begin
        if (rst) begin
            cur_state <= UNENABLE;
            addr <= 12'd0;

            gray_addr <= 12'd0;
            gray_OE <= 1'd0;
            lbp_addr <= 12'd0;
            lbp_WEN <= 1'd0;
            lbp_data <= 8'd0;
			theta_valid<= 1'd0;
            finish <= 1'd0;
        end
        else begin
            cur_state <= next_state;
            case (cur_state)
                UNENABLE: begin
                    addr <= 12'd0;
                    gray_addr <= 12'd0;
                    gray_OE <= 1'd0;
                    lbp_addr <= 12'd0;
                    lbp_WEN <= 1'd0;
                    lbp_data <= 8'd0;
                    theta_valid<= 1'd0;
                    finish <= 1'd0;
                end
                READY: begin
                    center_value <= 8'd0; // no need
                    gray_addr <= addr;
                    gray_OE <= 1'd1;
                    theta <= 25'd0;
                    theta_valid <= 1'd0;
                    lbp_addr <= 12'd0;
                    lbp_WEN <= 1'd0;
                    lbp_data <= 8'd0;
                    counter <= 4'd0;
                    k <= 3'd0;
                end
                WAIT_AND_READ: begin
                    if (counter == 4'd1) begin// all input are saved
                        counter <= 4'd0; // reset the counter for next state to use
						center_value <= gray_data;
                    end
                    else
                        counter <= 4'd1; // add index and control state change
                end
                BILINEAR_INTERPOLATION: begin
                    if (counter == 4'd11)
                        counter <= 4'd0;
                    else
                        counter <= counter + 4'd1;
                    case (counter)
                        4'd0: begin
                            theta_valid <= 1'd1;
                            // theta <= (PI * k) >> 2;
                            theta <= ((PI << 1) * k) >>> 3;
                            neighbor <= 58'd0;
                        end
                        4'd2: begin
                             // accuracy
                            if (cos_data == 25'd65535) 
                                rx <= ONE;
                            else if (cos_data == -25'd65535) 
                                rx <= -ONE;
                            // else if (cos_data == 25'd1)
                            //     rx <= ZERO;
                            else 
                                rx <= cos_data;
                            if (sin_data == 25'd65535) 
                                ry <= ONE;
                            else if (sin_data == -25'd65535)
                                ry <= -ONE;
                            // else if (sin_data == 25'd1)
                            //     rx <= ZERO;
                            else 
                                ry <= sin_data;
                        end
                        4'd3: begin
                            rx <= rx * 3'd3; // *R
                            ry <= -(ry * 3'd3); // *-R
                        end
                        4'd4: begin
                             // floor and ceiling
                            x_1 <= {rx[24:16], 16'd0};
                            x_2 <= (rx[15:0]) ? {rx[24:16] + 9'd1, 16'd0} : rx;
                            y_1 <= {ry[24:16], 16'd0};
                            y_2 <= (ry[15:0]) ? {ry[24:16] + 9'd1, 16'd0} : ry;
                            // tx <= {9'd0, rx[15:0]};
                            // ty <= {9'd0, ry[15:0]};
                        end
                        4'd5: begin
                            if (x_1[24] == 1'd0 && y_1[24] == 1'd0) begin
                                gray_addr <= addr + {y_1[21:16], x_1[21:16]};
                            end
                            else if (x_1[24] == 1'd1 && y_1[24] == 1'd0) begin
                                gray_addr <= addr + {y_1[21:16], 6'd0} - {4'd0, (~x_1[23:16]+8'd1)};
                            end
                            else if (x_1[24] == 1'd0 && y_1[24] == 1'd1) begin
                                gray_addr <= addr - {(~y_1[23:16]+8'd1) << 6} + {6'd0, x_1[21:16]};
                            end
                            else begin
                                gray_addr <= addr - {(~y_1[23:16]+8'd1) << 6} - {4'd0, (~x_1[23:16]+8'd1)};
                            end
                            // gray_addr <= addr + {y_1[21:16], x_1[21:16]};
                            tx <= rx - x_1;
                            ty <= ry - y_1;
                        end
                        4'd6: begin
                            if (x_1[24] == 1'd0 && y_2[24] == 1'd0) begin
                                gray_addr <= addr + {y_2[21:16], x_1[21:16]};
                            end
                            else if (x_1[24] == 1'd1 && y_2[24] == 1'd0) begin
                                gray_addr <= addr + {y_2[21:16], 6'd0} - {4'd0, (~x_1[23:16]+8'd1)};
                            end
                            else if (x_1[24] == 1'd0 && y_2[24] == 1'd1) begin
                                gray_addr <= addr - {(~y_2[23:16]+8'd1) << 6} + {6'd0, x_1[21:16]};
                            end
                            else begin
                                gray_addr <= addr - {(~y_2[23:16]+8'd1) << 6} - {4'd0, (~x_1[23:16]+8'd1)};
                            end
                            // gray_addr <= addr + {y_2[21:16], x_1[21:16]};
                            w <= {25'd0, (ONE - tx)} * {25'd0, (ONE - ty)};
                        end
                        4'd7: begin
                            if (x_2[24] == 1'd0 && y_1[24] == 1'd0) begin
                                gray_addr <= addr + {y_1[21:16], x_2[21:16]};
                            end
                            else if (x_2[24] == 1'd1 && y_1[24] == 1'd0) begin
                                gray_addr <= addr + {y_1[21:16], 6'd0} - {4'd0, (~x_2[23:16]+8'd1)};
                            end
                            else if (x_2[24] == 1'd0 && y_1[24] == 1'd1) begin
                                gray_addr <= addr - {(~y_1[23:16]+8'd1) << 6} + {6'd0, x_2[21:16]};
                            end
                            else begin
                                gray_addr <= addr - {(~y_1[23:16]+8'd1) << 6} - {4'd0, (~x_2[23:16]+8'd1)};
                            end
                            // gray_addr <= addr + {y_1[21:16], x_2[21:16]};
                            // neighbor <= neighbor + $signed({1'd0, gray_data}) * w;
                            // neighbor <= neighbor + {50'd0, gray_data} * {8'd0, w};
                            neighbor <= neighbor + gray_data * w[40:16];
                            w <= {25'd0, tx} * {25'd0, (ONE - ty)};
                        end
                        4'd8: begin
                            if (x_2[24] == 1'd0 && y_2[24] == 1'd0) begin
                                gray_addr <= addr + {y_2[21:16], x_2[21:16]};
                            end
                            else if (x_2[24] == 1'd1 && y_2[24] == 1'd0) begin
                                gray_addr <= addr + {y_2[21:16], 6'd0} - {4'd0, (~x_2[23:16]+8'd1)};
                            end
                            else if (x_2[24] == 1'd0 && y_2[24] == 1'd1) begin
                                gray_addr <= addr - {(~y_2[23:16]+8'd1) << 6} + {6'd0, x_2[21:16]};
                            end
                            else begin
                                gray_addr <= addr - {(~y_2[23:16]+8'd1) << 6} - {4'd0, (~x_2[23:16]+8'd1)};
                            end
                            // gray_addr <= addr + {y_2[21:16], x_2[21:16]};
                            // neighbor <= neighbor + $signed({1'd0, gray_data}) * w;
                            // neighbor <= neighbor + {50'd0, gray_data} * {8'd0, w};
                            neighbor <= neighbor + gray_data * w[40:16];
                            w <= {25'd0, (ONE - tx)} * {25'd0, ty};
                        end
                        4'd9: begin
                            // neighbor <= neighbor + $signed({1'd0, gray_data}) * w;
                            // neighbor <= neighbor + {50'd0, gray_data} * {8'd0, w};
                            neighbor <= neighbor + gray_data * w[40:16];
                            w <= {25'd0, tx} * {25'd0, ty};
                        end
                        4'd10: begin
                            // neighbor <= neighbor + $signed({1'd0, gray_data}) * w;
                            // neighbor <= neighbor + {50'd0, gray_data} * {8'd0, w};
                            neighbor <= neighbor + gray_data * w[40:16]; 
                        end
                        4'd11: begin
                            // if (neighbor[31]) begin
                            //     if ((neighbor[39:32]+8'd1) >= center_value)
                            //         lbp_data[k] <= 1'd1;
                            // end
                            // else begin
                            //     if (neighbor[39:32] >= center_value)
                            //         lbp_data[k] <= 1'd1;
                            // end
                            if (neighbor[15]) begin
                                if ((neighbor[23:16]+8'd1) >= center_value)
                                    lbp_data[k] <= 1'd1;
                            end
                            else begin
                                if (neighbor[23:16] >= center_value)
                                    lbp_data[k] <= 1'd1;
                            end
                            if (k < 3'd7) begin
                                k <= k + 3'd1;
                            end
                            // theta <= theta + A_QUARTER_OF_PI;
						end
						default: begin
							
						end
                    endcase
                end
                WRITE: begin
                    if (k == 3'd0) begin
                        lbp_WEN <= 1'd1;
                        lbp_data <= 8'd0;
                        lbp_addr <= addr;
                    end
                    else begin
                        lbp_WEN <= 1'd1;
                        lbp_addr <= addr;
                    end
                    addr <= addr + 12'd1;
                end
                FINISH: begin
                    finish <= 1'd1;
                end
            endcase
        end
    end

    always @(*) begin
        case (cur_state)
            UNENABLE: begin
                if (enable) 
                    next_state = READY;
                else
                    next_state = UNENABLE;
            end
            READY: begin
                if (addr[11:6] == 6'd0  || addr[11:6] == 6'd1  || addr[11:6] == 6'd2 ||
                        addr[5:0] == 6'd0   || addr[5:0] == 6'd1   || addr[5:0] == 6'd2  || 
                        addr[5:0] == 6'd61  || addr[5:0] == 6'd62  || addr[5:0] == 6'd63 || 
                        addr[11:6] == 6'd61 || addr[11:6] == 6'd62 || addr[11:6] == 6'd63) begin
                    next_state = WRITE;
                end
                else begin
                    next_state = WAIT_AND_READ;
                end
            end
            WAIT_AND_READ: begin
                if (counter == 4'd1)
                    next_state = BILINEAR_INTERPOLATION;
                else
                    next_state = WAIT_AND_READ;
            end
            BILINEAR_INTERPOLATION: begin
                if (k == 3'd7 && counter == 4'd11)
                    next_state = WRITE;
                else
                    next_state = BILINEAR_INTERPOLATION;
            end
            WRITE: begin
                if (addr == 12'd4095) begin
                    next_state = FINISH;
                end 
                else begin
                    next_state = READY;
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