/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Fri Mar 15 17:02:02 2024
/////////////////////////////////////////////////////////////


module fixedpoint_s_DW01_inc_0 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  HA1D1BWP16P90LVT U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
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
endmodule


module fixedpoint_s_DW01_inc_1 ( A, SUM );
  input [8:0] A;
  output [8:0] SUM;

  wire   [8:2] carry;

  HA1D1BWP16P90LVT U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
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
endmodule


module fixedpoint_s_DW_mult_uns_3 ( a, b, product );
  input [7:0] a;
  input [8:0] b;
  output [16:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n166, n167, n168, n169, n170, n171, n172, n173,
         n175, n176, n177, n178, n179, n180, n181, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259;

  FA1D1BWP16P90LVT U3 ( .A(n18), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D1BWP16P90LVT U4 ( .A(n22), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D1BWP16P90LVT U5 ( .A(n23), .B(n28), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D1BWP16P90LVT U6 ( .A(n29), .B(n36), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D1BWP16P90LVT U7 ( .A(n37), .B(n46), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D1BWP16P90LVT U8 ( .A(n47), .B(n58), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D1BWP16P90LVT U9 ( .A(n59), .B(n70), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D1BWP16P90LVT U10 ( .A(n71), .B(n82), .CI(n231), .CO(n9), .S(product[7])
         );
  FA1D1BWP16P90LVT U17 ( .A(n113), .B(n121), .CI(n20), .CO(n16), .S(n17) );
  FA1D1BWP16P90LVT U18 ( .A(n21), .B(n26), .CI(n24), .CO(n18), .S(n19) );
  FA1D1BWP16P90LVT U19 ( .A(n114), .B(n130), .CI(n122), .CO(n20), .S(n21) );
  FA1D1BWP16P90LVT U20 ( .A(n25), .B(n32), .CI(n30), .CO(n22), .S(n23) );
  FA1D1BWP16P90LVT U21 ( .A(n34), .B(n131), .CI(n27), .CO(n24), .S(n25) );
  FA1D1BWP16P90LVT U22 ( .A(n115), .B(n139), .CI(n123), .CO(n26), .S(n27) );
  FA1D1BWP16P90LVT U23 ( .A(n38), .B(n33), .CI(n31), .CO(n28), .S(n29) );
  FA1D1BWP16P90LVT U24 ( .A(n35), .B(n42), .CI(n40), .CO(n30), .S(n31) );
  FA1D1BWP16P90LVT U25 ( .A(n132), .B(n140), .CI(n44), .CO(n32), .S(n33) );
  FA1D1BWP16P90LVT U26 ( .A(n116), .B(n148), .CI(n124), .CO(n34), .S(n35) );
  FA1D1BWP16P90LVT U27 ( .A(n48), .B(n41), .CI(n39), .CO(n36), .S(n37) );
  FA1D1BWP16P90LVT U28 ( .A(n52), .B(n45), .CI(n50), .CO(n38), .S(n39) );
  FA1D1BWP16P90LVT U29 ( .A(n54), .B(n56), .CI(n43), .CO(n40), .S(n41) );
  FA1D1BWP16P90LVT U30 ( .A(n141), .B(n133), .CI(n149), .CO(n42), .S(n43) );
  FA1D1BWP16P90LVT U31 ( .A(n117), .B(n157), .CI(n125), .CO(n44), .S(n45) );
  FA1D1BWP16P90LVT U32 ( .A(n60), .B(n51), .CI(n49), .CO(n46), .S(n47) );
  FA1D1BWP16P90LVT U33 ( .A(n53), .B(n64), .CI(n62), .CO(n48), .S(n49) );
  FA1D1BWP16P90LVT U34 ( .A(n66), .B(n68), .CI(n55), .CO(n50), .S(n51) );
  FA1D1BWP16P90LVT U35 ( .A(n134), .B(n142), .CI(n57), .CO(n52), .S(n53) );
  FA1D1BWP16P90LVT U36 ( .A(n166), .B(n150), .CI(n158), .CO(n54), .S(n55) );
  HA1D2BWP16P90LVT U37 ( .A(n126), .B(n118), .CO(n56), .S(n57) );
  FA1D1BWP16P90LVT U38 ( .A(n63), .B(n72), .CI(n61), .CO(n58), .S(n59) );
  FA1D1BWP16P90LVT U39 ( .A(n74), .B(n69), .CI(n65), .CO(n60), .S(n61) );
  FA1D1BWP16P90LVT U40 ( .A(n76), .B(n78), .CI(n67), .CO(n62), .S(n63) );
  FA1D1BWP16P90LVT U41 ( .A(n159), .B(n167), .CI(n80), .CO(n64), .S(n65) );
  FA1D1BWP16P90LVT U42 ( .A(n143), .B(n175), .CI(n151), .CO(n66), .S(n67) );
  FA1D1BWP16P90LVT U43 ( .A(n119), .B(n127), .CI(n135), .CO(n68), .S(n69) );
  FA1D1BWP16P90LVT U44 ( .A(n75), .B(n84), .CI(n73), .CO(n70), .S(n71) );
  FA1D1BWP16P90LVT U45 ( .A(n79), .B(n77), .CI(n86), .CO(n72), .S(n73) );
  FA1D1BWP16P90LVT U46 ( .A(n81), .B(n90), .CI(n88), .CO(n74), .S(n75) );
  FA1D1BWP16P90LVT U47 ( .A(n144), .B(n160), .CI(n152), .CO(n76), .S(n77) );
  FA1D1BWP16P90LVT U48 ( .A(n136), .B(n176), .CI(n168), .CO(n78), .S(n79) );
  HA1D2BWP16P90LVT U49 ( .A(n128), .B(n120), .CO(n80), .S(n81) );
  FA1D1BWP16P90LVT U50 ( .A(n87), .B(n94), .CI(n85), .CO(n82), .S(n83) );
  FA1D1BWP16P90LVT U51 ( .A(n96), .B(n91), .CI(n89), .CO(n84), .S(n85) );
  FA1D1BWP16P90LVT U52 ( .A(n153), .B(n161), .CI(n98), .CO(n86), .S(n87) );
  FA1D1BWP16P90LVT U53 ( .A(n145), .B(n177), .CI(n169), .CO(n88), .S(n89) );
  HA1D2BWP16P90LVT U54 ( .A(n137), .B(n129), .CO(n90), .S(n91) );
  FA1D1BWP16P90LVT U55 ( .A(n97), .B(n102), .CI(n95), .CO(n92), .S(n93) );
  FA1D1BWP16P90LVT U56 ( .A(n104), .B(n170), .CI(n99), .CO(n94), .S(n95) );
  FA1D1BWP16P90LVT U57 ( .A(n154), .B(n178), .CI(n162), .CO(n96), .S(n97) );
  HA1D2BWP16P90LVT U58 ( .A(n146), .B(n138), .CO(n98), .S(n99) );
  FA1D1BWP16P90LVT U59 ( .A(n105), .B(n108), .CI(n103), .CO(n100), .S(n101) );
  FA1D1BWP16P90LVT U60 ( .A(n163), .B(n179), .CI(n171), .CO(n102), .S(n103) );
  HA1D2BWP16P90LVT U61 ( .A(n155), .B(n147), .CO(n104), .S(n105) );
  FA1D1BWP16P90LVT U62 ( .A(n172), .B(n180), .CI(n110), .CO(n106), .S(n107) );
  HA1D2BWP16P90LVT U63 ( .A(n164), .B(n156), .CO(n108), .S(n109) );
  HA1D2BWP16P90LVT U64 ( .A(n181), .B(n173), .CO(n110), .S(n111) );
  CKND1BWP16P90LVT U155 ( .I(n253), .ZN(n231) );
  CKND1BWP16P90LVT U156 ( .I(n254), .ZN(n233) );
  CKND1BWP16P90LVT U157 ( .I(b[7]), .ZN(n244) );
  CKND1BWP16P90LVT U158 ( .I(b[8]), .ZN(n243) );
  CKND1BWP16P90LVT U159 ( .I(b[0]), .ZN(n251) );
  CKND1BWP16P90LVT U160 ( .I(n255), .ZN(n235) );
  CKND1BWP16P90LVT U161 ( .I(n107), .ZN(n240) );
  CKND1BWP16P90LVT U162 ( .I(n109), .ZN(n237) );
  CKND1BWP16P90LVT U163 ( .I(b[2]), .ZN(n249) );
  CKND1BWP16P90LVT U164 ( .I(b[3]), .ZN(n248) );
  CKND1BWP16P90LVT U165 ( .I(b[4]), .ZN(n247) );
  CKND1BWP16P90LVT U166 ( .I(b[5]), .ZN(n246) );
  CKND1BWP16P90LVT U167 ( .I(b[6]), .ZN(n245) );
  CKND1BWP16P90LVT U168 ( .I(b[1]), .ZN(n250) );
  CKND1BWP16P90LVT U169 ( .I(a[0]), .ZN(n242) );
  CKND1BWP16P90LVT U170 ( .I(a[2]), .ZN(n239) );
  CKND1BWP16P90LVT U171 ( .I(a[4]), .ZN(n236) );
  CKND1BWP16P90LVT U172 ( .I(a[6]), .ZN(n232) );
  CKND1BWP16P90LVT U173 ( .I(a[5]), .ZN(n234) );
  CKND1BWP16P90LVT U174 ( .I(a[3]), .ZN(n238) );
  CKND1BWP16P90LVT U175 ( .I(a[1]), .ZN(n241) );
  CKND1BWP16P90LVT U176 ( .I(a[7]), .ZN(n230) );
  XOR3D1BWP16P90 U177 ( .A1(n2), .A2(n16), .A3(n252), .Z(product[15]) );
  NR2D1BWP16P90 U178 ( .A1(n230), .A2(n243), .ZN(n252) );
  NR2D1BWP16P90 U179 ( .A1(n242), .A2(n249), .ZN(n181) );
  NR2D1BWP16P90 U180 ( .A1(n242), .A2(n248), .ZN(n180) );
  NR2D1BWP16P90 U181 ( .A1(n242), .A2(n247), .ZN(n179) );
  NR2D1BWP16P90 U182 ( .A1(n242), .A2(n246), .ZN(n178) );
  NR2D1BWP16P90 U183 ( .A1(n242), .A2(n245), .ZN(n177) );
  NR2D1BWP16P90 U184 ( .A1(n242), .A2(n244), .ZN(n176) );
  NR2D1BWP16P90 U185 ( .A1(n243), .A2(n242), .ZN(n175) );
  NR2D1BWP16P90 U186 ( .A1(n241), .A2(n250), .ZN(n173) );
  NR2D1BWP16P90 U187 ( .A1(n249), .A2(n241), .ZN(n172) );
  NR2D1BWP16P90 U188 ( .A1(n248), .A2(n241), .ZN(n171) );
  NR2D1BWP16P90 U189 ( .A1(n247), .A2(n241), .ZN(n170) );
  NR2D1BWP16P90 U190 ( .A1(n246), .A2(n241), .ZN(n169) );
  NR2D1BWP16P90 U191 ( .A1(n245), .A2(n241), .ZN(n168) );
  NR2D1BWP16P90 U192 ( .A1(n244), .A2(n241), .ZN(n167) );
  NR2D1BWP16P90 U193 ( .A1(n243), .A2(n241), .ZN(n166) );
  NR2D1BWP16P90 U194 ( .A1(n250), .A2(n239), .ZN(n164) );
  NR2D1BWP16P90 U195 ( .A1(n249), .A2(n239), .ZN(n163) );
  NR2D1BWP16P90 U196 ( .A1(n248), .A2(n239), .ZN(n162) );
  NR2D1BWP16P90 U197 ( .A1(n247), .A2(n239), .ZN(n161) );
  NR2D1BWP16P90 U198 ( .A1(n246), .A2(n239), .ZN(n160) );
  NR2D1BWP16P90 U199 ( .A1(n245), .A2(n239), .ZN(n159) );
  NR2D1BWP16P90 U200 ( .A1(n244), .A2(n239), .ZN(n158) );
  NR2D1BWP16P90 U201 ( .A1(n243), .A2(n239), .ZN(n157) );
  NR2D1BWP16P90 U202 ( .A1(n238), .A2(n251), .ZN(n156) );
  NR2D1BWP16P90 U203 ( .A1(n250), .A2(n238), .ZN(n155) );
  NR2D1BWP16P90 U204 ( .A1(n249), .A2(n238), .ZN(n154) );
  NR2D1BWP16P90 U205 ( .A1(n248), .A2(n238), .ZN(n153) );
  NR2D1BWP16P90 U206 ( .A1(n247), .A2(n238), .ZN(n152) );
  NR2D1BWP16P90 U207 ( .A1(n246), .A2(n238), .ZN(n151) );
  NR2D1BWP16P90 U208 ( .A1(n245), .A2(n238), .ZN(n150) );
  NR2D1BWP16P90 U209 ( .A1(n244), .A2(n238), .ZN(n149) );
  NR2D1BWP16P90 U210 ( .A1(n243), .A2(n238), .ZN(n148) );
  NR2D1BWP16P90 U211 ( .A1(n251), .A2(n236), .ZN(n147) );
  NR2D1BWP16P90 U212 ( .A1(n250), .A2(n236), .ZN(n146) );
  NR2D1BWP16P90 U213 ( .A1(n249), .A2(n236), .ZN(n145) );
  NR2D1BWP16P90 U214 ( .A1(n248), .A2(n236), .ZN(n144) );
  NR2D1BWP16P90 U215 ( .A1(n247), .A2(n236), .ZN(n143) );
  NR2D1BWP16P90 U216 ( .A1(n246), .A2(n236), .ZN(n142) );
  NR2D1BWP16P90 U217 ( .A1(n245), .A2(n236), .ZN(n141) );
  NR2D1BWP16P90 U218 ( .A1(n244), .A2(n236), .ZN(n140) );
  NR2D1BWP16P90 U219 ( .A1(n243), .A2(n236), .ZN(n139) );
  NR2D1BWP16P90 U220 ( .A1(n251), .A2(n234), .ZN(n138) );
  NR2D1BWP16P90 U221 ( .A1(n250), .A2(n234), .ZN(n137) );
  NR2D1BWP16P90 U222 ( .A1(n249), .A2(n234), .ZN(n136) );
  NR2D1BWP16P90 U223 ( .A1(n248), .A2(n234), .ZN(n135) );
  NR2D1BWP16P90 U224 ( .A1(n247), .A2(n234), .ZN(n134) );
  NR2D1BWP16P90 U225 ( .A1(n246), .A2(n234), .ZN(n133) );
  NR2D1BWP16P90 U226 ( .A1(n245), .A2(n234), .ZN(n132) );
  NR2D1BWP16P90 U227 ( .A1(n244), .A2(n234), .ZN(n131) );
  NR2D1BWP16P90 U228 ( .A1(n243), .A2(n234), .ZN(n130) );
  NR2D1BWP16P90 U229 ( .A1(n251), .A2(n232), .ZN(n129) );
  NR2D1BWP16P90 U230 ( .A1(n250), .A2(n232), .ZN(n128) );
  NR2D1BWP16P90 U231 ( .A1(n249), .A2(n232), .ZN(n127) );
  NR2D1BWP16P90 U232 ( .A1(n248), .A2(n232), .ZN(n126) );
  NR2D1BWP16P90 U233 ( .A1(n247), .A2(n232), .ZN(n125) );
  NR2D1BWP16P90 U234 ( .A1(n246), .A2(n232), .ZN(n124) );
  NR2D1BWP16P90 U235 ( .A1(n245), .A2(n232), .ZN(n123) );
  NR2D1BWP16P90 U236 ( .A1(n244), .A2(n232), .ZN(n122) );
  NR2D1BWP16P90 U237 ( .A1(n243), .A2(n232), .ZN(n121) );
  NR2D1BWP16P90 U238 ( .A1(n230), .A2(n251), .ZN(n120) );
  NR2D1BWP16P90 U239 ( .A1(n230), .A2(n250), .ZN(n119) );
  NR2D1BWP16P90 U240 ( .A1(n230), .A2(n249), .ZN(n118) );
  NR2D1BWP16P90 U241 ( .A1(n230), .A2(n248), .ZN(n117) );
  NR2D1BWP16P90 U242 ( .A1(n230), .A2(n247), .ZN(n116) );
  NR2D1BWP16P90 U243 ( .A1(n230), .A2(n246), .ZN(n115) );
  NR2D1BWP16P90 U244 ( .A1(n230), .A2(n245), .ZN(n114) );
  NR2D1BWP16P90 U245 ( .A1(n230), .A2(n244), .ZN(n113) );
  AOI222D1BWP16P90 U246 ( .A1(n233), .A2(n83), .B1(n233), .B2(n92), .C1(n92), 
        .C2(n83), .ZN(n253) );
  AOI222D1BWP16P90 U247 ( .A1(n235), .A2(n93), .B1(n235), .B2(n100), .C1(n100), 
        .C2(n93), .ZN(n254) );
  AOI222D1BWP16P90 U248 ( .A1(n256), .A2(n101), .B1(n256), .B2(n106), .C1(n106), .C2(n101), .ZN(n255) );
  OAI222D1BWP16P90 U249 ( .A1(n257), .A2(n240), .B1(n240), .B2(n237), .C1(n257), .C2(n237), .ZN(n256) );
  AOI222D1BWP16P90 U250 ( .A1(n111), .A2(n258), .B1(n259), .B2(n111), .C1(n259), .C2(n258), .ZN(n257) );
  NR2D1BWP16P90 U251 ( .A1(n251), .A2(n239), .ZN(n259) );
  NR4D1BWP16P90 U252 ( .A1(n251), .A2(n250), .A3(n241), .A4(n242), .ZN(n258)
         );
endmodule


module fixedpoint_s_DW01_inc_9 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

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
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint_s_DW01_inc_8 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

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
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint_s_DW01_inc_7 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

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
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint_s_DW_mult_uns_1 ( a, b, product );
  input [8:0] a;
  input [7:0] b;
  output [16:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n166, n167, n168, n169, n170, n171, n172, n173,
         n175, n176, n177, n178, n179, n180, n181, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259;

  FA1D1BWP16P90LVT U3 ( .A(n18), .B(n17), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D1BWP16P90LVT U4 ( .A(n22), .B(n19), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D1BWP16P90LVT U5 ( .A(n23), .B(n28), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D1BWP16P90LVT U6 ( .A(n29), .B(n36), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D1BWP16P90LVT U7 ( .A(n37), .B(n46), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D1BWP16P90LVT U8 ( .A(n47), .B(n58), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D1BWP16P90LVT U9 ( .A(n59), .B(n70), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D1BWP16P90LVT U10 ( .A(n71), .B(n82), .CI(n232), .CO(n9), .S(product[7])
         );
  FA1D1BWP16P90LVT U17 ( .A(n113), .B(n121), .CI(n20), .CO(n16), .S(n17) );
  FA1D1BWP16P90LVT U18 ( .A(n21), .B(n26), .CI(n24), .CO(n18), .S(n19) );
  FA1D1BWP16P90LVT U19 ( .A(n114), .B(n130), .CI(n122), .CO(n20), .S(n21) );
  FA1D1BWP16P90LVT U20 ( .A(n25), .B(n32), .CI(n30), .CO(n22), .S(n23) );
  FA1D1BWP16P90LVT U21 ( .A(n34), .B(n131), .CI(n27), .CO(n24), .S(n25) );
  FA1D1BWP16P90LVT U22 ( .A(n115), .B(n139), .CI(n123), .CO(n26), .S(n27) );
  FA1D1BWP16P90LVT U23 ( .A(n38), .B(n33), .CI(n31), .CO(n28), .S(n29) );
  FA1D1BWP16P90LVT U24 ( .A(n35), .B(n42), .CI(n40), .CO(n30), .S(n31) );
  FA1D1BWP16P90LVT U25 ( .A(n132), .B(n140), .CI(n44), .CO(n32), .S(n33) );
  FA1D1BWP16P90LVT U26 ( .A(n116), .B(n148), .CI(n124), .CO(n34), .S(n35) );
  FA1D1BWP16P90LVT U27 ( .A(n48), .B(n41), .CI(n39), .CO(n36), .S(n37) );
  FA1D1BWP16P90LVT U28 ( .A(n52), .B(n45), .CI(n50), .CO(n38), .S(n39) );
  FA1D1BWP16P90LVT U29 ( .A(n54), .B(n56), .CI(n43), .CO(n40), .S(n41) );
  FA1D1BWP16P90LVT U30 ( .A(n141), .B(n133), .CI(n149), .CO(n42), .S(n43) );
  FA1D1BWP16P90LVT U31 ( .A(n117), .B(n157), .CI(n125), .CO(n44), .S(n45) );
  FA1D1BWP16P90LVT U32 ( .A(n60), .B(n51), .CI(n49), .CO(n46), .S(n47) );
  FA1D1BWP16P90LVT U33 ( .A(n53), .B(n64), .CI(n62), .CO(n48), .S(n49) );
  FA1D1BWP16P90LVT U34 ( .A(n66), .B(n68), .CI(n55), .CO(n50), .S(n51) );
  FA1D1BWP16P90LVT U35 ( .A(n134), .B(n142), .CI(n57), .CO(n52), .S(n53) );
  FA1D1BWP16P90LVT U36 ( .A(n166), .B(n150), .CI(n158), .CO(n54), .S(n55) );
  HA1D2BWP16P90LVT U37 ( .A(n126), .B(n118), .CO(n56), .S(n57) );
  FA1D1BWP16P90LVT U38 ( .A(n63), .B(n72), .CI(n61), .CO(n58), .S(n59) );
  FA1D1BWP16P90LVT U39 ( .A(n74), .B(n69), .CI(n65), .CO(n60), .S(n61) );
  FA1D1BWP16P90LVT U40 ( .A(n76), .B(n78), .CI(n67), .CO(n62), .S(n63) );
  FA1D1BWP16P90LVT U41 ( .A(n159), .B(n167), .CI(n80), .CO(n64), .S(n65) );
  FA1D1BWP16P90LVT U42 ( .A(n143), .B(n175), .CI(n151), .CO(n66), .S(n67) );
  FA1D1BWP16P90LVT U43 ( .A(n119), .B(n127), .CI(n135), .CO(n68), .S(n69) );
  FA1D1BWP16P90LVT U44 ( .A(n75), .B(n84), .CI(n73), .CO(n70), .S(n71) );
  FA1D1BWP16P90LVT U45 ( .A(n79), .B(n77), .CI(n86), .CO(n72), .S(n73) );
  FA1D1BWP16P90LVT U46 ( .A(n81), .B(n90), .CI(n88), .CO(n74), .S(n75) );
  FA1D1BWP16P90LVT U47 ( .A(n144), .B(n160), .CI(n152), .CO(n76), .S(n77) );
  FA1D1BWP16P90LVT U48 ( .A(n136), .B(n176), .CI(n168), .CO(n78), .S(n79) );
  HA1D2BWP16P90LVT U49 ( .A(n128), .B(n120), .CO(n80), .S(n81) );
  FA1D1BWP16P90LVT U50 ( .A(n87), .B(n94), .CI(n85), .CO(n82), .S(n83) );
  FA1D1BWP16P90LVT U51 ( .A(n96), .B(n91), .CI(n89), .CO(n84), .S(n85) );
  FA1D1BWP16P90LVT U52 ( .A(n153), .B(n161), .CI(n98), .CO(n86), .S(n87) );
  FA1D1BWP16P90LVT U53 ( .A(n145), .B(n177), .CI(n169), .CO(n88), .S(n89) );
  HA1D2BWP16P90LVT U54 ( .A(n137), .B(n129), .CO(n90), .S(n91) );
  FA1D1BWP16P90LVT U55 ( .A(n97), .B(n102), .CI(n95), .CO(n92), .S(n93) );
  FA1D1BWP16P90LVT U56 ( .A(n104), .B(n170), .CI(n99), .CO(n94), .S(n95) );
  FA1D1BWP16P90LVT U57 ( .A(n154), .B(n178), .CI(n162), .CO(n96), .S(n97) );
  HA1D2BWP16P90LVT U58 ( .A(n146), .B(n138), .CO(n98), .S(n99) );
  FA1D1BWP16P90LVT U59 ( .A(n105), .B(n108), .CI(n103), .CO(n100), .S(n101) );
  FA1D1BWP16P90LVT U60 ( .A(n163), .B(n179), .CI(n171), .CO(n102), .S(n103) );
  HA1D2BWP16P90LVT U61 ( .A(n155), .B(n147), .CO(n104), .S(n105) );
  FA1D1BWP16P90LVT U62 ( .A(n172), .B(n180), .CI(n110), .CO(n106), .S(n107) );
  HA1D2BWP16P90LVT U63 ( .A(n164), .B(n156), .CO(n108), .S(n109) );
  HA1D2BWP16P90LVT U64 ( .A(n181), .B(n173), .CO(n110), .S(n111) );
  CKND1BWP16P90LVT U155 ( .I(n253), .ZN(n232) );
  CKND1BWP16P90LVT U156 ( .I(n254), .ZN(n234) );
  CKND1BWP16P90LVT U157 ( .I(n255), .ZN(n236) );
  CKND1BWP16P90LVT U158 ( .I(a[7]), .ZN(n231) );
  CKND1BWP16P90LVT U159 ( .I(a[8]), .ZN(n230) );
  CKND1BWP16P90LVT U160 ( .I(a[0]), .ZN(n243) );
  CKND1BWP16P90LVT U161 ( .I(n107), .ZN(n238) );
  CKND1BWP16P90LVT U162 ( .I(n109), .ZN(n241) );
  CKND1BWP16P90LVT U163 ( .I(a[3]), .ZN(n239) );
  CKND1BWP16P90LVT U164 ( .I(a[5]), .ZN(n235) );
  CKND1BWP16P90LVT U165 ( .I(a[1]), .ZN(n242) );
  CKND1BWP16P90LVT U166 ( .I(a[4]), .ZN(n237) );
  CKND1BWP16P90LVT U167 ( .I(a[6]), .ZN(n233) );
  CKND1BWP16P90LVT U168 ( .I(a[2]), .ZN(n240) );
  CKND1BWP16P90LVT U169 ( .I(b[0]), .ZN(n251) );
  CKND1BWP16P90LVT U170 ( .I(b[2]), .ZN(n249) );
  CKND1BWP16P90LVT U171 ( .I(b[3]), .ZN(n248) );
  CKND1BWP16P90LVT U172 ( .I(b[4]), .ZN(n247) );
  CKND1BWP16P90LVT U173 ( .I(b[6]), .ZN(n245) );
  CKND1BWP16P90LVT U174 ( .I(b[5]), .ZN(n246) );
  CKND1BWP16P90LVT U175 ( .I(b[1]), .ZN(n250) );
  CKND1BWP16P90LVT U176 ( .I(b[7]), .ZN(n244) );
  XOR3D1BWP16P90 U177 ( .A1(n2), .A2(n16), .A3(n252), .Z(product[15]) );
  NR2D1BWP16P90 U178 ( .A1(n230), .A2(n244), .ZN(n252) );
  NR2D1BWP16P90 U179 ( .A1(n240), .A2(n251), .ZN(n181) );
  NR2D1BWP16P90 U180 ( .A1(n251), .A2(n239), .ZN(n180) );
  NR2D1BWP16P90 U181 ( .A1(n251), .A2(n237), .ZN(n179) );
  NR2D1BWP16P90 U182 ( .A1(n251), .A2(n235), .ZN(n178) );
  NR2D1BWP16P90 U183 ( .A1(n251), .A2(n233), .ZN(n177) );
  NR2D1BWP16P90 U184 ( .A1(n251), .A2(n231), .ZN(n176) );
  NR2D1BWP16P90 U185 ( .A1(n230), .A2(n251), .ZN(n175) );
  NR2D1BWP16P90 U186 ( .A1(n242), .A2(n250), .ZN(n173) );
  NR2D1BWP16P90 U187 ( .A1(n240), .A2(n250), .ZN(n172) );
  NR2D1BWP16P90 U188 ( .A1(n239), .A2(n250), .ZN(n171) );
  NR2D1BWP16P90 U189 ( .A1(n237), .A2(n250), .ZN(n170) );
  NR2D1BWP16P90 U190 ( .A1(n235), .A2(n250), .ZN(n169) );
  NR2D1BWP16P90 U191 ( .A1(n233), .A2(n250), .ZN(n168) );
  NR2D1BWP16P90 U192 ( .A1(n231), .A2(n250), .ZN(n167) );
  NR2D1BWP16P90 U193 ( .A1(n230), .A2(n250), .ZN(n166) );
  NR2D1BWP16P90 U194 ( .A1(n242), .A2(n249), .ZN(n164) );
  NR2D1BWP16P90 U195 ( .A1(n240), .A2(n249), .ZN(n163) );
  NR2D1BWP16P90 U196 ( .A1(n239), .A2(n249), .ZN(n162) );
  NR2D1BWP16P90 U197 ( .A1(n237), .A2(n249), .ZN(n161) );
  NR2D1BWP16P90 U198 ( .A1(n235), .A2(n249), .ZN(n160) );
  NR2D1BWP16P90 U199 ( .A1(n233), .A2(n249), .ZN(n159) );
  NR2D1BWP16P90 U200 ( .A1(n231), .A2(n249), .ZN(n158) );
  NR2D1BWP16P90 U201 ( .A1(n230), .A2(n249), .ZN(n157) );
  NR2D1BWP16P90 U202 ( .A1(n243), .A2(n248), .ZN(n156) );
  NR2D1BWP16P90 U203 ( .A1(n242), .A2(n248), .ZN(n155) );
  NR2D1BWP16P90 U204 ( .A1(n240), .A2(n248), .ZN(n154) );
  NR2D1BWP16P90 U205 ( .A1(n239), .A2(n248), .ZN(n153) );
  NR2D1BWP16P90 U206 ( .A1(n237), .A2(n248), .ZN(n152) );
  NR2D1BWP16P90 U207 ( .A1(n235), .A2(n248), .ZN(n151) );
  NR2D1BWP16P90 U208 ( .A1(n233), .A2(n248), .ZN(n150) );
  NR2D1BWP16P90 U209 ( .A1(n231), .A2(n248), .ZN(n149) );
  NR2D1BWP16P90 U210 ( .A1(n230), .A2(n248), .ZN(n148) );
  NR2D1BWP16P90 U211 ( .A1(n243), .A2(n247), .ZN(n147) );
  NR2D1BWP16P90 U212 ( .A1(n242), .A2(n247), .ZN(n146) );
  NR2D1BWP16P90 U213 ( .A1(n240), .A2(n247), .ZN(n145) );
  NR2D1BWP16P90 U214 ( .A1(n239), .A2(n247), .ZN(n144) );
  NR2D1BWP16P90 U215 ( .A1(n237), .A2(n247), .ZN(n143) );
  NR2D1BWP16P90 U216 ( .A1(n235), .A2(n247), .ZN(n142) );
  NR2D1BWP16P90 U217 ( .A1(n233), .A2(n247), .ZN(n141) );
  NR2D1BWP16P90 U218 ( .A1(n231), .A2(n247), .ZN(n140) );
  NR2D1BWP16P90 U219 ( .A1(n230), .A2(n247), .ZN(n139) );
  NR2D1BWP16P90 U220 ( .A1(n243), .A2(n246), .ZN(n138) );
  NR2D1BWP16P90 U221 ( .A1(n242), .A2(n246), .ZN(n137) );
  NR2D1BWP16P90 U222 ( .A1(n240), .A2(n246), .ZN(n136) );
  NR2D1BWP16P90 U223 ( .A1(n239), .A2(n246), .ZN(n135) );
  NR2D1BWP16P90 U224 ( .A1(n237), .A2(n246), .ZN(n134) );
  NR2D1BWP16P90 U225 ( .A1(n235), .A2(n246), .ZN(n133) );
  NR2D1BWP16P90 U226 ( .A1(n233), .A2(n246), .ZN(n132) );
  NR2D1BWP16P90 U227 ( .A1(n231), .A2(n246), .ZN(n131) );
  NR2D1BWP16P90 U228 ( .A1(n230), .A2(n246), .ZN(n130) );
  NR2D1BWP16P90 U229 ( .A1(n243), .A2(n245), .ZN(n129) );
  NR2D1BWP16P90 U230 ( .A1(n242), .A2(n245), .ZN(n128) );
  NR2D1BWP16P90 U231 ( .A1(n240), .A2(n245), .ZN(n127) );
  NR2D1BWP16P90 U232 ( .A1(n239), .A2(n245), .ZN(n126) );
  NR2D1BWP16P90 U233 ( .A1(n237), .A2(n245), .ZN(n125) );
  NR2D1BWP16P90 U234 ( .A1(n235), .A2(n245), .ZN(n124) );
  NR2D1BWP16P90 U235 ( .A1(n233), .A2(n245), .ZN(n123) );
  NR2D1BWP16P90 U236 ( .A1(n231), .A2(n245), .ZN(n122) );
  NR2D1BWP16P90 U237 ( .A1(n230), .A2(n245), .ZN(n121) );
  NR2D1BWP16P90 U238 ( .A1(n244), .A2(n243), .ZN(n120) );
  NR2D1BWP16P90 U239 ( .A1(n244), .A2(n242), .ZN(n119) );
  NR2D1BWP16P90 U240 ( .A1(n244), .A2(n240), .ZN(n118) );
  NR2D1BWP16P90 U241 ( .A1(n244), .A2(n239), .ZN(n117) );
  NR2D1BWP16P90 U242 ( .A1(n244), .A2(n237), .ZN(n116) );
  NR2D1BWP16P90 U243 ( .A1(n244), .A2(n235), .ZN(n115) );
  NR2D1BWP16P90 U244 ( .A1(n244), .A2(n233), .ZN(n114) );
  NR2D1BWP16P90 U245 ( .A1(n244), .A2(n231), .ZN(n113) );
  AOI222D1BWP16P90 U246 ( .A1(n234), .A2(n83), .B1(n234), .B2(n92), .C1(n92), 
        .C2(n83), .ZN(n253) );
  AOI222D1BWP16P90 U247 ( .A1(n236), .A2(n93), .B1(n236), .B2(n100), .C1(n100), 
        .C2(n93), .ZN(n254) );
  AOI222D1BWP16P90 U248 ( .A1(n256), .A2(n101), .B1(n256), .B2(n106), .C1(n106), .C2(n101), .ZN(n255) );
  OAI222D1BWP16P90 U249 ( .A1(n257), .A2(n238), .B1(n238), .B2(n241), .C1(n257), .C2(n241), .ZN(n256) );
  AOI222D1BWP16P90 U250 ( .A1(n111), .A2(n258), .B1(n259), .B2(n111), .C1(n259), .C2(n258), .ZN(n257) );
  NR2D1BWP16P90 U251 ( .A1(n243), .A2(n249), .ZN(n259) );
  NR4D1BWP16P90 U252 ( .A1(n243), .A2(n250), .A3(n242), .A4(n251), .ZN(n258)
         );
endmodule


module fixedpoint_s_DW01_inc_5 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

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
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint_s_DW01_inc_4 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

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
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint_s_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

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
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint_s_DW_mult_uns_2 ( a, b, product );
  input [8:0] a;
  input [8:0] b;
  output [17:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n42, n43, n44, n45, n46, n47, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n84, n85, n86,
         n87, n88, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n122, n123, n124,
         n125, n126, n127, n128, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326;

  FA1D1BWP16P90LVT U3 ( .A(n22), .B(n19), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D1BWP16P90LVT U4 ( .A(n23), .B(n28), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D1BWP16P90LVT U5 ( .A(n29), .B(n34), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D1BWP16P90LVT U6 ( .A(n35), .B(n42), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D1BWP16P90LVT U7 ( .A(n43), .B(n49), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D1BWP16P90LVT U8 ( .A(n50), .B(n55), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D1BWP16P90LVT U9 ( .A(n56), .B(n61), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D1BWP16P90LVT U10 ( .A(n62), .B(n67), .CI(n253), .CO(n9), .S(product[7])
         );
  FA1D1BWP16P90LVT U19 ( .A(n24), .B(n99), .CI(n21), .CO(n18), .S(n19) );
  FA1D1BWP16P90LVT U20 ( .A(n84), .B(n26), .CI(n90), .CO(n20), .S(n21) );
  FA1D1BWP16P90LVT U21 ( .A(n25), .B(n32), .CI(n30), .CO(n22), .S(n23) );
  FA1D1BWP16P90LVT U22 ( .A(n91), .B(n100), .CI(n250), .CO(n24), .S(n25) );
  FA1D1BWP16P90LVT U24 ( .A(n36), .B(n33), .CI(n31), .CO(n28), .S(n29) );
  FA1D1BWP16P90LVT U25 ( .A(n110), .B(n101), .CI(n38), .CO(n30), .S(n31) );
  FA1D1BWP16P90LVT U26 ( .A(n85), .B(n40), .CI(n92), .CO(n32), .S(n33) );
  FA1D1BWP16P90LVT U27 ( .A(n44), .B(n39), .CI(n37), .CO(n34), .S(n35) );
  FA1D1BWP16P90LVT U28 ( .A(n251), .B(n102), .CI(n46), .CO(n36), .S(n37) );
  FA1D1BWP16P90LVT U29 ( .A(n111), .B(n86), .CI(n93), .CO(n38), .S(n39) );
  FA1D1BWP16P90LVT U31 ( .A(n51), .B(n47), .CI(n45), .CO(n42), .S(n43) );
  FA1D1BWP16P90LVT U32 ( .A(n251), .B(n112), .CI(n53), .CO(n44), .S(n45) );
  FA1D1BWP16P90LVT U33 ( .A(n94), .B(n103), .CI(n259), .CO(n46), .S(n47) );
  FA1D1BWP16P90LVT U35 ( .A(n57), .B(n54), .CI(n52), .CO(n49), .S(n50) );
  FA1D1BWP16P90LVT U36 ( .A(n104), .B(n113), .CI(n59), .CO(n51), .S(n52) );
  FA1D1BWP16P90LVT U37 ( .A(n87), .B(n122), .CI(n95), .CO(n53), .S(n54) );
  FA1D1BWP16P90LVT U38 ( .A(n60), .B(n63), .CI(n58), .CO(n55), .S(n56) );
  FA1D1BWP16P90LVT U39 ( .A(n96), .B(n105), .CI(n65), .CO(n57), .S(n58) );
  FA1D1BWP16P90LVT U40 ( .A(n123), .B(n88), .CI(n114), .CO(n59), .S(n60) );
  FA1D1BWP16P90LVT U41 ( .A(n69), .B(n66), .CI(n64), .CO(n61), .S(n62) );
  FA1D1BWP16P90LVT U42 ( .A(n97), .B(n115), .CI(n106), .CO(n63), .S(n64) );
  HA1D2BWP16P90LVT U43 ( .A(n124), .B(n79), .CO(n65), .S(n66) );
  FA1D1BWP16P90LVT U44 ( .A(n73), .B(n107), .CI(n70), .CO(n67), .S(n68) );
  FA1D1BWP16P90LVT U45 ( .A(n125), .B(n98), .CI(n116), .CO(n69), .S(n70) );
  FA1D1BWP16P90LVT U46 ( .A(n108), .B(n117), .CI(n74), .CO(n71), .S(n72) );
  HA1D2BWP16P90LVT U47 ( .A(n126), .B(n80), .CO(n73), .S(n74) );
  FA1D1BWP16P90LVT U48 ( .A(n127), .B(n109), .CI(n118), .CO(n75), .S(n76) );
  HA1D2BWP16P90LVT U49 ( .A(n128), .B(n119), .CO(n77), .S(n78) );
  CKND1BWP16P90LVT U194 ( .I(n40), .ZN(n251) );
  CKND1BWP16P90LVT U195 ( .I(n318), .ZN(n254) );
  CKND1BWP16P90LVT U196 ( .I(n319), .ZN(n256) );
  CKND1BWP16P90LVT U197 ( .I(n317), .ZN(n253) );
  CKND1BWP16P90LVT U198 ( .I(b[7]), .ZN(n261) );
  CKND1BWP16P90LVT U199 ( .I(n26), .ZN(n250) );
  CKND1BWP16P90LVT U200 ( .I(a[7]), .ZN(n252) );
  XNR2D1BWP16P90LVT U201 ( .A1(a[8]), .A2(a[7]), .ZN(n272) );
  CKND1BWP16P90LVT U202 ( .I(n320), .ZN(n257) );
  CKND1BWP16P90LVT U203 ( .I(b[0]), .ZN(n268) );
  CKND1BWP16P90LVT U204 ( .I(a[0]), .ZN(n260) );
  ND2D1BWP16P90LVT U205 ( .A1(n298), .A2(n323), .ZN(n297) );
  ND2D1BWP16P90LVT U206 ( .A1(n278), .A2(n316), .ZN(n277) );
  ND2D1BWP16P90LVT U207 ( .A1(n274), .A2(n287), .ZN(n275) );
  XNR2D1BWP16P90LVT U208 ( .A1(a[4]), .A2(a[3]), .ZN(n278) );
  XOR2D1BWP16P90LVT U209 ( .A1(a[2]), .A2(n259), .Z(n298) );
  XNR2D1BWP16P90LVT U210 ( .A1(a[6]), .A2(a[5]), .ZN(n274) );
  CKND1BWP16P90LVT U211 ( .I(a[1]), .ZN(n259) );
  CKND1BWP16P90LVT U212 ( .I(a[3]), .ZN(n258) );
  CKND1BWP16P90LVT U213 ( .I(a[5]), .ZN(n255) );
  CKND1BWP16P90LVT U214 ( .I(b[1]), .ZN(n267) );
  CKND1BWP16P90LVT U215 ( .I(b[2]), .ZN(n266) );
  CKND1BWP16P90LVT U216 ( .I(b[3]), .ZN(n265) );
  CKND1BWP16P90LVT U217 ( .I(b[4]), .ZN(n264) );
  CKND1BWP16P90LVT U218 ( .I(b[5]), .ZN(n263) );
  CKND1BWP16P90LVT U219 ( .I(b[6]), .ZN(n262) );
  XOR4D1BWP16P90 U220 ( .A1(n269), .A2(n270), .A3(n271), .A4(n18), .Z(
        product[15]) );
  XNR2D1BWP16P90 U221 ( .A1(n20), .A2(n2), .ZN(n271) );
  OAI22D1BWP16P90 U222 ( .A1(n261), .A2(n272), .B1(n262), .B2(n273), .ZN(n270)
         );
  OAI22D1BWP16P90 U223 ( .A1(n252), .A2(n274), .B1(n275), .B2(n276), .ZN(n269)
         );
  IOA21D1BWP16P90 U224 ( .A1(n277), .A2(n278), .B(a[5]), .ZN(n99) );
  NR2D1BWP16P90 U225 ( .A1(n274), .A2(n268), .ZN(n98) );
  OAI22D1BWP16P90 U226 ( .A1(n279), .A2(n275), .B1(n274), .B2(n280), .ZN(n97)
         );
  XNR2D1BWP16P90 U227 ( .A1(b[0]), .A2(a[7]), .ZN(n279) );
  OAI22D1BWP16P90 U228 ( .A1(n280), .A2(n275), .B1(n274), .B2(n281), .ZN(n96)
         );
  XNR2D1BWP16P90 U229 ( .A1(b[1]), .A2(a[7]), .ZN(n280) );
  OAI22D1BWP16P90 U230 ( .A1(n281), .A2(n275), .B1(n274), .B2(n282), .ZN(n95)
         );
  XNR2D1BWP16P90 U231 ( .A1(b[2]), .A2(a[7]), .ZN(n281) );
  OAI22D1BWP16P90 U232 ( .A1(n282), .A2(n275), .B1(n274), .B2(n283), .ZN(n94)
         );
  XNR2D1BWP16P90 U233 ( .A1(b[3]), .A2(a[7]), .ZN(n282) );
  OAI22D1BWP16P90 U234 ( .A1(n283), .A2(n275), .B1(n274), .B2(n284), .ZN(n93)
         );
  XNR2D1BWP16P90 U235 ( .A1(b[4]), .A2(a[7]), .ZN(n283) );
  OAI22D1BWP16P90 U236 ( .A1(n284), .A2(n275), .B1(n274), .B2(n285), .ZN(n92)
         );
  XNR2D1BWP16P90 U237 ( .A1(b[5]), .A2(a[7]), .ZN(n284) );
  OAI22D1BWP16P90 U238 ( .A1(n285), .A2(n275), .B1(n274), .B2(n286), .ZN(n91)
         );
  XNR2D1BWP16P90 U239 ( .A1(b[6]), .A2(a[7]), .ZN(n285) );
  OAI22D1BWP16P90 U240 ( .A1(n286), .A2(n275), .B1(n274), .B2(n276), .ZN(n90)
         );
  XNR2D1BWP16P90 U241 ( .A1(b[8]), .A2(a[7]), .ZN(n276) );
  XNR2D1BWP16P90 U242 ( .A1(b[7]), .A2(a[7]), .ZN(n286) );
  NR2D1BWP16P90 U243 ( .A1(n272), .A2(n268), .ZN(n88) );
  OAI22D1BWP16P90 U244 ( .A1(n273), .A2(n268), .B1(n272), .B2(n267), .ZN(n87)
         );
  OAI22D1BWP16P90 U245 ( .A1(n273), .A2(n266), .B1(n272), .B2(n265), .ZN(n86)
         );
  OAI22D1BWP16P90 U246 ( .A1(n273), .A2(n265), .B1(n272), .B2(n264), .ZN(n85)
         );
  OAI22D1BWP16P90 U247 ( .A1(n273), .A2(n263), .B1(n272), .B2(n262), .ZN(n84)
         );
  OAI32D1BWP16P90 U248 ( .A1(n255), .A2(b[0]), .A3(n278), .B1(n255), .B2(n277), 
        .ZN(n80) );
  OAI32D1BWP16P90 U249 ( .A1(n252), .A2(b[0]), .A3(n274), .B1(n252), .B2(n275), 
        .ZN(n79) );
  XNR2D1BWP16P90 U250 ( .A1(n252), .A2(a[6]), .ZN(n287) );
  OAI22D1BWP16P90 U251 ( .A1(n273), .A2(n267), .B1(n272), .B2(n266), .ZN(n40)
         );
  OAI22D1BWP16P90 U252 ( .A1(n273), .A2(n264), .B1(n272), .B2(n263), .ZN(n26)
         );
  ND2D1BWP16P90 U253 ( .A1(n272), .A2(a[8]), .ZN(n273) );
  OAI22D1BWP16P90 U254 ( .A1(n288), .A2(n289), .B1(n290), .B2(n260), .ZN(n128)
         );
  OAI22D1BWP16P90 U255 ( .A1(n290), .A2(n289), .B1(n291), .B2(n260), .ZN(n127)
         );
  XNR2D1BWP16P90 U256 ( .A1(b[3]), .A2(a[1]), .ZN(n290) );
  OAI22D1BWP16P90 U257 ( .A1(n291), .A2(n289), .B1(n292), .B2(n260), .ZN(n126)
         );
  XNR2D1BWP16P90 U258 ( .A1(b[4]), .A2(a[1]), .ZN(n291) );
  OAI22D1BWP16P90 U259 ( .A1(n292), .A2(n289), .B1(n293), .B2(n260), .ZN(n125)
         );
  XNR2D1BWP16P90 U260 ( .A1(b[5]), .A2(a[1]), .ZN(n292) );
  OAI22D1BWP16P90 U261 ( .A1(n293), .A2(n289), .B1(n294), .B2(n260), .ZN(n124)
         );
  XNR2D1BWP16P90 U262 ( .A1(b[6]), .A2(a[1]), .ZN(n293) );
  OAI22D1BWP16P90 U263 ( .A1(n294), .A2(n289), .B1(n295), .B2(n260), .ZN(n123)
         );
  XNR2D1BWP16P90 U264 ( .A1(b[7]), .A2(a[1]), .ZN(n294) );
  OAI22D1BWP16P90 U265 ( .A1(n295), .A2(n289), .B1(n259), .B2(n260), .ZN(n122)
         );
  XNR2D1BWP16P90 U266 ( .A1(b[8]), .A2(a[1]), .ZN(n295) );
  OAI22D1BWP16P90 U267 ( .A1(n296), .A2(n297), .B1(n298), .B2(n299), .ZN(n119)
         );
  XNR2D1BWP16P90 U268 ( .A1(b[0]), .A2(a[3]), .ZN(n296) );
  OAI22D1BWP16P90 U269 ( .A1(n299), .A2(n297), .B1(n298), .B2(n300), .ZN(n118)
         );
  XNR2D1BWP16P90 U270 ( .A1(b[1]), .A2(a[3]), .ZN(n299) );
  OAI22D1BWP16P90 U271 ( .A1(n300), .A2(n297), .B1(n298), .B2(n301), .ZN(n117)
         );
  XNR2D1BWP16P90 U272 ( .A1(b[2]), .A2(a[3]), .ZN(n300) );
  OAI22D1BWP16P90 U273 ( .A1(n301), .A2(n297), .B1(n298), .B2(n302), .ZN(n116)
         );
  XNR2D1BWP16P90 U274 ( .A1(b[3]), .A2(a[3]), .ZN(n301) );
  OAI22D1BWP16P90 U275 ( .A1(n302), .A2(n297), .B1(n298), .B2(n303), .ZN(n115)
         );
  XNR2D1BWP16P90 U276 ( .A1(b[4]), .A2(a[3]), .ZN(n302) );
  OAI22D1BWP16P90 U277 ( .A1(n303), .A2(n297), .B1(n298), .B2(n304), .ZN(n114)
         );
  XNR2D1BWP16P90 U278 ( .A1(b[5]), .A2(a[3]), .ZN(n303) );
  OAI22D1BWP16P90 U279 ( .A1(n304), .A2(n297), .B1(n298), .B2(n305), .ZN(n113)
         );
  XNR2D1BWP16P90 U280 ( .A1(b[6]), .A2(a[3]), .ZN(n304) );
  OAI22D1BWP16P90 U281 ( .A1(n305), .A2(n297), .B1(n298), .B2(n306), .ZN(n112)
         );
  XNR2D1BWP16P90 U282 ( .A1(b[7]), .A2(a[3]), .ZN(n305) );
  OAI22D1BWP16P90 U283 ( .A1(n306), .A2(n297), .B1(n298), .B2(n258), .ZN(n111)
         );
  XNR2D1BWP16P90 U284 ( .A1(b[8]), .A2(a[3]), .ZN(n306) );
  IOA21D1BWP16P90 U285 ( .A1(n297), .A2(n298), .B(a[3]), .ZN(n110) );
  NR2D1BWP16P90 U286 ( .A1(n278), .A2(n268), .ZN(n109) );
  OAI22D1BWP16P90 U287 ( .A1(n307), .A2(n277), .B1(n278), .B2(n308), .ZN(n108)
         );
  XNR2D1BWP16P90 U288 ( .A1(b[0]), .A2(a[5]), .ZN(n307) );
  OAI22D1BWP16P90 U289 ( .A1(n308), .A2(n277), .B1(n278), .B2(n309), .ZN(n107)
         );
  XNR2D1BWP16P90 U290 ( .A1(b[1]), .A2(a[5]), .ZN(n308) );
  OAI22D1BWP16P90 U291 ( .A1(n309), .A2(n277), .B1(n278), .B2(n310), .ZN(n106)
         );
  XNR2D1BWP16P90 U292 ( .A1(b[2]), .A2(a[5]), .ZN(n309) );
  OAI22D1BWP16P90 U293 ( .A1(n310), .A2(n277), .B1(n278), .B2(n311), .ZN(n105)
         );
  XNR2D1BWP16P90 U294 ( .A1(b[3]), .A2(a[5]), .ZN(n310) );
  OAI22D1BWP16P90 U295 ( .A1(n311), .A2(n277), .B1(n278), .B2(n312), .ZN(n104)
         );
  XNR2D1BWP16P90 U296 ( .A1(b[4]), .A2(a[5]), .ZN(n311) );
  OAI22D1BWP16P90 U297 ( .A1(n312), .A2(n277), .B1(n278), .B2(n313), .ZN(n103)
         );
  XNR2D1BWP16P90 U298 ( .A1(b[5]), .A2(a[5]), .ZN(n312) );
  OAI22D1BWP16P90 U299 ( .A1(n313), .A2(n277), .B1(n278), .B2(n314), .ZN(n102)
         );
  XNR2D1BWP16P90 U300 ( .A1(b[6]), .A2(a[5]), .ZN(n313) );
  OAI22D1BWP16P90 U301 ( .A1(n314), .A2(n277), .B1(n278), .B2(n315), .ZN(n101)
         );
  XNR2D1BWP16P90 U302 ( .A1(b[7]), .A2(a[5]), .ZN(n314) );
  OAI22D1BWP16P90 U303 ( .A1(n315), .A2(n277), .B1(n278), .B2(n255), .ZN(n100)
         );
  XNR2D1BWP16P90 U304 ( .A1(n255), .A2(a[4]), .ZN(n316) );
  XNR2D1BWP16P90 U305 ( .A1(b[8]), .A2(a[5]), .ZN(n315) );
  AOI222D1BWP16P90 U306 ( .A1(n254), .A2(n68), .B1(n254), .B2(n71), .C1(n71), 
        .C2(n68), .ZN(n317) );
  AOI222D1BWP16P90 U307 ( .A1(n256), .A2(n72), .B1(n256), .B2(n75), .C1(n75), 
        .C2(n72), .ZN(n318) );
  AOI222D1BWP16P90 U308 ( .A1(n257), .A2(n76), .B1(n257), .B2(n77), .C1(n77), 
        .C2(n76), .ZN(n319) );
  AOI222D1BWP16P90 U309 ( .A1(n321), .A2(n78), .B1(n322), .B2(n321), .C1(n322), 
        .C2(n78), .ZN(n320) );
  OAI32D1BWP16P90 U310 ( .A1(n258), .A2(b[0]), .A3(n298), .B1(n258), .B2(n297), 
        .ZN(n322) );
  XNR2D1BWP16P90 U311 ( .A1(n258), .A2(a[2]), .ZN(n323) );
  MUX2ND1BWP16P90 U312 ( .I0(n324), .I1(n325), .S(b[0]), .ZN(n321) );
  IND2D1BWP16P90 U313 ( .A1(n298), .B1(n326), .ZN(n325) );
  ND3D1BWP16P90 U314 ( .A1(n326), .A2(n267), .A3(a[1]), .ZN(n324) );
  OAI22D1BWP16P90 U315 ( .A1(b[1]), .A2(n289), .B1(n288), .B2(n260), .ZN(n326)
         );
  XNR2D1BWP16P90 U316 ( .A1(b[2]), .A2(a[1]), .ZN(n288) );
  ND2D1BWP16P90 U317 ( .A1(a[1]), .A2(n260), .ZN(n289) );
endmodule


module fixedpoint_s_DW01_inc_6 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

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
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint_s_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n147, n148, n149, n150,
         n151, n152, n153, n155, n156, n157, n158, n159, n160, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234;

  FA1D1BWP16P90LVT U2 ( .A(n15), .B(n99), .CI(n2), .CO(product[15]), .S(
        product[14]) );
  FA1D1BWP16P90LVT U3 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D1BWP16P90LVT U4 ( .A(n21), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D1BWP16P90LVT U5 ( .A(n22), .B(n27), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D1BWP16P90LVT U6 ( .A(n28), .B(n35), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D1BWP16P90LVT U7 ( .A(n36), .B(n45), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D1BWP16P90LVT U8 ( .A(n46), .B(n57), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D1BWP16P90LVT U9 ( .A(n58), .B(n69), .CI(n208), .CO(n8), .S(product[7])
         );
  FA1D1BWP16P90LVT U16 ( .A(n100), .B(n107), .CI(n19), .CO(n15), .S(n16) );
  FA1D1BWP16P90LVT U17 ( .A(n20), .B(n25), .CI(n23), .CO(n17), .S(n18) );
  FA1D1BWP16P90LVT U18 ( .A(n101), .B(n115), .CI(n108), .CO(n19), .S(n20) );
  FA1D1BWP16P90LVT U19 ( .A(n24), .B(n31), .CI(n29), .CO(n21), .S(n22) );
  FA1D1BWP16P90LVT U20 ( .A(n33), .B(n116), .CI(n26), .CO(n23), .S(n24) );
  FA1D1BWP16P90LVT U21 ( .A(n102), .B(n123), .CI(n109), .CO(n25), .S(n26) );
  FA1D1BWP16P90LVT U22 ( .A(n37), .B(n32), .CI(n30), .CO(n27), .S(n28) );
  FA1D1BWP16P90LVT U23 ( .A(n34), .B(n41), .CI(n39), .CO(n29), .S(n30) );
  FA1D1BWP16P90LVT U24 ( .A(n117), .B(n124), .CI(n43), .CO(n31), .S(n32) );
  FA1D1BWP16P90LVT U25 ( .A(n103), .B(n131), .CI(n110), .CO(n33), .S(n34) );
  FA1D1BWP16P90LVT U26 ( .A(n47), .B(n40), .CI(n38), .CO(n35), .S(n36) );
  FA1D1BWP16P90LVT U27 ( .A(n51), .B(n44), .CI(n49), .CO(n37), .S(n38) );
  FA1D1BWP16P90LVT U28 ( .A(n53), .B(n55), .CI(n42), .CO(n39), .S(n40) );
  FA1D1BWP16P90LVT U29 ( .A(n125), .B(n118), .CI(n132), .CO(n41), .S(n42) );
  FA1D1BWP16P90LVT U30 ( .A(n104), .B(n139), .CI(n111), .CO(n43), .S(n44) );
  FA1D1BWP16P90LVT U31 ( .A(n59), .B(n50), .CI(n48), .CO(n45), .S(n46) );
  FA1D1BWP16P90LVT U32 ( .A(n61), .B(n54), .CI(n52), .CO(n47), .S(n48) );
  FA1D1BWP16P90LVT U33 ( .A(n65), .B(n56), .CI(n63), .CO(n49), .S(n50) );
  FA1D1BWP16P90LVT U34 ( .A(n133), .B(n140), .CI(n67), .CO(n51), .S(n52) );
  FA1D1BWP16P90LVT U35 ( .A(n119), .B(n126), .CI(n147), .CO(n53), .S(n54) );
  HA1D2BWP16P90LVT U36 ( .A(n112), .B(n105), .CO(n55), .S(n56) );
  FA1D1BWP16P90LVT U37 ( .A(n62), .B(n71), .CI(n60), .CO(n57), .S(n58) );
  FA1D1BWP16P90LVT U38 ( .A(n66), .B(n64), .CI(n73), .CO(n59), .S(n60) );
  FA1D1BWP16P90LVT U39 ( .A(n68), .B(n77), .CI(n75), .CO(n61), .S(n62) );
  FA1D1BWP16P90LVT U40 ( .A(n127), .B(n141), .CI(n134), .CO(n63), .S(n64) );
  FA1D1BWP16P90LVT U41 ( .A(n120), .B(n155), .CI(n148), .CO(n65), .S(n66) );
  HA1D2BWP16P90LVT U42 ( .A(n113), .B(n106), .CO(n67), .S(n68) );
  FA1D1BWP16P90LVT U43 ( .A(n74), .B(n81), .CI(n72), .CO(n69), .S(n70) );
  FA1D1BWP16P90LVT U44 ( .A(n83), .B(n78), .CI(n76), .CO(n71), .S(n72) );
  FA1D1BWP16P90LVT U45 ( .A(n135), .B(n142), .CI(n85), .CO(n73), .S(n74) );
  FA1D1BWP16P90LVT U46 ( .A(n128), .B(n156), .CI(n149), .CO(n75), .S(n76) );
  HA1D2BWP16P90LVT U47 ( .A(n121), .B(n114), .CO(n77), .S(n78) );
  FA1D1BWP16P90LVT U48 ( .A(n84), .B(n89), .CI(n82), .CO(n79), .S(n80) );
  FA1D1BWP16P90LVT U49 ( .A(n91), .B(n150), .CI(n86), .CO(n81), .S(n82) );
  FA1D1BWP16P90LVT U50 ( .A(n136), .B(n157), .CI(n143), .CO(n83), .S(n84) );
  HA1D2BWP16P90LVT U51 ( .A(n129), .B(n122), .CO(n85), .S(n86) );
  FA1D1BWP16P90LVT U52 ( .A(n92), .B(n95), .CI(n90), .CO(n87), .S(n88) );
  FA1D1BWP16P90LVT U53 ( .A(n144), .B(n158), .CI(n151), .CO(n89), .S(n90) );
  HA1D2BWP16P90LVT U54 ( .A(n137), .B(n130), .CO(n91), .S(n92) );
  FA1D1BWP16P90LVT U55 ( .A(n152), .B(n159), .CI(n97), .CO(n93), .S(n94) );
  HA1D2BWP16P90LVT U56 ( .A(n145), .B(n138), .CO(n95), .S(n96) );
  HA1D2BWP16P90LVT U57 ( .A(n160), .B(n153), .CO(n97), .S(n98) );
  CKND1BWP16P90LVT U139 ( .I(n96), .ZN(n214) );
  CKND1BWP16P90LVT U140 ( .I(n94), .ZN(n217) );
  CKND1BWP16P90LVT U141 ( .I(n228), .ZN(n208) );
  CKND1BWP16P90LVT U142 ( .I(n229), .ZN(n210) );
  CKND1BWP16P90LVT U143 ( .I(n230), .ZN(n212) );
  CKND1BWP16P90LVT U144 ( .I(a[4]), .ZN(n213) );
  CKND1BWP16P90LVT U145 ( .I(a[3]), .ZN(n215) );
  CKND1BWP16P90LVT U146 ( .I(a[5]), .ZN(n211) );
  CKND1BWP16P90LVT U147 ( .I(a[6]), .ZN(n209) );
  CKND1BWP16P90LVT U148 ( .I(b[2]), .ZN(n225) );
  CKND1BWP16P90LVT U149 ( .I(b[3]), .ZN(n224) );
  CKND1BWP16P90LVT U150 ( .I(b[4]), .ZN(n223) );
  CKND1BWP16P90LVT U151 ( .I(b[5]), .ZN(n222) );
  CKND1BWP16P90LVT U152 ( .I(b[6]), .ZN(n221) );
  CKND1BWP16P90LVT U153 ( .I(b[1]), .ZN(n226) );
  CKND1BWP16P90LVT U154 ( .I(a[2]), .ZN(n216) );
  CKND1BWP16P90LVT U155 ( .I(b[7]), .ZN(n220) );
  CKND1BWP16P90LVT U156 ( .I(a[1]), .ZN(n218) );
  CKND1BWP16P90LVT U157 ( .I(a[7]), .ZN(n207) );
  CKND1BWP16P90LVT U158 ( .I(b[0]), .ZN(n227) );
  CKND1BWP16P90LVT U159 ( .I(a[0]), .ZN(n219) );
  NR2D1BWP16P90 U160 ( .A1(n207), .A2(n220), .ZN(n99) );
  AOI222D1BWP16P90 U161 ( .A1(n210), .A2(n70), .B1(n210), .B2(n79), .C1(n79), 
        .C2(n70), .ZN(n228) );
  AOI222D1BWP16P90 U162 ( .A1(n212), .A2(n80), .B1(n212), .B2(n87), .C1(n87), 
        .C2(n80), .ZN(n229) );
  AOI222D1BWP16P90 U163 ( .A1(n231), .A2(n88), .B1(n231), .B2(n93), .C1(n93), 
        .C2(n88), .ZN(n230) );
  OAI222D1BWP16P90 U164 ( .A1(n232), .A2(n217), .B1(n217), .B2(n214), .C1(n232), .C2(n214), .ZN(n231) );
  AOI222D1BWP16P90 U165 ( .A1(n98), .A2(n233), .B1(n234), .B2(n98), .C1(n234), 
        .C2(n233), .ZN(n232) );
  NR2D1BWP16P90 U166 ( .A1(n227), .A2(n216), .ZN(n234) );
  NR4D1BWP16P90 U167 ( .A1(n226), .A2(n218), .A3(n219), .A4(n227), .ZN(n233)
         );
  NR2D1BWP16P90 U168 ( .A1(n219), .A2(n225), .ZN(n160) );
  NR2D1BWP16P90 U169 ( .A1(n219), .A2(n224), .ZN(n159) );
  NR2D1BWP16P90 U170 ( .A1(n219), .A2(n223), .ZN(n158) );
  NR2D1BWP16P90 U171 ( .A1(n219), .A2(n222), .ZN(n157) );
  NR2D1BWP16P90 U172 ( .A1(n219), .A2(n221), .ZN(n156) );
  NR2D1BWP16P90 U173 ( .A1(n220), .A2(n219), .ZN(n155) );
  NR2D1BWP16P90 U174 ( .A1(n218), .A2(n226), .ZN(n153) );
  NR2D1BWP16P90 U175 ( .A1(n218), .A2(n225), .ZN(n152) );
  NR2D1BWP16P90 U176 ( .A1(n218), .A2(n224), .ZN(n151) );
  NR2D1BWP16P90 U177 ( .A1(n218), .A2(n223), .ZN(n150) );
  NR2D1BWP16P90 U178 ( .A1(n218), .A2(n222), .ZN(n149) );
  NR2D1BWP16P90 U179 ( .A1(n218), .A2(n221), .ZN(n148) );
  NR2D1BWP16P90 U180 ( .A1(n220), .A2(n218), .ZN(n147) );
  NR2D1BWP16P90 U181 ( .A1(n216), .A2(n226), .ZN(n145) );
  NR2D1BWP16P90 U182 ( .A1(n216), .A2(n225), .ZN(n144) );
  NR2D1BWP16P90 U183 ( .A1(n216), .A2(n224), .ZN(n143) );
  NR2D1BWP16P90 U184 ( .A1(n216), .A2(n223), .ZN(n142) );
  NR2D1BWP16P90 U185 ( .A1(n216), .A2(n222), .ZN(n141) );
  NR2D1BWP16P90 U186 ( .A1(n216), .A2(n221), .ZN(n140) );
  NR2D1BWP16P90 U187 ( .A1(n220), .A2(n216), .ZN(n139) );
  NR2D1BWP16P90 U188 ( .A1(n227), .A2(n215), .ZN(n138) );
  NR2D1BWP16P90 U189 ( .A1(n226), .A2(n215), .ZN(n137) );
  NR2D1BWP16P90 U190 ( .A1(n225), .A2(n215), .ZN(n136) );
  NR2D1BWP16P90 U191 ( .A1(n224), .A2(n215), .ZN(n135) );
  NR2D1BWP16P90 U192 ( .A1(n223), .A2(n215), .ZN(n134) );
  NR2D1BWP16P90 U193 ( .A1(n222), .A2(n215), .ZN(n133) );
  NR2D1BWP16P90 U194 ( .A1(n221), .A2(n215), .ZN(n132) );
  NR2D1BWP16P90 U195 ( .A1(n220), .A2(n215), .ZN(n131) );
  NR2D1BWP16P90 U196 ( .A1(n227), .A2(n213), .ZN(n130) );
  NR2D1BWP16P90 U197 ( .A1(n226), .A2(n213), .ZN(n129) );
  NR2D1BWP16P90 U198 ( .A1(n225), .A2(n213), .ZN(n128) );
  NR2D1BWP16P90 U199 ( .A1(n224), .A2(n213), .ZN(n127) );
  NR2D1BWP16P90 U200 ( .A1(n223), .A2(n213), .ZN(n126) );
  NR2D1BWP16P90 U201 ( .A1(n222), .A2(n213), .ZN(n125) );
  NR2D1BWP16P90 U202 ( .A1(n221), .A2(n213), .ZN(n124) );
  NR2D1BWP16P90 U203 ( .A1(n220), .A2(n213), .ZN(n123) );
  NR2D1BWP16P90 U204 ( .A1(n227), .A2(n211), .ZN(n122) );
  NR2D1BWP16P90 U205 ( .A1(n226), .A2(n211), .ZN(n121) );
  NR2D1BWP16P90 U206 ( .A1(n225), .A2(n211), .ZN(n120) );
  NR2D1BWP16P90 U207 ( .A1(n224), .A2(n211), .ZN(n119) );
  NR2D1BWP16P90 U208 ( .A1(n223), .A2(n211), .ZN(n118) );
  NR2D1BWP16P90 U209 ( .A1(n222), .A2(n211), .ZN(n117) );
  NR2D1BWP16P90 U210 ( .A1(n221), .A2(n211), .ZN(n116) );
  NR2D1BWP16P90 U211 ( .A1(n220), .A2(n211), .ZN(n115) );
  NR2D1BWP16P90 U212 ( .A1(n227), .A2(n209), .ZN(n114) );
  NR2D1BWP16P90 U213 ( .A1(n226), .A2(n209), .ZN(n113) );
  NR2D1BWP16P90 U214 ( .A1(n225), .A2(n209), .ZN(n112) );
  NR2D1BWP16P90 U215 ( .A1(n224), .A2(n209), .ZN(n111) );
  NR2D1BWP16P90 U216 ( .A1(n223), .A2(n209), .ZN(n110) );
  NR2D1BWP16P90 U217 ( .A1(n222), .A2(n209), .ZN(n109) );
  NR2D1BWP16P90 U218 ( .A1(n221), .A2(n209), .ZN(n108) );
  NR2D1BWP16P90 U219 ( .A1(n220), .A2(n209), .ZN(n107) );
  NR2D1BWP16P90 U220 ( .A1(n207), .A2(n227), .ZN(n106) );
  NR2D1BWP16P90 U221 ( .A1(n207), .A2(n226), .ZN(n105) );
  NR2D1BWP16P90 U222 ( .A1(n207), .A2(n225), .ZN(n104) );
  NR2D1BWP16P90 U223 ( .A1(n207), .A2(n224), .ZN(n103) );
  NR2D1BWP16P90 U224 ( .A1(n207), .A2(n223), .ZN(n102) );
  NR2D1BWP16P90 U225 ( .A1(n207), .A2(n222), .ZN(n101) );
  NR2D1BWP16P90 U226 ( .A1(n207), .A2(n221), .ZN(n100) );
endmodule


module fixedpoint_s_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

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
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint_s ( in1, in2, out );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] out;
  wire   N31, N32, N33, N34, N35, N36, N37, N38, N39, N41, N42, N43, N44, N45,
         N46, N47, N48, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N93,
         N94, N95, N96, N97, N98, N99, N100, N109, N110, N111, N112, N113,
         N114, N115, N116, N126, N127, N128, N129, N130, N131, N132, N133,
         N134, N135, N161, N162, N163, N164, N165, N166, N167, N168, N177,
         N178, N179, N180, N181, N182, N183, N184, N212, N213, N214, N215,
         N216, N217, N218, N219, N220, N222, N223, N224, N225, N226, N227,
         N228, N229, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, N92, N91, N90, N89, N88, N87, N86, N85, N84,
         N83, N82, N81, N80, N79, N78, N77, N75, N74, N73, N72, N71, N70, N69,
         N68, N108, N107, N106, N105, N104, N103, N102, N101, N176, N175, N174,
         N173, N172, N171, N170, N169, N160, N159, N158, N157, N156, N155,
         N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N143,
         N142, N141, N140, N139, N138, N137, N136, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31;

  AN2D1BWP16P90LVT U43 ( .A1(N135), .A2(n81), .Z(n46) );
  AN2D1BWP16P90LVT U47 ( .A1(N212), .A2(n82), .Z(n48) );
  AN2D1BWP16P90LVT U51 ( .A1(N31), .A2(n83), .Z(n50) );
  AN2D1BWP16P90LVT U55 ( .A1(N67), .A2(n84), .Z(n52) );
  fixedpoint_s_DW01_inc_0 r372 ( .A({n85, n86, n87, n88, n89, n90, n91, n92, 
        n93}), .SUM({N134, N133, N132, N131, N130, N129, N128, N127, N126}) );
  fixedpoint_s_DW01_inc_1 r367 ( .A({n85, n94, n95, n96, n97, n98, n99, n100, 
        n101}), .SUM({N66, N65, N64, N63, N62, N61, N60, N59, N58}) );
  fixedpoint_s_DW_mult_uns_3 mult_61 ( .a(in1), .b({N66, N65, N64, N63, N62, 
        N61, N60, N59, N58}), .product({SYNOPSYS_UNCONNECTED__0, N75, N74, N73, 
        N72, N71, N70, N69, N68, N67, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
  fixedpoint_s_DW01_inc_9 add_63 ( .A({N75, N74, N73, N72, N71, N70, N69, N68}), .SUM({N84, N83, N82, N81, N80, N79, N78, N77}) );
  fixedpoint_s_DW01_inc_8 add_0_root_add_63_2_ni ( .A({N85, N86, N87, N88, N89, 
        N90, N91, N92}), .SUM({N100, N99, N98, N97, N96, N95, N94, N93}) );
  fixedpoint_s_DW01_inc_7 add_0_root_add_65_ni ( .A({N101, N102, N103, N104, 
        N105, N106, N107, N108}), .SUM({N116, N115, N114, N113, N112, N111, 
        N110, N109}) );
  fixedpoint_s_DW_mult_uns_1 mult_68 ( .a({N134, N133, N132, N131, N130, N129, 
        N128, N127, N126}), .b(in2), .product({SYNOPSYS_UNCONNECTED__8, N143, 
        N142, N141, N140, N139, N138, N137, N136, N135, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}) );
  fixedpoint_s_DW01_inc_5 add_70 ( .A({N143, N142, N141, N140, N139, N138, 
        N137, N136}), .SUM({N152, N151, N150, N149, N148, N147, N146, N145})
         );
  fixedpoint_s_DW01_inc_4 add_0_root_add_70_2_ni ( .A({N153, N154, N155, N156, 
        N157, N158, N159, N160}), .SUM({N168, N167, N166, N165, N164, N163, 
        N162, N161}) );
  fixedpoint_s_DW01_inc_3 add_0_root_add_72_ni ( .A({N169, N170, N171, N172, 
        N173, N174, N175, N176}), .SUM({N184, N183, N182, N181, N180, N179, 
        N178, N177}) );
  fixedpoint_s_DW_mult_uns_2 mult_76 ( .a({N134, N133, N132, N131, N130, N129, 
        N128, N127, N126}), .b({N66, N65, N64, N63, N62, N61, N60, N59, N58}), 
        .product({SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, N220, 
        N219, N218, N217, N216, N215, N214, N213, N212, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24}) );
  fixedpoint_s_DW01_inc_6 add_78 ( .A({N220, N219, N218, N217, N216, N215, 
        N214, N213}), .SUM({N229, N228, N227, N226, N225, N224, N223, N222})
         );
  fixedpoint_s_DW_mult_uns_0 mult_54 ( .a(in1), .b(in2), .product({N39, N38, 
        N37, N36, N35, N34, N33, N32, N31, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}) );
  fixedpoint_s_DW01_inc_2 add_56 ( .A({N39, N38, N37, N36, N35, N34, N33, N32}), .SUM({N48, N47, N46, N45, N44, N43, N42, N41}) );
  TIELBWP20P90LVT U74 ( .ZN(n85) );
  CKND1BWP16P90LVT U75 ( .I(N79), .ZN(N90) );
  CKND1BWP16P90LVT U76 ( .I(N147), .ZN(N158) );
  CKND1BWP16P90LVT U77 ( .I(N78), .ZN(N91) );
  CKND1BWP16P90LVT U78 ( .I(N146), .ZN(N159) );
  CKND1BWP16P90LVT U79 ( .I(N69), .ZN(N107) );
  CKND1BWP16P90LVT U80 ( .I(N70), .ZN(N106) );
  CKND1BWP16P90LVT U81 ( .I(N137), .ZN(N175) );
  CKND1BWP16P90LVT U82 ( .I(N138), .ZN(N174) );
  CKND1BWP16P90LVT U83 ( .I(N80), .ZN(N89) );
  CKND1BWP16P90LVT U84 ( .I(N81), .ZN(N88) );
  CKND1BWP16P90LVT U85 ( .I(N82), .ZN(N87) );
  CKND1BWP16P90LVT U86 ( .I(N148), .ZN(N157) );
  CKND1BWP16P90LVT U87 ( .I(N149), .ZN(N156) );
  CKND1BWP16P90LVT U88 ( .I(N150), .ZN(N155) );
  CKND1BWP16P90LVT U89 ( .I(N68), .ZN(N108) );
  CKND1BWP16P90LVT U90 ( .I(N136), .ZN(N176) );
  CKND1BWP16P90LVT U91 ( .I(N77), .ZN(N92) );
  CKND1BWP16P90LVT U92 ( .I(N145), .ZN(N160) );
  CKND1BWP16P90LVT U93 ( .I(N71), .ZN(N105) );
  CKND1BWP16P90LVT U94 ( .I(N72), .ZN(N104) );
  CKND1BWP16P90LVT U95 ( .I(N73), .ZN(N103) );
  CKND1BWP16P90LVT U96 ( .I(N139), .ZN(N173) );
  CKND1BWP16P90LVT U97 ( .I(N140), .ZN(N172) );
  CKND1BWP16P90LVT U98 ( .I(N141), .ZN(N171) );
  CKND1BWP16P90LVT U99 ( .I(N83), .ZN(N86) );
  CKND1BWP16P90LVT U100 ( .I(N151), .ZN(N154) );
  AOI22D1BWP16P90LVT U101 ( .A1(N213), .A2(n47), .B1(N222), .B2(n48), .ZN(n79)
         );
  CKND1BWP16P90LVT U102 ( .I(N74), .ZN(N102) );
  CKND1BWP16P90LVT U103 ( .I(N142), .ZN(N170) );
  AOI22D1BWP16P90LVT U104 ( .A1(N220), .A2(n47), .B1(N229), .B2(n48), .ZN(n43)
         );
  AOI22D1BWP16P90LVT U105 ( .A1(N110), .A2(n51), .B1(N94), .B2(n52), .ZN(n73)
         );
  AOI22D1BWP16P90LVT U106 ( .A1(N111), .A2(n51), .B1(N95), .B2(n52), .ZN(n69)
         );
  AOI22D1BWP16P90LVT U107 ( .A1(N112), .A2(n51), .B1(N96), .B2(n52), .ZN(n65)
         );
  AOI22D1BWP16P90LVT U108 ( .A1(N113), .A2(n51), .B1(N97), .B2(n52), .ZN(n61)
         );
  AOI22D1BWP16P90LVT U109 ( .A1(N114), .A2(n51), .B1(N98), .B2(n52), .ZN(n57)
         );
  AOI22D1BWP16P90LVT U110 ( .A1(N115), .A2(n51), .B1(N99), .B2(n52), .ZN(n53)
         );
  INR2D1BWP16P90LVT U111 ( .A1(n82), .B1(N212), .ZN(n47) );
  CKND1BWP16P90LVT U112 ( .I(N152), .ZN(N153) );
  CKND1BWP16P90LVT U113 ( .I(N84), .ZN(N85) );
  CKND1BWP16P90LVT U114 ( .I(N75), .ZN(N101) );
  ND4D1BWP16P90LVT U115 ( .A1(n77), .A2(n78), .A3(n79), .A4(n80), .ZN(out[0])
         );
  AOI22D1BWP16P90LVT U116 ( .A1(N32), .A2(n49), .B1(N41), .B2(n50), .ZN(n78)
         );
  AOI22D1BWP16P90LVT U117 ( .A1(N177), .A2(n45), .B1(N161), .B2(n46), .ZN(n80)
         );
  AOI22D1BWP16P90LVT U118 ( .A1(N109), .A2(n51), .B1(N93), .B2(n52), .ZN(n77)
         );
  ND4D1BWP16P90LVT U119 ( .A1(n73), .A2(n74), .A3(n75), .A4(n76), .ZN(out[1])
         );
  AOI22D1BWP16P90LVT U120 ( .A1(N33), .A2(n49), .B1(N42), .B2(n50), .ZN(n74)
         );
  AOI22D1BWP16P90LVT U121 ( .A1(N214), .A2(n47), .B1(N223), .B2(n48), .ZN(n75)
         );
  AOI22D1BWP16P90LVT U122 ( .A1(N178), .A2(n45), .B1(N162), .B2(n46), .ZN(n76)
         );
  ND4D1BWP16P90LVT U123 ( .A1(n69), .A2(n70), .A3(n71), .A4(n72), .ZN(out[2])
         );
  AOI22D1BWP16P90LVT U124 ( .A1(N34), .A2(n49), .B1(N43), .B2(n50), .ZN(n70)
         );
  AOI22D1BWP16P90LVT U125 ( .A1(N215), .A2(n47), .B1(N224), .B2(n48), .ZN(n71)
         );
  AOI22D1BWP16P90LVT U126 ( .A1(N179), .A2(n45), .B1(N163), .B2(n46), .ZN(n72)
         );
  ND4D1BWP16P90LVT U127 ( .A1(n65), .A2(n66), .A3(n67), .A4(n68), .ZN(out[3])
         );
  AOI22D1BWP16P90LVT U128 ( .A1(N35), .A2(n49), .B1(N44), .B2(n50), .ZN(n66)
         );
  AOI22D1BWP16P90LVT U129 ( .A1(N216), .A2(n47), .B1(N225), .B2(n48), .ZN(n67)
         );
  AOI22D1BWP16P90LVT U130 ( .A1(N180), .A2(n45), .B1(N164), .B2(n46), .ZN(n68)
         );
  ND4D1BWP16P90LVT U131 ( .A1(n61), .A2(n62), .A3(n63), .A4(n64), .ZN(out[4])
         );
  AOI22D1BWP16P90LVT U132 ( .A1(N36), .A2(n49), .B1(N45), .B2(n50), .ZN(n62)
         );
  AOI22D1BWP16P90LVT U133 ( .A1(N217), .A2(n47), .B1(N226), .B2(n48), .ZN(n63)
         );
  AOI22D1BWP16P90LVT U134 ( .A1(N181), .A2(n45), .B1(N165), .B2(n46), .ZN(n64)
         );
  ND4D1BWP16P90LVT U135 ( .A1(n57), .A2(n58), .A3(n59), .A4(n60), .ZN(out[5])
         );
  AOI22D1BWP16P90LVT U136 ( .A1(N37), .A2(n49), .B1(N46), .B2(n50), .ZN(n58)
         );
  AOI22D1BWP16P90LVT U137 ( .A1(N218), .A2(n47), .B1(N227), .B2(n48), .ZN(n59)
         );
  AOI22D1BWP16P90LVT U138 ( .A1(N182), .A2(n45), .B1(N166), .B2(n46), .ZN(n60)
         );
  ND4D1BWP16P90LVT U139 ( .A1(n53), .A2(n54), .A3(n55), .A4(n56), .ZN(out[6])
         );
  AOI22D1BWP16P90LVT U140 ( .A1(N38), .A2(n49), .B1(N47), .B2(n50), .ZN(n54)
         );
  AOI22D1BWP16P90LVT U141 ( .A1(N219), .A2(n47), .B1(N228), .B2(n48), .ZN(n55)
         );
  AOI22D1BWP16P90LVT U142 ( .A1(N183), .A2(n45), .B1(N167), .B2(n46), .ZN(n56)
         );
  ND4D1BWP16P90LVT U143 ( .A1(n41), .A2(n42), .A3(n43), .A4(n44), .ZN(out[7])
         );
  AOI22D1BWP16P90LVT U144 ( .A1(N39), .A2(n49), .B1(N48), .B2(n50), .ZN(n42)
         );
  AOI22D1BWP16P90LVT U145 ( .A1(N184), .A2(n45), .B1(N168), .B2(n46), .ZN(n44)
         );
  AOI22D1BWP16P90LVT U146 ( .A1(N116), .A2(n51), .B1(N100), .B2(n52), .ZN(n41)
         );
  CKND1BWP16P90LVT U147 ( .I(N143), .ZN(N169) );
  INR2D1BWP16P90LVT U148 ( .A1(n84), .B1(N67), .ZN(n51) );
  INR2D1BWP16P90LVT U149 ( .A1(n81), .B1(N135), .ZN(n45) );
  INR2D1BWP16P90LVT U150 ( .A1(n83), .B1(N31), .ZN(n49) );
  NR2D1BWP16P90LVT U151 ( .A1(n94), .A2(n86), .ZN(n82) );
  CKND1BWP16P90LVT U152 ( .I(in1[3]), .ZN(n90) );
  CKND1BWP16P90LVT U153 ( .I(in1[5]), .ZN(n88) );
  CKND1BWP16P90LVT U154 ( .I(in2[6]), .ZN(n95) );
  CKND1BWP16P90LVT U155 ( .I(in1[6]), .ZN(n87) );
  CKND1BWP16P90LVT U156 ( .I(in1[7]), .ZN(n86) );
  CKND1BWP16P90LVT U157 ( .I(in2[7]), .ZN(n94) );
  CKND1BWP16P90LVT U158 ( .I(in2[3]), .ZN(n98) );
  CKND1BWP16P90LVT U159 ( .I(in2[4]), .ZN(n97) );
  CKND1BWP16P90LVT U160 ( .I(in2[5]), .ZN(n96) );
  CKND1BWP16P90LVT U161 ( .I(in1[4]), .ZN(n89) );
  CKND1BWP16P90LVT U162 ( .I(in2[2]), .ZN(n99) );
  CKND1BWP16P90LVT U163 ( .I(in1[2]), .ZN(n91) );
  CKND1BWP16P90LVT U164 ( .I(in2[1]), .ZN(n100) );
  CKND1BWP16P90LVT U165 ( .I(in1[1]), .ZN(n92) );
  NR2D1BWP16P90LVT U166 ( .A1(n86), .A2(in2[7]), .ZN(n81) );
  NR2D1BWP16P90LVT U167 ( .A1(n94), .A2(in1[7]), .ZN(n84) );
  CKND1BWP16P90LVT U168 ( .I(in1[0]), .ZN(n93) );
  CKND1BWP16P90LVT U169 ( .I(in2[0]), .ZN(n101) );
  NR2D1BWP16P90LVT U170 ( .A1(in1[7]), .A2(in2[7]), .ZN(n83) );
endmodule

