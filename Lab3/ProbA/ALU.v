`define DATA_SIZE  32
`define OP_SIZE  5

`define ADD    5'b00000
`define SUB    5'b00001
`define OR     5'b00010
`define AND    5'b00011
`define XOR    5'b00100
`define NOT    5'b00101
`define NAND   5'b00110
`define NOR    5'b00111

`define SLT    5'b01000
`define SLTU   5'b01001
`define SRA    5'b01010
`define SLA    5'b01011
`define SRL    5'b01100
`define SLL    5'b01101
`define ROTR   5'b01110
`define ROTL   5'b01111
`define MUL    5'b10000
`define MULH   5'b10001
`define MULHSU 5'b10010
`define MULHU  5'b10011

module ALU (
	input      [`OP_SIZE-1:0]   alu_op,
	input      [`DATA_SIZE-1:0] src1,
	input      [`DATA_SIZE-1:0] src2,
	output reg [`DATA_SIZE-1:0] alu_out,
	output reg                  alu_overflow
);

reg [63:0] mul_out;

always@(*)begin
	case(alu_op)
		`ADD: alu_out = src1 + src2;
		`SUB: alu_out = src1 - src2;
		`OR: alu_out = src1 | src2;
		`AND: alu_out = src1 & src2;
		`XOR: alu_out = src1 ^ src2;
		`NOT: alu_out = ~src1;
		`NAND: alu_out = ~(src1 & src2);
		`NOR: alu_out = ~(src1 | src2);
		`SLT: alu_out = ($signed(src1) < $signed(src2)) ? 32'b1 : 32'b0;
		`SLTU: alu_out = (src1 < src2) ? 32'b1 : 32'b0; 
		`SRA: alu_out = $signed(src1) >>> src2;
		`SLA: alu_out = $signed(src1) <<< src2;
		`SRL: alu_out = src1 >> src2;
		`SLL: alu_out = src1 << src2;
		`ROTR: alu_out = (src1 >> src2) | (src1 << (`DATA_SIZE - src2));
		`ROTL: alu_out = (src1 << src2) | (src1 >> (`DATA_SIZE - src2));
		`MUL: alu_out = mul_out[31:0];
        `MULH: alu_out = mul_out[63:32];
       	`MULHSU: alu_out = mul_out[63:32];
        `MULHU: alu_out = mul_out[63:32];
		default: alu_out = 32'b0;
	endcase
end

always@(*)begin
	case(alu_op)
		`MUL: mul_out = src1 * src2;
		`MULH: mul_out = $signed(src1) * $signed(src2);
		`MULHSU: mul_out = $signed(src1) * $signed({1'b0, src2});
		`MULHU: mul_out = src1 * src2;
		default: mul_out = 64'b0;
	endcase
end

always@(*)begin
	case(alu_op)
		`ADD: alu_overflow = (src1[31] && src2[31] && ~alu_out[31]) || (~src1[31] && ~src2[31] && alu_out[31]);
		`SUB: alu_overflow = (src1[31] && ~src2[31] && ~alu_out[31]) || (~src1[31] && src2[31] && alu_out[31]);
		default: alu_overflow = 1'b0;
	endcase
end
endmodule
