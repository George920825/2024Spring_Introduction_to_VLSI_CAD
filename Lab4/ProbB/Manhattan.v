`timescale 1ns/10ps
`define RGB_DataSize 24
`define D_DataSize   10
// ---------------------- define ---------------------- //

module Manhattan(clk,
                 rst,
                 clear,
                 c_en,
                 if_en,
                 c_in0,
                 c_in1,
                 c_in2,
                 c_in3,
                 c_in4,
                 c_in5,
                 c_in6,
                 c_in7,
                 if_in,
                 d_0,
                 d_1,
                 d_2,
                 d_3,
                 d_4,
                 d_5,
                 d_6,
                 d_7);

  // ---------------------- input  ---------------------- //
  input  clk;
  input  rst;
  input  clear;
  input  c_en;
  input  if_en;
  input  [`RGB_DataSize-1:0] c_in0, c_in1, c_in2, c_in3, c_in4, c_in5, c_in6, c_in7;
  input  [`RGB_DataSize-1:0] if_in;

  // ---------------------- output ---------------------- //
  output [`D_DataSize-1:0]   d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7;
  reg [`D_DataSize-1:0]   d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7;

  // ---------------------- Write down Your design below  ---------------------- //

  // reg  [`RGB_DataSize-1:0] c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7;
  // reg  [`RGB_DataSize-1:0] if_;
  wire  [`RGB_DataSize-1:0] c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7;
  wire  [`RGB_DataSize-1:0] if_;
  // reg signed [`D_DataSize-2:0] r_0, r_1, r_2, r_3, r_4, r_5, r_6, r_7;
  // reg signed [`D_DataSize-2:0] r_0_ab, r_1_ab, r_2_ab, r_3_ab, r_4_ab, r_5_ab, r_6_ab, r_7_ab;
  // reg signed [`D_DataSize-2:0] g_0, g_1, g_2, g_3, g_4, g_5, g_6, g_7;
  // reg signed [`D_DataSize-2:0] g_0_ab, g_1_ab, g_2_ab, g_3_ab, g_4_ab, g_5_ab, g_6_ab, g_7_ab;
  // reg signed [`D_DataSize-2:0] b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7;
  // reg signed [`D_DataSize-2:0] b_0_ab, b_1_ab, b_2_ab, b_3_ab, b_4_ab, b_5_ab, b_6_ab, b_7_ab;
  wire signed [`D_DataSize-2:0] r_0, r_1, r_2, r_3, r_4, r_5, r_6, r_7;
  wire signed [`D_DataSize-2:0] r_0_ab, r_1_ab, r_2_ab, r_3_ab, r_4_ab, r_5_ab, r_6_ab, r_7_ab;
  wire signed [`D_DataSize-2:0] g_0, g_1, g_2, g_3, g_4, g_5, g_6, g_7;
  wire signed [`D_DataSize-2:0] g_0_ab, g_1_ab, g_2_ab, g_3_ab, g_4_ab, g_5_ab, g_6_ab, g_7_ab;
  wire signed [`D_DataSize-2:0] b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7;
  wire signed [`D_DataSize-2:0] b_0_ab, b_1_ab, b_2_ab, b_3_ab, b_4_ab, b_5_ab, b_6_ab, b_7_ab;

  always @(posedge clk or posedge rst) begin
    if(rst) begin
      d_0 <= `D_DataSize'b0;
      d_1 <= `D_DataSize'b0;
      d_2 <= `D_DataSize'b0;
      d_3 <= `D_DataSize'b0;
      d_4 <= `D_DataSize'b0;
      d_5 <= `D_DataSize'b0;
      d_6 <= `D_DataSize'b0;
      d_7 <= `D_DataSize'b0;
    end
    else if(clear) begin
      d_0 <= `D_DataSize'b0;
      d_1 <= `D_DataSize'b0;
      d_2 <= `D_DataSize'b0;
      d_3 <= `D_DataSize'b0;
      d_4 <= `D_DataSize'b0;
      d_5 <= `D_DataSize'b0;
      d_6 <= `D_DataSize'b0;
      d_7 <= `D_DataSize'b0;
    end
    else begin
      d_0 <= {1'b0, r_0_ab} + {1'b0, g_0_ab} + {1'b0, b_0_ab};
      d_1 <= {1'b0, r_1_ab} + {1'b0, g_1_ab} + {1'b0, b_1_ab};
      d_2 <= {1'b0, r_2_ab} + {1'b0, g_2_ab} + {1'b0, b_2_ab};
      d_3 <= {1'b0, r_3_ab} + {1'b0, g_3_ab} + {1'b0, b_3_ab};
      d_4 <= {1'b0, r_4_ab} + {1'b0, g_4_ab} + {1'b0, b_4_ab};
      d_5 <= {1'b0, r_5_ab} + {1'b0, g_5_ab} + {1'b0, b_5_ab};
      d_6 <= {1'b0, r_6_ab} + {1'b0, g_6_ab} + {1'b0, b_6_ab};
      d_7 <= {1'b0, r_7_ab} + {1'b0, g_7_ab} + {1'b0, b_7_ab};
    end
  end

  // always @(*) begin
  //   if (c_en) begin
  //     c_0 = c_in0;
  //     c_1 = c_in1;
  //     c_2 = c_in2;
  //     c_3 = c_in3;
  //     c_4 = c_in4;
  //     c_5 = c_in5;
  //     c_6 = c_in6;
  //     c_7 = c_in7;
  //   end
  // end

  // always @(*) begin
  //   if (if_en) begin
  //     if_ = if_in;
  //   end
  // end

  assign c_0 = (c_en) ? c_in0 : c_0;
  assign c_1 = (c_en) ? c_in1 : c_1;
  assign c_2 = (c_en) ? c_in2 : c_2;
  assign c_3 = (c_en) ? c_in3 : c_3;
  assign c_4 = (c_en) ? c_in4 : c_4;
  assign c_5 = (c_en) ? c_in5 : c_5;
  assign c_6 = (c_en) ? c_in6 : c_6;
  assign c_7 = (c_en) ? c_in7 : c_7;

  assign if_ = (if_en) ? if_in : if_;

  assign r_0 = {1'b0, if_[7:0]} - {1'b0, c_0[7:0]};
  assign g_0 = {1'b0, if_[15:8]} - {1'b0, c_0[15:8]};
  assign b_0 = {1'b0, if_[23:16]} - {1'b0, c_0[23:16]};
  assign r_0_ab = (r_0[8]) ? -r_0 : r_0;
  assign g_0_ab = (g_0[8]) ? -g_0 : g_0;
  assign b_0_ab = (b_0[8]) ? -b_0 : b_0;

  assign r_1 = {1'b0, if_[7:0]} - {1'b0, c_1[7:0]};
  assign g_1 = {1'b0, if_[15:8]} - {1'b0, c_1[15:8]};
  assign b_1 = {1'b0, if_[23:16]} - {1'b0, c_1[23:16]};
  assign r_1_ab = (r_1[8]) ? -r_1 : r_1;
  assign g_1_ab = (g_1[8]) ? -g_1 : g_1;
  assign b_1_ab = (b_1[8]) ? -b_1 : b_1;

  assign r_2 = {1'b0, if_[7:0]} - {1'b0, c_2[7:0]};
  assign g_2 = {1'b0, if_[15:8]} - {1'b0, c_2[15:8]};
  assign b_2 = {1'b0, if_[23:16]} - {1'b0, c_2[23:16]};
  assign r_2_ab = (r_2[8]) ? -r_2 : r_2;
  assign g_2_ab = (g_2[8]) ? -g_2 : g_2;
  assign b_2_ab = (b_2[8]) ? -b_2 : b_2;

  assign r_3 = {1'b0, if_[7:0]} - {1'b0, c_3[7:0]};
  assign g_3 = {1'b0, if_[15:8]} - {1'b0, c_3[15:8]};
  assign b_3 = {1'b0, if_[23:16]} - {1'b0, c_3[23:16]};
  assign r_3_ab = (r_3[8]) ? -r_3 : r_3;
  assign g_3_ab = (g_3[8]) ? -g_3 : g_3;
  assign b_3_ab = (b_3[8]) ? -b_3 : b_3;

  assign r_4 = {1'b0, if_[7:0]} - {1'b0, c_4[7:0]};
  assign g_4 = {1'b0, if_[15:8]} - {1'b0, c_4[15:8]};
  assign b_4 = {1'b0, if_[23:16]} - {1'b0, c_4[23:16]};
  assign r_4_ab = (r_4[8]) ? -r_4 : r_4;
  assign g_4_ab = (g_4[8]) ? -g_4 : g_4;
  assign b_4_ab = (b_4[8]) ? -b_4 : b_4;

  assign r_5 = {1'b0, if_[7:0]} - {1'b0, c_5[7:0]};
  assign g_5 = {1'b0, if_[15:8]} - {1'b0, c_5[15:8]};
  assign b_5 = {1'b0, if_[23:16]} - {1'b0, c_5[23:16]};
  assign r_5_ab = (r_5[8]) ? -r_5 : r_5;
  assign g_5_ab = (g_5[8]) ? -g_5 : g_5;
  assign b_5_ab = (b_5[8]) ? -b_5 : b_5;
    
  assign r_6 = {1'b0, if_[7:0]} - {1'b0, c_6[7:0]};
  assign g_6 = {1'b0, if_[15:8]} - {1'b0, c_6[15:8]};
  assign b_6 = {1'b0, if_[23:16]} - {1'b0, c_6[23:16]};
  assign r_6_ab = (r_6[8]) ? -r_6 : r_6;
  assign g_6_ab = (g_6[8]) ? -g_6 : g_6;
  assign b_6_ab = (b_6[8]) ? -b_6 : b_6;
    
  assign r_7 = {1'b0, if_[7:0]} - {1'b0, c_7[7:0]};
  assign g_7 = {1'b0, if_[15:8]} - {1'b0, c_7[15:8]};
  assign b_7 = {1'b0, if_[23:16]} - {1'b0, c_7[23:16]};
  assign r_7_ab = (r_7[8]) ? -r_7 : r_7;
  assign g_7_ab = (g_7[8]) ? -g_7 : g_7;
  assign b_7_ab = (b_7[8]) ? -b_7 : b_7;

  // always @(*) begin

  //   r_0 = {1'b0, if_[7:0]} - {1'b0, c_0[7:0]};
  //   g_0 = {1'b0, if_[15:8]} - {1'b0, c_0[15:8]};
  //   b_0 = {1'b0, if_[23:16]} - {1'b0, c_0[23:16]};
  //   r_0_ab = (r_0[8]) ? (~r_0+8'b1) : r_0;
  //   g_0_ab = (g_0[8]) ? (~g_0+8'b1) : g_0;
  //   b_0_ab = (b_0[8]) ? (~b_0+8'b1) : b_0;

  //   r_1 = {1'b0, if_[7:0]} - {1'b0, c_1[7:0]};
  //   g_1 = {1'b0, if_[15:8]} - {1'b0, c_1[15:8]};
  //   b_1 = {1'b0, if_[23:16]} - {1'b0, c_1[23:16]};
  //   r_1_ab = (r_1[8]) ? (~r_1+8'b1) : r_1;
  //   g_1_ab = (g_1[8]) ? (~g_1+8'b1) : g_1;
  //   b_1_ab = (b_1[8]) ? (~b_1+8'b1) : b_1;

  //   r_2 = {1'b0, if_[7:0]} - {1'b0, c_2[7:0]};
  //   g_2 = {1'b0, if_[15:8]} - {1'b0, c_2[15:8]};
  //   b_2 = {1'b0, if_[23:16]} - {1'b0, c_2[23:16]};
  //   r_2_ab = (r_2[8]) ? (~r_2+8'b1) : r_2;
  //   g_2_ab = (g_2[8]) ? (~g_2+8'b1) : g_2;
  //   b_2_ab = (b_2[8]) ? (~b_2+8'b1) : b_2;

  //   r_3 = {1'b0, if_[7:0]} - {1'b0, c_3[7:0]};
  //   g_3 = {1'b0, if_[15:8]} - {1'b0, c_3[15:8]};
  //   b_3 = {1'b0, if_[23:16]} - {1'b0, c_3[23:16]};
  //   r_3_ab = (r_3[8]) ? (~r_3+8'b1) : r_3;
  //   g_3_ab = (g_3[8]) ? (~g_3+8'b1) : g_3;
  //   b_3_ab = (b_3[8]) ? (~b_3+8'b1) : b_3;

  //   r_4 = {1'b0, if_[7:0]} - {1'b0, c_4[7:0]};
  //   g_4 = {1'b0, if_[15:8]} - {1'b0, c_4[15:8]};
  //   b_4 = {1'b0, if_[23:16]} - {1'b0, c_4[23:16]};
  //   r_4_ab = (r_4[8]) ? (~r_4+8'b1) : r_4;
  //   g_4_ab = (g_4[8]) ? (~g_4+8'b1) : g_4;
  //   b_4_ab = (b_4[8]) ? (~b_4+8'b1) : b_4;

  //   r_5 = {1'b0, if_[7:0]} - {1'b0, c_5[7:0]};
  //   g_5 = {1'b0, if_[15:8]} - {1'b0, c_5[15:8]};
  //   b_5 = {1'b0, if_[23:16]} - {1'b0, c_5[23:16]};
  //   r_5_ab = (r_5[8]) ? (~r_5+8'b1) : r_5;
  //   g_5_ab = (g_5[8]) ? (~g_5+8'b1) : g_5;
  //   b_5_ab = (b_5[8]) ? (~b_5+8'b1) : b_5;
    
  //   r_6 = {1'b0, if_[7:0]} - {1'b0, c_6[7:0]};
  //   g_6 = {1'b0, if_[15:8]} - {1'b0, c_6[15:8]};
  //   b_6 = {1'b0, if_[23:16]} - {1'b0, c_6[23:16]};
  //   r_6_ab = (r_6[8]) ? (~r_6+8'b1) : r_6;
  //   g_6_ab = (g_6[8]) ? (~g_6+8'b1) : g_6;
  //   b_6_ab = (b_6[8]) ? (~b_6+8'b1) : b_6;
    
  //   r_7 = {1'b0, if_[7:0]} - {1'b0, c_7[7:0]};
  //   g_7 = {1'b0, if_[15:8]} - {1'b0, c_7[15:8]};
  //   b_7 = {1'b0, if_[23:16]} - {1'b0, c_7[23:16]};
  //   r_7_ab = (r_7[8]) ? (~r_7+8'b1) : r_7;
  //   g_7_ab = (g_7[8]) ? (~g_7+8'b1) : g_7;
  //   b_7_ab = (b_7[8]) ? (~b_7+8'b1) : b_7;
  // end

endmodule
