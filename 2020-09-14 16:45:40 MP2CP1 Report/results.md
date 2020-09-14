# AG Report Generated 2020-09-14 16:45
This is a report about mp2cp1 generated for avetsa2 at 2020-09-14 16:45. The autograder used commit ``76e072377455`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: YES
 - Targeted: 0/18 (0.0%)
 - Timing: NO
### Compilation ![Success][success]
You succesfully compiled. Your report is below.
<details>
<summary>Compilation Report</summary>

```
Info: *******************************************************************
Info: Running Quartus Prime Analysis & Synthesis
    Info: Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
    Info: Copyright (C) 2018  Intel Corporation. All rights reserved.
    Info: Your use of Intel Corporation's design tools, logic functions 
    Info: and other software and tools, and its AMPP partner logic 
    Info: functions, and any output files from any of the foregoing 
    Info: (including device programming or simulation files), and any 
    Info: associated documentation or information are expressly subject 
    Info: to the terms and conditions of the Intel Program License 
    Info: Subscription Agreement, the Intel Quartus Prime License Agreement,
    Info: the Intel FPGA IP License Agreement, or other applicable license
    Info: agreement, including, without limitation, that your use is for
    Info: the sole purpose of programming logic devices manufactured by
    Info: Intel and sold by Intel or its authorized distributors.  Please
    Info: refer to the applicable agreement for further details.
    Info: Processing started: Mon Sep 14 21:43:18 2020
Info: Command: quartus_map mp2 -c mp2
Info (20030): Parallel compilation is enabled and will use 2 of the 2 processors detected
Info (12021): Found 1 design units, including 1 entities, in source file hdl/control.sv
    Info (12023): Found entity 1: control File: /job/student/hdl/control.sv Line: 3
Info (12021): Found 3 design units, including 3 entities, in source file hdl/datapath.sv
    Info (12023): Found entity 1: datapath File: /job/student/hdl/datapath.sv Line: 5
    Info (12023): Found entity 2: alu_module File: /job/student/hdl/datapath.sv Line: 212
    Info (12023): Found entity 3: cmp_module File: /job/student/hdl/datapath.sv Line: 236
Info (12021): Found 1 design units, including 1 entities, in source file hdl/mp2.sv
    Info (12023): Found entity 1: mp2 File: /job/student/hdl/mp2.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/alu.sv
    Info (12023): Found entity 1: alu File: /job/student/hdl/alu.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/ir.sv
    Info (12023): Found entity 1: ir File: /job/student/hdl/ir.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pc_reg.sv
    Info (12023): Found entity 1: pc_register File: /job/student/hdl/pc_reg.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/regfile.sv
    Info (12023): Found entity 1: regfile File: /job/student/hdl/regfile.sv Line: 2
Info (12021): Found 1 design units, including 1 entities, in source file hdl/register.sv
    Info (12023): Found entity 1: register File: /job/student/hdl/register.sv Line: 1
Info (12021): Found 5 design units, including 0 entities, in source file hdl/rv32i_mux_types.sv
    Info (12022): Found design unit 1: pcmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 3
    Info (12022): Found design unit 2: marmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 11
    Info (12022): Found design unit 3: cmpmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 18
    Info (12022): Found design unit 4: alumux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 25
    Info (12022): Found design unit 5: regfilemux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 41
Info (12021): Found 1 design units, including 0 entities, in source file hdl/rv32i_types.sv
    Info (12022): Found design unit 1: rv32i_types (SystemVerilog) File: /job/student/hdl/rv32i_types.sv Line: 3
Info (12127): Elaborating entity "mp2" for the top level hierarchy
Info (12128): Elaborating entity "control" for hierarchy "control:control" File: /job/student/hdl/mp2.sv Line: 47
Warning (10036): Verilog HDL or VHDL warning at control.sv(37): object "trap" assigned a value but never read File: /job/student/hdl/control.sv Line: 37
Warning (10036): Verilog HDL or VHDL warning at control.sv(38): object "rs1_addr" assigned a value but never read File: /job/student/hdl/control.sv Line: 38
Warning (10036): Verilog HDL or VHDL warning at control.sv(38): object "rs2_addr" assigned a value but never read File: /job/student/hdl/control.sv Line: 38
Warning (10036): Verilog HDL or VHDL warning at control.sv(39): object "rmask" assigned a value but never read File: /job/student/hdl/control.sv Line: 39
Warning (10036): Verilog HDL or VHDL warning at control.sv(39): object "wmask" assigned a value but never read File: /job/student/hdl/control.sv Line: 39
Warning (10270): Verilog HDL Case Statement warning at control.sv(287): incomplete case statement has no default case item File: /job/student/hdl/control.sv Line: 287
Warning (10230): Verilog HDL assignment warning at control.sv(319): truncated value with size 32 to match size of target (2) File: /job/student/hdl/control.sv Line: 319
Info (12128): Elaborating entity "datapath" for hierarchy "datapath:datapath" File: /job/student/hdl/mp2.sv Line: 50
Info (12128): Elaborating entity "ir" for hierarchy "datapath:datapath|ir:IR" File: /job/student/hdl/datapath.sv Line: 66
Info (12128): Elaborating entity "register" for hierarchy "datapath:datapath|register:MDR" File: /job/student/hdl/datapath.sv Line: 75
Info (12128): Elaborating entity "pc_register" for hierarchy "datapath:datapath|pc_register:pc_reg" File: /job/student/hdl/datapath.sv Line: 94
Info (12128): Elaborating entity "regfile" for hierarchy "datapath:datapath|regfile:regfile" File: /job/student/hdl/datapath.sv Line: 110
Info (12128): Elaborating entity "alu_module" for hierarchy "datapath:datapath|alu_module:ALU" File: /job/student/hdl/datapath.sv Line: 136
Info (12128): Elaborating entity "cmp_module" for hierarchy "datapath:datapath|cmp_module:CMP" File: /job/student/hdl/datapath.sv Line: 143
Warning (13024): Output pins are stuck at VCC or GND
    Warning (13410): Pin "mem_byte_enable[0]" is stuck at VCC File: /job/student/hdl/mp2.sv Line: 11
    Warning (13410): Pin "mem_byte_enable[1]" is stuck at VCC File: /job/student/hdl/mp2.sv Line: 11
    Warning (13410): Pin "mem_byte_enable[2]" is stuck at VCC File: /job/student/hdl/mp2.sv Line: 11
    Warning (13410): Pin "mem_byte_enable[3]" is stuck at VCC File: /job/student/hdl/mp2.sv Line: 11
Info (286030): Timing-Driven Synthesis is running
Info (17049): 32 registers lost all their fanouts during netlist optimizations.
Info (144001): Generated suppressed messages file /job/student/output_files/mp2.map.smsg
Info (16010): Generating hard_block partition "hard_block:auto_generated_inst"
    Info (16011): Adding 0 node(s), including 0 DDIO, 0 PLL, 0 transceiver and 0 LCELL
Info (21057): Implemented 2649 device resources after synthesis - the final resource count might be different
    Info (21058): Implemented 35 input pins
    Info (21059): Implemented 70 output pins
    Info (21061): Implemented 2544 logic cells
Info: Quartus Prime Analysis & Synthesis was successful. 0 errors, 12 warnings
    Info: Peak virtual memory: 1191 megabytes
    Info: Processing ended: Mon Sep 14 21:43:42 2020
    Info: Elapsed time: 00:00:24
    Info: Total CPU time (on all processors): 00:00:33
Info: *******************************************************************
Info: Running Quartus Prime Shell
    Info: Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
    Info: Copyright (C) 2018  Intel Corporation. All rights reserved.
    Info: Your use of Intel Corporation's design tools, logic functions 
    Info: and other software and tools, and its AMPP partner logic 
    Info: functions, and any output files from any of the foregoing 
    Info: (including device programming or simulation files), and any 
    Info: associated documentation or information are expressly subject 
    Info: to the terms and conditions of the Intel Program License 
    Info: Subscription Agreement, the Intel Quartus Prime License Agreement,
    Info: the Intel FPGA IP License Agreement, or other applicable license
    Info: agreement, including, without limitation, that your use is for
    Info: the sole purpose of programming logic devices manufactured by
    Info: Intel and sold by Intel or its authorized distributors.  Please
    Info: refer to the applicable agreement for further details.
    Info: Processing started: Mon Sep 14 21:43:43 2020
Info: Command: quartus_sh -t /opt/altera/quartus/common/tcl/internal/nativelink/qnativesim.tcl --gen_script --rtl_sim mp2 mp2
Info: Quartus(args): --gen_script --rtl_sim mp2 mp2
Info: Info: Start Nativelink Simulation process
Info: Info: NativeLink has detected Verilog design -- Verilog simulation models will be used
Info: Info: Starting NativeLink simulation with ModelSim-Altera software
Info: Info: Generated ModelSim-Altera script file /job/student/simulation/modelsim/mp2_run_msim_rtl_verilog.do File: /job/student/simulation/modelsim/mp2_run_msim_rtl_verilog.do Line: 0
Info: Info: NativeLink simulation flow was successful
Info: Info: For messages from NativeLink scripts, check the file /job/student/mp2_nativelink_simulation.rpt File: /job/student/mp2_nativelink_simulation.rpt Line: 0
Info (23030): Evaluation of Tcl script /opt/altera/quartus/common/tcl/internal/nativelink/qnativesim.tcl was successful
Info: Quartus Prime Shell was successful. 0 errors, 0 warnings
    Info: Peak virtual memory: 789 megabytes
    Info: Processing ended: Mon Sep 14 21:43:43 2020
    Info: Elapsed time: 00:00:00
    Info: Total CPU time (on all processors): 00:00:00
Reading pref.tcl

# 10.5b

