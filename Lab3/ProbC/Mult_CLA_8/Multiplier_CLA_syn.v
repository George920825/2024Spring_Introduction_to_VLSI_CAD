/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Mon Mar 18 10:31:35 2024
/////////////////////////////////////////////////////////////


module And_operation_0 ( A, B, And );
  input [7:0] A;
  output [7:0] And;
  input B;
  wire   n1, n2, n3, n4, n5;

  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A[7]), .Z(And[7]) );
  AN2D1BWP16P90LVT U8 ( .A1(A[0]), .A2(B), .Z(And[0]) );
  AN2D2BWP16P90LVT U2 ( .A1(A[3]), .A2(B), .Z(And[3]) );
  CKND1BWP16P90LVT U3 ( .I(A[4]), .ZN(n1) );
  CKND1BWP16P90LVT U4 ( .I(B), .ZN(n2) );
  AN2D1BWP16P90LVT U5 ( .A1(A[6]), .A2(B), .Z(And[6]) );
  NR2D1BWP16P90LVT U6 ( .A1(n1), .A2(n2), .ZN(And[4]) );
  CKNR2D8BWP16P90LVT U7 ( .A1(n3), .A2(n4), .ZN(And[2]) );
  CKND8BWP16P90LVT U9 ( .I(A[2]), .ZN(n3) );
  CKND16BWP16P90LVT U10 ( .I(B), .ZN(n4) );
  INR2D4BWP16P90LVT U11 ( .A1(A[1]), .B1(n5), .ZN(And[1]) );
  CKND2BWP16P90LVT U12 ( .I(B), .ZN(n5) );
  AN2D1BWP16P90LVT U13 ( .A1(A[5]), .A2(B), .Z(And[5]) );
endmodule


module carry_0 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  OAI21D2BWP16P90LVT U1 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
  IOA21D4BWP16P90LVT U2 ( .A1(A), .A2(B), .B(n1), .ZN(carry_out) );
endmodule


module FA_0 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1;

  AO22D1BWP16P90 U1 ( .A1(a), .A2(Cin), .B1(n1), .B2(b), .Z(cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(b), .A2(n1), .Z(Sum) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(a), .Z(n1) );
endmodule


module FA_49 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3;

  OAI222D1BWP16P90LVT U1 ( .A1(n3), .A2(n2), .B1(n3), .B2(n1), .C1(n1), .C2(n2), .ZN(cout) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U3 ( .I(b), .ZN(n2) );
  CKND1BWP16P90LVT U4 ( .I(a), .ZN(n3) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n1) );
endmodule


module FA_50 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  IND2D4BWP16P90LVT U1 ( .A1(n1), .B1(n3), .ZN(n4) );
  CKND16BWP16P90LVT U2 ( .I(n6), .ZN(n1) );
  ND2D8BWP16P90LVT U3 ( .A1(n4), .A2(n5), .ZN(Sum) );
  OAI21D1BWP16P90 U4 ( .A1(Cin), .A2(a), .B(b), .ZN(n7) );
  XOR2D1BWP16P90 U5 ( .A1(a), .A2(b), .Z(n6) );
  ND2D2BWP16P90LVT U6 ( .A1(n2), .A2(Cin), .ZN(n5) );
  CKND1BWP16P90LVT U7 ( .I(n6), .ZN(n2) );
  CKND2BWP16P90LVT U8 ( .I(Cin), .ZN(n3) );
  INVD1BWP16P90 U9 ( .I(a), .ZN(n8) );
  OAI21D1BWP16P90LVT U10 ( .A1(n8), .A2(n3), .B(n7), .ZN(cout) );
endmodule


module FA_51 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  CKND1BWP16P90LVT U1 ( .I(n4), .ZN(n1) );
  XOR2D4BWP16P90LVT U2 ( .A1(Cin), .A2(n2), .Z(Sum) );
  XOR2D1BWP16P90 U3 ( .A1(a), .A2(b), .Z(n2) );
  INVD1BWP16P90 U4 ( .I(a), .ZN(n5) );
  OAI21D1BWP16P90 U5 ( .A1(n1), .A2(a), .B(b), .ZN(n3) );
  INVD1BWP16P90 U6 ( .I(Cin), .ZN(n4) );
  OAI21D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B(n3), .ZN(cout) );
endmodule


module FA_52 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  OAI21D1BWP16P90 U3 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n3) );
  INVD1BWP16P90 U5 ( .I(a), .ZN(n4) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_53 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  OAI21D1BWP16P90 U3 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n3) );
  INVD1BWP16P90 U5 ( .I(a), .ZN(n4) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_54 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  XOR2D4BWP16P90LVT U1 ( .A1(a), .A2(b), .Z(n1) );
  XOR2D4BWP16P90LVT U2 ( .A1(n1), .A2(Cin), .Z(Sum) );
  DEL025D1BWP16P90 U3 ( .I(Cin), .Z(n2) );
  INVD1BWP16P90 U4 ( .I(a), .ZN(n5) );
  OAI21D1BWP16P90 U5 ( .A1(n2), .A2(a), .B(b), .ZN(n3) );
  INVD1BWP16P90 U6 ( .I(n2), .ZN(n4) );
  OAI21D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B(n3), .ZN(cout) );
endmodule


module FA_55 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6;

  CKND1BWP16P90LVT U1 ( .I(n5), .ZN(n1) );
  INVD1BWP16P90 U2 ( .I(Cin), .ZN(n5) );
  DEL025D1BWP16P90 U3 ( .I(b), .Z(n2) );
  XOR3D4BWP16P90LVT U4 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  CKND1BWP16P90LVT U5 ( .I(n6), .ZN(n3) );
  CKND1BWP16P90 U6 ( .I(a), .ZN(n6) );
  OAI21D1BWP16P90 U7 ( .A1(n1), .A2(n3), .B(n2), .ZN(n4) );
  OAI21D1BWP16P90LVT U8 ( .A1(n6), .A2(n5), .B(n4), .ZN(cout) );
endmodule


module carry_43 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2;

  ND2D2BWP16P90LVT U1 ( .A1(n2), .A2(n1), .ZN(carry_out) );
  ND2D1BWP16P90 U2 ( .A1(A), .A2(B), .ZN(n1) );
  OAI21D1BWP16P90LVT U3 ( .A1(B), .A2(A), .B(carry_in), .ZN(n2) );
endmodule


module carry_44 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D2BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_45 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  CKND1BWP16P90LVT U1 ( .I(A), .ZN(n1) );
  CKND1BWP16P90LVT U2 ( .I(B), .ZN(n2) );
  IOA21D2BWP16P90LVT U3 ( .A1(n2), .A2(n1), .B(carry_in), .ZN(n3) );
  OAI21D4BWP16P90LVT U4 ( .A1(n1), .A2(n2), .B(n3), .ZN(carry_out) );
endmodule


module carry_46 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  CKND1BWP16P90LVT U1 ( .I(B), .ZN(n2) );
  CKND1BWP16P90LVT U2 ( .I(A), .ZN(n1) );
  IOA21D4BWP16P90LVT U3 ( .A1(n2), .A2(n1), .B(carry_in), .ZN(n3) );
  OAI21D4BWP16P90LVT U4 ( .A1(n1), .A2(n2), .B(n3), .ZN(carry_out) );
endmodule


module carry_47 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2;

  OR2D1BWP16P90LVT U1 ( .A1(B), .A2(A), .Z(n1) );
  IOA21D4BWP16P90LVT U2 ( .A1(A), .A2(B), .B(n2), .ZN(carry_out) );
  ND2D2BWP16P90LVT U3 ( .A1(n1), .A2(carry_in), .ZN(n2) );
endmodule


module carry_48 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  INVD4BWP16P90LVT U1 ( .I(n1), .ZN(carry_out) );
  MAOI222D4BWP16P90LVT U2 ( .A(B), .B(A), .C(carry_in), .ZN(n1) );
endmodule


