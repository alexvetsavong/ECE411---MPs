module cacheline_adaptor
(
    input clk,
    input reset_n,

    // Port to LLC (Lowest Level Cache)
    input logic [255:0] line_i,
    output logic [255:0] line_o,
    input logic [31:0] address_i,
    input read_i,
    input write_i,
    output logic resp_o,

    // Port to memory
    input logic [63:0] burst_i,
    output logic [63:0] burst_o,
    output logic [31:0] address_o,
    output logic read_o,
    output logic write_o,
    input resp_i
);

logic [63:0] local_burst, burst_o_save;
logic [31:0] local_addr;
logic [255:0] local_line, local_line_save, line_o_save;

logic curr_read_o, curr_resp_o;

// State machine logic
enum logic[4:0] {RESET, READ_ADDRESS, READ0, READ1, READ2, READ3, READ_DONE, WRITE_ADDRESS, WRITE0, WRITE1, WRITE2, WRITE3, WRITE_DONE} curr_state, next_state;

always_ff @(posedge clk) 
begin: next_state_assignment
    if (~reset_n) 
        curr_state <= RESET;
    else 
        begin 
            curr_state <= next_state; 
            burst_o_save <= burst_o;
            local_line_save <= local_line;
            line_o_save <= line_o;
        end
end

always_comb 
begin: next_state_logic 
    next_state = curr_state;

    unique case(curr_state)
        RESET: 
            begin 
                if (read_i == 1'b1 && write_i == 1'b0)
                    next_state = READ_ADDRESS;
                else if (read_i == 1'b0 && write_i == 1'b1)
                    next_state = WRITE_ADDRESS;
            end

        // Read states
        READ_ADDRESS: next_state = READ0;
        READ0: 
            begin
                if (resp_i == 1'b1) begin 
                    next_state = READ1;
                end
            end 
        READ1: 
            begin
                next_state = READ2; 
            end
        READ2:
            begin 
                next_state = READ3;
            end
        READ3: 
            begin
                next_state = READ_DONE;
            end
        READ_DONE: next_state = RESET;

        // Write states 
        WRITE_ADDRESS: 
            begin 
                next_state = WRITE0;
            end 
        WRITE0: 
            begin 
                if (resp_i == 1'b1) begin 
                    next_state = WRITE1;
                end
            end
        WRITE1: 
            begin 
                next_state = WRITE2;
            end 
        WRITE2: 
            begin 
                next_state = WRITE3; 
            end 
        WRITE3: 
            begin 
                next_state = WRITE_DONE;
            end 
        WRITE_DONE:
            begin 
                next_state = RESET;
            end 
        default: ; 
    endcase
end 

always_comb 
begin: state_actions
    write_o = 0;
    resp_o = 0;
    address_o = address_i;
    burst_o = burst_o_save;
    local_line = local_line_save;
    line_o = line_o_save;
    read_o = 0;

    case(curr_state)
        RESET: 
            begin 
                resp_o = 1'b0; 
                read_o = 1'b0;
                write_o = 1'b0;
            end 
        READ_ADDRESS: 
            begin 
                resp_o = 1'b0;
            end
        READ0: 
            begin 
                resp_o = 1'b0;
                read_o = 1'b1;
                if (read_i == 1'b0 && resp_i == 1'b1) begin 
                    local_line[63:0] = burst_i; 
                end
            end
        READ1:
            begin
                resp_o = 1'b0;
                read_o = 1'b1;
                local_line[127:64] = burst_i; 
            end  
        READ2:
            begin 
                resp_o = 1'b0;
                read_o = 1'b1;
                local_line[191:128] = burst_i; 
            end
        READ3: 
            begin 
                resp_o = 1'b0;
                read_o = 1'b1;
                local_line[255:192] = burst_i; 
            end
        READ_DONE:
            begin 
                line_o = local_line; 
                resp_o = 1'b1;
            end
        WRITE_ADDRESS: 
            begin 
                resp_o = 1'b0; 
            end
        WRITE0:
            begin 
                write_o = 1'b1;
                resp_o = 1'b0;
                burst_o = line_i[63:0];
            end 
        WRITE1: 
            begin 
                burst_o = line_i[127:64];
                write_o = 1'b1; 
                resp_o = 1'b0;
            end
        WRITE2: 
            begin 

                burst_o = line_i[191:128]; 
                write_o = 1'b1; 
                resp_o = 1'b0;
            end
        WRITE3: 
            begin 
                burst_o = line_i[255:192];
                write_o = 1'b1;
                resp_o = 1'b0;
            end
        WRITE_DONE:
            begin 
                resp_o = 1'b1;
            end 
        default: ;
    endcase
end

endmodule : cacheline_adaptor