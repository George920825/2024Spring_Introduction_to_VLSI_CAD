`include "black_cell.v"
`include "blue_cell.v"
`include "FA.v"

module PPA8(A, B, Cin, Sum, Cout);
input  [7:0] A, B;
input        Cin;
output [7:0] Sum;
output Cout;

wire [7:0] carry_propagator;
wire [7:0] carry_generator;
wire [7:0] carry_wire;
wire [5:0] l1_p;
wire [5:0] l1_g;
wire [3:0] l2_p;
wire [3:0] l2_g;
wire [7:0] n;
//p, g generation
and(carry_generator[0], A[0], B[0]);
or(carry_propagator[0], A[0], B[0]);
and(carry_generator[1], A[1], B[1]);
or(carry_propagator[1], A[1], B[1]);
and(carry_generator[2], A[2], B[2]);
or(carry_propagator[2], A[2], B[2]);
and(carry_generator[3], A[3], B[3]);
or(carry_propagator[3], A[3], B[3]);
and(carry_generator[4], A[4], B[4]);
or(carry_propagator[4], A[4], B[4]);
and(carry_generator[5], A[5], B[5]);
or(carry_propagator[5], A[5], B[5]);
and(carry_generator[6], A[6], B[6]);
or(carry_propagator[6], A[6], B[6]);
and(carry_generator[7], A[7], B[7]);
or(carry_propagator[7], A[7], B[7]);
//1st layer
and(n[7], carry_propagator[0], Cin);
or(carry_wire[0], carry_generator[0], n[7]);
blue_cell l1_1(.p2(carry_propagator[1]), .g1(carry_generator[0]), .g2(carry_generator[1]), .G(carry_wire[1]));
black_cell l1_2(.p1(carry_propagator[1]), .p2(carry_propagator[2]), .g1(carry_generator[1]), .g2(carry_generator[2]), .G(l1_g[0]), .P(l1_p[0]));
black_cell l1_3(.p1(carry_propagator[2]), .p2(carry_propagator[3]), .g1(carry_generator[2]), .g2(carry_generator[3]), .G(l1_g[1]), .P(l1_p[1]));
black_cell l1_4(.p1(carry_propagator[3]), .p2(carry_propagator[4]), .g1(carry_generator[3]), .g2(carry_generator[4]), .G(l1_g[2]), .P(l1_p[2]));
black_cell l1_5(.p1(carry_propagator[4]), .p2(carry_propagator[5]), .g1(carry_generator[4]), .g2(carry_generator[5]), .G(l1_g[3]), .P(l1_p[3]));
black_cell l1_6(.p1(carry_propagator[5]), .p2(carry_propagator[6]), .g1(carry_generator[5]), .g2(carry_generator[6]), .G(l1_g[4]), .P(l1_p[4]));
black_cell l1_7(.p1(carry_propagator[6]), .p2(carry_propagator[7]), .g1(carry_generator[6]), .g2(carry_generator[7]), .G(l1_g[5]), .P(l1_p[5]));
//2nd layer
blue_cell l2_1(.p2(l1_p[0]), .g1(carry_wire[0]), .g2(l1_g[0]), .G(carry_wire[2]));
blue_cell l2_2(.p2(l1_p[1]), .g1(carry_wire[1]), .g2(l1_g[1]), .G(carry_wire[3]));
black_cell l2_3(.p1(l1_p[0]), .p2(l1_p[2]), .g1(l1_g[0]), .g2(l1_g[2]), .G(l2_g[0]), .P(l2_p[0]));
black_cell l2_4(.p1(l1_p[1]), .p2(l1_p[3]), .g1(l1_g[1]), .g2(l1_g[3]), .G(l2_g[1]), .P(l2_p[1]));
black_cell l2_5(.p1(l1_p[2]), .p2(l1_p[4]), .g1(l1_g[2]), .g2(l1_g[4]), .G(l2_g[2]), .P(l2_p[2]));
black_cell l2_6(.p1(l1_p[3]), .p2(l1_p[5]), .g1(l1_g[3]), .g2(l1_g[5]), .G(l2_g[3]), .P(l2_p[3]));
//3rd layer
blue_cell l3_1(.p2(l2_p[0]), .g1(carry_wire[0]), .g2(l2_g[0]), .G(carry_wire[4]));
blue_cell l3_2(.p2(l2_p[1]), .g1(carry_wire[1]), .g2(l2_g[1]), .G(carry_wire[5]));
blue_cell l3_3(.p2(l2_p[2]), .g1(carry_wire[2]), .g2(l2_g[2]), .G(carry_wire[6]));
blue_cell l3_4(.p2(l2_p[3]), .g1(carry_wire[3]), .g2(l2_g[3]), .G(carry_wire[7]));
//FA
FA FA1(.a(A[0]), .b(B[0]), .Cin(Cin), .Sum(Sum[0]), .cout(n[0]));
FA FA2(.a(A[1]), .b(B[1]), .Cin(carry_wire[0]), .Sum(Sum[1]), .cout(n[1]));
FA FA3(.a(A[2]), .b(B[2]), .Cin(carry_wire[1]), .Sum(Sum[2]), .cout(n[2]));
FA FA4(.a(A[3]), .b(B[3]), .Cin(carry_wire[2]), .Sum(Sum[3]), .cout(n[3]));
FA FA5(.a(A[4]), .b(B[4]), .Cin(carry_wire[3]), .Sum(Sum[4]), .cout(n[4]));
FA FA6(.a(A[5]), .b(B[5]), .Cin(carry_wire[4]), .Sum(Sum[5]), .cout(n[5]));
FA FA7(.a(A[6]), .b(B[6]), .Cin(carry_wire[5]), .Sum(Sum[6]), .cout(n[6]));
FA FA8(.a(A[7]), .b(B[7]), .Cin(carry_wire[6]), .Sum(Sum[7]), .cout(Cout));
endmodule