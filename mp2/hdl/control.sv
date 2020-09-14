import rv32i_types::*; /* Import types defined in rv32i_types.sv */

module control
(
    input clk,
    input rst,
    input rv32i_opcode opcode,
    input logic [2:0] funct3,
    input logic [6:0] funct7,
    input logic br_en,
    input logic [4:0] rs1,
    input logic [4:0] rs2,

    /* ports to memory */
    input logic mem_resp, 
    output logic mem_read, mem_write,
    output logic [3:0] mem_byte_enable,

    /* control ports to datapath module */
    output pcmux::pcmux_sel_t pcmux_sel,
    output alumux::alumux1_sel_t alumux1_sel,
    output alumux::alumux2_sel_t alumux2_sel,
    output regfilemux::regfilemux_sel_t regfilemux_sel,
    output marmux::marmux_sel_t marmux_sel,
    output cmpmux::cmpmux_sel_t cmpmux_sel,
    output alu_ops aluop,
    output branch_funct3_t cmpop,
    output logic load_pc,
    output logic load_ir,
    output logic load_regfile,
    output logic load_mar,
    output logic load_mdr,
    output logic load_data_out
);

/***************** USED BY RVFIMON --- ONLY MODIFY WHEN TOLD *****************/
logic trap;
logic [4:0] rs1_addr, rs2_addr;
logic [3:0] rmask, wmask;

branch_funct3_t branch_funct3;
store_funct3_t store_funct3;
load_funct3_t load_funct3;
arith_funct3_t arith_funct3;

assign arith_funct3 = arith_funct3_t'(funct3);
assign branch_funct3 = branch_funct3_t'(funct3);
assign load_funct3 = load_funct3_t'(funct3);
assign store_funct3 = store_funct3_t'(funct3);
assign rs1_addr = rs1;
assign rs2_addr = rs2;

always_comb
begin : trap_check
    trap = 0;
    rmask = '0;
    wmask = '0;

    case (opcode)
        op_lui, op_auipc, op_imm, op_reg, op_jal, op_jalr:;

        op_br: begin
            case (branch_funct3)
                beq, bne, blt, bge, bltu, bgeu:;
                default: trap = 1;
            endcase
        end

        op_load: begin
            case (load_funct3)
                lw: rmask = 4'b1111;
                lh, lhu: rmask = 4'bXXXX /* Modify for MP1 Final */ ;
                lb, lbu: rmask = 4'bXXXX /* Modify for MP1 Final */ ;
                default: trap = 1;
            endcase
        end

        op_store: begin
            case (store_funct3)
                sw: wmask = 4'b1111;
                sh: wmask = 4'bXXXX /* Modify for MP1 Final */ ;
                sb: wmask = 4'bXXXX /* Modify for MP1 Final */ ;
                default: trap = 1;
            endcase
        end

        default: trap = 1;
    endcase
end
/*****************************************************************************/

enum int unsigned {
    /* List of states */
    fetch1, fetch2, fetch3,
    decode,
    br, s_imm, s_reg,
    s_lui,
    s_auipc,
    calc_addr,
    ld1, ld2,
    st1, st2
} state, next_states;

/************************* Function Definitions *******************************/
/**
 *  You do not need to use these functions, but it can be nice to encapsulate
 *  behavior in such a way.  For example, if you use the `loadRegfile`
 *  function, then you only need to ensure that you set the load_regfile bit
 *  to 1'b1 in one place, rather than in many.
 *
 *  SystemVerilog functions must take zero "simulation time" (as opposed to 
 *  tasks).  Thus, they are generally synthesizable, and appropraite
 *  for design code.  Arguments to functions are, by default, input.  But
 *  may be passed as outputs, inouts, or by reference using the `ref` keyword.
**/

