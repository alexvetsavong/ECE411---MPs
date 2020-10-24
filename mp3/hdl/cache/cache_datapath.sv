/* MODIFY. The cache datapath. It contains the data,
valid, dirty, tag, and LRU arrays, comparators, muxes,
logic gates and other supporting logic. */
import datamux::*;

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
    input logic [255:0] mem_wdata256,
    input logic [31:0] mem_byte_enable256,
    output logic [255:0] mem_rdata256,

    // outputs to cacheline adaptor
    output logic [255:0] pmem_wdata, 
    output logic [31:0] pmem_address,

    // inputs from cacheline adaptor
    input logic [255:0] pmem_rdata,

    // control signals from fsm
    input logic ld_valid, ld_tag, ld_dirty, ld_lru, ld_data,
    input logic ld_cpu, ld_pmem,
    input logic rd_valid, rd_tag, rd_dirty, rd_lru, rd_data,
    input datainmux_sel_t datain_mux_sel, // control logic will determine where data needs to come form
    input logic dirty_in, valid_in,


    // control signals to fsm
    output logic dirty,
    output logic hit
);
// array instantiations for storing the metadata and memory data
logic [2:0] index;

/* mux select values */
dataoutmux_sel_t dataout_mux_sel;

/* outputs for each metadata array */
logic valid_1_o; 
logic [23:0] tag_1_o; 
logic dirty_1_o;

logic valid_0_o; 
logic [23:0] tag_0_o; 
logic dirty_0_o;

logic lru_out;

logic [s_line-1:0] datain, dataout, dataout_0, dataout_1;
logic [s_tag-1:0] tag_in;
logic lru_in;
logic [s_mask-1:0] write_en_1, write_en_0;
logic ld_way0, ld_way1;

logic hit1, hit0, tag1_cmp, tag0_cmp;

/* control signals for each way */
logic ld_valid1, ld_valid0;
logic ld_tag1, ld_tag0;
logic ld_dirty1, ld_dirty0;

/* comparators and assignments to check for a hit/miss */
comparator #(.width(s_tag)) tag1_check
(
    .a(tag_in), .b(tag_1_o), .result(tag1_cmp)
);

comparator #(.width(s_tag)) tag0_check
(
    .a(tag_in), .b(tag_0_o), .result(tag0_cmp)
);

array valid0
(
    .clk(clk), .rst(rst), 
    .read(rd_valid), .load(ld_valid0), 
    .rindex(index), .windex(index), 
    .datain(valid_in), .dataout(valid_0_o)
);

array valid1
(
    .clk(clk), .rst(rst), 
    .read(rd_valid), .load(ld_valid1), 
    .rindex(index), .windex(index), 
    .datain(valid_in), .dataout(valid_1_o)
);

array dirty0
(
    .clk(clk), .rst(rst), 
    .read(rd_dirty), .load(ld_dirty0), 
    .rindex(index), .windex(index), 
    .datain(dirty_in), .dataout(dirty_0_o)
);
array dirty1
(
    .clk(clk), .rst(rst), 
    .read(rd_dirty), .load(ld_dirty1), 
    .rindex(index), .windex(index), 
    .datain(dirty_in), .dataout(dirty_1_o)
);

array #(.width(s_tag)) tag0
(
    .clk(clk), .rst(rst), 
    .read(rd_tag), .load(ld_tag0), 
    .rindex(index), .windex(index), 
    .datain(tag_in), .dataout(tag_0_o)
);
array #(.width(s_tag)) tag1
(
    .clk(clk), .rst(rst), 
    .read(rd_tag), .load(ld_tag1), 
    .rindex(index), .windex(index), 
    .datain(tag_in), .dataout(tag_1_o)
);

array lru
(
    .clk(clk), .rst(rst), 
    .read(rd_lru), .load(ld_lru), 
    .rindex(index), .windex(index), 
    .datain(lru_in), .dataout(lru_out)
);

/* data array instantiation */
data_array way0
(
    .clk(clk), .rst(rst), 
    .read(rd_data), .write_en(write_en_0),
    .rindex(index), .windex(index),
    .datain(datain), .dataout(dataout_0)
);

data_array way1
(
    .clk(clk), .rst(rst), 
    .read(rd_data), .write_en(write_en_1),
    .rindex(index), .windex(index),
    .datain(datain), .dataout(dataout_1)
);

assign pmem_address = {mem_address[31:5], 5'h0};

assign tag_in = mem_address[31:8]; 
assign index = mem_address[7:5];
assign dataout_mux_sel = dataoutmux_sel_t'(lru_out);

/* this should select the other way as lru on each read/write */
assign lru_in = ~(lru_out);

assign ld_way0 = ~(lru_out);
assign ld_way1 = lru_out;
assign pmem_wdata = dataout;
assign mem_rdata256 = dataout;

always_comb begin : comb_logic
    // tri-state buffers here
    // pmem_wdata = (ld_pmem) ? dataout : 256'b0;
    // mem_rdata256 = (ld_cpu) ? dataout : 256'b0;

    write_en_1 = (ld_way1 & ld_data) ? mem_byte_enable256 : 32'b0;
    write_en_0 = (ld_way0 & ld_data) ? mem_byte_enable256 : 32'b0;

    /* assignments to save on typing later */
    ld_valid0 = ld_valid & ld_way0;
    ld_tag0 = ld_tag & ld_way0;
    ld_dirty0 = ld_dirty & ld_way0;

    ld_valid1 = ld_valid & ld_way1;
    ld_tag1 = ld_tag & ld_way1;
    ld_dirty1 = ld_dirty & ld_way1;

    hit1 = valid_1_o & tag1_cmp;
    hit0 = valid_0_o & tag0_cmp;

    hit = hit1 & hit0; 

    dirty = dirty_1_o | dirty_0_o;

end : comb_logic

/* logic for the muxes in the datapath */
always_comb begin : mux_logic
    case(datain_mux_sel)
        datamux::pmem_rdata: datain = pmem_rdata;
        datamux::mem_wdata:  datain = mem_wdata256;
    endcase

    case(dataout_mux_sel)
        datamux::way0: dataout = dataout_0;
        datamux::way1: dataout = dataout_1;
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
    input logic [width-1:0] a; 
    input logic [width-1:0] b;
    output logic result;
    assign result = (a == b) ? 1'b1 : 1'b0;

endmodule : comparator 