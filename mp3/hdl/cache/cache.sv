/* MODIFY. Your cache design. It contains the cache
controller, cache datapath, and bus adapter. */

module cache #(
    parameter s_offset = 5,
    parameter s_index  = 3,
    parameter s_tag    = 32 - s_offset - s_index,
    parameter s_mask   = 2**s_offset,
    parameter s_line   = 8*s_mask,
    parameter num_sets = 2**s_index
)
(
    // clocked inputs
    input clk,
    input rst,

    // cpu ports -> bus ports
    output logic [31:0] mem_rdata, 
    input logic [31:0] mem_wdata, 
    input logic [31:0] mem_address,
    input logic [3:0] mem_byte_enable,
    input logic mem_read, mem_write,
    output logic mem_resp,

    // outputs to cacheline adaptor
    output logic [31:0] pmem_address,
    output logic [255:0] pmem_wdata, 
    output logic pmem_read, pmem_write,

    // inputs from cacheline adaptor
    input logic [255:0] pmem_rdata, 
    input logic pmem_resp
);

logic [255:0] mem_rdata256, mem_wdata256; 
logic [31:0] mem_byte_enable256;
logic ld_valid, ld_tag, ld_dirty, ld_lru, ld_data;
logic rd_valid, rd_tag, rd_dirty, rd_lru, rd_data;
logic load_cpu, load_pmem;
logic dirty_in, valid_in;    // control will determine valid and dirty values
logic datain_mux_sel;        // control logic will determine where data needs to come from
logic dirty, hit;

cache_control control
(
    .*
);

cache_datapath datapath
(
    .*
);

bus_adapter bus_adapter
(
    .*,
    .address(mem_address)
);

endmodule : cache
