`define D_DataSize 10

module Min(d_0,
            d_1,
            d_2,
            d_3,
            d_4,
            d_5,
            d_6,
            d_7,
            out_index,
            out_distance);

  // ---------------------- input  ---------------------- //
  input  [`D_DataSize-1:0] d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7;

  // ---------------------- output ---------------------- //
  output [`D_DataSize-1:0] out_distance;
  output [2:0] out_index;
  // reg [`D_DataSize-1:0] out_distance;
  // reg [2:0] out_index;

  // ---------------------- Write down Your design below  ---------------------- //
	// reg [`D_DataSize-1:0] d1_1, d1_2, d1_3, d1_4, d2_1, d2_2;
	// reg [2:0] i1_1, i1_2, i1_3, i1_4, i2_1, i2_2;
	wire [`D_DataSize-1:0] d1_1, d1_2, d1_3, d1_4, d2_1, d2_2;
	wire [2:0] i1_1, i1_2, i1_3, i1_4, i2_1, i2_2;

	// always @(*) begin
	// 	d1_1 = (d_0 <= d_1) ? d_0 : d_1;
	// 	d1_2 = (d_2 <= d_3) ? d_2 : d_3;
	// 	d1_3 = (d_4 <= d_5) ? d_4 : d_5;
	// 	d1_4 = (d_6 <= d_7) ? d_6 : d_7;

	// 	i1_1 = (d_0 <= d_1) ? 3'd0 : 3'd1;
	// 	i1_2 = (d_2 <= d_3) ? 3'd2 : 3'd3;
	// 	i1_3 = (d_4 <= d_5) ? 3'd4 : 3'd5;
	// 	i1_4 = (d_6 <= d_7) ? 3'd6 : 3'd7;
		
	// 	d2_1 = (d1_1 <= d1_2) ? d1_1 : d1_2;
	// 	d2_2 = (d1_3 <= d1_4) ? d1_3 : d1_4;

	// 	i2_1 = (d1_1 <= d1_2) ? i1_1 : i1_2;
	// 	i2_2 = (d1_3 <= d1_4) ? i1_3 : i1_4;
		
	// 	out_distance = (d2_1 <= d2_2) ? d2_1 : d2_2;
		
	// 	out_index = (d2_1 <= d2_2) ? i2_1 : i2_2;
	// end

		assign d1_1 = (d_0 <= d_1) ? d_0 : d_1;
		assign d1_2 = (d_2 <= d_3) ? d_2 : d_3;
		assign d1_3 = (d_4 <= d_5) ? d_4 : d_5;
		assign d1_4 = (d_6 <= d_7) ? d_6 : d_7;

		assign i1_1 = (d_0 <= d_1) ? 3'd0 : 3'd1;
		assign i1_2 = (d_2 <= d_3) ? 3'd2 : 3'd3;
		assign i1_3 = (d_4 <= d_5) ? 3'd4 : 3'd5;
		assign i1_4 = (d_6 <= d_7) ? 3'd6 : 3'd7;
		
		assign d2_1 = (d1_1 <= d1_2) ? d1_1 : d1_2;
		assign d2_2 = (d1_3 <= d1_4) ? d1_3 : d1_4;

		assign i2_1 = (d1_1 <= d1_2) ? i1_1 : i1_2;
		assign i2_2 = (d1_3 <= d1_4) ? i1_3 : i1_4;
		
		assign out_distance = (d2_1 <= d2_2) ? d2_1 : d2_2;
		
		assign out_index = (d2_1 <= d2_2) ? i2_1 : i2_2;

  endmodule