module CLA8_0 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3;
  wire   [7:1] carry_wire;

  carry_0 c1 ( .A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1])
         );
  carry_48 c2 ( .A(A[1]), .B(n3), .carry_in(carry_wire[1]), .carry_out(
        carry_wire[2]) );
  carry_47 c3 ( .A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(
        carry_wire[3]) );
  carry_46 c4 ( .A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(
        carry_wire[4]) );
  carry_45 c5 ( .A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(
        carry_wire[5]) );
  carry_44 c6 ( .A(A[5]), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(
        carry_wire[6]) );
  carry_43 c7 ( .A(A[6]), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(
        carry_wire[7]) );
  FA_0 FA1 ( .a(n1), .b(n2), .Cin(Cin), .Sum(Sum[0]) );
  FA_55 FA2 ( .a(A[1]), .b(B[1]), .Cin(carry_wire[1]), .Sum(Sum[1]) );
  FA_54 FA3 ( .a(A[2]), .b(B[2]), .Cin(carry_wire[2]), .Sum(Sum[2]) );
  FA_53 FA4 ( .a(A[3]), .b(B[3]), .Cin(carry_wire[3]), .Sum(Sum[3]) );
  FA_52 FA5 ( .a(A[4]), .b(B[4]), .Cin(carry_wire[4]), .Sum(Sum[4]) );
  FA_51 FA6 ( .a(A[5]), .b(B[5]), .Cin(carry_wire[5]), .Sum(Sum[5]) );
  FA_50 FA7 ( .a(A[6]), .b(B[6]), .Cin(carry_wire[6]), .Sum(Sum[6]) );
  FA_49 FA8 ( .a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(
        Cout) );
  BUFFD2BWP16P90LVT U1 ( .I(B[1]), .Z(n3) );
  DEL025D1BWP16P90 U2 ( .I(A[0]), .Z(n1) );
  DEL025D1BWP16P90 U3 ( .I(B[0]), .Z(n2) );
endmodule


module FA_1 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6;

  OAI21D1BWP16P90LVT U1 ( .A1(Cin), .A2(a), .B(b), .ZN(n6) );
  ND2D2BWP16P90LVT U2 ( .A1(n2), .A2(n5), .ZN(n3) );
  CKND2BWP16P90LVT U3 ( .I(Cin), .ZN(n2) );
  ND2D1BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .ZN(n4) );
  IOA21D1BWP16P90LVT U5 ( .A1(Cin), .A2(a), .B(n6), .ZN(cout) );
  ND2D1BWP16P90LVT U6 ( .A1(n3), .A2(n4), .ZN(Sum) );
  INVD1BWP16P90LVT U7 ( .I(n5), .ZN(n1) );
  XOR2D4BWP16P90LVT U8 ( .A1(b), .A2(a), .Z(n5) );
endmodule


module FA_2 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6;

  INVD1BWP16P90LVT U1 ( .I(a), .ZN(n4) );
  XOR2D4BWP16P90LVT U2 ( .A1(Cin), .A2(n4), .Z(n6) );
  DEL025D1BWP16P90 U3 ( .I(Cin), .Z(n1) );
  DEL025D1BWP16P90 U4 ( .I(n6), .Z(n2) );
  XNR2D1BWP16P90LVT U5 ( .A1(n6), .A2(b), .ZN(Sum) );
  CKND1BWP16P90LVT U6 ( .I(b), .ZN(n5) );
  OAI22D1BWP16P90 U7 ( .A1(n2), .A2(n5), .B1(n4), .B2(n3), .ZN(cout) );
  INVD1BWP16P90 U8 ( .I(n1), .ZN(n3) );
endmodule


module FA_3 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(Cin), .ZN(n2) );
  DEL025D1BWP16P90 U2 ( .I(n2), .Z(n1) );
  XNR2D4BWP16P90LVT U3 ( .A1(n2), .A2(n3), .ZN(n5) );
  INVD1BWP16P90 U4 ( .I(a), .ZN(n3) );
  OAI22D1BWP16P90 U5 ( .A1(n5), .A2(n4), .B1(n3), .B2(n1), .ZN(cout) );
  XNR2D1BWP16P90LVT U6 ( .A1(n5), .A2(b), .ZN(Sum) );
  CKND1BWP16P90LVT U7 ( .I(b), .ZN(n4) );
endmodule


module FA_4 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  XNR2D2BWP16P90LVT U1 ( .A1(a), .A2(Cin), .ZN(n4) );
  INVD1BWP16P90 U2 ( .I(a), .ZN(n2) );
  XNR2D1BWP16P90LVT U3 ( .A1(n4), .A2(b), .ZN(Sum) );
  CKND1BWP16P90LVT U4 ( .I(b), .ZN(n3) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n1) );
  OAI22D1BWP16P90 U6 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(cout) );
endmodule


module FA_5 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  INVD1BWP16P90 U1 ( .I(a), .ZN(n2) );
  XNR2D1BWP16P90LVT U2 ( .A1(a), .A2(Cin), .ZN(n4) );
  OAI22D1BWP16P90 U3 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(cout) );
  XNR2D1BWP16P90LVT U4 ( .A1(b), .A2(n4), .ZN(Sum) );
  CKND1BWP16P90LVT U5 ( .I(b), .ZN(n3) );
  INVD1BWP16P90 U6 ( .I(Cin), .ZN(n1) );
endmodule


module FA_6 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(Cin), .A2(a), .Z(n2) );
  XOR2D1BWP16P90LVT U2 ( .A1(b), .A2(n2), .Z(Sum) );
  AO22D1BWP16P90 U3 ( .A1(a), .A2(Cin), .B1(n2), .B2(b), .Z(cout) );
endmodule


module FA_7 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(a), .Z(n2) );
  XOR2D1BWP16P90LVT U2 ( .A1(b), .A2(n2), .Z(Sum) );
  AO22D1BWP16P90 U3 ( .A1(a), .A2(Cin), .B1(n2), .B2(b), .Z(cout) );
endmodule


module FA_8 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n2;

  AO22D1BWP16P90LVT U1 ( .A1(a), .A2(Cin), .B1(n2), .B2(b), .Z(cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(b), .A2(n2), .Z(Sum) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(a), .Z(n2) );
endmodule


module carry_1 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2;

  AN2D1BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n1) );
  OR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  OA21D2BWP16P90LVT U3 ( .A1(carry_in), .A2(n1), .B(n2), .Z(carry_out) );
endmodule


module carry_2 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  AOI21D4BWP16P90LVT U1 ( .A1(n2), .A2(n1), .B(n3), .ZN(carry_out) );
  CKND2BWP16P90LVT U2 ( .I(carry_in), .ZN(n2) );
  NR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .ZN(n3) );
  ND2D2BWP16P90LVT U4 ( .A1(A), .A2(B), .ZN(n1) );
endmodule


module carry_3 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IAO21D2BWP16P90LVT U1 ( .A1(B), .A2(A), .B(n1), .ZN(carry_out) );
  AOI21D2BWP16P90LVT U2 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
endmodule


module carry_4 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IAO21D2BWP16P90LVT U1 ( .A1(A), .A2(B), .B(n1), .ZN(carry_out) );
  AOI21D2BWP16P90LVT U2 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
endmodule


module carry_5 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  AOI21D2BWP16P90LVT U1 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
  INVD1BWP16P90LVT U2 ( .I(A), .ZN(n3) );
  AOI21D2BWP16P90LVT U3 ( .A1(n3), .A2(n2), .B(n1), .ZN(carry_out) );
  INVD1BWP16P90LVT U4 ( .I(B), .ZN(n2) );
endmodule


