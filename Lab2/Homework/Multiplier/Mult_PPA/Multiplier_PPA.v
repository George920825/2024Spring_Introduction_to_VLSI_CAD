// ================================================ // 
//  Course:      IVCAD 2024 Spring                  //                       
//  Auther:      Zong-Jin CAI (Leo)                 //                         
//  Filename:    Multiplier_PPA.v                   //                               
//  Description: 8*8-bit Multiplier using PPA       //                 
//  Version:     1.0                                // 
//  Date:        2024/02/22                         //     
// ================================================ //    

`include "PPA8.v"

module Multiplier_PPA(
    input   [7:0]   A,
    input   [7:0]   B,
    output  [15:0]  Product
);
    wire [63:0] And_w;
    wire [47:0] Add_Sum;
    wire [5:0] Add_Carry;
	wire w0;

    And_operation A1(.A(A[7:0]), .B(B[0]), .And_w(And_w[7:0]));
    And_operation A2(.A(A[7:0]), .B(B[1]), .And_w(And_w[15:8]));
    And_operation A3(.A(A[7:0]), .B(B[2]), .And_w(And_w[23:16]));
    And_operation A4(.A(A[7:0]), .B(B[3]), .And_w(And_w[31:24]));
    And_operation A5(.A(A[7:0]), .B(B[4]), .And_w(And_w[39:32]));
    And_operation A6(.A(A[7:0]), .B(B[5]), .And_w(And_w[47:40]));
    And_operation A7(.A(A[7:0]), .B(B[6]), .And_w(And_w[55:48]));
    And_operation A8(.A(A[7:0]), .B(B[7]), .And_w(And_w[63:56]));

	and(w0, 1'b0, 1'b1);

    and(Product[0], 1'b1, And_w[0]);
    PPA8 PPA81(.A({1'b0, And_w[7:1]}), .B(And_w[15:8]), .Cin(w0), .Sum(Add_Sum[7:0]), .Cout(Add_Carry[0]));
    and(Product[1], 1'b1, Add_Sum[0]);
    PPA8 PPA82(.A({Add_Carry[0], Add_Sum[7:1]}), .B(And_w[23:16]), .Cin(w0), .Sum(Add_Sum[15:8]), .Cout(Add_Carry[1]));
    and(Product[2], 1'b1, Add_Sum[8]);
    PPA8 PPA83(.A({Add_Carry[1], Add_Sum[15:9]}), .B(And_w[31:24]), .Cin(w0), .Sum(Add_Sum[23:16]), .Cout(Add_Carry[2]));
    and(Product[3], 1'b1, Add_Sum[16]);
    PPA8 PPA84(.A({Add_Carry[2], Add_Sum[23:17]}), .B(And_w[39:32]), .Cin(w0), .Sum(Add_Sum[31:24]), .Cout(Add_Carry[3]));
    and(Product[4], 1'b1, Add_Sum[24]);
    PPA8 PPA85(.A({Add_Carry[3], Add_Sum[31:25]}), .B(And_w[47:40]), .Cin(w0), .Sum(Add_Sum[39:32]), .Cout(Add_Carry[4]));
    and(Product[5], 1'b1, Add_Sum[32]);
    PPA8 PPA86(.A({Add_Carry[4], Add_Sum[39:33]}), .B(And_w[55:48]), .Cin(w0), .Sum(Add_Sum[47:40]), .Cout(Add_Carry[5]));
    and(Product[6], 1'b1, Add_Sum[40]);
    PPA8 PPA87(.A({Add_Carry[5], Add_Sum[47:41]}), .B(And_w[63:56]), .Cin(w0), .Sum(Product[14:7]), .Cout(Product[15]));
	
endmodule

module And_operation (
	input [7:0] A,
	input B,
	output [7:0] And_w
);
	and(And_w[0], A[0], B);
	and(And_w[1], A[1], B);
	and(And_w[2], A[2], B);
	and(And_w[3], A[3], B);
	and(And_w[4], A[4], B);
	and(And_w[5], A[5], B);
	and(And_w[6], A[6], B);
	and(And_w[7], A[7], B);  
endmodule