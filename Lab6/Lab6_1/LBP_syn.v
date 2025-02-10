/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Apr 13 20:11:51 2024
/////////////////////////////////////////////////////////////


module LBP_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HA1D1BWP16P90LVT U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  HA1D1BWP16P90LVT U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  HA1D1BWP16P90LVT U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  HA1D1BWP16P90LVT U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  HA1D1BWP16P90LVT U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  HA1D1BWP16P90LVT U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  HA1D1BWP16P90LVT U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  HA1D1BWP16P90LVT U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  HA1D1BWP16P90LVT U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  HA1D1BWP16P90LVT U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CKND1BWP16P90LVT U1 ( .I(A[0]), .ZN(SUM[0]) );
  XOR2D1BWP16P90 U2 ( .A1(carry[11]), .A2(A[11]), .Z(SUM[11]) );
endmodule


module LBP_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  HA1D1BWP16P90LVT U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  HA1D1BWP16P90LVT U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  HA1D1BWP16P90LVT U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  HA1D1BWP16P90LVT U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  HA1D1BWP16P90LVT U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  HA1D1BWP16P90LVT U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  HA1D1BWP16P90LVT U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  HA1D1BWP16P90LVT U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  HA1D1BWP16P90LVT U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  HA1D1BWP16P90LVT U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CKND1BWP16P90LVT U1 ( .I(A[0]), .ZN(SUM[0]) );
  XOR2D1BWP16P90 U2 ( .A1(carry[11]), .A2(A[11]), .Z(SUM[11]) );
endmodule


