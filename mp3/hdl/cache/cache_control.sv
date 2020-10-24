/* MODIFY. The cache controller. It is a state machine
that controls the behavior of the cache. */
import datamux::*;

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
    output logic ld_cpu, ld_pmem,
    output logic dirty_in, valid_in,       // control will determine valid and dirty values
    output datainmux_sel_t datain_mux_sel, // control logic will determine where data needs to come from
    
    input logic dirty,
    input logic hit
);

logic read_o, write_o, resp_o;
logic [1:0] counter, counter_next;

function automatic void set_defaults();
    //TODO: write out all the default values for every control signal here
    ld_valid = 1'b0;
    ld_dirty = 1'b0;
    ld_tag = 1'b0;
    ld_lru = 1'b0;
    ld_data = 1'b0;

    rd_valid = 1'b1;
    rd_dirty = 1'b1;
    rd_tag = 1'b1;
    rd_lru = 1'b1;
    rd_data = 1'b1;

    ld_cpu = 1'b0;
    ld_pmem = 1'b0;
    resp_o = 1'b0;
    
    // pmem_read = 1'b0;
    read_o = 1'b0;
    // pmem_write = 1'b0;
    write_o = 1'b0;

    datain_mux_sel = pmem_rdata;

    dirty_in = 1'b0;
    valid_in = 1'b0;
endfunction

function automatic void writeFromCPU();
    datain_mux_sel = mem_wdata;
    rd_data = 1'b0;
    ld_data = 1'b1;
endfunction

function automatic void read_pmem();
    datain_mux_sel = pmem_rdata;
    read_o = 1'b1;
    rd_data = 1'b0;
    ld_data = 1'b1;
endfunction

function automatic void write_pmem();
    rd_data = 1'b1;
    ld_pmem = 1'b1;
    write_o = 1'b1;
endfunction

function automatic void returnToCPU();
    ld_data = 1'b0;
    rd_data = 1'b1;
    ld_cpu = 1'b1;
endfunction

function automatic void setValidBit(logic value);
    valid_in = value;
    rd_valid = 1'b0;
    ld_valid = 1'b1;
endfunction

function automatic void setDirtyBit(logic value);
    dirty_in = value;
    rd_dirty = 1'b0;
    ld_dirty = 1'b1;
endfunction

function automatic void setTag();
    rd_tag = 1'b0;
    ld_tag = 1'b1;
endfunction

function automatic void setLRU();
    rd_lru = 1'b0;
    ld_lru = 1'b1;
endfunction

enum logic[2:0] {
    idle,
    check,
    wb, read,
    done
} state, next_state;

// the logic for determining state actions
always_comb
begin : state_actions
    set_defaults();
    case(state)
        // TODO: implement the state actions
        idle: set_defaults();
        
        check: 
        begin
            if (hit) begin 
                if (mem_read) returnToCPU();
                else if (mem_write) begin 
                    writeFromCPU(); 
                    setDirtyBit(1'b1); 
                end
                resp_o = 1'b1;
            end
            else set_defaults();
        end
        
        wb: 
        begin 
            write_pmem();
        end
        
        read:
        begin
            read_pmem();
            setValidBit(1'b1);
            setDirtyBit(1'b0);
            setTag();
        end
        
        done: begin
            if (mem_read) returnToCPU();
            else if (mem_write) begin 
                writeFromCPU(); 
                setDirtyBit(1'b1); 
            end
            resp_o = 1'b1;
        end
        
        default: set_defaults();
    endcase
end

// logic for determining the next state transition
always_comb 
begin : next_state_logic

    counter_next = counter + 1;

    case(state)
        idle: begin
            if (mem_read || mem_write) next_state = check;
            else next_state = idle;
        end

        check: begin 
            counter_next = 0;
            if (hit) next_state = idle;
            else if (dirty) next_state = wb;
            else  next_state = read;
        end
        
        wb: begin
            if (pmem_resp) next_state = read;
            else next_state = wb;
        end

        read: begin
            if (pmem_resp) next_state = done;
            else next_state = read;
        end

        done: next_state = idle;

        default: next_state = idle;
    endcase
end

// fsm state transitions on clk signal
always_ff @(posedge clk) begin
    if(rst) begin
        state <= idle;
        counter <= 2'b00;
    end
    else begin 
        counter <= counter_next;
        state <= next_state; 

        pmem_read <= 1'b0;
        pmem_write <= 1'b0;

        if (read_o == 1'b1 && counter == 2'b00) begin 
            pmem_read <= read_o;
            pmem_write <= 1'b0;
        end

        else if (read_o == 1'b1 && counter == 2'b01) begin
            pmem_read <= 1'b0; 
            pmem_write <= 1'b0; 
            counter <= 2'b01;
        end

        if (write_o == 1'b1 && counter == 2'b00) begin 
            pmem_read <= 1'b0;
            pmem_write <= write_o;
        end

        else if (write_o == 1'b1 && counter == 2'b01) begin
            pmem_read <= 1'b0; 
            pmem_write <= 1'b0; 
            counter <= 2'b01;
        end

    end
    mem_resp <= resp_o;
end

endmodule : cache_control
