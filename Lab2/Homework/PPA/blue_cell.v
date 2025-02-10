module blue_cell(p2, g1, g2, G);
input  p2, g1, g2;
output G;

// put your design here
wire and1;

and(and1, p2, g1);
or(G, g2, and1);

endmodule