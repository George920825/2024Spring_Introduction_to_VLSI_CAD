module FA(
    input  a,
    input  b,
    input  Cin, 
    output Sum,
    output cout);

    wire w1, w2, w3;

	and(w1, a, b);
	and(w2, b, Cin);
	and(w3, a, Cin);
	or(cout, w1, w2, w3);
	xor(Sum, a, b, Cin);

endmodule