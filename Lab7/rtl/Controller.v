module Controller(
    input               clk,
    input               rst,
    input               mode,
    input               enable,
    input               valid,
    input   [4:0]       id,

    // ID RAM 
    output  reg [7:0]   id_addr,
    output  reg [4:0]   id_wdata,
    output  reg         id_wen,

    // CLBP I/O
	output	reg			lbp_enable,
	input   			lbp_finish,
	output  reg			ram_clbp,
	
    // HCU I/O
    input   [3:0]       gridX_i,     
    input   [3:0]       gridY_i,        
    output  reg         hcu_enable,
    output  reg [3:0]   gridX_o,
    output  reg [3:0]   gridY_o,  
    input               hcu_finish,      
    // Comparator I/O
    input               comparator_finish,
    output  reg         comparator_enable,
    output  reg         ram_comp
);

    // put your design here
    parameter state_bit = 3;

    reg [state_bit-1:0] cur_state;
    reg [state_bit-1:0] next_state;

    localparam [state_bit-1:0] UNENABLE = 3'd0;
    localparam [state_bit-1:0] CLBP_ENABLE = 3'd1;
    localparam [state_bit-1:0] CLBP_PROC = 3'd2;
    localparam [state_bit-1:0] HCU_TRAIN_ENABLE = 3'd3;
    localparam [state_bit-1:0] HCU_TRAIN_PROC = 3'd4;
    localparam [state_bit-1:0] WAIT_ID_VALID = 3'd5;
    localparam [state_bit-1:0] COMPARATOR_ENABLE = 3'd6;
    localparam [state_bit-1:0] COMPARATOR_PROC = 3'd7;

//    reg [4:0] fucking_id;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cur_state <= UNENABLE;

            gridX_o <= 4'd0;// maybe not right
            gridY_o <= 4'd0;// maybe not right

            id_addr <= 8'd0;
            id_wdata <= 5'd0;
            id_wen <= 1'd0;
        end
        else begin
            cur_state <= next_state;
            case (cur_state)
                UNENABLE: begin
                    gridX_o <= 4'd8;// maybe not right
                    gridY_o <= 4'd8;// maybe not right
//                    fucking_id <= id;
                    id_wdata <= id;// pre
                end
                CLBP_ENABLE: begin
                    if (mode == 1'd0) begin
                        // id_addr <= id_addr + 8'd1;
//                         id_wdata <= id;// post
                        id_wen <= 1'd1;
                    end
                end
                CLBP_PROC: begin
                    if (mode == 1'd0) begin
                        id_wen <= 1'd0;
                    end
                end
                HCU_TRAIN_ENABLE: begin
                    if (mode == 1'd0) begin
                        id_addr <= id_addr + 8'd1;
                    end
                end
                HCU_TRAIN_PROC: begin
                    
                end
                WAIT_ID_VALID: begin
                    id_wdata <= id;// pre
                end
                COMPARATOR_ENABLE: begin
                    
                end
                COMPARATOR_PROC: begin
                    
                end
                default: ;
            endcase
        end
    end

    // next_state
    always @(*) begin
        case (cur_state)
            UNENABLE: begin
                if (enable) begin
                    next_state = CLBP_ENABLE;
                end
                else begin
                    next_state = UNENABLE;
                end
            end
            CLBP_ENABLE: begin
//                if (valid) begin
//                    next_state = CLBP_PROC;
//                end
//                else begin
//                    next_state = CLBP_ENABLE;
//                end
				next_state = CLBP_PROC;
            end
            CLBP_PROC: begin
                if (lbp_finish) begin
                    next_state = HCU_TRAIN_ENABLE;
                end
                else begin
                    next_state = CLBP_PROC;
                end
            end
            HCU_TRAIN_ENABLE: begin
                next_state = HCU_TRAIN_PROC;
            end
            HCU_TRAIN_PROC: begin
                if (hcu_finish) begin
                    next_state = WAIT_ID_VALID;
                end
                else begin
                    next_state = HCU_TRAIN_PROC;
                end
            end
            WAIT_ID_VALID: begin
                if (mode) begin
                    next_state = COMPARATOR_ENABLE;
                end
                else begin
                    next_state = CLBP_ENABLE;
                end
            end
            COMPARATOR_ENABLE: begin
                next_state = COMPARATOR_PROC;
            end
            COMPARATOR_PROC: begin
                if (comparator_finish) begin
                    next_state = CLBP_ENABLE;
                end
                else begin
                    next_state = COMPARATOR_PROC;
                end
            end
            default: next_state = UNENABLE;
        endcase
    end
    // lbp_enable(, id_wen)
    always @(*) begin
        case (cur_state)
            CLBP_ENABLE: begin
                lbp_enable = 1'd1;
                // id_wen = 1'd1;
            end
            default: begin
                lbp_enable = 1'd0;
                // id_wen = 1'd0;
            end
        endcase
    end
    // ram_clbp
    always @(*) begin
        case (cur_state)
            // CLBP_ENABLE, CLBP_PROC: ram_clbp = 1'd0;
            HCU_TRAIN_ENABLE, HCU_TRAIN_PROC: ram_clbp = 1'd1;
            default: ram_clbp = 1'd0;
        endcase
    end
    // hcu_enable
    always @(*) begin
        case (cur_state)
            HCU_TRAIN_ENABLE: hcu_enable = 1'd1;
            default: hcu_enable = 1'd0;
        endcase
    end
    // comparator_enable
    always @(*) begin
        case (cur_state)
            COMPARATOR_ENABLE: comparator_enable = 1'd1;
            default: comparator_enable = 1'd0;
        endcase
    end
    // ram_comp
    always @(*) begin
        case (cur_state)
            COMPARATOR_ENABLE, COMPARATOR_PROC: ram_comp = 1'd1;
            default: ram_comp = 1'd0;
        endcase
    end

endmodule