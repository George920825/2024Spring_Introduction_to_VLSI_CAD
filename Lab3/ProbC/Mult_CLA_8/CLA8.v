`include "FA.v"

module CLA8(A, B, Cin, Sum, Cout);

	input  [7:0] A;
	input  [7:0] B;
	input 	     Cin;
	output [7:0] Sum;
	output       Cout;

	wire [7:0] carry_propagator;
	wire [7:0] carry_generator;
	wire [7:0] carry_wire;
	wire [7:0] w;
	wire [7:0] n;
	//carry
	carry c1(.A(A[0]), .B(B[0]), .carry_in(Cin), .carry_out(carry_wire[1]));
	carry c2(.A(A[1]), .B(B[1]), .carry_in(carry_wire[1]), .carry_out(carry_wire[2]));
	carry c3(.A(A[2]), .B(B[2]), .carry_in(carry_wire[2]), .carry_out(carry_wire[3]));
	carry c4(.A(A[3]), .B(B[3]), .carry_in(carry_wire[3]), .carry_out(carry_wire[4]));
	carry c5(.A(A[4]), .B(B[4]), .carry_in(carry_wire[4]), .carry_out(carry_wire[5]));
	carry c6(.A(A[5]), .B(B[5]), .carry_in(carry_wire[5]), .carry_out(carry_wire[6]));
	carry c7(.A(A[6]), .B(B[6]), .carry_in(carry_wire[6]), .carry_out(carry_wire[7]));
	//FA
	FA FA1(.a(A[0]), .b(B[0]), .Cin(Cin), .Sum(Sum[0]), .cout(n[0]));
	FA FA2(.a(A[1]), .b(B[1]), .Cin(carry_wire[1]), .Sum(Sum[1]), .cout(n[1]));
	FA FA3(.a(A[2]), .b(B[2]), .Cin(carry_wire[2]), .Sum(Sum[2]), .cout(n[2]));
	FA FA4(.a(A[3]), .b(B[3]), .Cin(carry_wire[3]), .Sum(Sum[3]), .cout(n[3]));
	FA FA5(.a(A[4]), .b(B[4]), .Cin(carry_wire[4]), .Sum(Sum[4]), .cout(n[4]));
	FA FA6(.a(A[5]), .b(B[5]), .Cin(carry_wire[5]), .Sum(Sum[5]), .cout(n[5]));
	FA FA7(.a(A[6]), .b(B[6]), .Cin(carry_wire[6]), .Sum(Sum[6]), .cout(n[6]));
	FA FA8(.a(A[7]), .b(B[7]), .Cin(carry_wire[7]), .Sum(Sum[7]), .cout(Cout));

endmodule

module carry(A, B, carry_in, carry_out);
	input A, B, carry_in;
	output carry_out;
	wire g, p, w;

	and(g, A, B);
	or(p, A, B);
	and(w, p, carry_in);
	or(carry_out, g, w);
endmodule