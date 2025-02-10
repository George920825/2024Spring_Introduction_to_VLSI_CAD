`include "FA.v"

 module CLA8(A, B, Cin, Sum, Cout);

 	input  [7:0] A;
 	input  [7:0] B;
 	input 	     Cin;
 	output [7:0] Sum;
 	output       Cout;

 	wire [6:0] carry_propagator;
 	wire [6:0] carry_generator;
 	wire [6:0] carry_wire;
 	wire [6:0] w;
 	wire [6:0] n;
	
 	//c1
 	and(carry_generator[0], A[0], B[0]);
 	or(carry_propagator[0], A[0], B[0]);
 	and(w[0], carry_propagator[0], Cin);
 	or(carry_wire[0], carry_generator[0], w[0]);
	
 	//c2
 	and(carry_generator[1], A[1], B[1]);
 	or(carry_propagator[1], A[1], B[1]);
 	and(w[1], carry_propagator[1], carry_wire[0]);
 	or(carry_wire[1], carry_generator[1], w[1]);

 	//c3
 	and(carry_generator[2], A[2], B[2]);
 	or(carry_propagator[2], A[2], B[2]);
 	and(w[2], carry_propagator[2], carry_wire[1]);
 	or(carry_wire[2], carry_generator[2], w[2]);
	
 	//c4
 	and(carry_generator[3], A[3], B[3]);
 	or(carry_propagator[3], A[3], B[3]);
 	and(w[3], carry_propagator[3], carry_wire[2]);
 	or(carry_wire[3], carry_generator[3], w[3]);

 	//c5
 	and(carry_generator[4], A[4], B[4]);
 	or(carry_propagator[4], A[4], B[4]);
 	and(w[4], carry_propagator[4], carry_wire[3]);
 	or(carry_wire[4], carry_generator[4], w[4]);
	
 	//c6
 	and(carry_generator[5], A[5], B[5]);
 	or(carry_propagator[5], A[5], B[5]);
 	and(w[5], carry_propagator[5], carry_wire[4]);
 	or(carry_wire[5], carry_generator[5], w[5]);
	
 	//c7
 	and(carry_generator[6], A[6], B[6]);
 	or(carry_propagator[6], A[6], B[6]);
 	and(w[6], carry_propagator[6], carry_wire[5]);
 	or(carry_wire[6], carry_generator[6], w[6]);
	
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

//module CLA8(A, B, Cin, Sum, Cout);
//
//	input  [7:0] A;
//	input  [7:0] B;
//	input 	     Cin;
//	output [7:0] Sum;
//	output       Cout;
//
////	wire [7:0] carry_propagator;
////	wire [7:0] carry_generator;
//	wire [7:1] carry_wire;
////	wire [7:0] w;
//	wire [7:0] n;
//
//	//carry
//	carry c1(.A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1]));
//	carry c2(.A(A[1]), .B(B[1]), .carry_in(carry_wire[1]), .carry_out(carry_wire[2]));
//	carry c3(.A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(carry_wire[3]));
//	carry c4(.A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(carry_wire[4]));
//	carry c5(.A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(carry_wire[5]));
//	carry c6(.A(A[5]), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(carry_wire[6]));
//	carry c7(.A(A[6]), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(carry_wire[7]));
//
//	//FA
//	FA FA1(.a(A[0]), .b(B[0]), .Cin(Cin), .Sum(Sum[0]), .cout(n[0]));
//	FA FA2(.a(A[1]), .b(B[1]), .Cin(carry_wire[1]), .Sum(Sum[1]), .cout(n[1]));
//	FA FA3(.a(A[2]), .b(B[2]), .Cin(carry_wire[2]), .Sum(Sum[2]), .cout(n[2]));
//	FA FA4(.a(A[3]), .b(B[3]), .Cin(carry_wire[3]), .Sum(Sum[3]), .cout(n[3]));
//	FA FA5(.a(A[4]), .b(B[4]), .Cin(carry_wire[4]), .Sum(Sum[4]), .cout(n[4]));
//	FA FA6(.a(A[5]), .b(B[5]), .Cin(carry_wire[5]), .Sum(Sum[5]), .cout(n[5]));
//	FA FA7(.a(A[6]), .b(B[6]), .Cin(carry_wire[6]), .Sum(Sum[6]), .cout(n[6]));
//	FA FA8(.a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(Cout));
//
//endmodule
//
//
//
//module carry(A, B, carry_in, carry_out);
//	input A, B, carry_in;
//	output carry_out;
//	wire g, p, w;
//
//
//	and(g, A, B);
//	or(p, A, B);
//	and(w, p, carry_in);
//	or(carry_out, g, w);
//endmodule