module carry_6 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D2BWP16P90LVT U1 ( .A(B), .B(A), .C(carry_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_7 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  OA21D1BWP16P90 U1 ( .A1(B), .A2(A), .B(carry_in), .Z(n1) );
  OA22D2BWP16P90LVT U2 ( .A1(B), .A2(n1), .B1(A), .B2(n1), .Z(carry_out) );
endmodule


module CLA8_1 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5;
  wire   [7:1] carry_wire;

  carry_7 c1 ( .A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1])
         );
  carry_6 c2 ( .A(A[1]), .B(B[1]), .carry_in(carry_wire[1]), .carry_out(
        carry_wire[2]) );
  carry_5 c3 ( .A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(
        carry_wire[3]) );
  carry_4 c4 ( .A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(
        carry_wire[4]) );
  carry_3 c5 ( .A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(
        carry_wire[5]) );
  carry_2 c6 ( .A(A[5]), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(
        carry_wire[6]) );
  carry_1 c7 ( .A(A[6]), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(
        carry_wire[7]) );
  FA_8 FA1 ( .a(A[0]), .b(B[0]), .Cin(Cin), .Sum(Sum[0]) );
  FA_7 FA2 ( .a(n3), .b(B[1]), .Cin(carry_wire[1]), .Sum(Sum[1]) );
  FA_6 FA3 ( .a(n4), .b(B[2]), .Cin(n5), .Sum(Sum[2]) );
  FA_5 FA4 ( .a(A[3]), .b(B[3]), .Cin(n2), .Sum(Sum[3]) );
  FA_4 FA5 ( .a(A[4]), .b(B[4]), .Cin(n1), .Sum(Sum[4]) );
  FA_3 FA6 ( .a(A[5]), .b(B[5]), .Cin(carry_wire[5]), .Sum(Sum[5]) );
  FA_2 FA7 ( .a(A[6]), .b(B[6]), .Cin(carry_wire[6]), .Sum(Sum[6]) );
  FA_1 FA8 ( .a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(Cout) );
  BUFFD2BWP16P90 U1 ( .I(carry_wire[4]), .Z(n1) );
  BUFFD1BWP16P90 U2 ( .I(A[1]), .Z(n3) );
  DEL025D1BWP16P90LVT U3 ( .I(carry_wire[3]), .Z(n2) );
  DEL025D1BWP16P90 U4 ( .I(A[2]), .Z(n4) );
  DEL025D1BWP16P90 U5 ( .I(carry_wire[2]), .Z(n5) );
endmodule


module FA_9 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2;

  XOR2D2BWP16P90LVT U1 ( .A1(Cin), .A2(n1), .Z(Sum) );
  XOR2D4BWP16P90LVT U2 ( .A1(b), .A2(a), .Z(n1) );
  OAI21D1BWP16P90LVT U3 ( .A1(Cin), .A2(a), .B(b), .ZN(n2) );
  IOA21D2BWP16P90LVT U4 ( .A1(Cin), .A2(a), .B(n2), .ZN(cout) );
endmodule


module FA_10 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(a), .Z(n1) );
  DEL025D1BWP16P90 U2 ( .I(Cin), .Z(n2) );
  XOR3D4BWP16P90LVT U3 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n5) );
  INVD1BWP16P90 U5 ( .I(n2), .ZN(n4) );
  OAI21D1BWP16P90 U6 ( .A1(n2), .A2(n1), .B(b), .ZN(n3) );
  OAI21D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B(n3), .ZN(cout) );
endmodule


module FA_11 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  AN2D1BWP16P90LVT U1 ( .A1(n10), .A2(n11), .Z(n1) );
  ND2D1BWP16P90LVT U2 ( .A1(n1), .A2(Cin), .ZN(n7) );
  INVD1BWP16P90LVT U3 ( .I(Cin), .ZN(n5) );
  ND2D1BWP16P90LVT U4 ( .A1(n4), .A2(n5), .ZN(n6) );
  INVD1BWP16P90 U5 ( .I(n5), .ZN(n2) );
  DEL025D1BWP16P90 U6 ( .I(a), .Z(n3) );
  INVD1BWP16P90 U7 ( .I(n3), .ZN(n14) );
  ND2D1BWP16P90 U8 ( .A1(n10), .A2(n11), .ZN(n4) );
  IND2D2BWP16P90LVT U9 ( .A1(n8), .B1(n9), .ZN(n10) );
  ND2D2BWP16P90LVT U10 ( .A1(n6), .A2(n7), .ZN(Sum) );
  ND2D2BWP16P90LVT U11 ( .A1(a), .A2(n8), .ZN(n11) );
  CKND2BWP16P90LVT U12 ( .I(a), .ZN(n9) );
  CKND1BWP16P90LVT U13 ( .I(b), .ZN(n8) );
  CKND1BWP16P90 U14 ( .I(n2), .ZN(n13) );
  OAI21D1BWP16P90 U15 ( .A1(n2), .A2(n3), .B(b), .ZN(n12) );
  OAI21D1BWP16P90LVT U16 ( .A1(n14), .A2(n13), .B(n12), .ZN(cout) );
endmodule


module FA_12 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6;

  XOR2D8BWP16P90LVT U1 ( .A1(a), .A2(b), .Z(n3) );
  DEL025D1BWP16P90 U2 ( .I(a), .Z(n1) );
  INVD1BWP16P90 U3 ( .I(n1), .ZN(n6) );
  XOR2D8BWP16P90LVT U4 ( .A1(n3), .A2(Cin), .Z(Sum) );
  DEL025D1BWP16P90 U5 ( .I(Cin), .Z(n2) );
  INVD1BWP16P90 U6 ( .I(n2), .ZN(n5) );
  OAI21D1BWP16P90 U7 ( .A1(n2), .A2(n1), .B(b), .ZN(n4) );
  OAI21D1BWP16P90LVT U8 ( .A1(n6), .A2(n5), .B(n4), .ZN(cout) );
endmodule


module FA_13 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  CKND2D4BWP16P90LVT U1 ( .A1(n6), .A2(a), .ZN(n9) );
  INVD1BWP16P90LVT U2 ( .I(a), .ZN(n7) );
  ND2D2BWP16P90LVT U3 ( .A1(n3), .A2(b), .ZN(n4) );
  ND2D2BWP16P90LVT U4 ( .A1(n4), .A2(n5), .ZN(n10) );
  ND2D1BWP16P90LVT U5 ( .A1(n10), .A2(n7), .ZN(n8) );
  ND2D2BWP16P90LVT U6 ( .A1(n8), .A2(n9), .ZN(Sum) );
  DEL025D1BWP16P90 U7 ( .I(Cin), .Z(n1) );
  ND2D2BWP16P90LVT U8 ( .A1(Cin), .A2(n2), .ZN(n5) );
  CKND2BWP16P90LVT U9 ( .I(Cin), .ZN(n3) );
  CKND2BWP16P90LVT U10 ( .I(n10), .ZN(n6) );
  CKND1BWP16P90LVT U11 ( .I(b), .ZN(n2) );
  INVD1BWP16P90 U12 ( .I(n1), .ZN(n12) );
  OAI21D1BWP16P90 U13 ( .A1(n1), .A2(a), .B(b), .ZN(n11) );
  OAI21D1BWP16P90LVT U14 ( .A1(n7), .A2(n12), .B(n11), .ZN(cout) );
endmodule


module FA_14 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(a), .Z(n1) );
  INVD1BWP16P90 U2 ( .I(Cin), .ZN(n3) );
  XOR3D4BWP16P90LVT U3 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n4) );
  OAI21D1BWP16P90 U5 ( .A1(Cin), .A2(n1), .B(b), .ZN(n2) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_15 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  XOR3D4BWP16P90LVT U1 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  DEL025D1BWP16P90 U2 ( .I(a), .Z(n1) );
  OAI21D1BWP16P90 U3 ( .A1(Cin), .A2(n1), .B(b), .ZN(n2) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n4) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n3) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_16 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(b), .A2(n2), .Z(Sum) );
  AO22D1BWP16P90 U2 ( .A1(a), .A2(Cin), .B1(n2), .B2(b), .Z(cout) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(a), .Z(n2) );
endmodule


module carry_8 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2;

  NR2D2BWP16P90LVT U1 ( .A1(carry_in), .A2(n1), .ZN(n2) );
  AN2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n1) );
  IAO21D2BWP16P90LVT U3 ( .A1(B), .A2(A), .B(n2), .ZN(carry_out) );
endmodule


module carry_9 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2;

  IAO21D4BWP16P90LVT U1 ( .A1(A), .A2(B), .B(n2), .ZN(carry_out) );
  IAOI21D4BWP16P90LVT U2 ( .A2(n1), .A1(A), .B(carry_in), .ZN(n2) );
  CKND1BWP16P90LVT U3 ( .I(B), .ZN(n1) );
endmodule


module carry_10 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3, n4;

  IND2D1BWP16P90LVT U1 ( .A1(n1), .B1(A), .ZN(n3) );
  CKND1BWP16P90LVT U2 ( .I(B), .ZN(n1) );
  NR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .ZN(n4) );
  AOI21D4BWP16P90LVT U4 ( .A1(n2), .A2(n3), .B(n4), .ZN(carry_out) );
  INVD4BWP16P90LVT U5 ( .I(carry_in), .ZN(n2) );
endmodule