ModelSim> transcript on
ModelSim> > > if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
ModelSim> vlib rtl_work
ModelSim> vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Modifying /opt/altera/modelsim_ase/linuxaloem/../modelsim.ini
ModelSim> 
> 
vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/pc_reg.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:44 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/pc_reg.sv 
# -- Compiling module pc_register
# 
# Top level modules:
# 	pc_register
# End time: 21:43:44 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/regfile.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:44 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/regfile.sv 
# -- Compiling module regfile
# 
# Top level modules:
# 	regfile
# End time: 21:43:44 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/register.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:44 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/register.sv 
# -- Compiling module register
# 
# Top level modules:
# 	register
# End time: 21:43:44 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_mux_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:44 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_mux_types.sv 
# -- Compiling package pcmux
# -- Compiling package marmux
# -- Compiling package cmpmux
# -- Compiling package alumux
# -- Compiling package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 21:43:44 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:44 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_types.sv 
# -- Compiling package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 21:43:44 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/control.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:44 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/control.sv 
# -- Compiling package control_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module control
# 
# Top level modules:
# 	control
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:45 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/datapath.sv 
# -- Compiling package datapath_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module datapath
# -- Compiling module alu_module
# -- Compiling module cmp_module
# 
# Top level modules:
# 	datapath
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/ir.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:45 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/ir.sv 
# -- Compiling package ir_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module ir
# 
# Top level modules:
# 	ir
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/mp2.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:45 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/mp2.sv 
# -- Compiling package mp2_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module mp2
# 
# Top level modules:
# 	mp2
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/top.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:45 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/top.sv 
# -- Compiling package top_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module mp2_tb
# 
# Top level modules:
# 	mp2_tb
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/tb_itf.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:45 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/tb_itf.sv 
# -- Compiling interface tb_itf
# 
# Top level modules:
# 	--none--
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/source_tb.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:45 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/source_tb.sv 
# -- Compiling module source_tb
# 
# Top level modules:
# 	source_tb
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/memory.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:45 on Sep 14,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/memory.sv 
# -- Compiling module memory
# 
# Top level modules:
# 	memory
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -vlog01compat -work work +incdir+/job/student/hvl {/job/student/hvl/rvfimon.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 21:43:45 on Sep 14,2020
# vlog -vlog01compat -work work "+incdir+/job/student/hvl" /job/student/hvl/rvfimon.v 
# -- Compiling module riscv_formal_monitor_rv32i
# -- Compiling module riscv_formal_monitor_rv32i_rob
# -- Compiling module riscv_formal_monitor_rv32i_isa_spec
# -- Compiling module riscv_formal_monitor_rv32i_insn_add
# -- Compiling module riscv_formal_monitor_rv32i_insn_addi
# -- Compiling module riscv_formal_monitor_rv32i_insn_and
# -- Compiling module riscv_formal_monitor_rv32i_insn_andi
# -- Compiling module riscv_formal_monitor_rv32i_insn_auipc
# -- Compiling module riscv_formal_monitor_rv32i_insn_beq
# -- Compiling module riscv_formal_monitor_rv32i_insn_bge
# -- Compiling module riscv_formal_monitor_rv32i_insn_bgeu
# -- Compiling module riscv_formal_monitor_rv32i_insn_blt
# -- Compiling module riscv_formal_monitor_rv32i_insn_bltu
# -- Compiling module riscv_formal_monitor_rv32i_insn_bne
# -- Compiling module riscv_formal_monitor_rv32i_insn_jal
# -- Compiling module riscv_formal_monitor_rv32i_insn_jalr
# -- Compiling module riscv_formal_monitor_rv32i_insn_lb
# -- Compiling module riscv_formal_monitor_rv32i_insn_lbu
# -- Compiling module riscv_formal_monitor_rv32i_insn_lh
# -- Compiling module riscv_formal_monitor_rv32i_insn_lhu
# -- Compiling module riscv_formal_monitor_rv32i_insn_lui
# -- Compiling module riscv_formal_monitor_rv32i_insn_lw
# -- Compiling module riscv_formal_monitor_rv32i_insn_or
# -- Compiling module riscv_formal_monitor_rv32i_insn_ori
# -- Compiling module riscv_formal_monitor_rv32i_insn_sb
# -- Compiling module riscv_formal_monitor_rv32i_insn_sh
# -- Compiling module riscv_formal_monitor_rv32i_insn_sll
# -- Compiling module riscv_formal_monitor_rv32i_insn_slli
# -- Compiling module riscv_formal_monitor_rv32i_insn_slt
# -- Compiling module riscv_formal_monitor_rv32i_insn_slti
# -- Compiling module riscv_formal_monitor_rv32i_insn_sltiu
# -- Compiling module riscv_formal_monitor_rv32i_insn_sltu
# -- Compiling module riscv_formal_monitor_rv32i_insn_sra
# -- Compiling module riscv_formal_monitor_rv32i_insn_srai
# -- Compiling module riscv_formal_monitor_rv32i_insn_srl
# -- Compiling module riscv_formal_monitor_rv32i_insn_srli
# -- Compiling module riscv_formal_monitor_rv32i_insn_sub
# -- Compiling module riscv_formal_monitor_rv32i_insn_sw
# -- Compiling module riscv_formal_monitor_rv32i_insn_xor
# -- Compiling module riscv_formal_monitor_rv32i_insn_xori
# 
# Top level modules:
# 	riscv_formal_monitor_rv32i
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  mp2_tb
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs=""+acc"" mp2_tb 
# Start time: 21:43:45 on Sep 14,2020
# Loading sv_std.std
# Loading work.regfilemux
# Loading work.alumux
# Loading work.cmpmux
# Loading work.marmux
# Loading work.pcmux
# Loading work.rv32i_types
# Loading work.top_sv_unit
# Loading work.mp2_tb
# Loading work.tb_itf
# Loading work.source_tb
# Loading work.memory
# Loading work.mp2_sv_unit
# Loading work.mp2
# Loading work.control_sv_unit
# Loading work.control
# Loading work.datapath_sv_unit
# Loading work.datapath
# Loading work.ir_sv_unit
# Loading work.ir
# Loading work.register
# Loading work.pc_register
# Loading work.regfile
# Loading work.alu_module
# Loading work.cmp_module
# Loading work.riscv_formal_monitor_rv32i
# Loading work.riscv_formal_monitor_rv32i_isa_spec
# Loading work.riscv_formal_monitor_rv32i_insn_add
# Loading work.riscv_formal_monitor_rv32i_insn_addi
# Loading work.riscv_formal_monitor_rv32i_insn_and
# Loading work.riscv_formal_monitor_rv32i_insn_andi
# Loading work.riscv_formal_monitor_rv32i_insn_auipc
# Loading work.riscv_formal_monitor_rv32i_insn_beq
# Loading work.riscv_formal_monitor_rv32i_insn_bge
# Loading work.riscv_formal_monitor_rv32i_insn_bgeu
# Loading work.riscv_formal_monitor_rv32i_insn_blt
# Loading work.riscv_formal_monitor_rv32i_insn_bltu
# Loading work.riscv_formal_monitor_rv32i_insn_bne
# Loading work.riscv_formal_monitor_rv32i_insn_jal
# Loading work.riscv_formal_monitor_rv32i_insn_jalr
# Loading work.riscv_formal_monitor_rv32i_insn_lb
# Loading work.riscv_formal_monitor_rv32i_insn_lbu
# Loading work.riscv_formal_monitor_rv32i_insn_lh
# Loading work.riscv_formal_monitor_rv32i_insn_lhu
# Loading work.riscv_formal_monitor_rv32i_insn_lui
# Loading work.riscv_formal_monitor_rv32i_insn_lw
# Loading work.riscv_formal_monitor_rv32i_insn_or
# Loading work.riscv_formal_monitor_rv32i_insn_ori
# Loading work.riscv_formal_monitor_rv32i_insn_sb
# Loading work.riscv_formal_monitor_rv32i_insn_sh
# Loading work.riscv_formal_monitor_rv32i_insn_sll
# Loading work.riscv_formal_monitor_rv32i_insn_slli
# Loading work.riscv_formal_monitor_rv32i_insn_slt
# Loading work.riscv_formal_monitor_rv32i_insn_slti
# Loading work.riscv_formal_monitor_rv32i_insn_sltiu
# Loading work.riscv_formal_monitor_rv32i_insn_sltu
# Loading work.riscv_formal_monitor_rv32i_insn_sra
# Loading work.riscv_formal_monitor_rv32i_insn_srai
# Loading work.riscv_formal_monitor_rv32i_insn_srl
# Loading work.riscv_formal_monitor_rv32i_insn_srli
# Loading work.riscv_formal_monitor_rv32i_insn_sub
# Loading work.riscv_formal_monitor_rv32i_insn_sw
# Loading work.riscv_formal_monitor_rv32i_insn_xor
# Loading work.riscv_formal_monitor_rv32i_insn_xori
# Loading work.riscv_formal_monitor_rv32i_rob
VSIM 20> 
> 
add wave *
VSIM 21> view structure
VSIM 22> # 
# <EOF>
# 0: RVMODEL NULL (Expected)
# End time: 21:43:45 on Sep 14,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0

```

</details>


### Targeted Tests: 
<ul>
<li> <b>Hidden test</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>Hidden test</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>Hidden test</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>Hidden test</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>Hidden test</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>Hidden test</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>Hidden test</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>beq</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>bge</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>blt</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>bne</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>cp1_longer</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>ori</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>slti</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>srai</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>srli</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>sw_aligned</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
<li> <b>xori</b> <img alt="failure" width="13" height="13" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png" ></img></li>
</ul>

### Timing ![Failure][failure]
You failed to pass timing. Your timing log file is below.
<details>
<summary>Timing Report</summary>

```
Timing Analyzer report for mp2
Mon Sep 14 21:45:38 2020
Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition


---------------------
; Table of Contents ;
---------------------
  1. Legal Notice
  2. Timing Analyzer Summary
  3. Parallel Compilation
  4. SDC File List
  5. Clocks
  6. Slow 900mV 85C Model Fmax Summary
  7. Timing Closure Recommendations
  8. Slow 900mV 85C Model Setup Summary
  9. Slow 900mV 85C Model Hold Summary
 10. Slow 900mV 85C Model Recovery Summary
 11. Slow 900mV 85C Model Removal Summary
 12. Slow 900mV 85C Model Minimum Pulse Width Summary
 13. Slow 900mV 85C Model Metastability Summary
 14. Slow 900mV 0C Model Fmax Summary
 15. Slow 900mV 0C Model Setup Summary
 16. Slow 900mV 0C Model Hold Summary
 17. Slow 900mV 0C Model Recovery Summary
 18. Slow 900mV 0C Model Removal Summary
 19. Slow 900mV 0C Model Minimum Pulse Width Summary
 20. Slow 900mV 0C Model Metastability Summary
 21. Fast 900mV 0C Model Setup Summary
 22. Fast 900mV 0C Model Hold Summary
 23. Fast 900mV 0C Model Recovery Summary
 24. Fast 900mV 0C Model Removal Summary
 25. Fast 900mV 0C Model Minimum Pulse Width Summary
 26. Fast 900mV 0C Model Metastability Summary
 27. Multicorner Timing Analysis Summary
 28. Board Trace Model Assignments
 29. Input Transition Times
 30. Signal Integrity Metrics (Slow 900mv 0c Model)
 31. Signal Integrity Metrics (Slow 900mv 85c Model)
 32. Signal Integrity Metrics (Fast 900mv 0c Model)
 33. Setup Transfers
 34. Hold Transfers
 35. Report TCCS
 36. Report RSKM
 37. Unconstrained Paths Summary
 38. Clock Status Summary
 39. Timing Analyzer Messages
 40. Timing Analyzer Suppressed Messages



----------------
; Legal Notice ;
----------------
Copyright (C) 2018  Intel Corporation. All rights reserved.
Your use of Intel Corporation's design tools, logic functions 
and other software and tools, and its AMPP partner logic 
functions, and any output files from any of the foregoing 
(including device programming or simulation files), and any 
associated documentation or information are expressly subject 
to the terms and conditions of the Intel Program License 
Subscription Agreement, the Intel Quartus Prime License Agreement,
the Intel FPGA IP License Agreement, or other applicable license
agreement, including, without limitation, that your use is for
the sole purpose of programming logic devices manufactured by
Intel and sold by Intel or its authorized distributors.  Please
refer to the applicable agreement for further details.



+---------------------------------------------------------------------------------+
; Timing Analyzer Summary                                                         ;
+-----------------------+---------------------------------------------------------+
; Quartus Prime Version ; Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition ;
; Timing Analyzer       ; Legacy Timing Analyzer                                  ;
; Revision Name         ; mp2                                                     ;
; Device Family         ; Arria II GX                                             ;
; Device Name           ; EP2AGX45DF25I3                                          ;
; Timing Models         ; Final                                                   ;
; Delay Model           ; Combined                                                ;
; Rise/Fall Delays      ; Enabled                                                 ;
+-----------------------+---------------------------------------------------------+


+------------------------------------------+
; Parallel Compilation                     ;
+----------------------------+-------------+
; Processors                 ; Number      ;
+----------------------------+-------------+
; Number detected on machine ; 2           ;
; Maximum allowed            ; 2           ;
;                            ;             ;
; Average used               ; 1.28        ;
; Maximum used               ; 2           ;
;                            ;             ;
; Usage by Processor         ; % Time Used ;
;     Processor 1            ; 100.0%      ;
;     Processor 2            ;  28.0%      ;
+----------------------------+-------------+


+---------------------------------------------------+
; SDC File List                                     ;
+---------------+--------+--------------------------+
; SDC File Path ; Status ; Read at                  ;
+---------------+--------+--------------------------+
; mp2.out.sdc   ; OK     ; Mon Sep 14 21:45:32 2020 ;
+---------------+--------+--------------------------+


+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Clocks                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ;
+------------+------+--------+-----------+-------+-------+------------+-----------+-------------+-------+--------+-----------+------------+----------+--------+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Clock Name ; Type ; Period ; Frequency ; Rise  ; Fall  ; Duty Cycle ; Divide by ; Multiply by ; Phase ; Offset ; Edge List ; Edge Shift ; Inverted ; Master ; Source ; Targets                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ;
+------------+------+--------+-----------+-------+-------+------------+-----------+-------------+-------+--------+-----------+------------+----------+--------+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; clk        ; Base ; 10.000 ; 100.0 MHz ; 0.000 ; 5.000 ;            ;           ;             ;       ;        ;           ;            ;          ;        ;        ; { rst mem_resp clk mem_rdata[5] mem_rdata[2] mem_rdata[1] mem_rdata[0] mem_rdata[3] mem_rdata[6] mem_rdata[4] mem_rdata[30] mem_rdata[13] mem_rdata[14] mem_rdata[12] mem_rdata[8] mem_rdata[11] mem_rdata[10] mem_rdata[7] mem_rdata[9] mem_rdata[20] mem_rdata[22] mem_rdata[17] mem_rdata[31] mem_rdata[21] mem_rdata[23] mem_rdata[24] mem_rdata[18] mem_rdata[16] mem_rdata[15] mem_rdata[19] mem_rdata[25] mem_rdata[26] mem_rdata[27] mem_rdata[28] mem_rdata[29] mem_read mem_write mem_byte_enable[0] mem_byte_enable[1] mem_byte_enable[2] mem_byte_enable[3] mem_address[0] mem_address[1] mem_address[2] mem_address[3] mem_address[4] mem_address[5] mem_address[6] mem_address[7] mem_address[8] mem_address[9] mem_address[10] mem_address[11] mem_address[12] mem_address[13] mem_address[14] mem_address[15] mem_address[16] mem_address[17] mem_address[18] mem_address[19] mem_address[20] mem_address[21] mem_address[22] mem_address[23] mem_address[24] mem_address[25] mem_address[26] mem_address[27] mem_address[28] mem_address[29] mem_address[30] mem_address[31] mem_wdata[0] mem_wdata[1] mem_wdata[2] mem_wdata[3] mem_wdata[4] mem_wdata[5] mem_wdata[6] mem_wdata[7] mem_wdata[8] mem_wdata[9] mem_wdata[10] mem_wdata[11] mem_wdata[12] mem_wdata[13] mem_wdata[14] mem_wdata[15] mem_wdata[16] mem_wdata[17] mem_wdata[18] mem_wdata[19] mem_wdata[20] mem_wdata[21] mem_wdata[22] mem_wdata[23] mem_wdata[24] mem_wdata[25] mem_wdata[26] mem_wdata[27] mem_wdata[28] mem_wdata[29] mem_wdata[30] mem_wdata[31] } ;
+------------+------+--------+-----------+-------+-------+------------+-----------+-------------+-------+--------+-----------+------------+----------+--------+--------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


+-------------------------------------------------+
; Slow 900mV 85C Model Fmax Summary               ;
+-----------+-----------------+------------+------+
; Fmax      ; Restricted Fmax ; Clock Name ; Note ;
+-----------+-----------------+------------+------+
; 61.88 MHz ; 61.88 MHz       ; clk        ;      ;
+-----------+-----------------+------------+------+
This panel reports FMAX for every clock in the design, regardless of the user-specified clock periods.  FMAX is only computed for paths where the source and destination registers or ports are driven by the same clock.  Paths of different clocks, including generated clocks, are ignored.  For paths between a clock and its inversion, FMAX is computed as if the rising and falling edges are scaled along with FMAX, such that the duty cycle (in terms of a percentage) is maintained. Altera recommends that you always use clock constraints and other slack reports for sign-off analysis.


----------------------------------
; Timing Closure Recommendations ;
----------------------------------
HTML report is unavailable in plain text report export.


+------------------------------------+
; Slow 900mV 85C Model Setup Summary ;
+-------+--------+-------------------+
; Clock ; Slack  ; End Point TNS     ;
+-------+--------+-------------------+
; clk   ; -6.161 ; -1589.859         ;
+-------+--------+-------------------+


+-----------------------------------+
; Slow 900mV 85C Model Hold Summary ;
+-------+-------+-------------------+
; Clock ; Slack ; End Point TNS     ;
+-------+-------+-------------------+
; clk   ; 0.278 ; 0.000             ;
+-------+-------+-------------------+


-----------------------------------------
; Slow 900mV 85C Model Recovery Summary ;
-----------------------------------------
No paths to report.


----------------------------------------
; Slow 900mV 85C Model Removal Summary ;
----------------------------------------
No paths to report.


+--------------------------------------------------+
; Slow 900mV 85C Model Minimum Pulse Width Summary ;
+-------+-------+----------------------------------+
; Clock ; Slack ; End Point TNS                    ;
+-------+-------+----------------------------------+
; clk   ; 4.071 ; 0.000                            ;
+-------+-------+----------------------------------+


----------------------------------------------
; Slow 900mV 85C Model Metastability Summary ;
----------------------------------------------
No synchronizer chains to report.


+-------------------------------------------------+
; Slow 900mV 0C Model Fmax Summary                ;
+-----------+-----------------+------------+------+
; Fmax      ; Restricted Fmax ; Clock Name ; Note ;
+-----------+-----------------+------------+------+
; 65.13 MHz ; 65.13 MHz       ; clk        ;      ;
+-----------+-----------------+------------+------+
This panel reports FMAX for every clock in the design, regardless of the user-specified clock periods.  FMAX is only computed for paths where the source and destination registers or ports are driven by the same clock.  Paths of different clocks, including generated clocks, are ignored.  For paths between a clock and its inversion, FMAX is computed as if the rising and falling edges are scaled along with FMAX, such that the duty cycle (in terms of a percentage) is maintained. Altera recommends that you always use clock constraints and other slack reports for sign-off analysis.


+-----------------------------------+
; Slow 900mV 0C Model Setup Summary ;
+-------+--------+------------------+
; Clock ; Slack  ; End Point TNS    ;
+-------+--------+------------------+
; clk   ; -5.355 ; -1102.372        ;
+-------+--------+------------------+


+----------------------------------+
; Slow 900mV 0C Model Hold Summary ;
+-------+-------+------------------+
; Clock ; Slack ; End Point TNS    ;
+-------+-------+------------------+
; clk   ; 0.274 ; 0.000            ;
+-------+-------+------------------+


----------------------------------------
; Slow 900mV 0C Model Recovery Summary ;
----------------------------------------
No paths to report.


---------------------------------------
; Slow 900mV 0C Model Removal Summary ;
---------------------------------------
No paths to report.


+-------------------------------------------------+
; Slow 900mV 0C Model Minimum Pulse Width Summary ;
+-------+-------+---------------------------------+
; Clock ; Slack ; End Point TNS                   ;
+-------+-------+---------------------------------+
; clk   ; 4.083 ; 0.000                           ;
+-------+-------+---------------------------------+


---------------------------------------------
; Slow 900mV 0C Model Metastability Summary ;
---------------------------------------------
No synchronizer chains to report.


+-----------------------------------+
; Fast 900mV 0C Model Setup Summary ;
+-------+-------+-------------------+
; Clock ; Slack ; End Point TNS     ;
+-------+-------+-------------------+
; clk   ; 1.105 ; 0.000             ;
+-------+-------+-------------------+


+----------------------------------+
; Fast 900mV 0C Model Hold Summary ;
+-------+-------+------------------+
; Clock ; Slack ; End Point TNS    ;
+-------+-------+------------------+
; clk   ; 0.102 ; 0.000            ;
+-------+-------+------------------+


----------------------------------------
; Fast 900mV 0C Model Recovery Summary ;
----------------------------------------
No paths to report.


---------------------------------------
; Fast 900mV 0C Model Removal Summary ;
---------------------------------------
No paths to report.


+-------------------------------------------------+
; Fast 900mV 0C Model Minimum Pulse Width Summary ;
+-------+-------+---------------------------------+
; Clock ; Slack ; End Point TNS                   ;
+-------+-------+---------------------------------+
; clk   ; 3.834 ; 0.000                           ;
+-------+-------+---------------------------------+


---------------------------------------------
; Fast 900mV 0C Model Metastability Summary ;
---------------------------------------------
No synchronizer chains to report.


+---------------------------------------------------------------------------------+
; Multicorner Timing Analysis Summary                                             ;
+------------------+-----------+-------+----------+---------+---------------------+
; Clock            ; Setup     ; Hold  ; Recovery ; Removal ; Minimum Pulse Width ;
+------------------+-----------+-------+----------+---------+---------------------+
; Worst-case Slack ; -6.161    ; 0.102 ; N/A      ; N/A     ; 3.834               ;
;  clk             ; -6.161    ; 0.102 ; N/A      ; N/A     ; 3.834               ;
; Design-wide TNS  ; -1589.859 ; 0.0   ; 0.0      ; 0.0     ; 0.0                 ;
;  clk             ; -1589.859 ; 0.000 ; N/A      ; N/A     ; 0.000               ;
+------------------+-----------+-------+----------+---------+---------------------+


+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Board Trace Model Assignments                                                                                                                                                                                                                                                                                                                                                                                         ;
+--------------------+--------------+-------------------+-------------------------+-------------------------+---------------+---------------------+----------------+------------------+--------+------------------+------------------------+------------------------+--------------+---------------+-----------------+-------+---------------------+--------------------+---------------+-----------------+-------------+
; Pin                ; I/O Standard ; Near Tline Length ; Near Tline L per Length ; Near Tline C per Length ; Near Series R ; Near Differential R ; Near Pull-up R ; Near Pull-down R ; Near C ; Far Tline Length ; Far Tline L per Length ; Far Tline C per Length ; Far Series R ; Far Pull-up R ; Far Pull-down R ; Far C ; Termination Voltage ; Far Differential R ; EBD File Name ; EBD Signal Name ; EBD Far-end ;
+--------------------+--------------+-------------------+-------------------------+-------------------------+---------------+---------------------+----------------+------------------+--------+------------------+------------------------+------------------------+--------------+---------------+-----------------+-------+---------------------+--------------------+---------------+-----------------+-------------+
; mem_read           ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_write          ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_byte_enable[0] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_byte_enable[1] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_byte_enable[2] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_byte_enable[3] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[0]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[1]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[2]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[3]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[4]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[5]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[6]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[7]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[8]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[9]     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[10]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[11]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[12]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[13]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[14]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[15]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[16]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[17]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[18]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[19]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[20]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[21]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[22]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[23]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[24]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[25]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[26]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[27]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[28]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[29]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[30]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_address[31]    ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[0]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[1]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[2]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[3]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[4]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[5]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[6]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[7]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[8]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[9]       ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[10]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[11]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[12]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[13]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[14]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[15]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[16]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[17]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[18]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[19]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[20]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[21]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[22]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[23]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[24]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[25]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[26]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[27]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[28]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[29]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[30]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[31]      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; ~ALTERA_nCEO~      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
+--------------------+--------------+-------------------+-------------------------+-------------------------+---------------+---------------------+----------------+------------------+--------+------------------+------------------------+------------------------+--------------+---------------+-----------------+-------+---------------------+--------------------+---------------+-----------------+-------------+


+------------------------------------------------------------------+
; Input Transition Times                                           ;
+---------------+--------------+-----------------+-----------------+
; Pin           ; I/O Standard ; 10-90 Rise Time ; 90-10 Fall Time ;
+---------------+--------------+-----------------+-----------------+
; clk           ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_resp      ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; rst           ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[4]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[5]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[2]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[6]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[3]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[1]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[0]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[13] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[30] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[14] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[12] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[24] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[23] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[22] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[20] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[21] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[7]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[8]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[9]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[10] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[11] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[19] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[15] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[16] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[17] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[18] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[31] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[29] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[25] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[26] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[27] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[28] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
+---------------+--------------+-----------------+-----------------+


+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Signal Integrity Metrics (Slow 900mv 0c Model)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; Pin                ; I/O Standard ; Board Delay on Rise ; Board Delay on Fall ; Steady State Voh at FPGA Pin ; Steady State Vol at FPGA Pin ; Voh Max at FPGA Pin ; Vol Min at FPGA Pin ; Ringback Voltage on Rise at FPGA Pin ; Ringback Voltage on Fall at FPGA Pin ; 10-90 Rise Time at FPGA Pin ; 90-10 Fall Time at FPGA Pin ; Monotonic Rise at FPGA Pin ; Monotonic Fall at FPGA Pin ; Steady State Voh at Far-end ; Steady State Vol at Far-end ; Voh Max at Far-end ; Vol Min at Far-end ; Ringback Voltage on Rise at Far-end ; Ringback Voltage on Fall at Far-end ; 10-90 Rise Time at Far-end ; 90-10 Fall Time at Far-end ; Monotonic Rise at Far-end ; Monotonic Fall at Far-end ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; mem_read           ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_write          ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_byte_enable[0] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_byte_enable[1] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_byte_enable[2] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_byte_enable[3] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[0]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[1]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[2]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[3]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[4]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[5]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[6]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[7]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[8]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[9]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[10]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[11]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[12]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[13]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[14]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[15]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[16]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[17]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[18]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[19]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[20]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[21]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[22]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[23]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[24]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[25]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[26]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[27]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[28]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[29]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_address[30]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_address[31]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[0]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[1]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[2]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[3]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[4]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[5]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[6]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[7]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[8]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[9]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[10]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[11]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[12]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[13]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[14]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[15]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[16]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[17]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[18]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[19]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[20]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[21]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[22]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[23]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[24]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[25]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[26]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[27]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[28]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[29]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[30]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0172 V           ; 0.189 V                              ; 0.13 V                               ; 6.32e-10 s                  ; 5.97e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0172 V          ; 0.189 V                             ; 0.13 V                              ; 6.32e-10 s                 ; 5.97e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[31]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.96e-07 V                   ; 2.31 V              ; -0.0165 V           ; 0.178 V                              ; 0.118 V                              ; 6.24e-10 s                  ; 5.76e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 1.96e-07 V                  ; 2.31 V             ; -0.0165 V          ; 0.178 V                             ; 0.118 V                             ; 6.24e-10 s                 ; 5.76e-10 s                 ; No                        ; Yes                       ;
; ~ALTERA_nCEO~      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 2.31e-07 V                   ; 2.31 V              ; -0.0132 V           ; 0.24 V                               ; 0.122 V                              ; 5.4e-10 s                   ; 6.79e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 2.31e-07 V                  ; 2.31 V             ; -0.0132 V          ; 0.24 V                              ; 0.122 V                             ; 5.4e-10 s                  ; 6.79e-10 s                 ; No                        ; Yes                       ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+


+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Signal Integrity Metrics (Slow 900mv 85c Model)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; Pin                ; I/O Standard ; Board Delay on Rise ; Board Delay on Fall ; Steady State Voh at FPGA Pin ; Steady State Vol at FPGA Pin ; Voh Max at FPGA Pin ; Vol Min at FPGA Pin ; Ringback Voltage on Rise at FPGA Pin ; Ringback Voltage on Fall at FPGA Pin ; 10-90 Rise Time at FPGA Pin ; 90-10 Fall Time at FPGA Pin ; Monotonic Rise at FPGA Pin ; Monotonic Fall at FPGA Pin ; Steady State Voh at Far-end ; Steady State Vol at Far-end ; Voh Max at Far-end ; Vol Min at Far-end ; Ringback Voltage on Rise at Far-end ; Ringback Voltage on Fall at Far-end ; 10-90 Rise Time at Far-end ; 90-10 Fall Time at Far-end ; Monotonic Rise at Far-end ; Monotonic Fall at Far-end ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; mem_read           ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_write          ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_byte_enable[0] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_byte_enable[1] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_byte_enable[2] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_byte_enable[3] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[0]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[1]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[2]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[3]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[4]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[5]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[6]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[7]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[8]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[9]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[10]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[11]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[12]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[13]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[14]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[15]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[16]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[17]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[18]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[19]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[20]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[21]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[22]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[23]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[24]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[25]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[26]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[27]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[28]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[29]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[30]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_address[31]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[0]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[1]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[2]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[3]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[4]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[5]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[6]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[7]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[8]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[9]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[10]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[11]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[12]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[13]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[14]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[15]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[16]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[17]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[18]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[19]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[20]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[21]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[22]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[23]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[24]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[25]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[26]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[27]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[28]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[29]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[30]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.0106 V           ; 0.159 V                              ; 0.083 V                              ; 7.43e-10 s                  ; 7.16e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.0106 V          ; 0.159 V                             ; 0.083 V                             ; 7.43e-10 s                 ; 7.16e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[31]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 1.82e-05 V                   ; 2.29 V              ; -0.00988 V          ; 0.149 V                              ; 0.133 V                              ; 7.27e-10 s                  ; 6.97e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 1.82e-05 V                  ; 2.29 V             ; -0.00988 V         ; 0.149 V                             ; 0.133 V                             ; 7.27e-10 s                 ; 6.97e-10 s                 ; Yes                       ; Yes                       ;
; ~ALTERA_nCEO~      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 2.14e-05 V                   ; 2.3 V               ; -0.00787 V          ; 0.193 V                              ; 0.09 V                               ; 6.51e-10 s                  ; 8.32e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 2.14e-05 V                  ; 2.3 V              ; -0.00787 V         ; 0.193 V                             ; 0.09 V                              ; 6.51e-10 s                 ; 8.32e-10 s                 ; Yes                       ; Yes                       ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+


+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Signal Integrity Metrics (Fast 900mv 0c Model)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; Pin                ; I/O Standard ; Board Delay on Rise ; Board Delay on Fall ; Steady State Voh at FPGA Pin ; Steady State Vol at FPGA Pin ; Voh Max at FPGA Pin ; Vol Min at FPGA Pin ; Ringback Voltage on Rise at FPGA Pin ; Ringback Voltage on Fall at FPGA Pin ; 10-90 Rise Time at FPGA Pin ; 90-10 Fall Time at FPGA Pin ; Monotonic Rise at FPGA Pin ; Monotonic Fall at FPGA Pin ; Steady State Voh at Far-end ; Steady State Vol at Far-end ; Voh Max at Far-end ; Vol Min at Far-end ; Ringback Voltage on Rise at Far-end ; Ringback Voltage on Fall at Far-end ; 10-90 Rise Time at Far-end ; 90-10 Fall Time at Far-end ; Monotonic Rise at Far-end ; Monotonic Fall at Far-end ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; mem_read           ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_write          ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_byte_enable[0] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_byte_enable[1] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_byte_enable[2] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_byte_enable[3] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[0]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[1]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[2]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[3]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[4]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[5]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[6]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[7]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[8]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[9]     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[10]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[11]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[12]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[13]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[14]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[15]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[16]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[17]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[18]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[19]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[20]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[21]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[22]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[23]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[24]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[25]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[26]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[27]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[28]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[29]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_address[30]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_address[31]    ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[0]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[1]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[2]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[3]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[4]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[5]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[6]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[7]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[8]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[9]       ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[10]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[11]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[12]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[13]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[14]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[15]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[16]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[17]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[18]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[19]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[20]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[21]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[22]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[23]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[24]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[25]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[26]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[27]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[28]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[29]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; mem_wdata[30]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0312 V           ; 0.23 V                               ; 0.18 V                               ; 5.12e-10 s                  ; 4.94e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0312 V          ; 0.23 V                              ; 0.18 V                              ; 5.12e-10 s                 ; 4.94e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[31]      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.08e-06 V                   ; 2.66 V              ; -0.0305 V           ; 0.22 V                               ; 0.165 V                              ; 5.07e-10 s                  ; 4.87e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.08e-06 V                  ; 2.66 V             ; -0.0305 V          ; 0.22 V                              ; 0.165 V                             ; 5.07e-10 s                 ; 4.87e-10 s                 ; No                        ; No                        ;
; ~ALTERA_nCEO~      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 1.27e-06 V                   ; 2.67 V              ; -0.0263 V           ; 0.315 V                              ; 0.154 V                              ; 4.24e-10 s                  ; 5.98e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 1.27e-06 V                  ; 2.67 V             ; -0.0263 V          ; 0.315 V                             ; 0.154 V                             ; 4.24e-10 s                 ; 5.98e-10 s                 ; No                        ; No                        ;
+--------------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+


+-----------------------------------------------------------------------+
; Setup Transfers                                                       ;
+------------+----------+--------------+----------+----------+----------+
; From Clock ; To Clock ; RR Paths     ; FR Paths ; RF Paths ; FF Paths ;
+------------+----------+--------------+----------+----------+----------+
; clk        ; clk      ; > 2147483647 ; 2376     ; 0        ; 0        ;
+------------+----------+--------------+----------+----------+----------+
Entries labeled "false path" only account for clock-to-clock false paths and not path-based false paths. As a result, actual path counts may be lower than reported.


+-----------------------------------------------------------------------+
; Hold Transfers                                                        ;
+------------+----------+--------------+----------+----------+----------+
; From Clock ; To Clock ; RR Paths     ; FR Paths ; RF Paths ; FF Paths ;
+------------+----------+--------------+----------+----------+----------+
; clk        ; clk      ; > 2147483647 ; 2376     ; 0        ; 0        ;
+------------+----------+--------------+----------+----------+----------+
Entries labeled "false path" only account for clock-to-clock false paths and not path-based false paths. As a result, actual path counts may be lower than reported.


---------------
; Report TCCS ;
---------------
No dedicated SERDES Transmitter circuitry present in device or used in design


---------------
; Report RSKM ;
---------------
No non-DPA dedicated SERDES Receiver circuitry present in device or used in design


+------------------------------------------------+
; Unconstrained Paths Summary                    ;
+---------------------------------+-------+------+
; Property                        ; Setup ; Hold ;
+---------------------------------+-------+------+
; Illegal Clocks                  ; 0     ; 0    ;
; Unconstrained Clocks            ; 0     ; 0    ;
; Unconstrained Input Ports       ; 0     ; 0    ;
; Unconstrained Input Port Paths  ; 0     ; 0    ;
; Unconstrained Output Ports      ; 0     ; 0    ;
; Unconstrained Output Port Paths ; 0     ; 0    ;
+---------------------------------+-------+------+


+-------------------------------------------------+
; Clock Status Summary                            ;
+--------------------+-------+------+-------------+
; Target             ; Clock ; Type ; Status      ;
+--------------------+-------+------+-------------+
; clk                ; clk   ; Base ; Constrained ;
; mem_address[0]     ; clk   ; Base ; Constrained ;
; mem_address[1]     ; clk   ; Base ; Constrained ;
; mem_address[2]     ; clk   ; Base ; Constrained ;
; mem_address[3]     ; clk   ; Base ; Constrained ;
; mem_address[4]     ; clk   ; Base ; Constrained ;
; mem_address[5]     ; clk   ; Base ; Constrained ;
; mem_address[6]     ; clk   ; Base ; Constrained ;
; mem_address[7]     ; clk   ; Base ; Constrained ;
; mem_address[8]     ; clk   ; Base ; Constrained ;
; mem_address[9]     ; clk   ; Base ; Constrained ;
; mem_address[10]    ; clk   ; Base ; Constrained ;
; mem_address[11]    ; clk   ; Base ; Constrained ;
; mem_address[12]    ; clk   ; Base ; Constrained ;
; mem_address[13]    ; clk   ; Base ; Constrained ;
; mem_address[14]    ; clk   ; Base ; Constrained ;
; mem_address[15]    ; clk   ; Base ; Constrained ;
; mem_address[16]    ; clk   ; Base ; Constrained ;
; mem_address[17]    ; clk   ; Base ; Constrained ;
; mem_address[18]    ; clk   ; Base ; Constrained ;
; mem_address[19]    ; clk   ; Base ; Constrained ;
; mem_address[20]    ; clk   ; Base ; Constrained ;
; mem_address[21]    ; clk   ; Base ; Constrained ;
; mem_address[22]    ; clk   ; Base ; Constrained ;
; mem_address[23]    ; clk   ; Base ; Constrained ;
; mem_address[24]    ; clk   ; Base ; Constrained ;
; mem_address[25]    ; clk   ; Base ; Constrained ;
; mem_address[26]    ; clk   ; Base ; Constrained ;
; mem_address[27]    ; clk   ; Base ; Constrained ;
; mem_address[28]    ; clk   ; Base ; Constrained ;
; mem_address[29]    ; clk   ; Base ; Constrained ;
; mem_address[30]    ; clk   ; Base ; Constrained ;
; mem_address[31]    ; clk   ; Base ; Constrained ;
; mem_byte_enable[0] ; clk   ; Base ; Constrained ;
; mem_byte_enable[1] ; clk   ; Base ; Constrained ;
; mem_byte_enable[2] ; clk   ; Base ; Constrained ;
; mem_byte_enable[3] ; clk   ; Base ; Constrained ;
; mem_rdata[0]       ; clk   ; Base ; Constrained ;
; mem_rdata[1]       ; clk   ; Base ; Constrained ;
; mem_rdata[2]       ; clk   ; Base ; Constrained ;
; mem_rdata[3]       ; clk   ; Base ; Constrained ;
; mem_rdata[4]       ; clk   ; Base ; Constrained ;
; mem_rdata[5]       ; clk   ; Base ; Constrained ;
; mem_rdata[6]       ; clk   ; Base ; Constrained ;
; mem_rdata[7]       ; clk   ; Base ; Constrained ;
; mem_rdata[8]       ; clk   ; Base ; Constrained ;
; mem_rdata[9]       ; clk   ; Base ; Constrained ;
; mem_rdata[10]      ; clk   ; Base ; Constrained ;
; mem_rdata[11]      ; clk   ; Base ; Constrained ;
; mem_rdata[12]      ; clk   ; Base ; Constrained ;
; mem_rdata[13]      ; clk   ; Base ; Constrained ;
; mem_rdata[14]      ; clk   ; Base ; Constrained ;
; mem_rdata[15]      ; clk   ; Base ; Constrained ;
; mem_rdata[16]      ; clk   ; Base ; Constrained ;
; mem_rdata[17]      ; clk   ; Base ; Constrained ;
; mem_rdata[18]      ; clk   ; Base ; Constrained ;
; mem_rdata[19]      ; clk   ; Base ; Constrained ;
; mem_rdata[20]      ; clk   ; Base ; Constrained ;
; mem_rdata[21]      ; clk   ; Base ; Constrained ;
; mem_rdata[22]      ; clk   ; Base ; Constrained ;
; mem_rdata[23]      ; clk   ; Base ; Constrained ;
; mem_rdata[24]      ; clk   ; Base ; Constrained ;
; mem_rdata[25]      ; clk   ; Base ; Constrained ;
; mem_rdata[26]      ; clk   ; Base ; Constrained ;
; mem_rdata[27]      ; clk   ; Base ; Constrained ;
; mem_rdata[28]      ; clk   ; Base ; Constrained ;
; mem_rdata[29]      ; clk   ; Base ; Constrained ;
; mem_rdata[30]      ; clk   ; Base ; Constrained ;
; mem_rdata[31]      ; clk   ; Base ; Constrained ;
; mem_read           ; clk   ; Base ; Constrained ;
; mem_resp           ; clk   ; Base ; Constrained ;
; mem_wdata[0]       ; clk   ; Base ; Constrained ;
; mem_wdata[1]       ; clk   ; Base ; Constrained ;
; mem_wdata[2]       ; clk   ; Base ; Constrained ;
; mem_wdata[3]       ; clk   ; Base ; Constrained ;
; mem_wdata[4]       ; clk   ; Base ; Constrained ;
; mem_wdata[5]       ; clk   ; Base ; Constrained ;
; mem_wdata[6]       ; clk   ; Base ; Constrained ;
; mem_wdata[7]       ; clk   ; Base ; Constrained ;
; mem_wdata[8]       ; clk   ; Base ; Constrained ;
; mem_wdata[9]       ; clk   ; Base ; Constrained ;
; mem_wdata[10]      ; clk   ; Base ; Constrained ;
; mem_wdata[11]      ; clk   ; Base ; Constrained ;
; mem_wdata[12]      ; clk   ; Base ; Constrained ;
; mem_wdata[13]      ; clk   ; Base ; Constrained ;
; mem_wdata[14]      ; clk   ; Base ; Constrained ;
; mem_wdata[15]      ; clk   ; Base ; Constrained ;
; mem_wdata[16]      ; clk   ; Base ; Constrained ;
; mem_wdata[17]      ; clk   ; Base ; Constrained ;
; mem_wdata[18]      ; clk   ; Base ; Constrained ;
; mem_wdata[19]      ; clk   ; Base ; Constrained ;
; mem_wdata[20]      ; clk   ; Base ; Constrained ;
; mem_wdata[21]      ; clk   ; Base ; Constrained ;
; mem_wdata[22]      ; clk   ; Base ; Constrained ;
; mem_wdata[23]      ; clk   ; Base ; Constrained ;
; mem_wdata[24]      ; clk   ; Base ; Constrained ;
; mem_wdata[25]      ; clk   ; Base ; Constrained ;
; mem_wdata[26]      ; clk   ; Base ; Constrained ;
; mem_wdata[27]      ; clk   ; Base ; Constrained ;
; mem_wdata[28]      ; clk   ; Base ; Constrained ;
; mem_wdata[29]      ; clk   ; Base ; Constrained ;
; mem_wdata[30]      ; clk   ; Base ; Constrained ;
; mem_wdata[31]      ; clk   ; Base ; Constrained ;
; mem_write          ; clk   ; Base ; Constrained ;
; rst                ; clk   ; Base ; Constrained ;
+--------------------+-------+------+-------------+


+--------------------------+
; Timing Analyzer Messages ;
+--------------------------+
Info: *******************************************************************
Info: Running Quartus Prime Timing Analyzer
    Info: Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
    Info: Copyright (C) 2018  Intel Corporation. All rights reserved.
    Info: Your use of Intel Corporation's design tools, logic functions 
    Info: and other software and tools, and its AMPP partner logic 
    Info: functions, and any output files from any of the foregoing 
    Info: (including device programming or simulation files), and any 
    Info: associated documentation or information are expressly subject 
    Info: to the terms and conditions of the Intel Program License 
    Info: Subscription Agreement, the Intel Quartus Prime License Agreement,
    Info: the Intel FPGA IP License Agreement, or other applicable license
    Info: agreement, including, without limitation, that your use is for
    Info: the sole purpose of programming logic devices manufactured by
    Info: Intel and sold by Intel or its authorized distributors.  Please
    Info: refer to the applicable agreement for further details.
    Info: Processing started: Mon Sep 14 21:45:31 2020
Info: Command: quartus_sta --parallel mp2 -c mp2
Info: qsta_default_script.tcl version: #1
Info (20030): Parallel compilation is enabled and will use 2 of the 2 processors detected
Info (21077): Low junction temperature is 0 degrees C
Info (21077): High junction temperature is 85 degrees C
Info (332104): Reading SDC File: 'mp2.out.sdc'
Warning (332125): Found combinational loop of 1143 nodes File: /job/student/hdl/datapath.sv Line: 219
    Warning (332126): Node "datapath|ALU|Selector31~7|combout"
    Warning (332126): Node "datapath|alumux1_out[0]~31|datac"
    Warning (332126): Node "datapath|alumux1_out[0]~31|combout"
    Warning (332126): Node "datapath|ALU|Selector31~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector31~3|combout"
    Warning (332126): Node "datapath|ALU|Selector31~4|datac"
    Warning (332126): Node "datapath|ALU|Selector31~4|combout"
    Warning (332126): Node "datapath|ALU|Selector31~7|datad"
    Warning (332126): Node "datapath|ALU|Selector31~5|datac"
    Warning (332126): Node "datapath|ALU|Selector31~5|combout"
    Warning (332126): Node "datapath|ALU|Selector31~6|datac"
    Warning (332126): Node "datapath|ALU|Selector31~6|combout"
    Warning (332126): Node "datapath|ALU|Selector31~7|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~50|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~50|combout"
    Warning (332126): Node "datapath|ALU|Selector22~6|datac"
    Warning (332126): Node "datapath|ALU|Selector22~6|combout"
    Warning (332126): Node "datapath|alumux1_out[9]~55|datac"
    Warning (332126): Node "datapath|alumux1_out[9]~55|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~6|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~6|combout"
    Warning (332126): Node "datapath|ALU|Selector22~0|datae"
    Warning (332126): Node "datapath|ALU|Selector22~0|combout"
    Warning (332126): Node "datapath|ALU|Selector22~1|datad"
    Warning (332126): Node "datapath|ALU|Selector22~1|combout"
    Warning (332126): Node "datapath|ALU|Selector22~5|datac"
    Warning (332126): Node "datapath|ALU|Selector22~5|combout"
    Warning (332126): Node "datapath|alumux1_out[9]~55|dataf"
    Warning (332126): Node "datapath|ALU|Selector30~1|datac"
    Warning (332126): Node "datapath|ALU|Selector30~1|combout"
    Warning (332126): Node "datapath|ALU|Selector30~2|datac"
    Warning (332126): Node "datapath|ALU|Selector30~2|combout"
    Warning (332126): Node "datapath|ALU|Selector30~6|dataf"
    Warning (332126): Node "datapath|ALU|Selector30~6|combout"
    Warning (332126): Node "datapath|alumux1_out[1]~47|datae"
    Warning (332126): Node "datapath|alumux1_out[1]~47|combout"
    Warning (332126): Node "datapath|ALU|Selector31~5|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~50|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~5|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~5|combout"
    Warning (332126): Node "datapath|ALU|Selector4~5|dataf"
    Warning (332126): Node "datapath|ALU|Selector4~5|combout"
    Warning (332126): Node "datapath|ALU|Selector4~7|dataf"
    Warning (332126): Node "datapath|ALU|Selector4~7|combout"
    Warning (332126): Node "datapath|alumux1_out[27]~42|dataa"
    Warning (332126): Node "datapath|alumux1_out[27]~42|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~2|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~2|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~4|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~4|combout"
    Warning (332126): Node "datapath|ALU|Selector14~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector14~2|combout"
    Warning (332126): Node "datapath|ALU|Selector14~3DUPLICATE|datae"
    Warning (332126): Node "datapath|ALU|Selector14~3DUPLICATE|combout"
    Warning (332126): Node "datapath|alumux1_out[17]~32|dataf"
    Warning (332126): Node "datapath|alumux1_out[17]~32|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~15|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~15|combout"
    Warning (332126): Node "datapath|ALU|Selector29~1|datad"
    Warning (332126): Node "datapath|ALU|Selector29~1|combout"
    Warning (332126): Node "datapath|ALU|Selector29~2|datac"
    Warning (332126): Node "datapath|ALU|Selector29~2|combout"
    Warning (332126): Node "datapath|ALU|Selector29~5|datad"
    Warning (332126): Node "datapath|ALU|Selector29~5|combout"
    Warning (332126): Node "datapath|alumux1_out[2]~48|datae"
    Warning (332126): Node "datapath|alumux1_out[2]~48|combout"
    Warning (332126): Node "datapath|ALU|Selector31~5|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~5|datae"
    Warning (332126): Node "datapath|ALU|Selector29~0|datad"
    Warning (332126): Node "datapath|ALU|Selector29~0|combout"
    Warning (332126): Node "datapath|ALU|Selector29~1|datae"
    Warning (332126): Node "datapath|ALU|Selector30~0|datac"
    Warning (332126): Node "datapath|ALU|Selector30~0|combout"
    Warning (332126): Node "datapath|ALU|Selector30~1|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~2|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~2|combout"
    Warning (332126): Node "datapath|ALU|Selector29~4|datae"
    Warning (332126): Node "datapath|ALU|Selector29~4|combout"
    Warning (332126): Node "datapath|ALU|Selector29~5|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~17|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~17|combout"
    Warning (332126): Node "datapath|ALU|Selector9~0|datad"
    Warning (332126): Node "datapath|ALU|Selector9~0|combout"
    Warning (332126): Node "datapath|ALU|Selector9~2|datad"
    Warning (332126): Node "datapath|ALU|Selector9~2|combout"
    Warning (332126): Node "datapath|alumux1_out[22]~37|datad"
    Warning (332126): Node "datapath|alumux1_out[22]~37|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~1|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~1|combout"
    Warning (332126): Node "datapath|ALU|Selector22~0|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~32|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~32|combout"
    Warning (332126): Node "datapath|ALU|Selector26~6|datae"
    Warning (332126): Node "datapath|ALU|Selector26~6|combout"
    Warning (332126): Node "datapath|alumux1_out[5]~51|datab"
    Warning (332126): Node "datapath|alumux1_out[5]~51|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~47|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~47|combout"
    Warning (332126): Node "datapath|ALU|Selector26~7|datac"
    Warning (332126): Node "datapath|ALU|Selector26~7|combout"
    Warning (332126): Node "datapath|alumux1_out[5]~51|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~16|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~16|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~50|datae"
    Warning (332126): Node "datapath|ALU|Selector6~1|datad"
    Warning (332126): Node "datapath|ALU|Selector6~1|combout"
    Warning (332126): Node "datapath|ALU|Selector6~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector6~3|combout"
    Warning (332126): Node "datapath|alumux1_out[25]~40|datac"
    Warning (332126): Node "datapath|alumux1_out[25]~40|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~42|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~42|combout"
    Warning (332126): Node "datapath|ALU|Selector0~2|datad"
    Warning (332126): Node "datapath|ALU|Selector0~2|combout"
    Warning (332126): Node "datapath|ALU|Selector0~3|datac"
    Warning (332126): Node "datapath|ALU|Selector0~3|combout"
    Warning (332126): Node "datapath|ALU|Selector0~4|datab"
    Warning (332126): Node "datapath|ALU|Selector0~4|combout"
    Warning (332126): Node "datapath|alumux1_out[31]~45|datac"
    Warning (332126): Node "datapath|alumux1_out[31]~45|combout"
    Warning (332126): Node "datapath|ALU|Add0~130|datad"
    Warning (332126): Node "datapath|ALU|Add0~130|sumout"
    Warning (332126): Node "datapath|ALU|Selector0~4|dataa"
    Warning (332126): Node "datapath|ALU|Selector0~1|datae"
    Warning (332126): Node "datapath|ALU|Selector0~1|combout"
    Warning (332126): Node "datapath|ALU|Selector0~2|datac"
    Warning (332126): Node "datapath|ALU|Selector0~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector0~0|combout"
    Warning (332126): Node "datapath|ALU|Selector0~4|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~24|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~24|combout"
    Warning (332126): Node "datapath|ALU|Selector3~3|datad"
    Warning (332126): Node "datapath|ALU|Selector3~3|combout"
    Warning (332126): Node "datapath|ALU|Selector3~4|datab"
    Warning (332126): Node "datapath|ALU|Selector3~4|combout"
    Warning (332126): Node "datapath|alumux1_out[28]~43|datad"
    Warning (332126): Node "datapath|alumux1_out[28]~43|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~2|datae"
    Warning (332126): Node "datapath|ALU|Selector0~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~18|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~18|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~34|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~34|combout"
    Warning (332126): Node "datapath|ALU|Selector8~2|datae"
    Warning (332126): Node "datapath|ALU|Selector8~2|combout"
    Warning (332126): Node "datapath|ALU|Selector8~3|datac"
    Warning (332126): Node "datapath|ALU|Selector8~3|combout"
    Warning (332126): Node "datapath|alumux1_out[23]~38|dataf"
    Warning (332126): Node "datapath|alumux1_out[23]~38|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~38|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~38|combout"
    Warning (332126): Node "datapath|ALU|Selector0~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector4~6|datad"
    Warning (332126): Node "datapath|ALU|Selector4~6|combout"
    Warning (332126): Node "datapath|ALU|Selector4~7|datad"
    Warning (332126): Node "datapath|ALU|Selector8~1|datac"
    Warning (332126): Node "datapath|ALU|Selector8~1|combout"
    Warning (332126): Node "datapath|ALU|Selector8~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector8~4|dataf"
    Warning (332126): Node "datapath|ALU|Selector8~4|combout"
    Warning (332126): Node "datapath|ALU|Selector8~3|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~26|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~26|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~27|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~27|combout"
    Warning (332126): Node "datapath|ALU|Selector11~2|datag"
    Warning (332126): Node "datapath|ALU|Selector11~2|combout"
    Warning (332126): Node "datapath|alumux1_out[20]~35|datad"
    Warning (332126): Node "datapath|alumux1_out[20]~35|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~38|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~26|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~16|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~16|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~20|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~20|combout"
    Warning (332126): Node "datapath|ALU|Selector28~2|datad"
    Warning (332126): Node "datapath|ALU|Selector28~2|combout"
    Warning (332126): Node "datapath|ALU|Selector28~8|dataf"
    Warning (332126): Node "datapath|ALU|Selector28~8|combout"
    Warning (332126): Node "datapath|alumux1_out[3]~49|datac"
    Warning (332126): Node "datapath|alumux1_out[3]~49|combout"
    Warning (332126): Node "datapath|ALU|Selector31~5|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~5|datad"
    Warning (332126): Node "datapath|ALU|Selector29~0|datac"
    Warning (332126): Node "datapath|ALU|Selector30~0|dataf"
    Warning (332126): Node "datapath|ALU|Add0~18|datac"
    Warning (332126): Node "datapath|ALU|Add0~18|cout"
    Warning (332126): Node "datapath|ALU|Add0~22|cin"
    Warning (332126): Node "datapath|ALU|Add0~22|sumout"
    Warning (332126): Node "datapath|ALU|Selector27~6|datae"
    Warning (332126): Node "datapath|ALU|Selector27~6|combout"
    Warning (332126): Node "datapath|alumux1_out[4]~50|datae"
    Warning (332126): Node "datapath|alumux1_out[4]~50|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9|datae"
    Warning (332126): Node "datapath|ALU|Selector29~0|datae"
    Warning (332126): Node "datapath|ALU|Selector30~0|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~12|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~12|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~30|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~30|combout"
    Warning (332126): Node "datapath|ALU|Selector16~3|datac"
    Warning (332126): Node "datapath|ALU|Selector16~3|combout"
    Warning (332126): Node "datapath|alumux1_out[15]~61|dataa"
    Warning (332126): Node "datapath|alumux1_out[15]~61|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~15|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~30|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~30|combout"
    Warning (332126): Node "datapath|ALU|Selector31~6|datad"
    Warning (332126): Node "datapath|ALU|Selector27~0|datad"
    Warning (332126): Node "datapath|ALU|Selector27~0|combout"
    Warning (332126): Node "datapath|ALU|Selector27~1|datad"
    Warning (332126): Node "datapath|ALU|Selector27~1|combout"
    Warning (332126): Node "datapath|ALU|Selector27~5|dataf"
    Warning (332126): Node "datapath|ALU|Selector27~5|combout"
    Warning (332126): Node "datapath|alumux1_out[4]~50|datad"
    Warning (332126): Node "datapath|ALU|Selector19~0|datab"
    Warning (332126): Node "datapath|ALU|Selector19~0|combout"
    Warning (332126): Node "datapath|ALU|Selector19~1|datac"
    Warning (332126): Node "datapath|ALU|Selector19~1|combout"
    Warning (332126): Node "datapath|ALU|Selector19~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector19~3|combout"
    Warning (332126): Node "datapath|alumux1_out[12]~58|datac"
    Warning (332126): Node "datapath|alumux1_out[12]~58|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~6|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~14|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~14|combout"
    Warning (332126): Node "datapath|ALU|Selector29~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector21~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector21~0|combout"
    Warning (332126): Node "datapath|ALU|Selector21~1|datad"
    Warning (332126): Node "datapath|ALU|Selector21~1|combout"
    Warning (332126): Node "datapath|ALU|Selector21~4|datab"
    Warning (332126): Node "datapath|ALU|Selector21~4|combout"
    Warning (332126): Node "datapath|alumux1_out[10]~56|datac"
    Warning (332126): Node "datapath|alumux1_out[10]~56|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~29|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~29|combout"
    Warning (332126): Node "datapath|ALU|Selector27~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector23~0|datac"
    Warning (332126): Node "datapath|ALU|Selector23~0|combout"
    Warning (332126): Node "datapath|ALU|Selector23~1|datae"
    Warning (332126): Node "datapath|ALU|Selector23~1|combout"
    Warning (332126): Node "datapath|ALU|Selector23~5|dataf"
    Warning (332126): Node "datapath|ALU|Selector23~5|combout"
    Warning (332126): Node "datapath|alumux1_out[8]~54|datac"
    Warning (332126): Node "datapath|alumux1_out[8]~54|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~29|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~5|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~5|combout"
    Warning (332126): Node "datapath|ALU|Selector30~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector26~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector26~0|combout"
    Warning (332126): Node "datapath|ALU|Selector26~6|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~21|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~21|combout"
    Warning (332126): Node "datapath|ALU|Selector24~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector24~0|combout"
    Warning (332126): Node "datapath|ALU|Selector24~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector24~1|combout"
    Warning (332126): Node "datapath|ALU|Selector24~6|dataf"
    Warning (332126): Node "datapath|ALU|Selector24~6|combout"
    Warning (332126): Node "datapath|alumux1_out[7]~53|datae"
    Warning (332126): Node "datapath|alumux1_out[7]~53|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~12|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~5|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~21|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~13|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~13|combout"
    Warning (332126): Node "datapath|ALU|Selector29~1|datac"
    Warning (332126): Node "datapath|ALU|Selector25~0|datae"
    Warning (332126): Node "datapath|ALU|Selector25~0|combout"
    Warning (332126): Node "datapath|ALU|Selector25~6|dataf"
    Warning (332126): Node "datapath|ALU|Selector25~6|combout"
    Warning (332126): Node "datapath|alumux1_out[6]~52|datae"
    Warning (332126): Node "datapath|alumux1_out[6]~52|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~12|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~5|datad"
    Warning (332126): Node "datapath|ALU|Selector28~0|datae"
    Warning (332126): Node "datapath|ALU|Selector28~0|combout"
    Warning (332126): Node "datapath|ALU|Selector28~1|dataa"
    Warning (332126): Node "datapath|ALU|Selector28~1|combout"
    Warning (332126): Node "datapath|ALU|Selector28~2|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~13|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~28|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~28|combout"
    Warning (332126): Node "datapath|ALU|Selector31~6|datab"
    Warning (332126): Node "datapath|ALU|Selector27~0|datab"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~13|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~13|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~24|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~24|combout"
    Warning (332126): Node "datapath|ALU|Selector19~4|datae"
    Warning (332126): Node "datapath|ALU|Selector19~4|combout"
    Warning (332126): Node "datapath|alumux1_out[12]~58|datad"
    Warning (332126): Node "datapath|ALU|Selector3~4|datag"
    Warning (332126): Node "datapath|ALU|Selector15~7|datad"
    Warning (332126): Node "datapath|ALU|Selector15~7|combout"
    Warning (332126): Node "datapath|ALU|Selector15~8|dataf"
    Warning (332126): Node "datapath|ALU|Selector15~8|combout"
    Warning (332126): Node "datapath|alumux1_out[16]~62|dataf"
    Warning (332126): Node "datapath|alumux1_out[16]~62|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~15|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~23|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~23|combout"
    Warning (332126): Node "datapath|ALU|Selector28~1|datae"
    Warning (332126): Node "datapath|ALU|Selector20~0|datad"
    Warning (332126): Node "datapath|ALU|Selector20~0|combout"
    Warning (332126): Node "datapath|ALU|Selector20~1|datac"
    Warning (332126): Node "datapath|ALU|Selector20~1|combout"
    Warning (332126): Node "datapath|ALU|Selector20~4|dataf"
    Warning (332126): Node "datapath|ALU|Selector20~4|combout"
    Warning (332126): Node "datapath|alumux1_out[11]~57|datad"
    Warning (332126): Node "datapath|alumux1_out[11]~57|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~29|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~6|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~14|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~22|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~22|combout"
    Warning (332126): Node "datapath|ALU|Selector7~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector7~1|combout"
    Warning (332126): Node "datapath|ALU|Selector7~2|datad"
    Warning (332126): Node "datapath|ALU|Selector7~2|combout"
    Warning (332126): Node "datapath|ALU|Selector7~3|datac"
    Warning (332126): Node "datapath|ALU|Selector7~3|combout"
    Warning (332126): Node "datapath|alumux1_out[24]~39|dataa"
    Warning (332126): Node "datapath|alumux1_out[24]~39|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~42|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~1|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~39|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~39|combout"
    Warning (332126): Node "datapath|ALU|Selector3~2|datae"
    Warning (332126): Node "datapath|ALU|Selector3~2|combout"
    Warning (332126): Node "datapath|ALU|Selector3~3|datac"
    Warning (332126): Node "datapath|ALU|Selector7~1|datae"
    Warning (332126): Node "datapath|ALU|Selector7~4|datad"
    Warning (332126): Node "datapath|ALU|Selector7~4|combout"
    Warning (332126): Node "datapath|ALU|Selector7~3|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~41|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~41|combout"
    Warning (332126): Node "datapath|ALU|Selector5~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector5~2|combout"
    Warning (332126): Node "datapath|ALU|Selector5~3|datad"
    Warning (332126): Node "datapath|ALU|Selector5~3|combout"
    Warning (332126): Node "datapath|alumux1_out[26]~41|datac"
    Warning (332126): Node "datapath|alumux1_out[26]~41|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~2|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~42|dataa"
    Warning (332126): Node "datapath|ALU|Selector3~1|datac"
    Warning (332126): Node "datapath|ALU|Selector3~1|combout"
    Warning (332126): Node "datapath|ALU|Selector3~2|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~10|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~10|combout"
    Warning (332126): Node "datapath|ALU|Selector17~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector17~0|combout"
    Warning (332126): Node "datapath|ALU|Selector17~1|datae"
    Warning (332126): Node "datapath|ALU|Selector17~1|combout"
    Warning (332126): Node "datapath|alumux1_out[14]~60|datac"
    Warning (332126): Node "datapath|alumux1_out[14]~60|combout"
    Warning (332126): Node "datapath|ALU|Selector17~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector17~2|combout"
    Warning (332126): Node "datapath|ALU|Selector17~3|datae"
    Warning (332126): Node "datapath|ALU|Selector17~3|combout"
    Warning (332126): Node "datapath|alumux1_out[14]~60|datad"
    Warning (332126): Node "datapath|ALU|Add0~62|datad"
    Warning (332126): Node "datapath|ALU|Add0~62|sumout"
    Warning (332126): Node "datapath|ALU|Selector17~3|datac"
    Warning (332126): Node "datapath|ALU|Add0~62|cout"
    Warning (332126): Node "datapath|ALU|Add0~66|cin"
    Warning (332126): Node "datapath|ALU|Add0~66|sumout"
    Warning (332126): Node "datapath|ALU|Selector16~5|datac"
    Warning (332126): Node "datapath|ALU|Selector16~5|combout"
    Warning (332126): Node "datapath|alumux1_out[15]~61|datad"
    Warning (332126): Node "datapath|ALU|Add0~66|cout"
    Warning (332126): Node "datapath|ALU|Add0~70|cin"
    Warning (332126): Node "datapath|ALU|Add0~70|sumout"
    Warning (332126): Node "datapath|ALU|Selector15~8|dataa"
    Warning (332126): Node "datapath|ALU|Add0~70|cout"
    Warning (332126): Node "datapath|ALU|Add0~74|cin"
    Warning (332126): Node "datapath|ALU|Add0~74|sumout"
    Warning (332126): Node "datapath|ALU|Selector14~3DUPLICATE|datad"
    Warning (332126): Node "datapath|ALU|Add0~74|cout"
    Warning (332126): Node "datapath|ALU|Add0~78|cin"
    Warning (332126): Node "datapath|ALU|Add0~78|sumout"
    Warning (332126): Node "datapath|ALU|Selector13~2|datad"
    Warning (332126): Node "datapath|ALU|Selector13~2|combout"
    Warning (332126): Node "datapath|alumux1_out[18]~33|datac"
    Warning (332126): Node "datapath|alumux1_out[18]~33|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~23|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~36|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~36|combout"
    Warning (332126): Node "datapath|ALU|Selector2~2|datac"
    Warning (332126): Node "datapath|ALU|Selector2~2|combout"
    Warning (332126): Node "datapath|ALU|Selector2~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector2~3|combout"
    Warning (332126): Node "datapath|ALU|Selector2~4|datad"
    Warning (332126): Node "datapath|ALU|Selector2~4|combout"
    Warning (332126): Node "datapath|alumux1_out[29]~46|datae"
    Warning (332126): Node "datapath|alumux1_out[29]~46|combout"
    Warning (332126): Node "datapath|ALU|Selector0~1|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~18|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~24|datac"
    Warning (332126): Node "datapath|ALU|Selector2~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector2~1|combout"
    Warning (332126): Node "datapath|ALU|Selector2~2|datad"
    Warning (332126): Node "datapath|ALU|Selector2~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector2~0|combout"
    Warning (332126): Node "datapath|ALU|Selector2~4|dataf"
    Warning (332126): Node "datapath|ALU|Selector1~2|datae"
    Warning (332126): Node "datapath|ALU|Selector1~2|combout"
    Warning (332126): Node "datapath|ALU|Selector1~3|datab"
    Warning (332126): Node "datapath|ALU|Selector1~3|combout"
    Warning (332126): Node "datapath|ALU|Selector1~4|datad"
    Warning (332126): Node "datapath|ALU|Selector1~4|combout"
    Warning (332126): Node "datapath|ALU|Selector1~5|dataa"
    Warning (332126): Node "datapath|ALU|Selector1~5|combout"
    Warning (332126): Node "datapath|alumux1_out[30]~44|datad"
    Warning (332126): Node "datapath|alumux1_out[30]~44|combout"
    Warning (332126): Node "datapath|ALU|Selector0~1|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~11|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~11|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~33|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~33|combout"
    Warning (332126): Node "datapath|ALU|Selector25~6|datae"
    Warning (332126): Node "datapath|ALU|Selector9~2|datag"
    Warning (332126): Node "datapath|ALU|ShiftRight0~12|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~12|combout"
    Warning (332126): Node "datapath|ALU|Selector29~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector13~2|datag"
    Warning (332126): Node "datapath|ALU|ShiftRight0~38|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~38|combout"
    Warning (332126): Node "datapath|ALU|Selector21~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector5~3|datag"
    Warning (332126): Node "datapath|ALU|Selector1~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector1~0|datac"
    Warning (332126): Node "datapath|ALU|Selector1~0|combout"
    Warning (332126): Node "datapath|ALU|Selector17~1|datad"
    Warning (332126): Node "datapath|ALU|Selector1~4|dataf"
    Warning (332126): Node "datapath|ALU|Selector1~1|datac"
    Warning (332126): Node "datapath|ALU|Selector1~1|combout"
    Warning (332126): Node "datapath|ALU|Selector1~5|datab"
    Warning (332126): Node "datapath|ALU|Add0~126|datad"
    Warning (332126): Node "datapath|ALU|Add0~126|cout"
    Warning (332126): Node "datapath|ALU|Add0~130|cin"
    Warning (332126): Node "datapath|ALU|Add0~126|sumout"
    Warning (332126): Node "datapath|ALU|Selector1~5|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~3|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~3|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~37|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~37|combout"
    Warning (332126): Node "datapath|ALU|Selector6~3|datag"
    Warning (332126): Node "datapath|ALU|Selector22~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~4|datac"
    Warning (332126): Node "datapath|ALU|Selector2~3|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~32|datac"
    Warning (332126): Node "datapath|ALU|Selector18~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector18~3|combout"
    Warning (332126): Node "datapath|ALU|Selector18~4|datad"
    Warning (332126): Node "datapath|ALU|Selector18~4|combout"
    Warning (332126): Node "datapath|alumux1_out[13]~59|datac"
    Warning (332126): Node "datapath|alumux1_out[13]~59|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~14|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~25|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~25|combout"
    Warning (332126): Node "datapath|ALU|Selector10~1|datac"
    Warning (332126): Node "datapath|ALU|Selector10~1|combout"
    Warning (332126): Node "datapath|ALU|Selector10~2|datac"
    Warning (332126): Node "datapath|ALU|Selector10~2|combout"
    Warning (332126): Node "datapath|ALU|Selector10~3DUPLICATE|datad"
    Warning (332126): Node "datapath|ALU|Selector10~3DUPLICATE|combout"
    Warning (332126): Node "datapath|alumux1_out[21]~36|datac"
    Warning (332126): Node "datapath|alumux1_out[21]~36|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~1|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~38|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~26|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~39|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~37|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~37|combout"
    Warning (332126): Node "datapath|ALU|Selector9~1|datae"
    Warning (332126): Node "datapath|ALU|Selector9~1|combout"
    Warning (332126): Node "datapath|ALU|Selector9~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector5~2|datae"
    Warning (332126): Node "datapath|ALU|Selector1~3|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~36|datac"
    Warning (332126): Node "datapath|ALU|Add0~90|dataf"
    Warning (332126): Node "datapath|ALU|Add0~90|sumout"
    Warning (332126): Node "datapath|ALU|Selector10~3DUPLICATE|datac"
    Warning (332126): Node "datapath|ALU|Add0~90|cout"
    Warning (332126): Node "datapath|ALU|Add0~94|cin"
    Warning (332126): Node "datapath|ALU|Add0~94|sumout"
    Warning (332126): Node "datapath|ALU|Selector9~2|dataa"
    Warning (332126): Node "datapath|ALU|Add0~94|cout"
    Warning (332126): Node "datapath|ALU|Add0~98|cin"
    Warning (332126): Node "datapath|ALU|Add0~98|sumout"
    Warning (332126): Node "datapath|ALU|Selector8~3|datae"
    Warning (332126): Node "datapath|ALU|Add0~98|cout"
    Warning (332126): Node "datapath|ALU|Add0~102|cin"
    Warning (332126): Node "datapath|ALU|Add0~102|sumout"
    Warning (332126): Node "datapath|ALU|Selector7~3|datad"
    Warning (332126): Node "datapath|ALU|Add0~102|cout"
    Warning (332126): Node "datapath|ALU|Add0~106|cin"
    Warning (332126): Node "datapath|ALU|Add0~106|sumout"
    Warning (332126): Node "datapath|ALU|Selector6~3|datad"
    Warning (332126): Node "datapath|ALU|Add0~106|cout"
    Warning (332126): Node "datapath|ALU|Add0~110|cin"
    Warning (332126): Node "datapath|ALU|Add0~110|sumout"
    Warning (332126): Node "datapath|ALU|Selector5~3|dataf"
    Warning (332126): Node "datapath|ALU|Add0~110|cout"
    Warning (332126): Node "datapath|ALU|Add0~114|cin"
    Warning (332126): Node "datapath|ALU|Add0~114|sumout"
    Warning (332126): Node "datapath|ALU|Selector4~7|dataa"
    Warning (332126): Node "datapath|ALU|Add0~114|cout"
    Warning (332126): Node "datapath|ALU|Add0~118|cin"
    Warning (332126): Node "datapath|ALU|Add0~118|sumout"
    Warning (332126): Node "datapath|ALU|Selector3~4|dataf"
    Warning (332126): Node "datapath|ALU|Add0~118|cout"
    Warning (332126): Node "datapath|ALU|Add0~122|cin"
    Warning (332126): Node "datapath|ALU|Add0~122|sumout"
    Warning (332126): Node "datapath|ALU|Selector2~4|dataa"
    Warning (332126): Node "datapath|ALU|Add0~122|cout"
    Warning (332126): Node "datapath|ALU|Add0~126|cin"
    Warning (332126): Node "datapath|ALU|ShiftRight0~8|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~8|combout"
    Warning (332126): Node "datapath|ALU|Selector21~0|datae"
    Warning (332126): Node "datapath|ALU|Selector25~0|datac"
    Warning (332126): Node "datapath|ALU|Selector17~0|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~12|datac"
    Warning (332126): Node "datapath|ALU|Selector10~4|datad"
    Warning (332126): Node "datapath|ALU|Selector10~4|combout"
    Warning (332126): Node "datapath|ALU|Selector10~3DUPLICATE|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~16|datae"
    Warning (332126): Node "datapath|ALU|Selector6~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector6~2|combout"
    Warning (332126): Node "datapath|ALU|Selector6~3|datab"
    Warning (332126): Node "datapath|ALU|Selector14~1|datad"
    Warning (332126): Node "datapath|ALU|Selector14~1|combout"
    Warning (332126): Node "datapath|ALU|Selector14~2|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~26|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~26|combout"
    Warning (332126): Node "datapath|ALU|Selector18~4|dataf"
    Warning (332126): Node "datapath|ALU|Selector2~4|datag"
    Warning (332126): Node "datapath|ALU|ShiftRight0~22|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~22|combout"
    Warning (332126): Node "datapath|ALU|Selector28~1|datad"
    Warning (332126): Node "datapath|ALU|Selector20~0|datac"
    Warning (332126): Node "datapath|ALU|Selector24~0|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~30|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~7|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~7|combout"
    Warning (332126): Node "datapath|ALU|Selector22~0|dataa"
    Warning (332126): Node "datapath|ALU|Selector30~1|datae"
    Warning (332126): Node "datapath|ALU|Selector26~0|datad"
    Warning (332126): Node "datapath|ALU|Selector18~2|datad"
    Warning (332126): Node "datapath|ALU|Selector18~2|combout"
    Warning (332126): Node "datapath|ALU|Selector18~3|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~29|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~29|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~30|datad"
    Warning (332126): Node "datapath|ALU|Selector4~6|datac"
    Warning (332126): Node "datapath|ALU|Selector8~1|datad"
    Warning (332126): Node "datapath|ALU|Selector12~1|datac"
    Warning (332126): Node "datapath|ALU|Selector12~1|combout"
    Warning (332126): Node "datapath|ALU|Selector12~2|datac"
    Warning (332126): Node "datapath|ALU|Selector12~2|combout"
    Warning (332126): Node "datapath|alumux1_out[19]~34|datac"
    Warning (332126): Node "datapath|alumux1_out[19]~34|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~16|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~37|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~36|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~0|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~0|combout"
    Warning (332126): Node "datapath|ALU|Selector22~0|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~4|datae"
    Warning (332126): Node "datapath|ALU|Selector26~0|datae"
    Warning (332126): Node "datapath|ALU|Selector18~2|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~8|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~35|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~35|combout"
    Warning (332126): Node "datapath|ALU|Selector3~2|dataa"
    Warning (332126): Node "datapath|ALU|Selector7~1|dataa"
    Warning (332126): Node "datapath|ALU|Selector11~1|datad"
    Warning (332126): Node "datapath|ALU|Selector11~1|combout"
    Warning (332126): Node "datapath|ALU|Selector11~2|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~34|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~34|combout"
    Warning (332126): Node "datapath|ALU|Selector0~2|datae"
    Warning (332126): Node "datapath|ALU|Selector4~6|dataf"
    Warning (332126): Node "datapath|ALU|Selector8~1|datae"
    Warning (332126): Node "datapath|ALU|Selector12~1|datae"
    Warning (332126): Node "datapath|ALU|Add0~82|datad"
    Warning (332126): Node "datapath|ALU|Add0~82|cout"
    Warning (332126): Node "datapath|ALU|Add0~86|cin"
    Warning (332126): Node "datapath|ALU|Add0~86|sumout"
    Warning (332126): Node "datapath|ALU|Selector11~2|datab"
    Warning (332126): Node "datapath|ALU|Add0~86|cout"
    Warning (332126): Node "datapath|ALU|Add0~90|cin"
    Warning (332126): Node "datapath|ALU|Add0~82|sumout"
    Warning (332126): Node "datapath|ALU|Selector12~4|datab"
    Warning (332126): Node "datapath|ALU|Selector12~4|combout"
    Warning (332126): Node "datapath|alumux1_out[19]~34|datad"
    Warning (332126): Node "datapath|ALU|Selector12~5|dataf"
    Warning (332126): Node "datapath|ALU|Selector12~5|combout"
    Warning (332126): Node "datapath|ALU|Selector12~4|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~31|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~31|combout"
    Warning (332126): Node "datapath|ALU|Selector27~0|datac"
    Warning (332126): Node "datapath|ALU|Selector19~0|datad"
    Warning (332126): Node "datapath|ALU|Selector23~0|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~40|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~40|combout"
    Warning (332126): Node "datapath|ALU|Selector31~7|datac"
    Warning (332126): Node "datapath|ALU|Selector15~8|datag"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~31|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~31|combout"
    Warning (332126): Node "datapath|ALU|Selector3~2|datad"
    Warning (332126): Node "datapath|ALU|Selector7~1|datad"
    Warning (332126): Node "datapath|ALU|Selector15~7|dataf"
    Warning (332126): Node "datapath|ALU|Selector11~1|datae"
    Warning (332126): Node "datapath|ALU|Selector18~1|datac"
    Warning (332126): Node "datapath|ALU|Selector18~1|combout"
    Warning (332126): Node "datapath|ALU|Selector18~4|datae"
    Warning (332126): Node "datapath|ALU|Add0~58|datad"
    Warning (332126): Node "datapath|ALU|Add0~58|cout"
    Warning (332126): Node "datapath|ALU|Add0~62|cin"
    Warning (332126): Node "datapath|ALU|Add0~58|sumout"
    Warning (332126): Node "datapath|ALU|Selector18~6|datac"
    Warning (332126): Node "datapath|ALU|Selector18~6|combout"
    Warning (332126): Node "datapath|alumux1_out[13]~59|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~27|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~27|combout"
    Warning (332126): Node "datapath|ALU|Selector9~1|datac"
    Warning (332126): Node "datapath|ALU|Selector5~2|datad"
    Warning (332126): Node "datapath|ALU|Selector13~1|datad"
    Warning (332126): Node "datapath|ALU|Selector13~1|combout"
    Warning (332126): Node "datapath|ALU|Selector13~2|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~28|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~28|combout"
    Warning (332126): Node "datapath|ALU|Selector17~3|datad"
    Warning (332126): Node "datapath|ALU|Selector1~5|datag"
    Warning (332126): Node "datapath|ALU|ShiftRight0~24|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~18|dataf"
    Warning (332126): Node "datapath|ALU|Add0~122|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~3|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~10|dataf"
    Warning (332126): Node "datapath|ALU|Selector10~1|datae"
    Warning (332126): Node "datapath|ALU|Selector6~2|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~0|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~31|datad"
    Warning (332126): Node "datapath|ALU|Selector13~6|dataf"
    Warning (332126): Node "datapath|ALU|Selector13~6|combout"
    Warning (332126): Node "datapath|ALU|Selector13~0|datad"
    Warning (332126): Node "datapath|ALU|Selector13~0|combout"
    Warning (332126): Node "datapath|ALU|Selector13~2|dataa"
    Warning (332126): Node "datapath|ALU|Add0~78|datad"
    Warning (332126): Node "datapath|ALU|Add0~78|cout"
    Warning (332126): Node "datapath|ALU|Add0~82|cin"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~33|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~33|combout"
    Warning (332126): Node "datapath|ALU|Selector9~1|datad"
    Warning (332126): Node "datapath|ALU|Selector5~2|datac"
    Warning (332126): Node "datapath|ALU|Selector1~3|datae"
    Warning (332126): Node "datapath|ALU|Selector13~1|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~8|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~35|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~34|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~22|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~30|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~7|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~29|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~31|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~32|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~32|combout"
    Warning (332126): Node "datapath|ALU|Selector2~2|dataa"
    Warning (332126): Node "datapath|ALU|Selector10~1|dataa"
    Warning (332126): Node "datapath|ALU|Selector6~2|datad"
    Warning (332126): Node "datapath|ALU|Selector14~1|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~27|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~15|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~12|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~38|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~33|dataf"
    Warning (332126): Node "datapath|ALU|Selector2~1|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~17|dataa"
    Warning (332126): Node "datapath|ALU|ShiftRight0~17|combout"
    Warning (332126): Node "datapath|ALU|Selector20~0|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~34|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~20|datac"
    Warning (332126): Node "datapath|ALU|Selector16~1|datac"
    Warning (332126): Node "datapath|ALU|Selector16~1|combout"
    Warning (332126): Node "datapath|ALU|Selector16~2|datad"
    Warning (332126): Node "datapath|ALU|Selector16~2|combout"
    Warning (332126): Node "datapath|ALU|Selector16~3|datad"
    Warning (332126): Node "datapath|ALU|Selector5~0|datad"
    Warning (332126): Node "datapath|ALU|Selector5~0|combout"
    Warning (332126): Node "datapath|ALU|Selector5~1|datac"
    Warning (332126): Node "datapath|ALU|Selector5~1|combout"
    Warning (332126): Node "datapath|ALU|Selector5~3|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~41|datad"
    Warning (332126): Node "datapath|ALU|Add0~110|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~25|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~25|combout"
    Warning (332126): Node "datapath|ALU|ShiftRight0~27|datab"
    Warning (332126): Node "datapath|ALU|Selector19~0|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~40|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~35|datab"
    Warning (332126): Node "datapath|ALU|ShiftRight0~35|combout"
    Warning (332126): Node "datapath|ALU|Selector7~2|datac"
    Warning (332126): Node "datapath|ALU|Selector23~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector1~3|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~40|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~40|combout"
    Warning (332126): Node "datapath|ALU|Selector2~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector6~2|datac"
    Warning (332126): Node "datapath|ALU|Add0~102|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~9|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~9|combout"
    Warning (332126): Node "datapath|ALU|Selector21~0|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~33|datac"
    Warning (332126): Node "datapath|ALU|Selector17~0|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~12|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~25|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~17|datad"
    Warning (332126): Node "datapath|ALU|Selector15~7|datac"
    Warning (332126): Node "datapath|ALU|Selector11~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~24|datae"
    Warning (332126): Node "datapath|ALU|Add0~50|dataf"
    Warning (332126): Node "datapath|ALU|Add0~50|sumout"
    Warning (332126): Node "datapath|ALU|Selector20~4|datae"
    Warning (332126): Node "datapath|ALU|Add0~50|cout"
    Warning (332126): Node "datapath|ALU|Add0~54|cin"
    Warning (332126): Node "datapath|ALU|Add0~54|sumout"
    Warning (332126): Node "datapath|ALU|Selector19~4|datac"
    Warning (332126): Node "datapath|ALU|Add0~54|cout"
    Warning (332126): Node "datapath|ALU|Add0~58|cin"
    Warning (332126): Node "datapath|ALU|ShiftRight0~22|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~20|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~20|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~30|datab"
    Warning (332126): Node "datapath|ALU|Selector8~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~21|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~21|combout"
    Warning (332126): Node "datapath|ALU|Selector4~5|datac"
    Warning (332126): Node "datapath|ALU|Selector20~3|datac"
    Warning (332126): Node "datapath|ALU|Selector20~3|combout"
    Warning (332126): Node "datapath|ALU|Selector20~4|datac"
    Warning (332126): Node "datapath|ALU|Selector12~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~27|dataf"
    Warning (332126): Node "datapath|ALU|Selector20~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector20~2|combout"
    Warning (332126): Node "datapath|ALU|Selector20~3|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~25|dataf"
    Warning (332126): Node "datapath|ALU|Selector16~1|dataa"
    Warning (332126): Node "datapath|ALU|Selector24~0|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~7|datae"
    Warning (332126): Node "datapath|ALU|Add0~70|datad"
    Warning (332126): Node "datapath|ALU|Selector15~4|dataf"
    Warning (332126): Node "datapath|ALU|Selector15~4|combout"
    Warning (332126): Node "datapath|ALU|Selector15~6|datad"
    Warning (332126): Node "datapath|ALU|Selector15~6|combout"
    Warning (332126): Node "datapath|ALU|Selector15~8|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~34|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~33|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~31|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~31|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~32|datad"
    Warning (332126): Node "datapath|ALU|Selector11~1|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~14|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~14|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~49|datab"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~49|combout"
    Warning (332126): Node "datapath|ALU|Selector23~6|datac"
    Warning (332126): Node "datapath|ALU|Selector23~6|combout"
    Warning (332126): Node "datapath|alumux1_out[8]~54|datad"
    Warning (332126): Node "datapath|ALU|Selector7~0|datad"
    Warning (332126): Node "datapath|ALU|Selector7~0|combout"
    Warning (332126): Node "datapath|ALU|Selector7~3|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~15|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~15|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~26|datad"
    Warning (332126): Node "datapath|ALU|Selector10~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~16|dataf"
    Warning (332126): Node "datapath|ALU|Selector14~1|dataf"
    Warning (332126): Node "datapath|ALU|Add0~30|datad"
    Warning (332126): Node "datapath|ALU|Add0~30|cout"
    Warning (332126): Node "datapath|ALU|Add0~34|cin"
    Warning (332126): Node "datapath|ALU|Add0~34|sumout"
    Warning (332126): Node "datapath|ALU|Selector24~7|datad"
    Warning (332126): Node "datapath|ALU|Selector24~7|combout"
    Warning (332126): Node "datapath|alumux1_out[7]~53|datac"
    Warning (332126): Node "datapath|ALU|Add0~34|cout"
    Warning (332126): Node "datapath|ALU|Add0~38|cin"
    Warning (332126): Node "datapath|ALU|Add0~38|sumout"
    Warning (332126): Node "datapath|ALU|Selector23~6|datad"
    Warning (332126): Node "datapath|ALU|Add0~38|cout"
    Warning (332126): Node "datapath|ALU|Add0~42|cin"
    Warning (332126): Node "datapath|ALU|Add0~42|sumout"
    Warning (332126): Node "datapath|ALU|Selector22~6|datad"
    Warning (332126): Node "datapath|ALU|Add0~42|cout"
    Warning (332126): Node "datapath|ALU|Add0~46|cin"
    Warning (332126): Node "datapath|ALU|Add0~46|sumout"
    Warning (332126): Node "datapath|ALU|Selector21~4|datad"
    Warning (332126): Node "datapath|ALU|Add0~46|cout"
    Warning (332126): Node "datapath|ALU|Add0~50|cin"
    Warning (332126): Node "datapath|ALU|Add0~30|sumout"
    Warning (332126): Node "datapath|ALU|Selector25~7|dataf"
    Warning (332126): Node "datapath|ALU|Selector25~7|combout"
    Warning (332126): Node "datapath|alumux1_out[6]~52|datac"
    Warning (332126): Node "datapath|ALU|Selector25~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector25~3|combout"
    Warning (332126): Node "datapath|ALU|Selector25~7|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~11|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~11|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~48|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~48|combout"
    Warning (332126): Node "datapath|ALU|Selector25~7|datae"
    Warning (332126): Node "datapath|ALU|Selector9~0|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~28|datae"
    Warning (332126): Node "datapath|ALU|Selector13~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~19|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~19|combout"
    Warning (332126): Node "datapath|ALU|Selector5~1|datae"
    Warning (332126): Node "datapath|ALU|Selector21~3|datac"
    Warning (332126): Node "datapath|ALU|Selector21~3|combout"
    Warning (332126): Node "datapath|ALU|Selector21~4|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~28|datae"
    Warning (332126): Node "datapath|ALU|Add0~34|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~13|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~18|datab"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~18|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~19|datac"
    Warning (332126): Node "datapath|ALU|Selector9~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~28|datad"
    Warning (332126): Node "datapath|ALU|Selector13~1|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~15|datac"
    Warning (332126): Node "datapath|ALU|Selector24~3|datad"
    Warning (332126): Node "datapath|ALU|Selector24~3|combout"
    Warning (332126): Node "datapath|ALU|Selector24~7|dataf"
    Warning (332126): Node "datapath|ALU|Selector28~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~13|datad"
    Warning (332126): Node "datapath|ALU|Selector23~2|datae"
    Warning (332126): Node "datapath|ALU|Selector23~2|combout"
    Warning (332126): Node "datapath|ALU|Selector23~6|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~18|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~20|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~15|datae"
    Warning (332126): Node "datapath|ALU|Add0~38|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~13|dataf"
    Warning (332126): Node "datapath|ALU|Selector31~6|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~6|datac"
    Warning (332126): Node "datapath|ALU|Selector21~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector21~2|combout"
    Warning (332126): Node "datapath|ALU|Selector21~3|dataa"
    Warning (332126): Node "datapath|ALU|ShiftRight0~14|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~22|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~25|datac"
    Warning (332126): Node "datapath|ALU|Add0~46|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~18|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~20|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~21|dataf"
    Warning (332126): Node "datapath|ALU|Selector25~0|datad"
    Warning (332126): Node "datapath|ALU|Selector19~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector19~2|combout"
    Warning (332126): Node "datapath|ALU|Selector19~4|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~25|datae"
    Warning (332126): Node "datapath|ALU|Add0~54|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~22|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~30|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~29|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~27|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~22|datae"
    Warning (332126): Node "datapath|ALU|Selector23~0|datab"
    Warning (332126): Node "datapath|ALU|ShiftRight0~7|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~29|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~33|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~31|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~32|datae"
    Warning (332126): Node "datapath|ALU|Selector16~0|datac"
    Warning (332126): Node "datapath|ALU|Selector16~0|combout"
    Warning (332126): Node "datapath|ALU|Selector16~3|datae"
    Warning (332126): Node "datapath|ALU|Add0~66|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~23|dataf"
    Warning (332126): Node "datapath|ALU|Selector0~4|datag"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~21|datac"
    Warning (332126): Node "datapath|ALU|Selector24~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector24~2|combout"
    Warning (332126): Node "datapath|ALU|Selector24~7|datae"
    Warning (332126): Node "datapath|ALU|Selector12~1|datad"
    Warning (332126): Node "datapath|ALU|Selector8~0|datad"
    Warning (332126): Node "datapath|ALU|Selector8~0|combout"
    Warning (332126): Node "datapath|ALU|Selector8~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector28~0|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~11|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~28|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9DUPLICATE|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9DUPLICATE|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~26|datac"
    Warning (332126): Node "datapath|ALU|Selector14~1|datae"
    Warning (332126): Node "datapath|ALU|Selector10~0|datac"
    Warning (332126): Node "datapath|ALU|Selector10~0|combout"
    Warning (332126): Node "datapath|ALU|Selector10~3DUPLICATE|datae"
    Warning (332126): Node "datapath|ALU|Add0~22|datad"
    Warning (332126): Node "datapath|ALU|Add0~22|cout"
    Warning (332126): Node "datapath|ALU|Add0~26|cin"
    Warning (332126): Node "datapath|ALU|Add0~26|cout"
    Warning (332126): Node "datapath|ALU|Add0~30|cin"
    Warning (332126): Node "datapath|ALU|Add0~26|sumout"
    Warning (332126): Node "datapath|ALU|Selector26~7|dataf"
    Warning (332126): Node "datapath|ALU|Selector27~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector27~2|combout"
    Warning (332126): Node "datapath|ALU|Selector27~6|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~6|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~6|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~14|datac"
    Warning (332126): Node "datapath|ALU|Selector15~7|dataa"
    Warning (332126): Node "datapath|ALU|Selector11~0|datad"
    Warning (332126): Node "datapath|ALU|Selector11~0|combout"
    Warning (332126): Node "datapath|ALU|Selector11~2|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~44|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~44|combout"
    Warning (332126): Node "datapath|ALU|Selector27~6|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~24|dataf"
    Warning (332126): Node "datapath|ALU|Add0~18|sumout"
    Warning (332126): Node "datapath|ALU|Selector28~9|datac"
    Warning (332126): Node "datapath|ALU|Selector28~9|combout"
    Warning (332126): Node "datapath|alumux1_out[3]~49|dataa"
    Warning (332126): Node "datapath|ALU|Selector28~0|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9DUPLICATE|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~6|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~11|dataf"
    Warning (332126): Node "datapath|ALU|Selector28~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector28~3|combout"
    Warning (332126): Node "datapath|ALU|Selector28~9|datag"
    Warning (332126): Node "datapath|ALU|Selector12~2|datab"
    Warning (332126): Node "datapath|ALU|Selector16~1|datad"
    Warning (332126): Node "datapath|ALU|Selector24~0|datae"
    Warning (332126): Node "datapath|ALU|Selector20~0|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~37|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~36|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~0|datad"
    Warning (332126): Node "datapath|ALU|Add0~86|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~35|datac"
    Warning (332126): Node "datapath|ALU|Selector11~6|dataf"
    Warning (332126): Node "datapath|ALU|Selector11~6|combout"
    Warning (332126): Node "datapath|ALU|Selector11~0|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~8|dataf"
    Warning (332126): Node "datapath|ALU|Selector27~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector23~0|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~40|datad"
    Warning (332126): Node "datapath|ALU|Selector19~0|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~39|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~41|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~40|datac"
    Warning (332126): Node "datapath|ALU|Add0~98|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~9|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~17|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector24~1|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~20|datad"
    Warning (332126): Node "datapath|ALU|Selector16~1|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~39|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~39|combout"
    Warning (332126): Node "datapath|ALU|Selector20~1|dataf"
    Warning (332126): Node "datapath|ALU|Selector4~7|datag"
    Warning (332126): Node "datapath|ALU|Selector3~1|datae"
    Warning (332126): Node "datapath|ALU|Selector3~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector3~0|combout"
    Warning (332126): Node "datapath|ALU|Selector3~4|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~10|datae"
    Warning (332126): Node "datapath|ALU|Selector2~1|datae"
    Warning (332126): Node "datapath|ALU|Selector1~2|datad"
    Warning (332126): Node "datapath|ALU|Add0~118|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~24|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~40|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~35|datac"
    Warning (332126): Node "datapath|ALU|Selector19~1|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~27|dataf"
    Warning (332126): Node "datapath|ALU|Selector1~0|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~19|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~19|combout"
    Warning (332126): Node "datapath|ALU|Selector0~3|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~39|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~34|dataf"
    Warning (332126): Node "datapath|ALU|Selector16~2|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~20|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~3|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~11|dataf"
    Warning (332126): Node "datapath|ALU|Selector4~6|datae"
    Warning (332126): Node "datapath|ALU|Selector3~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~41|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~40|dataf"
    Warning (332126): Node "datapath|ALU|Selector6~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector6~0|combout"
    Warning (332126): Node "datapath|ALU|Selector6~1|datae"
    Warning (332126): Node "datapath|ALU|Add0~106|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~9|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~25|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~17|datae"
    Warning (332126): Node "datapath|ALU|ShiftRight0~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector29~0|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~5|datac"
    Warning (332126): Node "datapath|ALU|Selector26~3|datac"
    Warning (332126): Node "datapath|ALU|Selector26~3|combout"
    Warning (332126): Node "datapath|ALU|Selector26~7|datad"
    Warning (332126): Node "datapath|ALU|Selector28~0|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~11|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~28|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~13|datad"
    Warning (332126): Node "datapath|ALU|Add0~26|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9DUPLICATE|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~12|dataf"
    Warning (332126): Node "datapath|ALU|Selector10~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector18~2|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~4|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~38|dataf"
    Warning (332126): Node "datapath|ALU|Selector9~6|dataf"
    Warning (332126): Node "datapath|ALU|Selector9~6|combout"
    Warning (332126): Node "datapath|ALU|Selector9~0|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~39|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~37|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~40|datae"
    Warning (332126): Node "datapath|ALU|Add0~94|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~9|datab"
    Warning (332126): Node "datapath|ALU|ShiftRight0~16|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~26|dataf"
    Warning (332126): Node "datapath|ALU|Selector5~1|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~28|datac"
    Warning (332126): Node "datapath|ALU|Selector21~3|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~48|datac"
    Warning (332126): Node "datapath|ALU|Selector13~0|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9DUPLICATE|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~6|datae"
    Warning (332126): Node "datapath|ALU|Add0~14|datad"
    Warning (332126): Node "datapath|ALU|Add0~14|sumout"
    Warning (332126): Node "datapath|ALU|Selector29~5|dataf"
    Warning (332126): Node "datapath|ALU|Add0~14|cout"
    Warning (332126): Node "datapath|ALU|Add0~18|cin"
    Warning (332126): Node "datapath|ALU|Selector29~3|datac"
    Warning (332126): Node "datapath|ALU|Selector29~3|combout"
    Warning (332126): Node "datapath|ALU|Selector29~4|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~9|dataf"
    Warning (332126): Node "datapath|ALU|Selector21~0|datac"
    Warning (332126): Node "datapath|ALU|Selector17~0|datad"
    Warning (332126): Node "datapath|ALU|Selector25~0|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~23|datad"
    Warning (332126): Node "datapath|ALU|Selector14~4|dataf"
    Warning (332126): Node "datapath|ALU|Selector14~4|combout"
    Warning (332126): Node "datapath|ALU|Selector14~3DUPLICATE|datac"
    Warning (332126): Node "datapath|ALU|Add0~74|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~32|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~31|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~34|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~33|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~35|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector30~2|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~32|datad"
    Warning (332126): Node "datapath|ALU|Selector18~2|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~37|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~42|datab"
    Warning (332126): Node "datapath|ALU|Selector4~4|datae"
    Warning (332126): Node "datapath|ALU|Selector4~4|combout"
    Warning (332126): Node "datapath|ALU|Selector4~5|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~18|datad"
    Warning (332126): Node "datapath|ALU|Selector3~1|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~10|datac"
    Warning (332126): Node "datapath|ALU|Selector2~1|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~25|datac"
    Warning (332126): Node "datapath|ALU|Selector1~2|datac"
    Warning (332126): Node "datapath|ALU|Add0~114|dataf"
    Warning (332126): Node "datapath|ALU|Selector28~9|dataf"
    Warning (332126): Node "datapath|ALU|Selector24~2|datae"
    Warning (332126): Node "datapath|ALU|Selector12~4|datad"
    Warning (332126): Node "datapath|ALU|Selector20~3|dataf"
    Warning (332126): Node "datapath|ALU|Selector8~0|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~30|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~43|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~43|combout"
    Warning (332126): Node "datapath|ALU|Selector30~7|datae"
    Warning (332126): Node "datapath|ALU|Selector30~7|combout"
    Warning (332126): Node "datapath|alumux1_out[1]~47|datac"
    Warning (332126): Node "datapath|ALU|Selector30~3|datae"
    Warning (332126): Node "datapath|ALU|Selector30~3|combout"
    Warning (332126): Node "datapath|ALU|Selector30~7|datac"
    Warning (332126): Node "datapath|ALU|Selector30~0|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~45|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~45|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~47|datad"
    Warning (332126): Node "datapath|ALU|Selector14~0|datae"
    Warning (332126): Node "datapath|ALU|Selector14~0|combout"
    Warning (332126): Node "datapath|ALU|Selector14~3DUPLICATE|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~2|dataa"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~8|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~8|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~26|datae"
    Warning (332126): Node "datapath|ALU|Selector6~1|datac"
    Warning (332126): Node "datapath|ALU|Selector10~0|datad"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~6|dataf"
    Warning (332126): Node "datapath|ALU|Add0~10|datad"
    Warning (332126): Node "datapath|ALU|Add0~10|cout"
    Warning (332126): Node "datapath|ALU|Add0~14|cin"
    Warning (332126): Node "datapath|ALU|Add0~10|sumout"
    Warning (332126): Node "datapath|ALU|Selector30~7|dataf"
    Warning (332126): Node "datapath|ALU|Selector26~0|datac"
    Warning (332126): Node "datapath|ALU|ShiftRight0~21|datad"
    Warning (332126): Node "datapath|ALU|ShiftRight0~13|dataf"
    Warning (332126): Node "datapath|ALU|Selector22~2|dataf"
    Warning (332126): Node "datapath|ALU|Selector22~2|combout"
    Warning (332126): Node "datapath|ALU|Selector22~6|datae"
    Warning (332126): Node "datapath|ALU|Add0~42|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~18|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~20|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~15|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~22|dataf"
    Warning (332126): Node "datapath|ALU|ShiftRight0~29|dataf"
    Warning (332126): Node "datapath|ALU|Selector29~4|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~43|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~48|dataf"
    Warning (332126): Node "datapath|ALU|Selector7~0|datac"
    Warning (332126): Node "datapath|ALU|Selector15~6|dataf"
    Warning (332126): Node "datapath|ALU|Selector13~0|dataf"
    Warning (332126): Node "datapath|ALU|Selector14~0|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~44|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~5|dataf"
    Warning (332126): Node "datapath|pcmux_out[0]~0|datad"
    Warning (332126): Node "datapath|pcmux_out[0]~0|combout"
    Warning (332126): Node "datapath|ALU|Add0~6|datad"
    Warning (332126): Node "datapath|ALU|Add0~6|sumout"
    Warning (332126): Node "datapath|ALU|Selector31~4|datab"
    Warning (332126): Node "datapath|ALU|Add0~6|cout"
    Warning (332126): Node "datapath|ALU|Add0~10|cin"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~49|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~8|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~17|dataf"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~46|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~46|combout"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~47|datac"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~23|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~23|combout"
    Warning (332126): Node "datapath|ALU|Selector31~4|datae"
    Warning (332126): Node "datapath|ALU|ShiftLeft0~24|datac"
    Warning (332126): Node "datapath|ALU|Selector11~0|datac"
Critical Warning (332081): Design contains combinational loop of 1143 nodes. Estimating the delays through the loop.
Info (332152): The following assignments are ignored by the derive_clock_uncertainty command
Info: Found TIMING_ANALYZER_REPORT_SCRIPT_INCLUDE_DEFAULT_ANALYSIS = ON
Info: Analyzing Slow 900mV 85C Model
Critical Warning (332148): Timing requirements not met
    Info (11105): For recommendations on closing timing, run Report Timing Closure Recommendations in the Timing Analyzer.
Info (332146): Worst-case setup slack is -6.161
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):    -6.161           -1589.859 clk 
Info (332146): Worst-case hold slack is 0.278
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     0.278               0.000 clk 
Info (332140): No Recovery paths to report
Info (332140): No Removal paths to report
Info (332146): Worst-case minimum pulse width slack is 4.071
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     4.071               0.000 clk 
Info: Analyzing Slow 900mV 0C Model
Info (334003): Started post-fitting delay annotation
Info (334004): Delay annotation completed successfully
Info (332152): The following assignments are ignored by the derive_clock_uncertainty command
Critical Warning (332148): Timing requirements not met
    Info (11105): For recommendations on closing timing, run Report Timing Closure Recommendations in the Timing Analyzer.
