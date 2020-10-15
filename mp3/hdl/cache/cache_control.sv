/* MODIFY. The cache controller. It is a state machine
that controls the behavior of the cache. */

module cache_control (
    input clk, 
    input rst,

    // cpu
    input logic pmem_resp, mem_read, mem_write,
    output logic mem_resp,

    // physical memory
    output logic pmem_read, pmem_write,

    // datapath
    output logic ld_valid, ld_tag, ld_dirty, ld_lru, ld_data,
    output logic rd_valid, rd_tag, rd_dirty, rd_lru, rd_data,
    output logic load_cpu, load_pmem,
    output logic dirty_in, valid_in,    // control will determine valid and dirty values
    output logic datain_mux_sel,        // control logic will determine where data needs to come from

    input logic dirty,
    input logic hit
);

function void set_defaults();
    //TODO: write out all the default values for every control signal here
    ld_valid = 0;
    ld_dirty = 0;
    ld_tag = 0;
    ld_lru = 0;
    ld_data = 0;

    rd_valid = 1;
    rd_dirty = 1;
    rd_tag = 1;
    rd_lru = 1;
    rd_data = 1;

    load_cpu = 0;
    load_pmem = 0;
    mem_resp = 0;
    
    pmem_read = 0;
    pmem_write = 0;
    datain_mux_sel = 0;

    dirty_in = 0;
    valid_in = 0;

endfunction

enum int unsigned {
    idle_check_tag, 
    allocate, 
    write_back,
    send
} state, next_state;

// the logic for determining state actions
always_comb
begin : state_actions
    set_defaults();
    case(state)
        // TODO: implement the state actions
        idle_check_tag: begin 
            if ((mem_read | mem_write) & hit) begin
                rd_lru = 0;
                ld_lru = 1;
            end
        end
        
        allocate: begin 
            datain_mux_sel = 0;
            rd_lru = 1;
            rd_data = 0;
            ld_data = 1;

            valid_in = 1;
            rd_valid = 0;
            ld_valid = 1;
            pmem_read = 1;
        end

        write_back: begin
            rd_lru = 1; 
            rd_data = 1;
            load_pmem = 1;
            pmem_write = 1;
        end

        send: begin
            if (mem_write) begin
                datain_mux_sel = 1;
                ld_data = 1;
                rd_data = 0;

                dirty_in = 1;
                ld_dirty = 1;
                rd_dirty = 0;
            end

            else if (mem_read) begin
                dirty_in = 0;
                rd_dirty = 0;
                ld_dirty = 1;

                datain_mux_sel = 0;
                rd_data = 1;
                load_cpu = 1;
            end
            mem_resp = 1;
        end

        default: set_defaults();
    endcase
end

// logic for determining the next state transition
always_comb 
begin : next_state_logic 
    case(state)
        //TODO: implement next_state logic
        idle_check_tag: begin
            if (hit == 1) next_state = send;
            else if (hit == 0 && dirty == 0) next_state = allocate;
            else if (hit == 0 && dirty == 1) next_state = write_back;
            else next_state = idle_check_tag;
        end

        allocate: begin 
            if (pmem_resp == 1) next_state = send;
            else next_state = allocate; 
        end

        write_back: begin
            if (pmem_resp == 1) next_state = allocate;
            else next_state = write_back;
        end

        send: next_state = idle_check_tag;

        default: next_state = state;
    endcase
end

// fsm state transitions on clk signal
always_ff @(posedge clk) begin
    if(rst) begin
        state <= idle_check_tag;
    end
    else state <= next_state;
end

endmodule : cache_control