module carry_11 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  NR2D2BWP16P90LVT U1 ( .A1(A), .A2(B), .ZN(n3) );
  AOI21D4BWP16P90LVT U2 ( .A1(n2), .A2(n1), .B(n3), .ZN(carry_out) );
  INVD1BWP16P90LVT U3 ( .I(carry_in), .ZN(n2) );
  CKND2D4BWP16P90LVT U4 ( .A1(A), .A2(B), .ZN(n1) );
endmodule


module carry_12 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D2BWP16P90LVT U1 ( .A(carry_in), .B(B), .C(A), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_13 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IOA21D4BWP16P90LVT U1 ( .A1(A), .A2(B), .B(n1), .ZN(carry_out) );
  OAI21D4BWP16P90LVT U2 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
endmodule


module carry_14 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  OA21D1BWP16P90 U1 ( .A1(A), .A2(B), .B(carry_in), .Z(n1) );
  OA22D2BWP16P90LVT U2 ( .A1(A), .A2(n1), .B1(B), .B2(n1), .Z(carry_out) );
endmodule


module CLA8_2 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2;
  wire   [7:1] carry_wire;

  carry_14 c1 ( .A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1])
         );
  carry_13 c2 ( .A(A[1]), .B(B[1]), .carry_in(carry_wire[1]), .carry_out(
        carry_wire[2]) );
  carry_12 c3 ( .A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(
        carry_wire[3]) );
  carry_11 c4 ( .A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(
        carry_wire[4]) );
  carry_10 c5 ( .A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(
        carry_wire[5]) );
  carry_9 c6 ( .A(A[5]), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(
        carry_wire[6]) );
  carry_8 c7 ( .A(A[6]), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(
        carry_wire[7]) );
  FA_16 FA1 ( .a(n1), .b(B[0]), .Cin(Cin), .Sum(Sum[0]) );
  FA_15 FA2 ( .a(A[1]), .b(B[1]), .Cin(carry_wire[1]), .Sum(Sum[1]) );
  FA_14 FA3 ( .a(A[2]), .b(B[2]), .Cin(n2), .Sum(Sum[2]) );
  FA_13 FA4 ( .a(A[3]), .b(B[3]), .Cin(carry_wire[3]), .Sum(Sum[3]) );
  FA_12 FA5 ( .a(A[4]), .b(B[4]), .Cin(carry_wire[4]), .Sum(Sum[4]) );
  FA_11 FA6 ( .a(A[5]), .b(B[5]), .Cin(carry_wire[5]), .Sum(Sum[5]) );
  FA_10 FA7 ( .a(A[6]), .b(B[6]), .Cin(carry_wire[6]), .Sum(Sum[6]) );
  FA_9 FA8 ( .a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(Cout) );
  DEL025D1BWP16P90 U1 ( .I(A[0]), .Z(n1) );
  BUFFD2BWP16P90LVT U2 ( .I(carry_wire[2]), .Z(n2) );
endmodule


module FA_17 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  MAOI222D1BWP16P90LVT U1 ( .A(a), .B(Cin), .C(b), .ZN(n1) );
  CKND2D2BWP16P90LVT U2 ( .A1(n10), .A2(n7), .ZN(n8) );
  CKND2BWP16P90LVT U3 ( .I(n1), .ZN(cout) );
  ND2D1BWP16P90LVT U4 ( .A1(n6), .A2(Cin), .ZN(n9) );
  CKND2BWP16P90LVT U5 ( .I(Cin), .ZN(n7) );
  ND2D2BWP16P90LVT U6 ( .A1(n8), .A2(n9), .ZN(Sum) );
  ND2D1BWP16P90LVT U7 ( .A1(b), .A2(n3), .ZN(n4) );
  ND2D1BWP16P90LVT U8 ( .A1(n2), .A2(a), .ZN(n5) );
  ND2D2BWP16P90LVT U9 ( .A1(n4), .A2(n5), .ZN(n10) );
  CKND1BWP16P90LVT U10 ( .I(b), .ZN(n2) );
  INVD1BWP16P90LVT U11 ( .I(a), .ZN(n3) );
  CKND2BWP16P90LVT U12 ( .I(n10), .ZN(n6) );
endmodule


module FA_18 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR2D8BWP16P90LVT U2 ( .A1(a), .A2(b), .Z(n2) );
  XOR2D8BWP16P90LVT U3 ( .A1(n2), .A2(Cin), .Z(Sum) );
  INVD1BWP16P90 U4 ( .I(a), .ZN(n5) );
  OAI21D1BWP16P90 U5 ( .A1(n1), .A2(a), .B(b), .ZN(n3) );
  INVD1BWP16P90 U6 ( .I(n1), .ZN(n4) );
  OAI21D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B(n3), .ZN(cout) );
endmodule


module FA_19 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(a), .Z(n1) );
  CKND1BWP16P90LVT U2 ( .I(n4), .ZN(n2) );
  XOR3D4BWP16P90LVT U3 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n5) );
  OAI21D1BWP16P90 U5 ( .A1(n2), .A2(n1), .B(b), .ZN(n3) );
  INVD1BWP16P90 U6 ( .I(Cin), .ZN(n4) );
  OAI21D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B(n3), .ZN(cout) );
endmodule


module FA_20 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3;

  XOR3D4BWP16P90LVT U1 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U2 ( .I(a), .ZN(n3) );
  OAI21D1BWP16P90 U3 ( .A1(Cin), .A2(a), .B(b), .ZN(n1) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n2) );
  OAI21D1BWP16P90LVT U5 ( .A1(n3), .A2(n2), .B(n1), .ZN(cout) );
endmodule


module FA_21 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  CKND1BWP16P90LVT U1 ( .I(b), .ZN(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(n1), .A2(Cin), .A3(n5), .Z(Sum) );
  DEL025D1BWP16P90 U3 ( .I(Cin), .Z(n2) );
  INVD1BWP16P90 U4 ( .I(a), .ZN(n5) );
  OAI21D1BWP16P90 U5 ( .A1(n2), .A2(a), .B(b), .ZN(n3) );
  INVD1BWP16P90 U6 ( .I(n2), .ZN(n4) );
  OAI21D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B(n3), .ZN(cout) );
endmodule


module FA_22 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  XOR3D4BWP16P90LVT U1 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  DEL025D1BWP16P90 U2 ( .I(Cin), .Z(n1) );
  CKND1BWP16P90LVT U3 ( .I(a), .ZN(n4) );
  OAI21D1BWP16P90 U4 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  INVD1BWP16P90 U5 ( .I(n1), .ZN(n3) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_23 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  XNR2D2BWP16P90 U1 ( .A1(n1), .A2(Cin), .ZN(n5) );
  CKND1BWP16P90LVT U2 ( .I(n3), .ZN(n1) );
  XOR3D4BWP16P90LVT U3 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U4 ( .I(a), .ZN(n3) );
  OAI22D1BWP16P90 U5 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(cout) );
  CKND1BWP16P90LVT U6 ( .I(b), .ZN(n4) );
  INVD1BWP16P90 U7 ( .I(Cin), .ZN(n2) );
endmodule


