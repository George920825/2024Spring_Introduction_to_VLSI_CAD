`include "../rtl/CLBP.v"
`include "../rtl/HCU.v"
`include "../rtl/DCU.v"
`include "../rtl/Comparator.v"
`include "../rtl/Controller.v"

module top(
    input           clk,
    input           rst,
    input           enable,
    input           mode,
    input           valid, 
    input   [4:0]   id,
    input   [3:0]   gridX,
    input   [3:0]   gridY,

    // CLBP I/O & LBP RAM
	output 	[11:0]	gray_addr,
	output			gray_ren,
	input	[7:0]	gray_rdata,
    output  [11:0]  lbp_addr,
    output          lbp_wen,
	output			lbp_ren,
    input   [7:0]   lbp_rdata,
	output	[7:0] 	lbp_wdata,
	output	[24:0]	theta,
	output			theta_valid,
	input	[24:0]	cos_data,
	input			cos_valid,
	input	[24:0]	sin_data,
	input			sin_valid,
	output			lbp_finish,
	
    // ID RAM I/O
    output  [7:0]   id_addr,
    output  [4:0]   id_wdata,
    output          id_wen,
    output          id_ren,
    input   [4:0]   id_rdata,

    // HIST TRAIN RAM I/O
    output  [20:0]  hist_addr_train,
    output  [7:0]   hist_wdata_train,
    output          hist_wen_train,
    output          hist_ren_train,
    input   [7:0]   hist_rdata_train,

    // HIST PREDICT RAM I/O
    output  [13:0]  hist_addr_predict,
    output  [7:0]   hist_wdata_predict,
    output          hist_wen_predict,
    output          hist_ren_predict,
    input   [7:0]   hist_rdata_predict,  

    output          hcu_finish,
    output          done,
    output  [4:0]   label,
    output  [17:0]  minDistance
);

    // put your design here

    wire clbp_enable;
    wire [11:0] clbp_lbp_addr;
    wire clbp_lbp_wen;
    wire [7:0] clbp_lbp_wdata;
    wire hcu_enable;
    wire hcu_lbp_ren;
    wire [11:0] hcu_lbp_addr;
    wire [20:0] hcu_hist_addr_train;
    wire hcu_hist_ren_train;
    wire [13:0] hcu_hist_addr_predict;
    wire hcu_hist_ren_predict;
    wire [3:0] gridX_o;
    wire [3:0] gridY_o;

    wire dcu_enable;
    wire [20:0] dcu_hist_addr_train;
    wire dcu_hist_ren_train;
    wire [13:0] dcu_hist_addr_predict;
    wire dcu_hist_ren_predict;

    wire comparator_finish;
    wire comparator_enable;
    wire ram_comp;

    wire [7:0] controller_id_addr;
    wire [7:0] comparator_id_addr;

    wire [20:0] hist_addr_offset;

    wire [17:0] distance;
    wire dcu_valid;
    
    CLBP M1(.clk(clk), .rst(rst), .enable(clbp_enable),// clbp_enable
            .gray_addr(gray_addr), .gray_OE(gray_ren), .gray_data(gray_rdata),
            .lbp_addr(clbp_lbp_addr), .lbp_WEN(clbp_lbp_wen), .lbp_data(clbp_lbp_wdata),// clbp_lbp_addr
            .theta(theta), .theta_valid(theta_valid),
            .cos_data(cos_data), .cos_valid(cos_valid), .sin_data(sin_data), .sin_valid(sin_valid),
            .finish(lbp_finish));

    HCU M2(.clk(clk), .rst(rst), .mode(mode), .enable(hcu_enable), .gridX(gridX_o), .gridY(gridY_o),// hcu_enable
           .lbp_ren(hcu_lbp_ren), .lbp_addr(hcu_lbp_addr), .lbp_rdata(lbp_rdata),// hcu_lbp_addr
           .hist_wen_train(hist_wen_train), .hist_wdata_train(hist_wdata_train), .hist_addr_train(hcu_hist_addr_train), .hist_ren_train(hcu_hist_ren_train), .hist_rdata_train(hist_rdata_train),
           // hcu_hist_addr_train, hcu_hist_ren_train
           .hist_wen_predict(hist_wen_predict), .hist_wdata_predict(hist_wdata_predict), .hist_addr_predict(hcu_hist_addr_predict), .hist_ren_predict(hcu_hist_ren_predict), .hist_rdata_predict(hist_rdata_predict),
           // hcu_hist_addr_predict, hcu_hist_ren_predict
           .done(hcu_finish));

    Controller M3(.clk(clk), .rst(rst), .mode(mode), .enable(enable), .valid(valid),
                  .id(id), .id_addr(controller_id_addr), .id_wdata(id_wdata), .id_wen(id_wen),
                  .lbp_enable(clbp_enable), .lbp_finish(lbp_finish), .ram_clbp(ram_clbp),
                  .gridX_i(gridX), .gridY_i(gridY), .hcu_enable(hcu_enable), .gridX_o(gridX_o), .gridY_o(gridY_o), .hcu_finish(hcu_finish),      
                  .comparator_finish(done), .comparator_enable(comparator_enable), .ram_comp(ram_comp));

    DCU M4(.clk(clk), .rst(rst), .enable(dcu_enable), .hist_addr_offset(hist_addr_offset),
           .hist_addr_train(dcu_hist_addr_train), .hist_ren_train(dcu_hist_ren_train), .hist_rdata_train(hist_rdata_train),
           .hist_addr_predict(dcu_hist_addr_predict), .hist_ren_predict(dcu_hist_ren_predict), .hist_rdata_predict(hist_rdata_predict),// 8 bits
           .distance(distance), .valid(dcu_valid));

    Comparator M5(.clk(clk), .rst(rst), .enable(comparator_enable),
                  .histcount(controller_id_addr), .dcu_valid(dcu_valid), .distance(distance),
                  .id(id_rdata), .id_ren(id_ren), .id_counter(comparator_id_addr),// address of id ram
                  .dcu_enable(dcu_enable), .label(label), .minDistance(minDistance), .hist_addr_offset(hist_addr_offset), .done(done));

    // lbp_addr
    // always @(*) begin
    //     case (ram_clbp)
    //         1'd0: lbp_addr = clbp_lbp_addr;
    //         1'd1: lbp_addr = hcu_lbp_addr;
    //         default: lbp_addr = 12'd0;
    //     endcase
    // end
    assign lbp_addr = (ram_clbp) ? hcu_lbp_addr : clbp_lbp_addr;
    assign lbp_wen = (ram_clbp) ? 1'd0 : clbp_lbp_wen;
    assign lbp_wdata = (ram_clbp) ? 8'd0 : clbp_lbp_wdata;
    assign lbp_ren = (ram_clbp) ? hcu_lbp_ren : 1'd0;

    // hist_addr_train, hist_ren_train
    // hist_addr_predict, hist_ren_predict
    // always @(*) begin
    //     case (ram_comp)
    //         1'd0: begin
    //             hist_addr_train = hcu_hist_addr_train;
    //             hist_ren_train = hcu_hist_ren_train;

    //             hist_addr_predict = hcu_hist_addr_predict;
    //             hist_ren_predict = hcu_hist_ren_predict;
    //         end
    //         // 1'd1: begin
    //         //     hist_addr_train = dcu_hist_addr_train;
    //         //     hist_ren_train = dcu_hist_ren_train;

    //         //     hist_addr_predict = dcu_hist_addr_predict;
    //         //     hist_ren_predict = dcu_hist_ren_predict;
    //         // end
    //         default: begin
    //             hist_addr_train = 21'd0;
    //             hist_ren_train = 1'd0;

    //             hist_addr_predict = 14'd0;
    //             hist_ren_predict = 1'd0;
    //         end
    //     endcase
    // end
    assign hist_addr_train = (ram_comp) ? dcu_hist_addr_train : hcu_hist_addr_train;
    assign hist_ren_train = (ram_comp) ? dcu_hist_ren_train : hcu_hist_ren_train;
    assign hist_addr_predict = (ram_comp) ? dcu_hist_addr_predict : hcu_hist_addr_predict;
    assign hist_ren_predict = (ram_comp) ? dcu_hist_ren_predict : hcu_hist_ren_predict;

    assign id_addr = (ram_comp) ? comparator_id_addr : controller_id_addr;

endmodule