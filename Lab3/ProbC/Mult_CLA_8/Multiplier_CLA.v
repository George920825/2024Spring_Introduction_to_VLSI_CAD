`include "CLA8.v"

module Multiplier_CLA(
    input   [7:0]   A,
    input   [7:0]   B,
    output  [15:0]  Product
);
    wire [127:0] And;
    wire [127:0] Add_Sum;
    wire [15:0] Add_Carry;

    And_operation A1(.A(A[7:0]), .B(B[0]), .And(And[7:0]));
    And_operation A2(.A(A[7:0]), .B(B[1]), .And(And[15:8]));
    And_operation A3(.A(A[7:0]), .B(B[2]), .And(And[23:16]));
    And_operation A4(.A(A[7:0]), .B(B[3]), .And(And[31:24]));
    And_operation A5(.A(A[7:0]), .B(B[4]), .And(And[39:32]));
    And_operation A6(.A(A[7:0]), .B(B[5]), .And(And[47:40]));
    And_operation A7(.A(A[7:0]), .B(B[6]), .And(And[55:48]));
    And_operation A8(.A(A[7:0]), .B(B[7]), .And(And[63:56]));

    and(Product[0], 1'b1, And[0]);
    CLA8 CLA81(.A({1'b0, And[7:1]}), .B(And[15:8]), .Cin(1'b0), .Sum(Add_Sum[7:0]), .Cout(Add_Carry[0]));
    and(Product[1], 1'b1, Add_Sum[0]);
    CLA8 CLA82(.A({Add_Carry[0], Add_Sum[7:1]}), .B(And[23:16]), .Cin(1'b0), .Sum(Add_Sum[15:8]), .Cout(Add_Carry[1]));
    and(Product[2], 1'b1, Add_Sum[8]);
    CLA8 CLA83(.A({Add_Carry[1], Add_Sum[15:9]}), .B(And[31:24]), .Cin(1'b0), .Sum(Add_Sum[23:16]), .Cout(Add_Carry[2]));
    and(Product[3], 1'b1, Add_Sum[16]);
    CLA8 CLA84(.A({Add_Carry[2], Add_Sum[23:17]}), .B(And[39:32]), .Cin(1'b0), .Sum(Add_Sum[31:24]), .Cout(Add_Carry[3]));
    and(Product[4], 1'b1, Add_Sum[24]);
    CLA8 CLA85(.A({Add_Carry[3], Add_Sum[31:25]}), .B(And[47:40]), .Cin(1'b0), .Sum(Add_Sum[39:32]), .Cout(Add_Carry[4]));
    and(Product[5], 1'b1, Add_Sum[32]);
    CLA8 CLA86(.A({Add_Carry[4], Add_Sum[39:33]}), .B(And[55:48]), .Cin(1'b0), .Sum(Add_Sum[47:40]), .Cout(Add_Carry[5]));
    and(Product[6], 1'b1, Add_Sum[40]);
    CLA8 CLA87(.A({Add_Carry[5], Add_Sum[47:41]}), .B(And[63:56]), .Cin(1'b0), .Sum(Product[14:7]), .Cout(Product[15]));
endmodule

module And_operation (
    input [7:0] A,
    input B,
    output [7:0] And
);
    and(And[0], A[0], B);
    and(And[1], A[1], B);
    and(And[2], A[2], B);
    and(And[3], A[3], B);
    and(And[4], A[4], B);
    and(And[5], A[5], B);
    and(And[6], A[6], B);
    and(And[7], A[7], B);  
endmodule