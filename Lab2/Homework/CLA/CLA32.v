`include "CLA8.v"

module CLA32(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] sum,
    output overflow);

wire [3:0] carry_wire;
wire w0, w1, w2;

not(w0, 1'b1);

// Four
// CLA8
CLA8 CLA81(.A(a[7:0]), .B(b[7:0]), .Cin(w0), .Sum(sum[7:0]), .Cout(carry_wire[0]));
CLA8 CLA82(.A(a[15:8]), .B(b[15:8]), .Cin(carry_wire[0]), .Sum(sum[15:8]), .Cout(carry_wire[1]));
CLA8 CLA83(.A(a[23:16]), .B(b[23:16]), .Cin(carry_wire[1]), .Sum(sum[23:16]), .Cout(carry_wire[2]));
CLA8 CLA84(.A(a[31:24]), .B(b[31:24]), .Cin(carry_wire[2]), .Sum(sum[31:24]), .Cout(carry_wire[3]));

// calculate
// overflow
and(w1, ~a[31], ~b[31], sum[31]);
and(w2, a[31], b[31], ~sum[31]);
or(overflow, w1, w2);

endmodule






















