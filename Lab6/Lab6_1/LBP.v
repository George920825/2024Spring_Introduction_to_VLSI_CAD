module LBP
(
	input 	 			clk,
	input 	 			rst,
	input 				enable,
	output 	reg	[11:0] 	gray_addr,
	output 	reg 		gray_OE,
	input 	  	[7:0]  	gray_data,
	output 	reg	[11:0]	lbp_addr,
    output 	reg         lbp_WEN,
    output 	reg [7:0] 	lbp_data,
	output	reg			finish
);

parameter state_bit = 4;

reg [state_bit-1:0] cur_state;
reg [state_bit-1:0] next_state;

parameter [state_bit-1:0] UNENABLE = 4'd0;
parameter [state_bit-1:0] READY = 4'd1;
parameter [state_bit-1:0] WAIT_TO_READ = 4'd2;
parameter [state_bit-1:0] CENTER = 4'd3;
parameter [state_bit-1:0] TOP_LEFT = 4'd4;
parameter [state_bit-1:0] TOP_MIDDLE = 4'd5;
parameter [state_bit-1:0] TOP_RIGHT = 4'd6;
parameter [state_bit-1:0] MIDDLE_LEFT = 4'd7;
parameter [state_bit-1:0] MIDDLE_RIGHT = 4'd8;
parameter [state_bit-1:0] BOTTOM_LEFT = 4'd9;
parameter [state_bit-1:0] BOTTOM_MIDDLE = 4'd10;
parameter [state_bit-1:0] BOTTOM_RIGHT = 4'd11;
parameter [state_bit-1:0] FINISH = 4'd12;
// parameter [state_bit-1:0] WRITE = 13;

reg [11:0] addr;
reg [7:0] center_value;

always @(posedge clk or posedge rst) begin
	if (rst) begin
		cur_state <= UNENABLE;
		addr <= 12'd0;
		center_value <= 8'd0;

		gray_addr <= 12'd0;
		gray_OE <= 1'd0;
		lbp_addr <= 12'd0;
		lbp_WEN <= 1'd0;
		lbp_data <= 8'd0;
		finish <= 1'd0;
	end
	else begin
		cur_state <= next_state;
		case (cur_state)
			READY: begin
				addr <= 12'd0;
				gray_OE <= 1'd1;
				gray_addr <= 12'd0;
			end
			WAIT_TO_READ: begin
				if (addr[11:6] == 6'd0  || addr[5:0] == 6'd0 || addr[5:0] == 6'd63 || addr[11:6] == 6'd63) begin
					lbp_addr <= addr;
					lbp_WEN <= 1'd1;
					lbp_data <= 8'd0;
					addr <= addr + 12'd1;
					gray_addr <= addr + 12'd1;
				end
				else begin
					gray_addr <= gray_addr - 12'd65;
					lbp_WEN <= 1'd0;
					lbp_data <= 8'd0;
				end
			end
			CENTER: begin
				gray_addr <= gray_addr + 12'd1;
				center_value <= gray_data;
			end
			TOP_LEFT: begin
				gray_addr <= gray_addr + 12'd1;
				if (gray_data >= center_value) begin
					lbp_data[0] <= 1'b1;
				end
			end
			TOP_MIDDLE: begin
				gray_addr <= gray_addr + 12'd62;
				if (gray_data >= center_value) begin
					lbp_data[1] <= 1'b1;
				end
			end
			TOP_RIGHT: begin
				gray_addr <= gray_addr + 12'd2;
				if (gray_data >= center_value) begin
					lbp_data[2] <= 1'b1;
				end
			end
			MIDDLE_LEFT: begin
				gray_addr <= gray_addr + 12'd62;
				if (gray_data >= center_value) begin
					lbp_data[3] <= 1'b1;
				end
			end
			MIDDLE_RIGHT: begin
				gray_addr <= gray_addr + 12'd1;
				if (gray_data >= center_value) begin
					lbp_data[4] <= 1'b1;
				end
			end
			BOTTOM_LEFT: begin
				gray_addr <= gray_addr + 12'd1;
				if (gray_data >= center_value) begin
					lbp_data[5] <= 1'b1;
				end
			end
			BOTTOM_MIDDLE: begin
				if (gray_data >= center_value) begin
					lbp_data[6] <= 1'b1;
				end
			end
			BOTTOM_RIGHT: begin
				if (gray_data >= center_value) begin
					lbp_data[7] <= 1'b1;
				end
				if (addr < 12'd4031) begin
					lbp_WEN <= 1'd1;
					lbp_addr <= addr;
				end
				addr <= addr + 12'd1;
				gray_addr <= addr + 12'd1;
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
			if (enable) begin
				next_state = READY;
			end 
			else begin
				next_state = UNENABLE;
			end
		end
		READY: begin
			next_state = WAIT_TO_READ;
		end
		WAIT_TO_READ: begin
			if (addr == 12'd4095) begin
				next_state = FINISH;
			end 
			else if (addr[11:6] == 6'd0  || addr[5:0] == 6'd0 || addr[5:0] == 6'd63 || addr[11:6] == 6'd63) begin
				next_state = WAIT_TO_READ;
			end
			else begin
				next_state = CENTER;
			end
		end
		CENTER: begin
			next_state = TOP_LEFT;
		end
		TOP_LEFT: begin
			next_state = TOP_MIDDLE;
		end
		TOP_MIDDLE: begin
			next_state = TOP_RIGHT;
		end
		TOP_RIGHT: begin
			next_state = MIDDLE_LEFT;
		end
		MIDDLE_LEFT: begin
			next_state = MIDDLE_RIGHT;
		end
		MIDDLE_RIGHT: begin
			next_state = BOTTOM_LEFT;
		end
		BOTTOM_LEFT: begin
			next_state = BOTTOM_MIDDLE;
		end
		BOTTOM_MIDDLE: begin
			next_state = BOTTOM_RIGHT;
		end
		BOTTOM_RIGHT: begin
			next_state = WAIT_TO_READ;
		end
		FINISH: begin
			next_state = FINISH;
		end
		default: begin
			next_state = UNENABLE;
		end
	endcase
end
endmodule