module FA_24 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n2;

  AO22D1BWP16P90 U1 ( .A1(a), .A2(Cin), .B1(n2), .B2(b), .Z(cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(b), .A2(n2), .Z(Sum) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(a), .Z(n2) );
endmodule


module carry_15 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D2BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_16 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D2BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_17 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IAO21D4BWP16P90LVT U1 ( .A1(A), .A2(B), .B(n1), .ZN(carry_out) );
  AOI21D2BWP16P90LVT U2 ( .A1(B), .A2(A), .B(carry_in), .ZN(n1) );
endmodule


module carry_18 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  OAI21D1BWP16P90LVT U1 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
  IOA21D2BWP16P90LVT U2 ( .A1(B), .A2(A), .B(n1), .ZN(carry_out) );
endmodule


module carry_19 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  ND2D1BWP16P90LVT U1 ( .A1(A), .A2(carry_in), .ZN(n1) );
  ND2D2BWP16P90LVT U2 ( .A1(carry_in), .A2(B), .ZN(n2) );
  ND3D4BWP16P90LVT U3 ( .A1(n1), .A2(n3), .A3(n2), .ZN(carry_out) );
  ND2D2BWP16P90LVT U4 ( .A1(A), .A2(B), .ZN(n3) );
endmodule


module carry_20 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IOA21D4BWP16P90LVT U1 ( .A1(carry_in), .A2(B), .B(n1), .ZN(carry_out) );
  OAI21D4BWP16P90LVT U2 ( .A1(carry_in), .A2(B), .B(A), .ZN(n1) );
endmodule


module carry_21 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D4BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  INVD4BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module CLA8_3 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:1] carry_wire;

  carry_21 c1 ( .A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1])
         );
  carry_20 c2 ( .A(A[1]), .B(B[1]), .carry_in(carry_wire[1]), .carry_out(
        carry_wire[2]) );
  carry_19 c3 ( .A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(
        carry_wire[3]) );
  carry_18 c4 ( .A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(
        carry_wire[4]) );
  carry_17 c5 ( .A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(
        carry_wire[5]) );
  carry_16 c6 ( .A(n2), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(
        carry_wire[6]) );
  carry_15 c7 ( .A(n5), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(
        carry_wire[7]) );
  FA_24 FA1 ( .a(n7), .b(B[0]), .Cin(Cin), .Sum(Sum[0]) );
  FA_23 FA2 ( .a(A[1]), .b(B[1]), .Cin(n3), .Sum(Sum[1]) );
  FA_22 FA3 ( .a(n9), .b(B[2]), .Cin(carry_wire[2]), .Sum(Sum[2]) );
  FA_21 FA4 ( .a(A[3]), .b(B[3]), .Cin(carry_wire[3]), .Sum(Sum[3]) );
  FA_20 FA5 ( .a(A[4]), .b(B[4]), .Cin(n6), .Sum(Sum[4]) );
  FA_19 FA6 ( .a(A[5]), .b(B[5]), .Cin(carry_wire[5]), .Sum(Sum[5]) );
  FA_18 FA7 ( .a(A[6]), .b(B[6]), .Cin(carry_wire[6]), .Sum(Sum[6]) );
  FA_17 FA8 ( .a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(
        Cout) );
  CKND2BWP16P90LVT U1 ( .I(A[5]), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(n2) );
  BUFFD2BWP16P90LVT U3 ( .I(carry_wire[1]), .Z(n3) );
  INVD1BWP16P90LVT U4 ( .I(A[6]), .ZN(n4) );
  CKND2BWP16P90LVT U5 ( .I(n4), .ZN(n5) );
  INVD1BWP16P90LVT U6 ( .I(A[2]), .ZN(n8) );
  CKND2BWP16P90LVT U7 ( .I(n8), .ZN(n9) );
  BUFFD2BWP16P90LVT U8 ( .I(carry_wire[4]), .Z(n6) );
  DEL025D1BWP16P90 U9 ( .I(A[0]), .Z(n7) );
endmodule


module FA_25 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2;

  BUFFD2BWP16P90 U1 ( .I(a), .Z(n1) );
  IOA21D2BWP16P90 U2 ( .A1(Cin), .A2(n1), .B(n2), .ZN(cout) );
  OAI21D1BWP16P90 U3 ( .A1(Cin), .A2(a), .B(b), .ZN(n2) );
  XOR3D4BWP16P90LVT U4 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
endmodule


module FA_26 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(a), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U3 ( .I(n1), .ZN(n4) );
  OAI21D1BWP16P90 U4 ( .A1(Cin), .A2(n1), .B(b), .ZN(n2) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n3) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_27 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(a), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U3 ( .I(n1), .ZN(n4) );
  OAI21D1BWP16P90 U4 ( .A1(Cin), .A2(n1), .B(b), .ZN(n2) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n3) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_28 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3;

  XOR3D4BWP16P90LVT U1 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  CKND1BWP16P90LVT U2 ( .I(a), .ZN(n3) );
  INVD1BWP16P90 U3 ( .I(Cin), .ZN(n2) );
  OAI21D1BWP16P90 U4 ( .A1(Cin), .A2(a), .B(b), .ZN(n1) );
  OAI21D1BWP16P90LVT U5 ( .A1(n3), .A2(n2), .B(n1), .ZN(cout) );
endmodule


module FA_29 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  CKND1BWP16P90LVT U3 ( .I(n1), .ZN(n3) );
  CKND1BWP16P90LVT U4 ( .I(a), .ZN(n4) );
  OAI21D1BWP16P90LVT U5 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_30 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  CKND1BWP16P90 U3 ( .I(a), .ZN(n4) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n3) );
  OAI21D1BWP16P90 U5 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_31 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(a), .Z(n1) );
  INVD1BWP16P90 U2 ( .I(n1), .ZN(n4) );
  XOR3D4BWP16P90LVT U3 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n3) );
  OAI21D1BWP16P90 U5 ( .A1(Cin), .A2(n1), .B(b), .ZN(n2) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_32 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n2;

  AO22D1BWP16P90LVT U1 ( .A1(a), .A2(Cin), .B1(n2), .B2(b), .Z(cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(b), .A2(n2), .Z(Sum) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(a), .Z(n2) );
endmodule


module carry_22 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D1BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_23 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IAO21D2BWP16P90LVT U1 ( .A1(B), .A2(A), .B(n1), .ZN(carry_out) );
  AOI21D2BWP16P90LVT U2 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
endmodule


module carry_24 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  AOI21D2BWP16P90LVT U1 ( .A1(B), .A2(A), .B(carry_in), .ZN(n1) );
  IAO21D2BWP16P90LVT U2 ( .A1(A), .A2(B), .B(n1), .ZN(carry_out) );
endmodule


module carry_25 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D2BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_26 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  ND2D2BWP16P90LVT U1 ( .A1(carry_in), .A2(A), .ZN(n1) );
  ND2D2BWP16P90LVT U2 ( .A1(A), .A2(B), .ZN(n3) );
  ND2D2BWP16P90LVT U3 ( .A1(carry_in), .A2(B), .ZN(n2) );
  ND3D4BWP16P90LVT U4 ( .A1(n2), .A2(n1), .A3(n3), .ZN(carry_out) );
endmodule


module carry_27 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2;

  IOAI21D4BWP16P90LVT U1 ( .A2(n1), .A1(carry_in), .B(A), .ZN(n2) );
  CKND1BWP16P90LVT U2 ( .I(B), .ZN(n1) );
  IOA21D4BWP16P90LVT U3 ( .A1(carry_in), .A2(B), .B(n2), .ZN(carry_out) );
endmodule


module carry_28 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D4BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  INVD4BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module CLA8_4 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [7:1] carry_wire;

  carry_28 c1 ( .A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1])
         );
  carry_27 c2 ( .A(A[1]), .B(B[1]), .carry_in(carry_wire[1]), .carry_out(
        carry_wire[2]) );
  carry_26 c3 ( .A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(
        carry_wire[3]) );
  carry_25 c4 ( .A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(
        carry_wire[4]) );
  carry_24 c5 ( .A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(
        carry_wire[5]) );
  carry_23 c6 ( .A(A[5]), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(
        carry_wire[6]) );
  carry_22 c7 ( .A(A[6]), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(
        carry_wire[7]) );
  FA_32 FA1 ( .a(n6), .b(B[0]), .Cin(Cin), .Sum(Sum[0]) );
  FA_31 FA2 ( .a(A[1]), .b(B[1]), .Cin(n1), .Sum(Sum[1]) );
  FA_30 FA3 ( .a(n5), .b(B[2]), .Cin(carry_wire[2]), .Sum(Sum[2]) );
  FA_29 FA4 ( .a(A[3]), .b(B[3]), .Cin(carry_wire[3]), .Sum(Sum[3]) );
  FA_28 FA5 ( .a(A[4]), .b(B[4]), .Cin(carry_wire[4]), .Sum(Sum[4]) );
  FA_27 FA6 ( .a(A[5]), .b(B[5]), .Cin(n2), .Sum(Sum[5]) );
  FA_26 FA7 ( .a(A[6]), .b(B[6]), .Cin(n3), .Sum(Sum[6]) );
  FA_25 FA8 ( .a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(
        Cout) );
  BUFFD2BWP16P90LVT U1 ( .I(carry_wire[1]), .Z(n1) );
  BUFFD2BWP16P90LVT U2 ( .I(carry_wire[6]), .Z(n3) );
  BUFFD2BWP16P90LVT U3 ( .I(carry_wire[5]), .Z(n2) );
  INVD1BWP16P90 U4 ( .I(A[2]), .ZN(n4) );
  CKND2BWP16P90LVT U5 ( .I(n4), .ZN(n5) );
  DEL025D1BWP16P90 U6 ( .I(A[0]), .Z(n6) );
