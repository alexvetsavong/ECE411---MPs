# AG Report Generated 2020-09-21 02:06
This is a report about mp2 generated for avetsa2 at 2020-09-21 02:06. The autograder used commit ``bd84daeb35a3`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
 - Targeted: 0/43 (0.0%)
 - Longer: NO
 - Timing: NO
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
    Info: Processing started: Mon Sep 21 07:05:52 2020
Info: Command: quartus_map mp2 -c mp2
Info (20030): Parallel compilation is enabled and will use 2 of the 2 processors detected
Info (12021): Found 1 design units, including 1 entities, in source file hdl/control.sv
    Info (12023): Found entity 1: control File: /job/student/hdl/control.sv Line: 3
Info (12021): Found 2 design units, including 2 entities, in source file hdl/datapath.sv
    Info (12023): Found entity 1: datapath File: /job/student/hdl/datapath.sv Line: 5
    Info (12023): Found entity 2: cmp_module File: /job/student/hdl/datapath.sv Line: 248
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
Info (12128): Elaborating entity "control" for hierarchy "control:control" File: /job/student/hdl/mp2.sv Line: 49
Warning (10036): Verilog HDL or VHDL warning at control.sv(41): object "trap" assigned a value but never read File: /job/student/hdl/control.sv Line: 41
Warning (10036): Verilog HDL or VHDL warning at control.sv(42): object "rs1_addr" assigned a value but never read File: /job/student/hdl/control.sv Line: 42
Warning (10036): Verilog HDL or VHDL warning at control.sv(42): object "rs2_addr" assigned a value but never read File: /job/student/hdl/control.sv Line: 42
Warning (10036): Verilog HDL or VHDL warning at control.sv(43): object "rmask" assigned a value but never read File: /job/student/hdl/control.sv Line: 43
Warning (10036): Verilog HDL or VHDL warning at control.sv(43): object "wmask" assigned a value but never read File: /job/student/hdl/control.sv Line: 43
Warning (10270): Verilog HDL Case Statement warning at control.sv(219): incomplete case statement has no default case item File: /job/student/hdl/control.sv Line: 219
Warning (10270): Verilog HDL Case Statement warning at control.sv(322): incomplete case statement has no default case item File: /job/student/hdl/control.sv Line: 322
Info (12128): Elaborating entity "datapath" for hierarchy "datapath:datapath" File: /job/student/hdl/mp2.sv Line: 52
Warning (10240): Verilog HDL Always Construct warning at datapath.sv(131): inferring latch(es) for variable "mem_wdata", which holds its previous value in one or more paths through the always construct File: /job/student/hdl/datapath.sv Line: 131
Error (10166): SystemVerilog RTL Coding error at datapath.sv(131): always_comb construct does not infer purely combinational logic. File: /job/student/hdl/datapath.sv Line: 131
Warning (10270): Verilog HDL Case Statement warning at datapath.sv(217): incomplete case statement has no default case item File: /job/student/hdl/datapath.sv Line: 217
Warning (10270): Verilog HDL Case Statement warning at datapath.sv(222): incomplete case statement has no default case item File: /job/student/hdl/datapath.sv Line: 222
Warning (10240): Verilog HDL Always Construct warning at datapath.sv(164): inferring latch(es) for variable "regfilemux_out", which holds its previous value in one or more paths through the always construct File: /job/student/hdl/datapath.sv Line: 164
Error (10166): SystemVerilog RTL Coding error at datapath.sv(164): always_comb construct does not infer purely combinational logic. File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[0]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[1]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[2]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[3]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[4]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[5]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[6]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[7]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[8]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[9]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[10]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[11]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[12]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[13]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[14]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[15]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[16]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[17]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[18]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[19]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[20]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[21]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[22]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[23]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[24]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[25]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[26]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[27]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[28]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[29]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[30]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "regfilemux_out[31]" at datapath.sv(164) File: /job/student/hdl/datapath.sv Line: 164
Info (10041): Inferred latch for "mem_wdata[0]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[1]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[2]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[3]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[4]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[5]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[6]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[7]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[8]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[9]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[10]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[11]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[12]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[13]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[14]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[15]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[16]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[17]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[18]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[19]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[20]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[21]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[22]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[23]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[24]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[25]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[26]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[27]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[28]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[29]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[30]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Info (10041): Inferred latch for "mem_wdata[31]" at datapath.sv(131) File: /job/student/hdl/datapath.sv Line: 131
Error (12152): Can't elaborate user hierarchy "datapath:datapath" File: /job/student/hdl/mp2.sv Line: 52
Info (144001): Generated suppressed messages file /job/student/output_files/mp2.map.smsg
Error: Quartus Prime Analysis & Synthesis was unsuccessful. 3 errors, 11 warnings
    Error: Peak virtual memory: 987 megabytes
    Error: Processing ended: Mon Sep 21 07:06:04 2020
    Error: Elapsed time: 00:00:12
    Error: Total CPU time (on all processors): 00:00:19

```

</details>


### Targeted Tests: 
<ul>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>Hidden test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>add</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>and</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>beq</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>bge</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>bgeu</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>blt</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>bltu</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>bne</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cp1_longer</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>jal</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lb_signed</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lb_unsigned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lh_signed</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lh_unsigned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lw_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>or</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>ori</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sb</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sh</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sll</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>slli</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>slti</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sltiu</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srai</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srai_neg</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srl</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srli</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srli_neg</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sw_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>xor</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>xori</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
</ul>

### Longer ![Failure][failure]
You failed to pass the longer testcase.

### Timing ![Failure][failure]
You failed to pass timing.Failed to generate report file

---
Staff use: 5f68347ee894e90ee2d6db77

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