/**
 *  Rather than filling up an always_block with a whole bunch of default values,
 *  set the default values for controller output signals in this function,
 *   and then call it at the beginning of your always_comb block.
**/
function void set_defaults();
    load_pc = 1'b0;
    load_ir = 1'b0;
    load_regfile = 1'b0;
    load_mar = 1'b0;
    load_mdr = 1'b0;
    load_data_out = 1'b0;
    pcmux_sel = pcmux::pc_plus4;
    cmpop = branch_funct3;

    alumux1_sel = alumux::rs1_out;
    alumux2_sel = alumux::i_imm;
    regfilemux_sel = regfilemux::alu_out;
    marmux_sel = marmux::pc_out;
    cmpmux_sel = cmpmux::rs2_out;
    aluop = alu_ops'(arith_funct3);

    mem_read = 1'b0;
    mem_write = 1'b0;
    mem_byte_enable = 4'b1111;

endfunction

/**
 *  Use the next several functions to set the signals needed to
 *  load various registers
**/
function void loadPC(pcmux::pcmux_sel_t sel);
    load_pc = 1'b1;
    pcmux_sel = sel;
endfunction

function void loadRegfile(regfilemux::regfilemux_sel_t sel);
    load_regfile = 1'b1;
    regfilemux_sel = sel;
endfunction

function void loadMAR(marmux::marmux_sel_t sel);
    load_mar = 1'b1;
    marmux_sel = sel;
endfunction

function void loadMDR();
    load_mdr = 1'b1;
    mem_read = 1'b1;
endfunction

