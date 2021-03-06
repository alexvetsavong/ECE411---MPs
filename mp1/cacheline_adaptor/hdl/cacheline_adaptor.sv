`define BURST_SIZE 64
`define LINE_SIZE 256

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

int it;
logic [`BURST_SIZE-1:0] b_buffer;
logic [`LINE_SIZE-1:0] l_buffer;

always_comb begin
    address_o = address_i;

    b_buffer = line_i[64*it +: 64];

    line_o =  l_buffer;
    burst_o = b_buffer;
end

logic [31:0] count_reg = 0, count_next;

assign it = count_reg;

assign rst = ~reset_n;

enum int unsigned { 
    idle,
    ld, st,
    finish
} state, next_state;

function void set_defaults();
    read_o = 0;
    write_o = 0;
    resp_o = 0;
endfunction

/* State machine next-state logic */
always_comb begin
    case (state)
        idle:
        begin
            if (read_i) begin 
                next_state = ld;
                count_next = 0; 
            end
            else if (write_i) begin 
                next_state = st;
                count_next = 0;
            end
            else begin
                next_state = idle;
                count_next = 0;
            end
        end

        ld: 
        begin 
            if (resp_i) count_next = count_reg + 1;
            else count_next = 0;
            
            if (count_reg == 3) begin count_next = 4; next_state = finish; end
            else next_state = ld; 
        end

        st: 
        begin 
            if (resp_i) count_next = count_reg + 1;
            else count_next = 0;
            
            if (count_reg == 3) begin count_next = 4; next_state = finish; end
            else next_state = st;
        end

        finish: begin count_next = 0; next_state = idle; end
        default: begin next_state = state; count_next = 0; end
    endcase
end

/* State action logic */
always_comb begin
    set_defaults();
    case (state)
        idle: set_defaults();

        ld: read_o = 1;
        st: write_o = 1;

        finish: begin 
            read_o = 0; 
            resp_o = 1; 
        end

        default: set_defaults();
    endcase
end

/* State machine transitions on clock edge */
always_ff @(posedge clk) begin
    if(rst) begin
        state <= idle; 
        count_reg <= 0;
    end
    else begin
        state <= next_state; 
        count_reg <= count_next;
    end
    l_buffer[64*it +: 64] <= burst_i;
end

endmodule : cacheline_adaptor
