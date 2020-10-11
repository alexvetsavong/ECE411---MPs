# AG Report Generated 2020-10-11 12:23
This is a report about mp3compile generated for avetsa2 at 2020-10-11 12:23. The autograder used commit ``304dbd254629`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
### Compilation ![Failure][failure]
You did not succesfully compile. Your report is below.
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
    Info: Processing started: Sun Oct 11 17:22:49 2020
Info: Command: quartus_map mp3 -c mp3
Info (20029): Only one processor detected - disabling parallel compilation
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/bus_adapter.sv
    Info (12023): Found entity 1: bus_adapter File: /job/student/hdl/cache/bus_adapter.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/alu.sv
    Info (12023): Found entity 1: alu File: /job/student/hdl/cpu/alu.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/ir.sv
    Info (12023): Found entity 1: ir File: /job/student/hdl/cpu/ir.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/pc_reg.sv
    Info (12023): Found entity 1: pc_register File: /job/student/hdl/cpu/pc_reg.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/regfile.sv
    Info (12023): Found entity 1: regfile File: /job/student/hdl/cpu/regfile.sv Line: 2
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/register.sv
    Info (12023): Found entity 1: register File: /job/student/hdl/cpu/register.sv Line: 1
Info (12021): Found 5 design units, including 0 entities, in source file hdl/rv32i_mux_types.sv
    Info (12022): Found design unit 1: pcmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 4
    Info (12022): Found design unit 2: marmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 12
    Info (12022): Found design unit 3: cmpmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 19
    Info (12022): Found design unit 4: alumux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 26
    Info (12022): Found design unit 5: regfilemux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 42
Info (12021): Found 1 design units, including 0 entities, in source file hdl/rv32i_types.sv
    Info (12022): Found design unit 1: rv32i_types (SystemVerilog) File: /job/student/hdl/rv32i_types.sv Line: 5
Error (12007): Top-level design entity "mp3" is undefined
Info (144001): Generated suppressed messages file /job/student/output_files/mp3.map.smsg
Error: Quartus Prime Analysis & Synthesis was unsuccessful. 1 error, 0 warnings
    Error: Peak virtual memory: 987 megabytes
    Error: Processing ended: Sun Oct 11 17:23:05 2020
    Error: Elapsed time: 00:00:16
    Error: Total CPU time (on all processors): 00:00:15

```

</details>


### Targeted Tests: 
<ul>
</ul>

---
Staff use: 5f833b3e992def9c51c6f094

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