endmodule


module FA_33 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2;

  IOA21D2BWP16P90 U1 ( .A1(a), .A2(Cin), .B(n2), .ZN(cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(b), .A2(a), .Z(n1) );
  OAI21D1BWP16P90 U3 ( .A1(Cin), .A2(a), .B(b), .ZN(n2) );
  XOR2D4BWP16P90LVT U4 ( .A1(n1), .A2(Cin), .Z(Sum) );
endmodule


module FA_34 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  ND2D4BWP16P90LVT U1 ( .A1(n4), .A2(n5), .ZN(Sum) );
  INVD1BWP16P90 U2 ( .I(a), .ZN(n3) );
  ND2D2BWP16P90LVT U3 ( .A1(n2), .A2(a), .ZN(n5) );
  CKND1BWP16P90LVT U4 ( .I(n8), .ZN(n1) );
  ND2D1BWP16P90LVT U5 ( .A1(n6), .A2(n3), .ZN(n4) );
  CKND2BWP16P90LVT U6 ( .I(n6), .ZN(n2) );
  XOR2D2BWP16P90LVT U7 ( .A1(Cin), .A2(b), .Z(n6) );
  OAI21D1BWP16P90 U8 ( .A1(n1), .A2(a), .B(b), .ZN(n7) );
  INVD1BWP16P90 U9 ( .I(Cin), .ZN(n8) );
  OAI21D1BWP16P90LVT U10 ( .A1(n3), .A2(n8), .B(n7), .ZN(cout) );
endmodule


module FA_35 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3;

  XOR3D4BWP16P90LVT U1 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U2 ( .I(a), .ZN(n3) );
  OAI21D1BWP16P90 U3 ( .A1(Cin), .A2(a), .B(b), .ZN(n1) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n2) );
  OAI21D1BWP16P90LVT U5 ( .A1(n3), .A2(n2), .B(n1), .ZN(cout) );
endmodule


module FA_36 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  INVD1BWP16P90 U1 ( .I(a), .ZN(n4) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  DEL025D1BWP16P90 U3 ( .I(Cin), .Z(n1) );
  OAI21D1BWP16P90 U4 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  CKND1BWP16P90LVT U5 ( .I(n1), .ZN(n3) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_37 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  OAI21D1BWP16P90 U2 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  XOR3D4BWP16P90LVT U3 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n3) );
  CKND1BWP16P90LVT U5 ( .I(a), .ZN(n4) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_38 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(a), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  CKND1BWP16P90LVT U3 ( .I(n4), .ZN(n2) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n5) );
  OAI21D1BWP16P90 U5 ( .A1(n2), .A2(n1), .B(b), .ZN(n3) );
  INVD1BWP16P90 U6 ( .I(Cin), .ZN(n4) );
  OAI21D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B(n3), .ZN(cout) );
endmodule


module FA_39 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  INVD1BWP16P90 U3 ( .I(a), .ZN(n4) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n3) );
  OAI21D1BWP16P90 U5 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_40 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n2;

  AO22D1BWP16P90 U1 ( .A1(a), .A2(Cin), .B1(n2), .B2(b), .Z(cout) );
  XOR2D1BWP16P90 U2 ( .A1(b), .A2(n2), .Z(Sum) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(a), .Z(n2) );
endmodule


module carry_29 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  OA21D2BWP16P90LVT U1 ( .A1(A), .A2(B), .B(n1), .Z(carry_out) );
  AO21D1BWP16P90LVT U2 ( .A1(B), .A2(A), .B(carry_in), .Z(n1) );
endmodule


module carry_30 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  AOI21D2BWP16P90LVT U1 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
  IAO21D4BWP16P90LVT U2 ( .A1(B), .A2(A), .B(n1), .ZN(carry_out) );
endmodule


module carry_31 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  IAOI21D2BWP16P90LVT U1 ( .A2(n2), .A1(A), .B(carry_in), .ZN(n1) );
  CKND1BWP16P90LVT U2 ( .I(B), .ZN(n2) );
  NR2D2BWP16P90LVT U3 ( .A1(A), .A2(B), .ZN(n3) );
  NR2D2BWP16P90LVT U4 ( .A1(n1), .A2(n3), .ZN(carry_out) );
endmodule


module carry_32 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2;

  IAOI21D4BWP16P90LVT U1 ( .A2(A), .A1(n1), .B(n2), .ZN(carry_out) );
  IAOI21D4BWP16P90LVT U2 ( .A2(n1), .A1(A), .B(carry_in), .ZN(n2) );
  CKND1BWP16P90LVT U3 ( .I(B), .ZN(n1) );
endmodule


module carry_33 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IOA21D4BWP16P90LVT U1 ( .A1(A), .A2(B), .B(n1), .ZN(carry_out) );
  OAI21D2BWP16P90LVT U2 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
endmodule


module carry_34 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1, n2, n3;

  AOI21D2BWP16P90LVT U1 ( .A1(n3), .A2(n2), .B(n1), .ZN(carry_out) );
  INVD1BWP16P90LVT U2 ( .I(B), .ZN(n2) );
  AOI21D2BWP16P90LVT U3 ( .A1(carry_in), .A2(B), .B(A), .ZN(n1) );
  INVD1BWP16P90LVT U4 ( .I(carry_in), .ZN(n3) );
endmodule


module carry_35 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  CKND2BWP16P90LVT U1 ( .I(n1), .ZN(carry_out) );
  MAOI222D2BWP16P90LVT U2 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
endmodule


module CLA8_5 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:1] carry_wire;

  carry_35 c1 ( .A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1])
         );
  carry_34 c2 ( .A(A[1]), .B(B[1]), .carry_in(carry_wire[1]), .carry_out(
        carry_wire[2]) );
  carry_33 c3 ( .A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(
        carry_wire[3]) );
  carry_32 c4 ( .A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(
        carry_wire[4]) );
  carry_31 c5 ( .A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(
        carry_wire[5]) );
  carry_30 c6 ( .A(A[5]), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(
        carry_wire[6]) );
  carry_29 c7 ( .A(A[6]), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(
        carry_wire[7]) );
  FA_40 FA1 ( .a(n6), .b(B[0]), .Cin(Cin), .Sum(Sum[0]) );
  FA_39 FA2 ( .a(n5), .b(B[1]), .Cin(carry_wire[1]), .Sum(Sum[1]) );
  FA_38 FA3 ( .a(A[2]), .b(B[2]), .Cin(n7), .Sum(Sum[2]) );
  FA_37 FA4 ( .a(n9), .b(B[3]), .Cin(carry_wire[3]), .Sum(Sum[3]) );
  FA_36 FA5 ( .a(n2), .b(B[4]), .Cin(carry_wire[4]), .Sum(Sum[4]) );
  FA_35 FA6 ( .a(A[5]), .b(B[5]), .Cin(n3), .Sum(Sum[5]) );
  FA_34 FA7 ( .a(A[6]), .b(B[6]), .Cin(carry_wire[6]), .Sum(Sum[6]) );
  FA_33 FA8 ( .a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(
        Cout) );
  CKND2BWP16P90LVT U1 ( .I(A[4]), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(n2) );
  BUFFD2BWP16P90LVT U3 ( .I(carry_wire[5]), .Z(n3) );
  CKND2BWP16P90LVT U4 ( .I(A[1]), .ZN(n4) );
  CKND2BWP16P90LVT U5 ( .I(n4), .ZN(n5) );
  DEL025D1BWP16P90 U6 ( .I(A[0]), .Z(n6) );
  BUFFD2BWP16P90LVT U7 ( .I(carry_wire[2]), .Z(n7) );
  INVD1BWP16P90LVT U8 ( .I(A[3]), .ZN(n8) );
  CKND2BWP16P90LVT U9 ( .I(n8), .ZN(n9) );
endmodule


module FA_41 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3;

  INVD1BWP16P90 U1 ( .I(a), .ZN(n1) );
  CKND1BWP16P90LVT U2 ( .I(n1), .ZN(n2) );
  IOA21D1BWP16P90LVT U3 ( .A1(n2), .A2(Cin), .B(n3), .ZN(cout) );
  XOR3D4BWP16P90LVT U4 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  OAI21D1BWP16P90LVT U5 ( .A1(Cin), .A2(n2), .B(b), .ZN(n3) );
