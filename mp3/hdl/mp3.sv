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
logic [31:0] mem_rdata, mem_wdata, mem_address;
logic [3:0] mem_byte_enable;

// connect the cache to the cacheline
logic [255:0] pmem_wdata_cache, pmem_rdata_cache; 

// cpu -> cache -> cacheline adaptor
logic mem_resp, mem_read, mem_write;
logic pmem_read_cache, pmem_write_cache;

cpu cpu(.*);

// TODO: implement the cache design from CP1 ; Keep cache named `cache` for RVFI Monitor
cache cache(
    .*, 
    .pmem_read(pmem_read_cache), .pmem_write(pmem_write_cache),
    .pmem_resp(pmem_resp_cache)
);

// From MP1
cacheline_adaptor cacheline_adaptor
(   
    .clk(clk), .reset_n(~rst),
    
    // TODO: ports to cache ; check this after implementing cache
    .line_i(pmem_wdata_cache), .line_o(pmem_rdata_cache),

    // ports to cpu
    .address_i(mem_address), .resp_o(pmem_resp_cache),
    .read_i(pmem_read_cache), .write_i(pmem_write_cache),

    // ports to memory
    .burst_i(pmem_rdata), .burst_o(pmem_wdata), 
    .address_o(pmem_address), .read_o(pmem_read), .write_o(pmem_write),
    .resp_i(pmem_resp)
);

endmodule : mp3
