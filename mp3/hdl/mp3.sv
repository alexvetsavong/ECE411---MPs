import rv32i_types::*;

module mp3
(
    input clk,
    input rst,
    input pmem_resp,
    input [63:0] pmem_rdata,
    output logic pmem_read,
    output logic pmem_write,
    output rv32i_word pmem_address,
    output [63:0] pmem_wdata
);
// Keep cpu named `cpu` for RVFI Monitor
// Note: you have to rename your mp2 module to `cpu`

/* hierarchy: cpu <-> bus adaptor <-> cache <-> cacheline_adaptor <-> memory */

// wires to connect cpu -> bus
logic [31:0] mem_rdata, mem_wdata, address;
logic [3:0] mem_byte_enable;

// bus -> cache ; this extends everything from 8-bytes to 32-bytes
logic [255:0] mem_rdata256, mem_wdata256, mem_byte_enable256;

// cpu -> cacheline adaptor
logic mem_resp, mem_read, mem_write;

cpu cpu(.*);

bus_adapter bus(.*);

// TODO: implement the cache design from CP1 ; Keep cache named `cache` for RVFI Monitor
cache cache(.*);

// From MP1
cacheline_adaptor cacheline_adaptor
(   
    .clk(clk), .reset_n(~rst),
    
    // TODO: ports to cache ; do this after implementing cache
    .line_i(), .line_o(),

    // ports to cpu
    .address_i(address), .resp_o(mem_resp),
    .read_i(mem_read), .write_i(mem_write),

    // ports to memory
    .burst_i(pmem_rdata), .burst_o(pmem_wdata), 
    .address_o(pmem_address), .read_o(pmem_read), .write_o(pmem_write),
    .resp_i(pmem_resp)
);

endmodule : mp3