endmodule


module FA_42 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  INVD1BWP16P90 U2 ( .I(n1), .ZN(n4) );
  XOR2D8BWP16P90LVT U3 ( .A1(Cin), .A2(b), .Z(n2) );
  OAI21D1BWP16P90 U4 ( .A1(n1), .A2(a), .B(b), .ZN(n3) );
  XOR2D8BWP16P90LVT U5 ( .A1(n2), .A2(a), .Z(Sum) );
  INVD1BWP16P90 U6 ( .I(a), .ZN(n5) );
  OAI21D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B(n3), .ZN(cout) );
endmodule


module FA_43 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  OAI21D1BWP16P90 U3 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  INVD1BWP16P90 U4 ( .I(n1), .ZN(n3) );
  INVD1BWP16P90 U5 ( .I(a), .ZN(n4) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_44 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  CKND1BWP16P90LVT U1 ( .I(n4), .ZN(n1) );
  INVD1BWP16P90 U2 ( .I(Cin), .ZN(n3) );
  OAI21D1BWP16P90 U3 ( .A1(Cin), .A2(n1), .B(b), .ZN(n2) );
  XOR3D4BWP16P90LVT U4 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U5 ( .I(a), .ZN(n4) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_45 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(a), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(a), .A3(Cin), .Z(Sum) );
  INVD1BWP16P90 U3 ( .I(n1), .ZN(n4) );
  OAI21D1BWP16P90 U4 ( .A1(Cin), .A2(n1), .B(b), .ZN(n2) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n3) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_46 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  INVD1BWP16P90 U2 ( .I(a), .ZN(n4) );
  INVD1BWP16P90 U3 ( .I(n1), .ZN(n3) );
  OAI21D1BWP16P90 U4 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  XOR3D4BWP16P90LVT U5 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_47 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n1, n2, n3, n4;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR3D4BWP16P90LVT U2 ( .A1(b), .A2(Cin), .A3(a), .Z(Sum) );
  CKND1BWP16P90LVT U3 ( .I(a), .ZN(n4) );
  OAI21D1BWP16P90 U4 ( .A1(n1), .A2(a), .B(b), .ZN(n2) );
  INVD1BWP16P90 U5 ( .I(n1), .ZN(n3) );
  OAI21D1BWP16P90LVT U6 ( .A1(n4), .A2(n3), .B(n2), .ZN(cout) );
endmodule


module FA_48 ( a, b, Cin, Sum, cout );
  input a, b, Cin;
  output Sum, cout;
  wire   n2;

  AO22D1BWP16P90 U1 ( .A1(a), .A2(Cin), .B1(n2), .B2(b), .Z(cout) );
  XOR2D1BWP16P90 U2 ( .A1(b), .A2(n2), .Z(Sum) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(a), .Z(n2) );
endmodule


module carry_36 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IAO21D1BWP16P90LVT U1 ( .A1(A), .A2(B), .B(n1), .ZN(carry_out) );
  AOI21D1BWP16P90 U2 ( .A1(B), .A2(A), .B(carry_in), .ZN(n1) );
endmodule


module carry_37 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IOA21D4BWP16P90LVT U1 ( .A1(B), .A2(A), .B(n1), .ZN(carry_out) );
  OAI21D2BWP16P90LVT U2 ( .A1(A), .A2(B), .B(carry_in), .ZN(n1) );
endmodule


module carry_38 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D4BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  INVD4BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_39 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D1BWP16P90LVT U1 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_40 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  IAO21D2BWP16P90LVT U1 ( .A1(A), .A2(B), .B(n1), .ZN(carry_out) );
  AOI21D2BWP16P90LVT U2 ( .A1(B), .A2(A), .B(carry_in), .ZN(n1) );
endmodule


module carry_41 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  MAOI222D1BWP16P90LVT U1 ( .A(B), .B(A), .C(carry_in), .ZN(n1) );
  CKND2BWP16P90LVT U2 ( .I(n1), .ZN(carry_out) );
endmodule


module carry_42 ( A, B, carry_in, carry_out );
  input A, B, carry_in;
  output carry_out;
  wire   n1;

  CKND2BWP16P90LVT U1 ( .I(n1), .ZN(carry_out) );
  MAOI222D2BWP16P90LVT U2 ( .A(A), .B(B), .C(carry_in), .ZN(n1) );
endmodule


module CLA8_6 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5;
  wire   [7:1] carry_wire;

  carry_42 c1 ( .A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1])
         );
  carry_41 c2 ( .A(A[1]), .B(B[1]), .carry_in(carry_wire[1]), .carry_out(
        carry_wire[2]) );
  carry_40 c3 ( .A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(
        carry_wire[3]) );
  carry_39 c4 ( .A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(
        carry_wire[4]) );
  carry_38 c5 ( .A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(
        carry_wire[5]) );
  carry_37 c6 ( .A(A[5]), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(
        carry_wire[6]) );
  carry_36 c7 ( .A(A[6]), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(
        carry_wire[7]) );
  FA_48 FA1 ( .a(n2), .b(B[0]), .Cin(Cin), .Sum(Sum[0]) );
  FA_47 FA2 ( .a(n5), .b(B[1]), .Cin(carry_wire[1]), .Sum(Sum[1]) );
  FA_46 FA3 ( .a(n4), .b(B[2]), .Cin(carry_wire[2]), .Sum(Sum[2]) );
  FA_45 FA4 ( .a(A[3]), .b(B[3]), .Cin(n3), .Sum(Sum[3]) );
  FA_44 FA5 ( .a(A[4]), .b(B[4]), .Cin(n1), .Sum(Sum[4]) );
  FA_43 FA6 ( .a(A[5]), .b(B[5]), .Cin(carry_wire[5]), .Sum(Sum[5]) );
  FA_42 FA7 ( .a(A[6]), .b(B[6]), .Cin(carry_wire[6]), .Sum(Sum[6]) );
  FA_41 FA8 ( .a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(
        Cout) );
  BUFFD2BWP16P90LVT U1 ( .I(carry_wire[4]), .Z(n1) );
  BUFFD2BWP16P90LVT U2 ( .I(carry_wire[3]), .Z(n3) );
  DEL025D1BWP16P90 U3 ( .I(A[0]), .Z(n2) );
  BUFFD2BWP16P90LVT U4 ( .I(A[1]), .Z(n5) );
  CKBD1BWP16P90LVT U5 ( .I(A[2]), .Z(n4) );
endmodule


module And_operation_1 ( A, B, And );
  input [7:0] A;
  output [7:0] And;
  input B;


  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A[7]), .Z(And[7]) );
  AN2D1BWP16P90LVT U4 ( .A1(A[4]), .A2(B), .Z(And[4]) );
  AN2D1BWP16P90LVT U5 ( .A1(A[3]), .A2(B), .Z(And[3]) );
  AN2D1BWP16P90LVT U6 ( .A1(A[2]), .A2(B), .Z(And[2]) );
  AN2D1BWP16P90LVT U7 ( .A1(A[1]), .A2(B), .Z(And[1]) );
  AN2D1BWP16P90LVT U8 ( .A1(A[0]), .A2(B), .Z(And[0]) );
  AN2D1BWP16P90LVT U2 ( .A1(A[5]), .A2(B), .Z(And[5]) );
  AN2D1BWP16P90LVT U3 ( .A1(A[6]), .A2(B), .Z(And[6]) );
endmodule


module And_operation_2 ( A, B, And );
  input [7:0] A;
  output [7:0] And;
  input B;


  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A[7]), .Z(And[7]) );
  AN2D1BWP16P90LVT U2 ( .A1(A[6]), .A2(B), .Z(And[6]) );
  AN2D1BWP16P90LVT U3 ( .A1(A[5]), .A2(B), .Z(And[5]) );
  AN2D1BWP16P90LVT U6 ( .A1(A[2]), .A2(B), .Z(And[2]) );
  AN2D1BWP16P90LVT U7 ( .A1(A[1]), .A2(B), .Z(And[1]) );
  AN2D1BWP16P90LVT U8 ( .A1(A[0]), .A2(B), .Z(And[0]) );
  AN2D1BWP16P90LVT U4 ( .A1(A[3]), .A2(B), .Z(And[3]) );
  AN2D1BWP16P90LVT U5 ( .A1(A[4]), .A2(B), .Z(And[4]) );
endmodule


