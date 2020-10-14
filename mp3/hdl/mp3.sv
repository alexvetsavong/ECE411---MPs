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
logic [255:0] line_i, line_o; 
logic resp_o, read_i, write_i;

// cpu -> cache -> cacheline adaptor
logic mem_resp, mem_read, mem_write;

cpu cpu(.*);

// TODO: implement the cache design from CP1 ; Keep cache named `cache` for RVFI Monitor
cache cache(
    .clk(clk),
    .rst(rst),

    .mem_rdata(mem_rdata),
    .mem_wdata(mem_wdata),
    .mem_address(mem_address),
    .mem_byte_enable(mem_byte_enable),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .mem_resp(mem_resp),

    .pmem_rdata(line_o),
    .pmem_wdata(line_i),
    .pmem_read(read_i), 
    .pmem_write(write_i),
    .pmem_resp(resp_o)
);

// From MP1
cacheline_adaptor cacheline_adaptor
(   
    .clk(clk), .reset_n(~rst),
    
    // TODO: ports to cache ; check this after implementing cache
    .line_i(line_i), 
    .line_o(line_o),

    // ports to cpu
    .address_i(address_i), 
    .read_i(read_i), 
    .write_i(write_i),
    .resp_o(resp_o),

    // ports to memory
    .burst_i(pmem_rdata), 
    .burst_o(pmem_wdata), 
    .address_o(pmem_address), 
    .read_o(pmem_read), 
    .write_o(pmem_write),
    .resp_i(pmem_resp)
);

endmodule : mp3