Info (332146): Worst-case setup slack is -5.355
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):    -5.355           -1102.372 clk 
Info (332146): Worst-case hold slack is 0.274
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     0.274               0.000 clk 
Info (332140): No Recovery paths to report
Info (332140): No Removal paths to report
Info (332146): Worst-case minimum pulse width slack is 4.083
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     4.083               0.000 clk 
Info: Analyzing Fast 900mV 0C Model
Info (332152): The following assignments are ignored by the derive_clock_uncertainty command
Info (332146): Worst-case setup slack is 1.105
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     1.105               0.000 clk 
Info (332146): Worst-case hold slack is 0.102
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     0.102               0.000 clk 
Info (332140): No Recovery paths to report
Info (332140): No Removal paths to report
Info (332146): Worst-case minimum pulse width slack is 3.834
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     3.834               0.000 clk 
Info (21077): Low junction temperature is 0 degrees C
Info (21077): High junction temperature is 85 degrees C
Info (332152): The following assignments are ignored by the derive_clock_uncertainty command
Info (332101): Design is fully constrained for setup requirements
Info (332101): Design is fully constrained for hold requirements
Info (144001): Generated suppressed messages file /job/student/output_files/mp2.sta.smsg
Info: Quartus Prime Timing Analyzer was successful. 0 errors, 1147 warnings
    Info: Peak virtual memory: 1126 megabytes
    Info: Processing ended: Mon Sep 14 21:45:38 2020
    Info: Elapsed time: 00:00:07
    Info: Total CPU time (on all processors): 00:00:08


+-------------------------------------+
; Timing Analyzer Suppressed Messages ;
+-------------------------------------+
The suppressed messages can be found in /job/student/output_files/mp2.sta.smsg.



```

</details>


---
Staff use: 5f5fda59e894e90ee2d6d297

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