module And_operation_3 ( A, B, And );
  input [7:0] A;
  output [7:0] And;
  input B;


  AN2D1BWP16P90LVT U2 ( .A1(A[6]), .A2(B), .Z(And[6]) );
  AN2D1BWP16P90LVT U3 ( .A1(A[5]), .A2(B), .Z(And[5]) );
  AN2D1BWP16P90LVT U4 ( .A1(A[4]), .A2(B), .Z(And[4]) );
  AN2D1BWP16P90LVT U5 ( .A1(A[3]), .A2(B), .Z(And[3]) );
  AN2D1BWP16P90LVT U6 ( .A1(A[2]), .A2(B), .Z(And[2]) );
  AN2D1BWP16P90LVT U7 ( .A1(A[1]), .A2(B), .Z(And[1]) );
  AN2D1BWP16P90LVT U8 ( .A1(A[0]), .A2(B), .Z(And[0]) );
  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A[7]), .Z(And[7]) );
endmodule


module And_operation_4 ( A, B, And );
  input [7:0] A;
  output [7:0] And;
  input B;


  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A[7]), .Z(And[7]) );
  AN2D1BWP16P90LVT U2 ( .A1(A[6]), .A2(B), .Z(And[6]) );
  AN2D1BWP16P90LVT U3 ( .A1(A[5]), .A2(B), .Z(And[5]) );
  AN2D1BWP16P90LVT U4 ( .A1(A[4]), .A2(B), .Z(And[4]) );
  AN2D1BWP16P90LVT U6 ( .A1(A[2]), .A2(B), .Z(And[2]) );
  AN2D1BWP16P90LVT U7 ( .A1(A[1]), .A2(B), .Z(And[1]) );
  AN2D1BWP16P90LVT U8 ( .A1(A[0]), .A2(B), .Z(And[0]) );
  AN2D1BWP16P90LVT U5 ( .A1(A[3]), .A2(B), .Z(And[3]) );
endmodule


module And_operation_5 ( A, B, And );
  input [7:0] A;
  output [7:0] And;
  input B;


  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A[7]), .Z(And[7]) );
  AN2D1BWP16P90LVT U2 ( .A1(A[6]), .A2(B), .Z(And[6]) );
  AN2D1BWP16P90LVT U3 ( .A1(A[5]), .A2(B), .Z(And[5]) );
  AN2D1BWP16P90LVT U5 ( .A1(A[3]), .A2(B), .Z(And[3]) );
  AN2D1BWP16P90LVT U6 ( .A1(A[2]), .A2(B), .Z(And[2]) );
  AN2D1BWP16P90LVT U7 ( .A1(A[1]), .A2(B), .Z(And[1]) );
  AN2D1BWP16P90LVT U8 ( .A1(A[0]), .A2(B), .Z(And[0]) );
  AN2D1BWP16P90LVT U4 ( .A1(A[4]), .A2(B), .Z(And[4]) );
endmodule


module And_operation_6 ( A, B, And );
  input [7:0] A;
  output [7:0] And;
  input B;


  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A[7]), .Z(And[7]) );
  AN2D1BWP16P90LVT U2 ( .A1(A[6]), .A2(B), .Z(And[6]) );
  AN2D1BWP16P90LVT U3 ( .A1(A[5]), .A2(B), .Z(And[5]) );
  AN2D1BWP16P90LVT U4 ( .A1(A[4]), .A2(B), .Z(And[4]) );
  AN2D1BWP16P90LVT U6 ( .A1(A[2]), .A2(B), .Z(And[2]) );
  AN2D1BWP16P90LVT U5 ( .A1(A[1]), .A2(B), .Z(And[1]) );
  AN2D1BWP16P90LVT U7 ( .A1(A[3]), .A2(B), .Z(And[3]) );
  AN2D1BWP16P90LVT U8 ( .A1(B), .A2(A[0]), .Z(And[0]) );
endmodule


module And_operation_7 ( A, B, And );
  input [7:0] A;
  output [7:0] And;
  input B;
  wire   n1, n2, n3, n4;

  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A[7]), .Z(And[7]) );
  AN2D1BWP16P90LVT U2 ( .A1(A[6]), .A2(B), .Z(And[6]) );
  AN2D1BWP16P90LVT U3 ( .A1(A[2]), .A2(B), .Z(And[2]) );
  CKNR2D8BWP16P90LVT U4 ( .A1(n3), .A2(n4), .ZN(And[1]) );
  AN2D1BWP16P90LVT U5 ( .A1(A[3]), .A2(B), .Z(And[3]) );
  AN2D1BWP16P90LVT U6 ( .A1(A[4]), .A2(B), .Z(And[4]) );
  AN2D1BWP16P90LVT U7 ( .A1(A[5]), .A2(B), .Z(And[5]) );
  NR2D4BWP16P90LVT U8 ( .A1(n1), .A2(n2), .ZN(And[0]) );
  CKND16BWP16P90LVT U9 ( .I(A[0]), .ZN(n1) );
  CKND16BWP16P90LVT U10 ( .I(B), .ZN(n2) );
  CKND16BWP16P90LVT U11 ( .I(A[1]), .ZN(n3) );
  CKND16BWP16P90LVT U12 ( .I(B), .ZN(n4) );
endmodule


module Multiplier_CLA ( A, B, Product );
  input [7:0] A;
  input [7:0] B;
  output [15:0] Product;
  wire   \*Logic0* ;
  wire   [63:0] And;
  wire   [47:0] Add_Sum;
  wire   [5:0] Add_Carry;
  assign Product[0] = And[0];
  assign Product[6] = Add_Sum[40];
  assign Product[5] = Add_Sum[32];
  assign Product[4] = Add_Sum[24];
  assign Product[3] = Add_Sum[16];
  assign Product[2] = Add_Sum[8];
  assign Product[1] = Add_Sum[0];

  And_operation_0 A1 ( .A(A), .B(B[0]), .And(And[7:0]) );
  And_operation_7 A2 ( .A(A), .B(B[1]), .And(And[15:8]) );
  And_operation_6 A3 ( .A(A), .B(B[2]), .And(And[23:16]) );
  And_operation_5 A4 ( .A(A), .B(B[3]), .And(And[31:24]) );
  And_operation_4 A5 ( .A(A), .B(B[4]), .And(And[39:32]) );
  And_operation_3 A6 ( .A(A), .B(B[5]), .And(And[47:40]) );
  And_operation_2 A7 ( .A(A), .B(B[6]), .And(And[55:48]) );
  And_operation_1 A8 ( .A(A), .B(B[7]), .And(And[63:56]) );
  CLA8_0 CLA81 ( .A({\*Logic0* , And[7:1]}), .B(And[15:8]), .Cin(\*Logic0* ), 
        .Sum(Add_Sum[7:0]), .Cout(Add_Carry[0]) );
  CLA8_6 CLA82 ( .A({Add_Carry[0], Add_Sum[7:1]}), .B(And[23:16]), .Cin(
        \*Logic0* ), .Sum(Add_Sum[15:8]), .Cout(Add_Carry[1]) );
  CLA8_5 CLA83 ( .A({Add_Carry[1], Add_Sum[15:9]}), .B(And[31:24]), .Cin(
        \*Logic0* ), .Sum(Add_Sum[23:16]), .Cout(Add_Carry[2]) );
  CLA8_4 CLA84 ( .A({Add_Carry[2], Add_Sum[23:17]}), .B(And[39:32]), .Cin(
        \*Logic0* ), .Sum(Add_Sum[31:24]), .Cout(Add_Carry[3]) );
  CLA8_3 CLA85 ( .A({Add_Carry[3], Add_Sum[31:25]}), .B(And[47:40]), .Cin(
        \*Logic0* ), .Sum(Add_Sum[39:32]), .Cout(Add_Carry[4]) );
  CLA8_2 CLA86 ( .A({Add_Carry[4], Add_Sum[39:33]}), .B(And[55:48]), .Cin(
        \*Logic0* ), .Sum(Add_Sum[47:40]), .Cout(Add_Carry[5]) );
  CLA8_1 CLA87 ( .A({Add_Carry[5], Add_Sum[47:41]}), .B(And[63:56]), .Cin(
        \*Logic0* ), .Sum(Product[14:7]), .Cout(Product[15]) );
  TIELBWP20P90LVT U2 ( .ZN(\*Logic0* ) );
endmodule