module LBP ( clk, rst, enable, gray_addr, gray_OE, gray_data, lbp_addr, 
        lbp_WEN, lbp_data, finish );
  output [11:0] gray_addr;
  input [7:0] gray_data;
  output [11:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, rst, enable;
  output gray_OE, lbp_WEN, finish;
  wire   N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N109,
         N110, N111, N112, N113, N114, N115, N116, N117, N118, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N128, N129, N130, N131,
         N132, N133, N134, N135, N136, N137, N138, N139, N140, N141, N142,
         N143, N144, N158, N159, N160, N161, N162, N163, N164, N165, N166,
         N167, N168, N169, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N225, N277, N278, N279, N280, N281, N282, N283, N284,
         N285, N286, N287, N288, n39, n40, n44, n45, n46, n47, n48, n49, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n62, n65, n66, n67, n69, n70,
         n71, n84, n86, n87, n89, n90, n103, n105, n106, n107, n108, n109,
         n110, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, \r347/GE_LT_GT_LE ,
         \sub_68/carry[2] , \sub_68/carry[3] , \sub_68/carry[4] ,
         \sub_68/carry[5] , \sub_68/carry[6] , \sub_68/carry[7] ,
         \sub_68/carry[8] , \sub_68/carry[9] , \sub_68/carry[10] ,
         \sub_68/carry[11] , n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410;
  wire   [3:0] next_state;
  wire   [3:0] cur_state;
  wire   [11:0] addr;
  wire   [7:0] center_value;
  wire   [11:1] \add_90/carry ;
  wire   [11:1] \r348/carry ;
  assign gray_addr[0] = N158;

  DFCNQD2BWP16P90LVT \cur_state_reg[0]  ( .D(next_state[0]), .CP(clk), .CDN(
        n340), .Q(cur_state[0]) );
  DFCNQD2BWP16P90LVT \cur_state_reg[3]  ( .D(next_state[3]), .CP(clk), .CDN(
        n340), .Q(cur_state[3]) );
  DFCNQD2BWP16P90LVT \cur_state_reg[1]  ( .D(next_state[1]), .CP(clk), .CDN(
        n340), .Q(cur_state[1]) );
  DFCNQD2BWP16P90LVT \cur_state_reg[2]  ( .D(next_state[2]), .CP(clk), .CDN(
        n340), .Q(cur_state[2]) );
  DFCNQD2BWP16P90LVT \addr_reg[0]  ( .D(n166), .CP(clk), .CDN(n340), .Q(
        addr[0]) );
  DFCNQD2BWP16P90LVT \addr_reg[1]  ( .D(n165), .CP(clk), .CDN(n340), .Q(
        addr[1]) );
  DFCNQD2BWP16P90LVT \center_value_reg[0]  ( .D(n164), .CP(clk), .CDN(n340), 
        .Q(center_value[0]) );
  DFCNQD2BWP16P90LVT \center_value_reg[7]  ( .D(n163), .CP(clk), .CDN(n339), 
        .Q(center_value[7]) );
  DFCNQD2BWP16P90LVT \center_value_reg[6]  ( .D(n162), .CP(clk), .CDN(n339), 
        .Q(center_value[6]) );
  DFCNQD2BWP16P90LVT \center_value_reg[5]  ( .D(n161), .CP(clk), .CDN(n339), 
        .Q(center_value[5]) );
  DFCNQD2BWP16P90LVT \center_value_reg[4]  ( .D(n160), .CP(clk), .CDN(n339), 
        .Q(center_value[4]) );
  DFCNQD2BWP16P90LVT \center_value_reg[3]  ( .D(n159), .CP(clk), .CDN(n339), 
        .Q(center_value[3]) );
  DFCNQD2BWP16P90LVT \center_value_reg[2]  ( .D(n158), .CP(clk), .CDN(n339), 
        .Q(center_value[2]) );
  DFCNQD2BWP16P90LVT \center_value_reg[1]  ( .D(n157), .CP(clk), .CDN(n339), 
        .Q(center_value[1]) );
  DFCNQD2BWP16P90LVT finish_reg ( .D(n156), .CP(clk), .CDN(n339), .Q(finish)
         );
  DFCNQD2BWP16P90LVT gray_OE_reg ( .D(n155), .CP(clk), .CDN(n339), .Q(gray_OE)
         );
  DFCNQD2BWP16P90LVT \gray_addr_reg[0]  ( .D(n154), .CP(clk), .CDN(n339), .Q(
        N158) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[11]  ( .D(n153), .CP(clk), .CDN(n339), .Q(
        gray_addr[11]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[10]  ( .D(n152), .CP(clk), .CDN(n339), .Q(
        gray_addr[10]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[9]  ( .D(n151), .CP(clk), .CDN(n339), .Q(
        gray_addr[9]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[8]  ( .D(n150), .CP(clk), .CDN(n338), .Q(
        gray_addr[8]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[7]  ( .D(n149), .CP(clk), .CDN(n338), .Q(
        gray_addr[7]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[6]  ( .D(n148), .CP(clk), .CDN(n338), .Q(
        gray_addr[6]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[5]  ( .D(n147), .CP(clk), .CDN(n338), .Q(
        gray_addr[5]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[4]  ( .D(n146), .CP(clk), .CDN(n338), .Q(
        gray_addr[4]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[3]  ( .D(n145), .CP(clk), .CDN(n338), .Q(
        gray_addr[3]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[2]  ( .D(n144), .CP(clk), .CDN(n338), .Q(
        gray_addr[2]) );
  DFCNQD2BWP16P90LVT \gray_addr_reg[1]  ( .D(n143), .CP(clk), .CDN(n338), .Q(
        gray_addr[1]) );
  DFCNQD2BWP16P90LVT \addr_reg[2]  ( .D(n142), .CP(clk), .CDN(n338), .Q(
        addr[2]) );
  DFCNQD2BWP16P90LVT \addr_reg[3]  ( .D(n141), .CP(clk), .CDN(n338), .Q(
        addr[3]) );
  DFCNQD2BWP16P90LVT \addr_reg[4]  ( .D(n140), .CP(clk), .CDN(n338), .Q(
        addr[4]) );
  DFCNQD2BWP16P90LVT \addr_reg[5]  ( .D(n139), .CP(clk), .CDN(n338), .Q(
        addr[5]) );
  DFCNQD2BWP16P90LVT \addr_reg[6]  ( .D(n138), .CP(clk), .CDN(n338), .Q(
        addr[6]) );
  DFCNQD2BWP16P90LVT \addr_reg[7]  ( .D(n137), .CP(clk), .CDN(n337), .Q(
        addr[7]) );
  DFCNQD2BWP16P90LVT \addr_reg[8]  ( .D(n136), .CP(clk), .CDN(n337), .Q(
        addr[8]) );
  DFCNQD2BWP16P90LVT \addr_reg[9]  ( .D(n135), .CP(clk), .CDN(n337), .Q(
        addr[9]) );
  DFCNQD2BWP16P90LVT \addr_reg[10]  ( .D(n134), .CP(clk), .CDN(n337), .Q(
        addr[10]) );
  DFCNQD2BWP16P90LVT \addr_reg[11]  ( .D(n133), .CP(clk), .CDN(n337), .Q(
        addr[11]) );
  DFCNQD2BWP16P90LVT \lbp_data_reg[7]  ( .D(n132), .CP(clk), .CDN(n337), .Q(
        lbp_data[7]) );
  DFCNQD2BWP16P90LVT \lbp_data_reg[6]  ( .D(n131), .CP(clk), .CDN(n337), .Q(
        lbp_data[6]) );
  DFCNQD2BWP16P90LVT \lbp_data_reg[5]  ( .D(n130), .CP(clk), .CDN(n337), .Q(
        lbp_data[5]) );
  DFCNQD2BWP16P90LVT \lbp_data_reg[4]  ( .D(n129), .CP(clk), .CDN(n337), .Q(
        lbp_data[4]) );
  DFCNQD2BWP16P90LVT \lbp_data_reg[3]  ( .D(n371), .CP(clk), .CDN(n337), .Q(
        lbp_data[3]) );
  DFCNQD2BWP16P90LVT \lbp_data_reg[2]  ( .D(n372), .CP(clk), .CDN(n337), .Q(
        lbp_data[2]) );
  DFCNQD2BWP16P90LVT \lbp_data_reg[1]  ( .D(n373), .CP(clk), .CDN(n337), .Q(
        lbp_data[1]) );
  DFCNQD2BWP16P90LVT \lbp_data_reg[0]  ( .D(n374), .CP(clk), .CDN(n337), .Q(
        lbp_data[0]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[11]  ( .D(n124), .CP(clk), .CDN(n336), .Q(
        lbp_addr[11]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[10]  ( .D(n123), .CP(clk), .CDN(n336), .Q(
        lbp_addr[10]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[9]  ( .D(n122), .CP(clk), .CDN(n336), .Q(
        lbp_addr[9]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[8]  ( .D(n121), .CP(clk), .CDN(n336), .Q(
        lbp_addr[8]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[7]  ( .D(n120), .CP(clk), .CDN(n336), .Q(
        lbp_addr[7]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[6]  ( .D(n119), .CP(clk), .CDN(n336), .Q(
        lbp_addr[6]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[5]  ( .D(n118), .CP(clk), .CDN(n336), .Q(
        lbp_addr[5]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[4]  ( .D(n117), .CP(clk), .CDN(n336), .Q(
        lbp_addr[4]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[3]  ( .D(n116), .CP(clk), .CDN(n336), .Q(
        lbp_addr[3]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[2]  ( .D(n115), .CP(clk), .CDN(n336), .Q(
        lbp_addr[2]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[1]  ( .D(n114), .CP(clk), .CDN(n336), .Q(
        lbp_addr[1]) );
  DFCNQD2BWP16P90LVT \lbp_addr_reg[0]  ( .D(n113), .CP(clk), .CDN(n336), .Q(
        lbp_addr[0]) );
  DFCNQD2BWP16P90LVT lbp_WEN_reg ( .D(n112), .CP(clk), .CDN(n336), .Q(lbp_WEN)
         );
  AO22D1BWP16P90LVT U21 ( .A1(n379), .A2(\r347/GE_LT_GT_LE ), .B1(lbp_data[7]), 
        .B2(n381), .Z(n132) );
  IOA21D1BWP16P90LVT U51 ( .A1(lbp_WEN), .A2(n381), .B(n342), .ZN(n112) );
  AO22D1BWP16P90LVT U53 ( .A1(N286), .A2(n84), .B1(gray_addr[9]), .B2(n375), 
        .Z(n151) );
  AO22D1BWP16P90LVT U54 ( .A1(N285), .A2(n84), .B1(gray_addr[8]), .B2(n375), 
        .Z(n150) );
  AO22D1BWP16P90LVT U55 ( .A1(N284), .A2(n84), .B1(gray_addr[7]), .B2(n375), 
        .Z(n149) );
  AO22D1BWP16P90LVT U56 ( .A1(N283), .A2(n84), .B1(gray_addr[6]), .B2(n375), 
        .Z(n148) );
  AO22D1BWP16P90LVT U57 ( .A1(N282), .A2(n84), .B1(gray_addr[5]), .B2(n375), 
        .Z(n147) );
  AO22D1BWP16P90LVT U58 ( .A1(N281), .A2(n84), .B1(gray_addr[4]), .B2(n375), 
        .Z(n146) );
  AO22D1BWP16P90LVT U59 ( .A1(N280), .A2(n84), .B1(gray_addr[3]), .B2(n375), 
        .Z(n145) );
  AO22D1BWP16P90LVT U60 ( .A1(N279), .A2(n84), .B1(gray_addr[2]), .B2(n375), 
        .Z(n144) );
  AO22D1BWP16P90LVT U61 ( .A1(N278), .A2(n84), .B1(gray_addr[1]), .B2(n375), 
        .Z(n143) );
  AO22D1BWP16P90LVT U62 ( .A1(N288), .A2(n84), .B1(gray_addr[11]), .B2(n375), 
        .Z(n153) );
  AO22D1BWP16P90LVT U63 ( .A1(N287), .A2(n84), .B1(gray_addr[10]), .B2(n375), 
        .Z(n152) );
  AO22D1BWP16P90LVT U64 ( .A1(N277), .A2(n84), .B1(N158), .B2(n375), .Z(n154)
         );
  AO21D1BWP16P90LVT U70 ( .A1(n51), .A2(n47), .B(finish), .Z(n156) );
  AO22D1BWP16P90LVT U73 ( .A1(center_value[7]), .A2(n45), .B1(gray_data[7]), 
        .B2(n378), .Z(n163) );
  AO22D1BWP16P90LVT U74 ( .A1(center_value[6]), .A2(n45), .B1(gray_data[6]), 
        .B2(n378), .Z(n162) );
  AO22D1BWP16P90LVT U75 ( .A1(center_value[5]), .A2(n45), .B1(gray_data[5]), 
        .B2(n378), .Z(n161) );
  AO22D1BWP16P90LVT U76 ( .A1(center_value[4]), .A2(n45), .B1(gray_data[4]), 
        .B2(n378), .Z(n160) );
  AO22D1BWP16P90LVT U77 ( .A1(center_value[3]), .A2(n45), .B1(gray_data[3]), 
        .B2(n378), .Z(n159) );
  AO22D1BWP16P90LVT U78 ( .A1(center_value[2]), .A2(n45), .B1(gray_data[2]), 
        .B2(n378), .Z(n158) );
  AO22D1BWP16P90LVT U79 ( .A1(center_value[1]), .A2(n45), .B1(gray_data[1]), 
        .B2(n378), .Z(n157) );
  AO22D1BWP16P90LVT U80 ( .A1(center_value[0]), .A2(n45), .B1(gray_data[0]), 
        .B2(n378), .Z(n164) );
  AO22D1BWP16P90LVT U129 ( .A1(n58), .A2(N96), .B1(N120), .B2(n397), .Z(N132)
         );
  AO22D1BWP16P90LVT U130 ( .A1(n58), .A2(N95), .B1(N119), .B2(n397), .Z(N131)
         );
  AO22D1BWP16P90LVT U131 ( .A1(n58), .A2(N94), .B1(N118), .B2(n397), .Z(N130)
         );
  AO22D1BWP16P90LVT U132 ( .A1(n58), .A2(N93), .B1(N117), .B2(n397), .Z(N129)
         );
  AO22D1BWP16P90LVT U133 ( .A1(n58), .A2(N92), .B1(N116), .B2(n397), .Z(N128)
         );
  AO22D1BWP16P90LVT U134 ( .A1(n58), .A2(N91), .B1(N115), .B2(n397), .Z(N127)
         );
  AO22D1BWP16P90LVT U135 ( .A1(n58), .A2(N90), .B1(N114), .B2(n397), .Z(N126)
         );
  AO22D1BWP16P90LVT U136 ( .A1(n58), .A2(N89), .B1(N113), .B2(n397), .Z(N125)
         );
  AO22D1BWP16P90LVT U137 ( .A1(n58), .A2(N88), .B1(N112), .B2(n397), .Z(N124)
         );
  AO22D1BWP16P90LVT U138 ( .A1(n58), .A2(N87), .B1(N111), .B2(n397), .Z(N123)
         );
  AO22D1BWP16P90LVT U139 ( .A1(n58), .A2(N86), .B1(N110), .B2(n397), .Z(N122)
         );
  AO22D1BWP16P90LVT U140 ( .A1(n58), .A2(N85), .B1(N109), .B2(n397), .Z(N121)
         );
  LBP_DW01_inc_0 r346 ( .A({gray_addr[11:1], N158}), .SUM({N144, N143, N142, 
        N141, N140, N139, N138, N137, N136, N135, N134, N133}) );
  LBP_DW01_inc_1 r344 ( .A(addr), .SUM({N96, N95, N94, N93, N92, N91, N90, N89, 
        N88, N87, N86, N85}) );
  CKND1BWP16P90LVT U277 ( .I(n103), .ZN(n379) );
  OAI211D1BWP16P90LVT U278 ( .A1(n397), .A2(n381), .B(n103), .C(n87), .ZN(n89)
         );
  ND2D1BWP16P90LVT U279 ( .A1(n384), .A2(n380), .ZN(n103) );
  CKND1BWP16P90LVT U280 ( .I(n45), .ZN(n378) );
  CKND1BWP16P90LVT U281 ( .I(n52), .ZN(n377) );
  CKND1BWP16P90LVT U282 ( .I(n84), .ZN(n375) );
  ND2D1BWP16P90LVT U283 ( .A1(\r347/GE_LT_GT_LE ), .A2(n384), .ZN(n62) );
  CKND1BWP16P90LVT U284 ( .I(n55), .ZN(n381) );
  ND3D1BWP16P90LVT U285 ( .A1(n69), .A2(n381), .A3(n86), .ZN(n84) );
  AOI22D1BWP16P90LVT U286 ( .A1(n384), .A2(n385), .B1(n335), .B2(n331), .ZN(
        n86) );
  ND3D1BWP16P90LVT U287 ( .A1(n331), .A2(n383), .A3(n377), .ZN(n87) );
  NR2D1BWP16P90LVT U288 ( .A1(n69), .A2(n335), .ZN(n56) );
  CKND1BWP16P90LVT U289 ( .I(n44), .ZN(n380) );
  ND3D1BWP16P90LVT U290 ( .A1(n331), .A2(n383), .A3(n380), .ZN(n45) );
  CKND1BWP16P90LVT U291 ( .I(n69), .ZN(n382) );
  NR2D1BWP16P90LVT U292 ( .A1(n332), .A2(n331), .ZN(n326) );
  ND2D1BWP16P90LVT U293 ( .A1(n335), .A2(n385), .ZN(n52) );
  CKND1BWP16P90LVT U294 ( .I(n57), .ZN(n384) );
  BUFFD1BWP16P90LVT U295 ( .I(n90), .Z(n334) );
  OAI21D1BWP16P90LVT U296 ( .A1(n379), .A2(n55), .B(n89), .ZN(n90) );
  OAI22D1BWP16P90LVT U297 ( .A1(n409), .A2(n89), .B1(n334), .B2(n386), .ZN(
        n133) );
  CKND1BWP16P90LVT U298 ( .I(N96), .ZN(n386) );
  OAI22D1BWP16P90LVT U299 ( .A1(n408), .A2(n89), .B1(n334), .B2(n387), .ZN(
        n134) );
  CKND1BWP16P90LVT U300 ( .I(N95), .ZN(n387) );
  OAI22D1BWP16P90LVT U301 ( .A1(n407), .A2(n89), .B1(n334), .B2(n388), .ZN(
        n135) );
  CKND1BWP16P90LVT U302 ( .I(N94), .ZN(n388) );
  OAI22D1BWP16P90LVT U303 ( .A1(n406), .A2(n89), .B1(n334), .B2(n389), .ZN(
        n136) );
  CKND1BWP16P90LVT U304 ( .I(N93), .ZN(n389) );
  OAI22D1BWP16P90LVT U305 ( .A1(n405), .A2(n89), .B1(n334), .B2(n390), .ZN(
        n137) );
  CKND1BWP16P90LVT U306 ( .I(N92), .ZN(n390) );
  OAI22D1BWP16P90LVT U307 ( .A1(n404), .A2(n89), .B1(n334), .B2(n391), .ZN(
        n138) );
  CKND1BWP16P90LVT U308 ( .I(N91), .ZN(n391) );
  OAI22D1BWP16P90LVT U309 ( .A1(n403), .A2(n89), .B1(n334), .B2(n392), .ZN(
        n139) );
  CKND1BWP16P90LVT U310 ( .I(N90), .ZN(n392) );
  OAI22D1BWP16P90LVT U311 ( .A1(n402), .A2(n89), .B1(n334), .B2(n393), .ZN(
        n140) );
  CKND1BWP16P90LVT U312 ( .I(N89), .ZN(n393) );
  OAI22D1BWP16P90LVT U313 ( .A1(n401), .A2(n89), .B1(n334), .B2(n394), .ZN(
        n141) );
  CKND1BWP16P90LVT U314 ( .I(N88), .ZN(n394) );
  OAI22D1BWP16P90LVT U315 ( .A1(n400), .A2(n89), .B1(n334), .B2(n395), .ZN(
        n142) );
  CKND1BWP16P90LVT U316 ( .I(N87), .ZN(n395) );
  OAI22D1BWP16P90LVT U317 ( .A1(n399), .A2(n89), .B1(n334), .B2(n396), .ZN(
        n165) );
  CKND1BWP16P90LVT U318 ( .I(N86), .ZN(n396) );
  CKND1BWP16P90LVT U319 ( .I(n58), .ZN(n397) );
  OAI211D1BWP16P90LVT U320 ( .A1(n376), .A2(n383), .B(n39), .C(n40), .ZN(
        next_state[3]) );
  AOI22D1BWP16P90LVT U321 ( .A1(n382), .A2(n380), .B1(n384), .B2(n44), .ZN(n40) );
  BUFFD1BWP16P90LVT U322 ( .I(n71), .Z(n341) );
  BUFFD1BWP16P90LVT U323 ( .I(n71), .Z(n342) );
  NR2D1BWP16P90LVT U324 ( .A1(n331), .A2(n383), .ZN(n51) );
  CKND1BWP16P90LVT U325 ( .I(n47), .ZN(n376) );
  CKND1BWP16P90LVT U326 ( .I(n335), .ZN(n332) );
  OR3D1BWP16P90LVT U327 ( .A1(n48), .A2(n49), .A3(n381), .Z(n39) );
  BUFFD1BWP16P90LVT U328 ( .I(n370), .Z(n336) );
  BUFFD1BWP16P90LVT U329 ( .I(n370), .Z(n337) );
  BUFFD1BWP16P90LVT U330 ( .I(n370), .Z(n338) );
  BUFFD1BWP16P90LVT U331 ( .I(n370), .Z(n339) );
  BUFFD1BWP16P90LVT U332 ( .I(n370), .Z(n340) );
  CKND1BWP16P90LVT U333 ( .I(n351), .ZN(n363) );
  CKND1BWP16P90LVT U334 ( .I(gray_data[7]), .ZN(n364) );
  OAI32D1BWP16P90LVT U335 ( .A1(n62), .A2(n335), .A3(n385), .B1(n55), .B2(n410), .ZN(n131) );
  CKND1BWP16P90LVT U336 ( .I(lbp_data[6]), .ZN(n410) );
  OAI221D1BWP16P90LVT U337 ( .A1(n335), .A2(n57), .B1(n381), .B2(n58), .C(n59), 
        .ZN(next_state[0]) );
  AOI31D1BWP16P90LVT U338 ( .A1(n47), .A2(n331), .A3(enable), .B(n56), .ZN(n59) );
  CKND1BWP16P90LVT U339 ( .I(gray_data[0]), .ZN(n358) );
  IOA22D1BWP16P90LVT U340 ( .B1(n376), .B2(n62), .A1(lbp_data[4]), .A2(n381), 
        .ZN(n129) );
  IOA22D1BWP16P90LVT U341 ( .B1(n52), .B2(n62), .A1(lbp_data[5]), .A2(n381), 
        .ZN(n130) );
  CKND1BWP16P90LVT U342 ( .I(n67), .ZN(n373) );
  AOI32D1BWP16P90LVT U343 ( .A1(\r347/GE_LT_GT_LE ), .A2(n382), .A3(n377), 
        .B1(n381), .B2(lbp_data[1]), .ZN(n67) );
  CKND1BWP16P90LVT U344 ( .I(n65), .ZN(n371) );
  AOI32D1BWP16P90LVT U345 ( .A1(\r347/GE_LT_GT_LE ), .A2(n380), .A3(n382), 
        .B1(n381), .B2(lbp_data[3]), .ZN(n65) );
  CKND1BWP16P90LVT U346 ( .I(n349), .ZN(n361) );
  CKND1BWP16P90LVT U347 ( .I(n70), .ZN(n374) );
  AOI32D1BWP16P90LVT U348 ( .A1(n56), .A2(n385), .A3(\r347/GE_LT_GT_LE ), .B1(
        n381), .B2(lbp_data[0]), .ZN(n70) );
  CKND1BWP16P90LVT U349 ( .I(n66), .ZN(n372) );
  AOI32D1BWP16P90LVT U350 ( .A1(n56), .A2(cur_state[1]), .A3(
        \r347/GE_LT_GT_LE ), .B1(n381), .B2(lbp_data[2]), .ZN(n66) );
  CKND1BWP16P90LVT U351 ( .I(gray_data[2]), .ZN(n359) );
  CKND1BWP16P90LVT U352 ( .I(gray_data[6]), .ZN(n362) );
  CKND1BWP16P90LVT U353 ( .I(gray_data[3]), .ZN(n360) );
  NR4D1BWP16P90LVT U354 ( .A1(n385), .A2(n335), .A3(cur_state[2]), .A4(
        cur_state[3]), .ZN(n55) );
  AOI22D1BWP16P90LVT U355 ( .A1(n55), .A2(n58), .B1(N225), .B2(n379), .ZN(n71)
         );
  ND4D1BWP16P90LVT U356 ( .A1(addr[4]), .A2(addr[3]), .A3(addr[5]), .A4(n107), 
        .ZN(n48) );
  NR3D1BWP16P90LVT U357 ( .A1(n400), .A2(n398), .A3(n399), .ZN(n107) );
  ND4D1BWP16P90LVT U358 ( .A1(n105), .A2(n106), .A3(n49), .A4(n48), .ZN(n58)
         );
  ND4D1BWP16P90LVT U359 ( .A1(n399), .A2(n400), .A3(n398), .A4(n110), .ZN(n105) );
  ND4D1BWP16P90LVT U360 ( .A1(n409), .A2(n404), .A3(n408), .A4(n109), .ZN(n106) );
  NR3D1BWP16P90LVT U361 ( .A1(addr[3]), .A2(addr[5]), .A3(addr[4]), .ZN(n110)
         );
  ND4D1BWP16P90LVT U362 ( .A1(addr[8]), .A2(addr[7]), .A3(addr[9]), .A4(n108), 
        .ZN(n49) );
  NR3D1BWP16P90LVT U363 ( .A1(n404), .A2(n408), .A3(n409), .ZN(n108) );
  ND2D1BWP16P90LVT U364 ( .A1(cur_state[2]), .A2(n383), .ZN(n69) );
  CKND1BWP16P90LVT U365 ( .I(cur_state[3]), .ZN(n383) );
  CKND1BWP16P90LVT U366 ( .I(cur_state[1]), .ZN(n385) );
  CKND1BWP16P90LVT U367 ( .I(n367), .ZN(n369) );
  NR3D1BWP16P90LVT U368 ( .A1(cur_state[2]), .A2(n335), .A3(cur_state[3]), 
        .ZN(n328) );
  CKND1BWP16P90LVT U369 ( .I(addr[0]), .ZN(n398) );
  CKND1BWP16P90LVT U370 ( .I(addr[1]), .ZN(n399) );
  CKND1BWP16P90LVT U371 ( .I(addr[11]), .ZN(n409) );
  CKND1BWP16P90LVT U372 ( .I(addr[10]), .ZN(n408) );
  CKND1BWP16P90LVT U373 ( .I(addr[6]), .ZN(n404) );
  CKND1BWP16P90LVT U374 ( .I(addr[2]), .ZN(n400) );
  ND3D1BWP16P90LVT U375 ( .A1(cur_state[1]), .A2(n325), .A3(n335), .ZN(n324)
         );
  NR2D1BWP16P90LVT U376 ( .A1(n383), .A2(cur_state[2]), .ZN(n325) );
  NR2D1BWP16P90LVT U377 ( .A1(n335), .A2(cur_state[1]), .ZN(n47) );
  ND2D1BWP16P90LVT U378 ( .A1(n335), .A2(cur_state[1]), .ZN(n44) );
  ND2D1BWP16P90LVT U379 ( .A1(cur_state[3]), .A2(n331), .ZN(n57) );
  OAI22D1BWP16P90LVT U380 ( .A1(n398), .A2(n89), .B1(n334), .B2(addr[0]), .ZN(
        n166) );
  NR3D1BWP16P90LVT U381 ( .A1(addr[7]), .A2(addr[9]), .A3(addr[8]), .ZN(n109)
         );
  AN3D1BWP16P90LVT U382 ( .A1(cur_state[1]), .A2(cur_state[2]), .A3(n332), .Z(
        n323) );
  OAI211D1BWP16P90LVT U383 ( .A1(n51), .A2(n52), .B(n53), .C(n54), .ZN(
        next_state[1]) );
  OAI21D1BWP16P90LVT U384 ( .A1(n49), .A2(n48), .B(n55), .ZN(n54) );
  OAI21D1BWP16P90LVT U385 ( .A1(n56), .A2(n384), .B(cur_state[1]), .ZN(n53) );
  CKND1BWP16P90LVT U386 ( .I(cur_state[2]), .ZN(n331) );
  CKND1BWP16P90LVT U387 ( .I(addr[7]), .ZN(n405) );
  CKND1BWP16P90LVT U388 ( .I(addr[5]), .ZN(n403) );
  CKND1BWP16P90LVT U389 ( .I(addr[4]), .ZN(n402) );
  CKND1BWP16P90LVT U390 ( .I(addr[8]), .ZN(n406) );
  CKND1BWP16P90LVT U391 ( .I(addr[9]), .ZN(n407) );
  CKND1BWP16P90LVT U392 ( .I(addr[3]), .ZN(n401) );
  BUFFD1BWP16P90LVT U393 ( .I(cur_state[0]), .Z(n335) );
  IOA22D1BWP16P90LVT U394 ( .B1(n342), .B2(n398), .A1(lbp_addr[0]), .A2(n341), 
        .ZN(n113) );
  IOA22D1BWP16P90LVT U395 ( .B1(n342), .B2(n408), .A1(lbp_addr[10]), .A2(n341), 
        .ZN(n123) );
  IOA22D1BWP16P90LVT U396 ( .B1(n342), .B2(n399), .A1(lbp_addr[1]), .A2(n341), 
        .ZN(n114) );
  IOA22D1BWP16P90LVT U397 ( .B1(n342), .B2(n409), .A1(lbp_addr[11]), .A2(n341), 
        .ZN(n124) );
  IOA22D1BWP16P90LVT U398 ( .B1(n342), .B2(n404), .A1(lbp_addr[6]), .A2(n341), 
        .ZN(n119) );
  IOA22D1BWP16P90LVT U399 ( .B1(n342), .B2(n400), .A1(lbp_addr[2]), .A2(n341), 
        .ZN(n115) );
  IOA22D1BWP16P90LVT U400 ( .B1(n341), .B2(n407), .A1(lbp_addr[9]), .A2(n341), 
        .ZN(n122) );
  IOA22D1BWP16P90LVT U401 ( .B1(n342), .B2(n401), .A1(lbp_addr[3]), .A2(n341), 
        .ZN(n116) );
  IOA22D1BWP16P90LVT U402 ( .B1(n342), .B2(n402), .A1(lbp_addr[4]), .A2(n341), 
        .ZN(n117) );
  IOA22D1BWP16P90LVT U403 ( .B1(n342), .B2(n403), .A1(lbp_addr[5]), .A2(n341), 
        .ZN(n118) );
  IOA22D1BWP16P90LVT U404 ( .B1(n342), .B2(n405), .A1(lbp_addr[7]), .A2(n341), 
        .ZN(n120) );
  IOA22D1BWP16P90LVT U405 ( .B1(n342), .B2(n406), .A1(lbp_addr[8]), .A2(n341), 
        .ZN(n121) );
  ND3D1BWP16P90LVT U406 ( .A1(n45), .A2(n39), .A3(n46), .ZN(next_state[2]) );
  AOI22D1BWP16P90LVT U407 ( .A1(cur_state[2]), .A2(n47), .B1(n382), .B2(n44), 
        .ZN(n46) );
  BUFFD1BWP16P90LVT U408 ( .I(n322), .Z(n333) );
  CKND1BWP16P90LVT U409 ( .I(N158), .ZN(N109) );
  IND2D1BWP16P90LVT U410 ( .A1(gray_OE), .B1(n87), .ZN(n155) );
  CKND1BWP16P90LVT U411 ( .I(gray_addr[1]), .ZN(N159) );
  CKND1BWP16P90LVT U412 ( .I(center_value[1]), .ZN(n355) );
  CKND1BWP16P90LVT U413 ( .I(center_value[4]), .ZN(n356) );
  CKND1BWP16P90LVT U414 ( .I(center_value[5]), .ZN(n357) );
  CKND1BWP16P90LVT U415 ( .I(rst), .ZN(n370) );
  AOI21D1BWP16P90 U416 ( .A1(cur_state[2]), .A2(n332), .B(n325), .ZN(n288) );
  ND4D1BWP16P90 U417 ( .A1(n335), .A2(cur_state[1]), .A3(n383), .A4(n331), 
        .ZN(n287) );
  OAI21D1BWP16P90 U418 ( .A1(cur_state[1]), .A2(n288), .B(n287), .ZN(n322) );
  AOI22D1BWP16P90 U419 ( .A1(N158), .A2(n323), .B1(N133), .B2(n333), .ZN(n291)
         );
  IOA21D1BWP16P90 U420 ( .A1(n325), .A2(N133), .B(n324), .ZN(n289) );
  AOI222D1BWP16P90 U421 ( .A1(N121), .A2(n328), .B1(N85), .B2(n289), .C1(N158), 
        .C2(n326), .ZN(n290) );
  ND2D1BWP16P90 U422 ( .A1(n291), .A2(n290), .ZN(N277) );
  AOI22D1BWP16P90 U423 ( .A1(N159), .A2(n323), .B1(N134), .B2(n333), .ZN(n294)
         );
  IOA21D1BWP16P90 U424 ( .A1(n325), .A2(N134), .B(n324), .ZN(n292) );
  AOI222D1BWP16P90 U425 ( .A1(N122), .A2(n328), .B1(N86), .B2(n292), .C1(N159), 
        .C2(n326), .ZN(n293) );
  ND2D1BWP16P90 U426 ( .A1(n294), .A2(n293), .ZN(N278) );
  AOI22D1BWP16P90 U427 ( .A1(N173), .A2(n323), .B1(N135), .B2(n333), .ZN(n297)
         );
  IOA21D1BWP16P90 U428 ( .A1(n325), .A2(N135), .B(n324), .ZN(n295) );
  AOI222D1BWP16P90 U429 ( .A1(N123), .A2(n328), .B1(N87), .B2(n295), .C1(N160), 
        .C2(n326), .ZN(n296) );
  ND2D1BWP16P90 U430 ( .A1(n297), .A2(n296), .ZN(N279) );
  AOI22D1BWP16P90 U431 ( .A1(N174), .A2(n323), .B1(N136), .B2(n333), .ZN(n300)
         );
  IOA21D1BWP16P90 U432 ( .A1(n325), .A2(N136), .B(n324), .ZN(n298) );
  AOI222D1BWP16P90 U433 ( .A1(N124), .A2(n328), .B1(N88), .B2(n298), .C1(N161), 
        .C2(n326), .ZN(n299) );
  ND2D1BWP16P90 U434 ( .A1(n300), .A2(n299), .ZN(N280) );
  AOI22D1BWP16P90 U435 ( .A1(N175), .A2(n323), .B1(N137), .B2(n333), .ZN(n303)
         );
  IOA21D1BWP16P90 U436 ( .A1(n325), .A2(N137), .B(n324), .ZN(n301) );
  AOI222D1BWP16P90 U437 ( .A1(N125), .A2(n328), .B1(N89), .B2(n301), .C1(N162), 
        .C2(n326), .ZN(n302) );
  ND2D1BWP16P90 U438 ( .A1(n303), .A2(n302), .ZN(N281) );
  AOI22D1BWP16P90 U439 ( .A1(N176), .A2(n323), .B1(N138), .B2(n333), .ZN(n306)
         );
  IOA21D1BWP16P90 U440 ( .A1(n325), .A2(N138), .B(n324), .ZN(n304) );
  AOI222D1BWP16P90 U441 ( .A1(N126), .A2(n328), .B1(N90), .B2(n304), .C1(N163), 
        .C2(n326), .ZN(n305) );
  ND2D1BWP16P90 U442 ( .A1(n306), .A2(n305), .ZN(N282) );
  AOI22D1BWP16P90 U443 ( .A1(N177), .A2(n323), .B1(N139), .B2(n333), .ZN(n309)
         );
  IOA21D1BWP16P90 U444 ( .A1(n325), .A2(N139), .B(n324), .ZN(n307) );
  AOI222D1BWP16P90 U445 ( .A1(N127), .A2(n328), .B1(N91), .B2(n307), .C1(N164), 
        .C2(n326), .ZN(n308) );
  ND2D1BWP16P90 U446 ( .A1(n309), .A2(n308), .ZN(N283) );
  AOI22D1BWP16P90 U447 ( .A1(N178), .A2(n323), .B1(N140), .B2(n333), .ZN(n312)
         );
  IOA21D1BWP16P90 U448 ( .A1(n325), .A2(N140), .B(n324), .ZN(n310) );
  AOI222D1BWP16P90 U449 ( .A1(N128), .A2(n328), .B1(N92), .B2(n310), .C1(N165), 
        .C2(n326), .ZN(n311) );
  ND2D1BWP16P90 U450 ( .A1(n312), .A2(n311), .ZN(N284) );
  AOI22D1BWP16P90 U451 ( .A1(N179), .A2(n323), .B1(N141), .B2(n333), .ZN(n315)
         );
  IOA21D1BWP16P90 U452 ( .A1(n325), .A2(N141), .B(n324), .ZN(n313) );
  AOI222D1BWP16P90 U453 ( .A1(N129), .A2(n328), .B1(N93), .B2(n313), .C1(N166), 
        .C2(n326), .ZN(n314) );
  ND2D1BWP16P90 U454 ( .A1(n315), .A2(n314), .ZN(N285) );
  AOI22D1BWP16P90 U455 ( .A1(N180), .A2(n323), .B1(N142), .B2(n333), .ZN(n318)
         );
  IOA21D1BWP16P90 U456 ( .A1(n325), .A2(N142), .B(n324), .ZN(n316) );
  AOI222D1BWP16P90 U457 ( .A1(N130), .A2(n328), .B1(N94), .B2(n316), .C1(N167), 
        .C2(n326), .ZN(n317) );
  ND2D1BWP16P90 U458 ( .A1(n318), .A2(n317), .ZN(N286) );
  AOI22D1BWP16P90 U459 ( .A1(N181), .A2(n323), .B1(N143), .B2(n333), .ZN(n321)
         );
  IOA21D1BWP16P90 U460 ( .A1(n325), .A2(N143), .B(n324), .ZN(n319) );
  AOI222D1BWP16P90 U461 ( .A1(N131), .A2(n328), .B1(N95), .B2(n319), .C1(N168), 
        .C2(n326), .ZN(n320) );
  ND2D1BWP16P90 U462 ( .A1(n321), .A2(n320), .ZN(N287) );
  AOI22D1BWP16P90 U463 ( .A1(N182), .A2(n323), .B1(N144), .B2(n333), .ZN(n330)
         );
  IOA21D1BWP16P90 U464 ( .A1(n325), .A2(N144), .B(n324), .ZN(n327) );
  AOI222D1BWP16P90 U465 ( .A1(N132), .A2(n328), .B1(N96), .B2(n327), .C1(N169), 
        .C2(n326), .ZN(n329) );
  ND2D1BWP16P90 U466 ( .A1(n330), .A2(n329), .ZN(N288) );
  XOR2D1BWP16P90 U467 ( .A1(gray_addr[11]), .A2(\r348/carry [11]), .Z(N169) );
  AN2D1BWP16P90 U468 ( .A1(\r348/carry [10]), .A2(gray_addr[10]), .Z(
        \r348/carry [11]) );
  XOR2D1BWP16P90 U469 ( .A1(gray_addr[10]), .A2(\r348/carry [10]), .Z(N168) );
  AN2D1BWP16P90 U470 ( .A1(\r348/carry [9]), .A2(gray_addr[9]), .Z(
        \r348/carry [10]) );
  XOR2D1BWP16P90 U471 ( .A1(gray_addr[9]), .A2(\r348/carry [9]), .Z(N167) );
  AN2D1BWP16P90 U472 ( .A1(\r348/carry [8]), .A2(gray_addr[8]), .Z(
        \r348/carry [9]) );
  XOR2D1BWP16P90 U473 ( .A1(gray_addr[8]), .A2(\r348/carry [8]), .Z(N166) );
  AN2D1BWP16P90 U474 ( .A1(\r348/carry [7]), .A2(gray_addr[7]), .Z(
        \r348/carry [8]) );
  XOR2D1BWP16P90 U475 ( .A1(gray_addr[7]), .A2(\r348/carry [7]), .Z(N165) );
  AN2D1BWP16P90 U476 ( .A1(\r348/carry [6]), .A2(gray_addr[6]), .Z(
        \r348/carry [7]) );
  XOR2D1BWP16P90 U477 ( .A1(gray_addr[6]), .A2(\r348/carry [6]), .Z(N164) );
  OR2D1BWP16P90 U478 ( .A1(gray_addr[5]), .A2(\r348/carry [5]), .Z(
        \r348/carry [6]) );
  XNR2D1BWP16P90 U479 ( .A1(\r348/carry [5]), .A2(gray_addr[5]), .ZN(N163) );
  OR2D1BWP16P90 U480 ( .A1(gray_addr[4]), .A2(\r348/carry [4]), .Z(
        \r348/carry [5]) );
  XNR2D1BWP16P90 U481 ( .A1(\r348/carry [4]), .A2(gray_addr[4]), .ZN(N162) );
  OR2D1BWP16P90 U482 ( .A1(gray_addr[3]), .A2(\r348/carry [3]), .Z(
        \r348/carry [4]) );
  XNR2D1BWP16P90 U483 ( .A1(\r348/carry [3]), .A2(gray_addr[3]), .ZN(N161) );
  OR2D1BWP16P90 U484 ( .A1(gray_addr[2]), .A2(gray_addr[1]), .Z(
        \r348/carry [3]) );
  XNR2D1BWP16P90 U485 ( .A1(gray_addr[1]), .A2(gray_addr[2]), .ZN(N160) );
  XNR2D1BWP16P90 U486 ( .A1(gray_addr[11]), .A2(\sub_68/carry[11] ), .ZN(N120)
         );
  OR2D1BWP16P90 U487 ( .A1(gray_addr[10]), .A2(\sub_68/carry[10] ), .Z(
        \sub_68/carry[11] ) );
  XNR2D1BWP16P90 U488 ( .A1(\sub_68/carry[10] ), .A2(gray_addr[10]), .ZN(N119)
         );
  OR2D1BWP16P90 U489 ( .A1(gray_addr[9]), .A2(\sub_68/carry[9] ), .Z(
        \sub_68/carry[10] ) );
  XNR2D1BWP16P90 U490 ( .A1(\sub_68/carry[9] ), .A2(gray_addr[9]), .ZN(N118)
         );
  OR2D1BWP16P90 U491 ( .A1(gray_addr[8]), .A2(\sub_68/carry[8] ), .Z(
        \sub_68/carry[9] ) );
  XNR2D1BWP16P90 U492 ( .A1(\sub_68/carry[8] ), .A2(gray_addr[8]), .ZN(N117)
         );
  OR2D1BWP16P90 U493 ( .A1(gray_addr[7]), .A2(\sub_68/carry[7] ), .Z(
        \sub_68/carry[8] ) );
  XNR2D1BWP16P90 U494 ( .A1(\sub_68/carry[7] ), .A2(gray_addr[7]), .ZN(N116)
         );
  AN2D1BWP16P90 U495 ( .A1(\sub_68/carry[6] ), .A2(gray_addr[6]), .Z(
        \sub_68/carry[7] ) );
  XOR2D1BWP16P90 U496 ( .A1(gray_addr[6]), .A2(\sub_68/carry[6] ), .Z(N115) );
  OR2D1BWP16P90 U497 ( .A1(gray_addr[5]), .A2(\sub_68/carry[5] ), .Z(
        \sub_68/carry[6] ) );
  XNR2D1BWP16P90 U498 ( .A1(\sub_68/carry[5] ), .A2(gray_addr[5]), .ZN(N114)
         );
  OR2D1BWP16P90 U499 ( .A1(gray_addr[4]), .A2(\sub_68/carry[4] ), .Z(
        \sub_68/carry[5] ) );
  XNR2D1BWP16P90 U500 ( .A1(\sub_68/carry[4] ), .A2(gray_addr[4]), .ZN(N113)
         );
  OR2D1BWP16P90 U501 ( .A1(gray_addr[3]), .A2(\sub_68/carry[3] ), .Z(
        \sub_68/carry[4] ) );
  XNR2D1BWP16P90 U502 ( .A1(\sub_68/carry[3] ), .A2(gray_addr[3]), .ZN(N112)
         );
  OR2D1BWP16P90 U503 ( .A1(gray_addr[2]), .A2(\sub_68/carry[2] ), .Z(
        \sub_68/carry[3] ) );
  XNR2D1BWP16P90 U504 ( .A1(\sub_68/carry[2] ), .A2(gray_addr[2]), .ZN(N111)
         );
  OR2D1BWP16P90 U505 ( .A1(gray_addr[1]), .A2(N158), .Z(\sub_68/carry[2] ) );
  XNR2D1BWP16P90 U506 ( .A1(N158), .A2(gray_addr[1]), .ZN(N110) );
  XOR2D1BWP16P90 U507 ( .A1(gray_addr[11]), .A2(\add_90/carry [11]), .Z(N182)
         );
  AN2D1BWP16P90 U508 ( .A1(\add_90/carry [10]), .A2(gray_addr[10]), .Z(
        \add_90/carry [11]) );
  XOR2D1BWP16P90 U509 ( .A1(gray_addr[10]), .A2(\add_90/carry [10]), .Z(N181)
         );
  AN2D1BWP16P90 U510 ( .A1(\add_90/carry [9]), .A2(gray_addr[9]), .Z(
        \add_90/carry [10]) );
  XOR2D1BWP16P90 U511 ( .A1(gray_addr[9]), .A2(\add_90/carry [9]), .Z(N180) );
  AN2D1BWP16P90 U512 ( .A1(\add_90/carry [8]), .A2(gray_addr[8]), .Z(
        \add_90/carry [9]) );
  XOR2D1BWP16P90 U513 ( .A1(gray_addr[8]), .A2(\add_90/carry [8]), .Z(N179) );
  AN2D1BWP16P90 U514 ( .A1(\add_90/carry [7]), .A2(gray_addr[7]), .Z(
        \add_90/carry [8]) );
  XOR2D1BWP16P90 U515 ( .A1(gray_addr[7]), .A2(\add_90/carry [7]), .Z(N178) );
  AN2D1BWP16P90 U516 ( .A1(\add_90/carry [6]), .A2(gray_addr[6]), .Z(
        \add_90/carry [7]) );
  XOR2D1BWP16P90 U517 ( .A1(gray_addr[6]), .A2(\add_90/carry [6]), .Z(N177) );
  AN2D1BWP16P90 U518 ( .A1(\add_90/carry [5]), .A2(gray_addr[5]), .Z(
        \add_90/carry [6]) );
  XOR2D1BWP16P90 U519 ( .A1(gray_addr[5]), .A2(\add_90/carry [5]), .Z(N176) );
  AN2D1BWP16P90 U520 ( .A1(\add_90/carry [4]), .A2(gray_addr[4]), .Z(
        \add_90/carry [5]) );
  XOR2D1BWP16P90 U521 ( .A1(gray_addr[4]), .A2(\add_90/carry [4]), .Z(N175) );
  AN2D1BWP16P90 U522 ( .A1(\add_90/carry [3]), .A2(gray_addr[3]), .Z(
        \add_90/carry [4]) );
  XOR2D1BWP16P90 U523 ( .A1(gray_addr[3]), .A2(\add_90/carry [3]), .Z(N174) );
  AN2D1BWP16P90 U524 ( .A1(gray_addr[1]), .A2(gray_addr[2]), .Z(
        \add_90/carry [3]) );
  XOR2D1BWP16P90 U525 ( .A1(gray_addr[2]), .A2(gray_addr[1]), .Z(N173) );
  AN2D1BWP16P90 U526 ( .A1(center_value[3]), .A2(n360), .Z(n343) );
  AOI21D1BWP16P90 U527 ( .A1(center_value[2]), .A2(n359), .B(n343), .ZN(n344)
         );
  OAI32D1BWP16P90 U528 ( .A1(n359), .A2(center_value[2]), .A3(n343), .B1(
        center_value[3]), .B2(n360), .ZN(n346) );
  OR2D1BWP16P90 U529 ( .A1(gray_data[5]), .A2(n357), .Z(n348) );
  OAI221D1BWP16P90 U530 ( .A1(gray_data[4]), .A2(n356), .B1(n344), .B2(n346), 
        .C(n348), .ZN(n354) );
  MAOI22D1BWP16P90 U531 ( .A1(center_value[0]), .A2(n358), .B1(n355), .B2(
        gray_data[1]), .ZN(n345) );
  AOI211D1BWP16P90 U532 ( .A1(gray_data[1]), .A2(n355), .B(n346), .C(n345), 
        .ZN(n353) );
  INR2D1BWP16P90 U533 ( .A1(center_value[7]), .B1(gray_data[7]), .ZN(n347) );
  AOI21D1BWP16P90 U534 ( .A1(n362), .A2(center_value[6]), .B(n347), .ZN(n351)
         );
  OAI32D1BWP16P90 U535 ( .A1(n362), .A2(center_value[6]), .A3(n347), .B1(
        center_value[7]), .B2(n364), .ZN(n350) );
  AOI32D1BWP16P90 U536 ( .A1(gray_data[4]), .A2(n356), .A3(n348), .B1(n357), 
        .B2(gray_data[5]), .ZN(n349) );
  OAI22D1BWP16P90 U537 ( .A1(n351), .A2(n350), .B1(n350), .B2(n361), .ZN(n352)
         );
  OAI31D1BWP16P90 U538 ( .A1(n354), .A2(n353), .A3(n363), .B(n352), .ZN(
        \r347/GE_LT_GT_LE ) );
  ND2D1BWP16P90 U539 ( .A1(addr[7]), .A2(addr[6]), .ZN(n367) );
  ND4D1BWP16P90 U540 ( .A1(addr[3]), .A2(addr[2]), .A3(addr[1]), .A4(addr[0]), 
        .ZN(n366) );
  AOI31D1BWP16P90 U541 ( .A1(addr[4]), .A2(addr[7]), .A3(addr[5]), .B(n369), 
        .ZN(n365) );
  AOI211D1BWP16P90 U542 ( .A1(n367), .A2(n366), .B(n408), .C(n365), .ZN(n368)
         );
  ND4D1BWP16P90 U543 ( .A1(addr[8]), .A2(addr[11]), .A3(addr[9]), .A4(n368), 
        .ZN(N225) );
endmodule

