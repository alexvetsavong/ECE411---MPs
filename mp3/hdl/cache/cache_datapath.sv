/* MODIFY. The cache datapath. It contains the data,
valid, dirty, tag, and LRU arrays, comparators, muxes,
logic gates and other supporting logic. */

module cache_datapath #(
    parameter s_offset = 5,
    parameter s_index  = 3,
    parameter s_tag    = 32 - s_offset - s_index,
    parameter s_mask   = 2**s_offset,
    parameter s_line   = 8*s_mask,
    parameter num_sets = 2**s_index
)
(
    input clk, 
    input rst,

    // ports to cpu 
    input logic [31:0] mem_address,

    // ports to bus adapter 
    input [255:0] mem_wdata256,
    input [31:0] mem_byte_enable256,
    output [255:0] mem_rdata256,

    // outputs to cacheline adaptor
    output [255:0] pmem_wdata_cache, 

    // inputs from cacheline adaptor
    input [255:0] pmem_rdata_cache,

    // control signals from fsm
    input logic ld_valid, ld_tag, ld_dirty, ld_lru, ld_data,
    input logic load_cpu, load_pmem,
    input logic rd_valid, rd_tag, rd_dirty, rd_lru, rd_data,
    input logic datain_mux_sel, // control logic will determine where data needs to come form
    input logic dirty_in, valid_in,


    // control signals to fsm
    output logic dirty,
    output logic hit
);

// array instantiations for storing the metadata and memory data
logic [23:0] tag;
logic [2:0] index;

assign tag = mem_address[31:8]; 
assign index = mem_address[7:5];

logic [s_line-1:0] datain, dataout, dataout_0, dataout_1;
assign mem_rdata256 = load_cpu ? dataout : 256'bZ;
assign pmem_wdata_cache = load_pmem ? dataout : 256'bZ;

logic [s_tag-1:0] tag_in;
logic lru_in;

logic [s_mask-1:0] write_en_1, write_en_0;
assign write_en_1 = (ld_way1 && ld_data) ? mem_byte_enable256 : 32'b0;
assign write_en_0 = (ld_way0 && ld_data) ? mem_byte_enable256 : 32'b0;

logic ld_way0, ld_way1;
assign ld_way1 = lru_out;
assign ld_way0 = ~(lru_out);

/* control signals for each way */
logic ld_valid1, ld_valid0;
logic ld_tag1, ld_tag0;
logic ld_dirty1, ld_dirty0;

/* assignments to save on typing later */
assign ld_valid0 = ld_valid & ld_way0;
assign ld_tag0 = ld_tag & ld_way0;
assign ld_dirty0 = ld_dirty & ld_way0;

assign ld_valid1 = ld_valid & ld_way1;
assign ld_tag1 = ld_tag & ld_way1;
assign ld_dirty1 = ld_dirty & ld_way1;

/* this will select the other way as lru on each read/write */
assign lru_in = ~(lru_out);

/* mux select values */
logic dataout_mux_sel;

/* outputs for each metadata array */
logic valid_1_o, tag_1_o, dirty_1_o;
logic valid_0_o, tag_0_o, dirty_0_o;
logic lru_out;

/* comparators and assignments to check for a hit/miss */
comparator #(.width(s_tag)) tag1_check
(
    .a(tag), .b(tag_1_o), .result(tag1_cmp)
);

comparator #(.width(s_tag)) tag0_check
(
    .a(tag), .b(tag_0_o), .result(tag0_cmp)
);

logic hit1, hit0, tag1_cmp, tag0_cmp;
assign hit1 = valid_1_o & tag1_cmp;
assign hit0 = valid_0_o & tag0_cmp;
assign hit = hit1 & hit0; 

assign dirty = dirty_1_o | dirty_0_o;

array valid0
(
    .*, .read(rd_valid), .load(ld_valid0), 
    .rindex(index), .windex(index), 
    .datain(valid_in), .dataout(valid_0_o)
);

array valid1
(
    .*, 
    .read(rd_valid), .load(ld_valid1), 
    .rindex(index), .windex(index), 
    .datain(valid_in), .dataout(valid_1_o)
);

array dirty0
(
    .*, 
    .read(rd_dirty), .load(ld_dirty0), 
    .rindex(index), .windex(index), 
    .datain(dirty_in), .dataout(dirty_0_o)
);
array dirty1
(
    .*, 
    .read(rd_dirty), .load(ld_dirty1), 
    .rindex(index), .windex(index), 
    .datain(dirty_in), .dataout(dirty_1_o)
);

array #(.width(s_tag)) tag0
(
    .*, 
    .read(rd_tag), .load(ld_tag0), 
    .rindex(index), .windex(index), 
    .datain(tag_in), .dataout(tag_0_o)
);
array #(.width(s_tag)) tag1
(
    .*, 
    .read(rd_tag), .load(ld_tag1), 
    .rindex(index), .windex(index), 
    .datain(tag_in), .dataout(tag_1_o)
);

array lru
(
    .*, 
    .read(rd_lru), .load(ld_lru), 
    .rindex(index), .windex(index), 
    .datain(lru_in), .dataout(lru_out)
);

/* data array instantiation */
data_array way0
(
    .*, 
    .read(rd_data), .write_en(write_en_0),
    .rindex(index), .windex(index),
    .datain(datain), .dataout(dataout_0)
);

data_array way1
(
    .*, 
    .read(rd_data), .write_en(write_en_1),
    .rindex(index), .windex(index),
    .datain(datain), .dataout(dataout_1)
);

/* logic for the muxes in the datapath */
always_comb begin : mux_logic
    unique case(datain_mux_sel)
        1'b0: datain = pmem_rdata_cache;
        1'b1: datain = mem_wdata256;
    endcase

    unique case(dataout_mux_sel)
        1'b0: dataout = dataout_0;
        1'b1: dataout = dataout_1;
    endcase
end : mux_logic

endmodule : cache_datapath

/********** extra modules for readability and compartmentalizing **********/
/* comparator module for if we need it */
module comparator #(
    parameter width = 1
)
(
    a, b,
    result
);
    input logic [width-1:0] a, b;
    output logic result;
    assign result = (a == b) ? 1 : 0;

endmodule : comparator 