/**
 * SystemVerilog allows for default argument values in a way similar to
 *   C++.
**/
function void setALU(alumux::alumux1_sel_t sel1,
                               alumux::alumux2_sel_t sel2,
                               logic setop = 1'b0, alu_ops op = alu_add);
    /* Student code here */
    alumux1_sel = sel1;
    alumux2_sel = sel2;

    if (setop)
        aluop = op; // else default value
endfunction

function automatic void setCMP(cmpmux::cmpmux_sel_t sel, branch_funct3_t op);
    cmpmux_sel = sel;
    cmpop = op;
endfunction

/*****************************************************************************/

    /* Remember to deal with rst signal */

always_comb
begin : state_actions
    /* Default output assignments */
    set_defaults();
    /* Actions for each state */
    case(state)
        /* write case for each state */
            fetch1: loadMAR(marmux::pc_out);
            fetch2: loadMDR();
            fetch3: load_ir = 1'b1;
            decode: /* no actual code here to be done */;
            br: 
            begin 
                setCMP(cmpmux::rs2_out, branch_funct3);
                setALU(alumux::pc_out, alumux::b_imm, 1'b1, alu_add);
                loadPC(pcmux::pcmux_sel_t'(br_en));
            end 
            s_imm: 
            begin 
                case(arith_funct3)
                slt: 
                begin 
                    loadRegfile(regfilemux::br_en);
                    loadPC(pcmux::pc_plus4);
                    setCMP(cmpmux::i_imm, blt);
                end 
                sltu: 
                begin
                    loadRegfile(regfilemux::br_en);
                    loadPC(pcmux::pc_plus4);
                    setCMP(cmpmux::i_imm, bltu);
                end
                sr: 
                begin
                    loadRegfile(regfilemux::alu_out);
                    loadPC(pcmux::pc_plus4);
                    case(funct7[5])
                        1'b0 : setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_srl);
                        1'b1 : setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_sra);
                    endcase
                end
                default: 
                begin 
                    loadRegfile(regfilemux::alu_out);
                    loadPC(pcmux::pc_plus4);
                    setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_ops'(funct3));
                end 
                endcase
            end
            s_reg: 
            begin 
                case(arith_funct3)
                slt: 
                begin 
                    loadRegfile(regfilemux::br_en);
                    loadPC(pcmux::pc_plus4);
                    setCMP(cmpmux::rs2_out, blt);
                end 
                sltu: 
                begin
                    loadRegfile(regfilemux::br_en);
                    loadPC(pcmux::pc_plus4);
                    setCMP(cmpmux::rs2_out, bltu);
                end
                sr: 
                begin
                    loadRegfile(regfilemux::alu_out);
                    loadPC(pcmux::pc_plus4);
                    case(funct7[5])
                        1'b0 : setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_srl);
                        1'b1 : setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_sra);
                    endcase
                end
                default: 
                begin 
                    loadRegfile(regfilemux::alu_out);
                    loadPC(pcmux::pc_plus4);
                    setALU(alumux::rs1_out, alumux::rs2_out, 1'b1, alu_ops'(funct3));
                end 
                endcase
            end
            s_lui: 
            begin 
                loadRegfile(regfilemux::u_imm);
                loadPC(pcmux::pc_plus4);
            end
            s_auipc: 
            begin 
                setALU(alumux::pc_out, alumux::u_imm, 1'b1, alu_add);
                loadRegfile(regfilemux::alu_out);
                loadPC(pcmux::pc_plus4);
            end
            calc_addr:
            begin
                case(opcode)
                    op_load: 
                    begin
                        loadMAR(marmux::alu_out); 
                        setALU(alumux::rs1_out, alumux::i_imm, 1'b1, alu_add);
                    end
                    op_store: 
                    begin
                        loadMAR(marmux::alu_out);
                        setALU(alumux::rs1_out, alumux::s_imm, 1'b1, alu_add);
                        load_data_out = 1'b1;
                    end
                endcase
            end
            ld1:loadMDR(); 
            ld2:
            begin 
                loadRegfile(regfilemux::lw);
                loadPC(pcmux::pc_plus4);
            end
            st1: mem_write = 1'b1; 
            st2: loadPC(pcmux::pc_plus4);
        default: set_defaults();
    endcase
end

logic [1:0] count = 2'b00;

always_ff @(posedge clk)
begin : decode_delay_counter
    if(count == 2'b11 || rst)
        count <= 2'b00;
    else count <= count + 1;
end

always_comb
begin : next_state_logic
    /* Next state information and conditions (if any)
     * for transitioning between states */
    case(state)
        fetch1: next_states = fetch2; 
        fetch2: 
        begin 
            if (mem_resp) 
                next_states = fetch3;
            else 
                next_states = fetch2; 
        end
        fetch3: next_states = decode;
        decode: 
        begin
            if(count == 2'b10) /* delay to give decode state some time */
                case(opcode)
                    /* figure out next state based on decoded op */
                    op_lui: next_states = s_lui;
                    op_auipc: next_states = s_auipc;
                    op_br: next_states = br;
                    op_load, op_store: next_states = calc_addr;
                    op_imm: next_states = s_imm;

                    /* figure out what state to enter for register-register operations */
                    op_reg: next_states = s_reg;
                    default: next_states = fetch1;
                    /* checkpoint 2 stuff here */
                    // op_jal: next_states <= ;
                    // op_jalr: next_states <= ;
                    // op_csr: next_states <= ;
                endcase
            else next_states = decode;
        end
        s_imm: next_states = fetch1;
        s_reg: next_states = fetch1; /* probably goes to fetch1 -- double-check */
        s_lui: next_states = fetch1;
        s_auipc: next_states = fetch1;
        br: next_states = fetch1;
        calc_addr: 
        case(opcode)
            op_load: next_states = ld1;
            op_store: next_states = st1;
            default: next_states = fetch1;
        endcase
        ld1: 
        begin 
            if(mem_resp) 
                next_states = ld2; 
            else next_states = ld1; 
        end
        ld2: next_states = fetch1;
        st1: 
        begin 
            if(mem_resp) 
                next_states = st2; 
            else next_states = st1; 
        end
        st2: next_states = fetch1;
        default: next_states = state; // by default, stay the same
    endcase
end

always_ff @(posedge clk)
begin: next_state_assignment
    /* Assignment of next state on clock edge */
    if(rst) begin
        state <= fetch1;
    end
    else state <= next_states;
end

endmodule : control
