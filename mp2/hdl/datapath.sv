`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module datapath
(
    input clk,
    input rst,

    /* input from controller */
    input pcmux::pcmux_sel_t pcmux_sel,
    input alumux::alumux1_sel_t alumux1_sel,
    input alumux::alumux2_sel_t alumux2_sel,
    input regfilemux::regfilemux_sel_t regfilemux_sel,
    input marmux::marmux_sel_t marmux_sel,
    input cmpmux::cmpmux_sel_t cmpmux_sel,
    input alu_ops aluop,
    input branch_funct3_t cmpop,
    input logic load_pc,
    input logic load_ir,
    input logic load_regfile,
    input logic load_mar,
    input logic load_mdr,
    input logic load_data_out,

    /* datapath ouputs to memory */
    input rv32i_word mem_rdata,
    output rv32i_word mem_wdata, // signal used by RVFI
    output rv32i_word mem_address, 
    
    /* datapath ouputs to controller module */
    output rv32i_opcode opcode,
    output logic [2:0] funct3,
    output logic [6:0] funct7,
    output logic br_en,
    output logic [4:0] rs1,
    output logic [4:0] rs2
);

/******************* Signals Needed for RVFI Monitor *************************/
rv32i_word pcmux_out;
rv32i_word mdrreg_out;
/*****************************************************************************/


/***************************** Registers *************************************/
// Keep Instruction register named `IR` for RVFI Monitor
rv32i_word i_imm, s_imm, b_imm, u_imm, j_imm;
logic [4:0] rd;
ir IR(
    .clk (clk),
    .rst (rst),
    .load (load_ir),
    .in (mdrreg_out),
    .funct3(funct3),
    .funct7(funct7),
    .opcode(opcode),
    .i_imm(i_imm),
    .s_imm(s_imm),
    .b_imm(b_imm),
    .u_imm(u_imm),
    .j_imm(j_imm),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd)
);

// instantiate the registers on the datapath
register MDR(
    .clk  (clk),
    .rst (rst),
    .load (load_mdr),
    .in   (mem_rdata),
    .out  (mdrreg_out)
);

rv32i_word marmux_out;
register MAR(
    .clk  (clk),
    .rst (rst),
    .load (load_mar),
    .in   (marmux_out),
    .out  (mem_address)
);

// pc register instantiation
rv32i_word pc_out;
pc_register pc_reg(
    .clk(clk),
    .rst(rst),
    .load(load_pc),
    .in(pcmux_out),
    .out(pc_out)
);

// instantiate regfile
rv32i_word rs1_out, rs2_out;
rv32i_word regfile_mux_out;

regfile regfile(
    .clk (clk),
    .rst (rst),
    .load (load_regfile),
    .in (regfile_mux_out),
    .src_a (rs1),
    .src_b (rs2),
    .dest (rd),
    .reg_a (rs1_out),
    .reg_b (rs2_out)
);

/* connect mem_data_out to rs2_out */
register mem_data_out
(
    .clk (clk),
    .rst (rst),
    .load (load_data_out),
    .in (rs2_out),
    .out (mem_wdata)
);


/*****************************************************************************/

/******************************* ALU and CMP *********************************/

rv32i_word alumux1_out, alumux2_out, alu_out;
rv32i_word cmp_mux_out;

/* instantiate the ALU and CMP here */
alu_module ALU(
    .aluop(aluop),
    .in1(alumux1_out),
    .in2(alumux2_out),
    .alu_out(alu_out)
);

cmp_module CMP(
    .cmpop(cmpop),
    .cmp_mux_out(cmp_mux_out),
    .rs1_out(rs1_out),
    .br_en(br_en)
);

/*****************************************************************************/

/******************************** Muxes **************************************/
always_comb begin : MUXES
    // We provide one (incomplete) example of a mux instantiated using
    // a case statement.  Using enumerated types rather than bit vectors
    // provides compile time type safety.  Defensive programming is extremely
    // useful in SystemVerilog.  In this case, we actually use
    // Offensive programming --- making simulation halt with a fatal message
    // warning when an unexpected mux select value occurs

    unique case (pcmux_sel)
        pcmux::pc_plus4: pcmux_out = pc_out + 4;
        pcmux::alu_out: pcmux_out = alu_out;
        /* checkpoint 2 stuff */
        pcmux::alu_mod2: pcmux_out = alu_out % 2;
        default: `BAD_MUX_SEL;
    endcase

    unique case(marmux_sel)
        marmux::pc_out: marmux_out = pc_out;
        marmux::alu_out: marmux_out = alu_out;
        default: `BAD_MUX_SEL;
    endcase

    unique case(cmpmux_sel)
        cmpmux::rs2_out: cmp_mux_out = rs2_out;
        cmpmux::i_imm: cmp_mux_out = i_imm;
        default: `BAD_MUX_SEL;
    endcase

    unique case(alumux1_sel)
        alumux::rs1_out: alumux1_out = rs1_out;
        alumux::pc_out: alumux1_out = pcmux_out;
        default: `BAD_MUX_SEL;
    endcase

    unique case(alumux2_sel)
        alumux::i_imm: alumux2_out = i_imm;
        alumux::u_imm: alumux2_out = u_imm;
        alumux::b_imm: alumux2_out = b_imm;
        alumux::s_imm: alumux2_out = s_imm;
        alumux::rs2_out: alumux2_out = rs2_out;
        /* implement these for checkpoint 2 */
        alumux::j_imm: alumux2_out = j_imm;
        default: `BAD_MUX_SEL;
    endcase 

    unique case(regfilemux_sel) 
        regfilemux::alu_out: regfile_mux_out = alu_out;
        regfilemux::br_en: regfile_mux_out = {31'd0, br_en};
        regfilemux::u_imm: regfile_mux_out = u_imm;
        regfilemux::lw: regfile_mux_out = mdrreg_out;
        default: `BAD_MUX_SEL;
        /* implement these for checkpoint 2 */
        regfilemux::pc_plus4: regfile_mux_out = alu_out;
        regfilemux::lb: regfile_mux_out = alu_out;
        regfilemux::lbu: regfile_mux_out = alu_out;
        regfilemux::lh: regfile_mux_out = alu_out;
        regfilemux::lhu: regfile_mux_out = alu_out;
    endcase
end : MUXES

/*****************************************************************************/
endmodule : datapath

/************************************ ALU ************************************/
module alu_module(
    input alu_ops aluop,
    input rv32i_word in1, in2,
    output rv32i_word alu_out
);

always_comb begin : alu_op_logic
    case (aluop) 
        alu_add: alu_out = in1 + in2;
        alu_sll: alu_out = in1 << in2[4:0];
        alu_sra: alu_out = in1 >>> in2[4:0];
        alu_sub: alu_out = in1 - in2;
        alu_xor: alu_out = in1 ^ in2;
        alu_srl: alu_out = in1 >> in2[4:0];
        alu_or: alu_out = in1 | in2;
        alu_and: alu_out = in1 & in2;
        default: alu_out = in1 + in2;
    endcase
end : alu_op_logic

endmodule : alu_module
/*****************************************************************************/

/************************************ CMP ************************************/
module cmp_module
(
    input branch_funct3_t cmpop,
    input rv32i_word rs1_out, // src1
    input rv32i_word cmp_mux_out, // src2
    output logic br_en
);

always_comb begin : br_en_logic
    case (cmpop)
        beq: br_en = (cmp_mux_out == rs1_out) ? 1'b1 : 1'b0;
        bne: br_en = (cmp_mux_out != rs1_out) ? 1'b1 : 1'b0;
        blt: br_en = ($signed(cmp_mux_out) < $signed(rs1_out)) ? 1'b1 : 1'b0;
        bge: br_en = ($signed(cmp_mux_out) >= $signed(rs1_out)) ? 1'b1 : 1'b0;
        bltu: br_en = (cmp_mux_out < rs1_out) ? 1'b1 : 1'b0;
        bgeu: br_en = (cmp_mux_out >= rs1_out) ? 1'b1 : 1'b0;
        default: br_en = 1'b0;
    endcase
end : br_en_logic

endmodule : cmp_module
