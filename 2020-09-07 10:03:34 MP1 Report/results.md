# AG Report Generated 2020-09-07 10:03
This is a report about mp1 generated for avetsa2 at 2020-09-07 10:03. The autograder used commit ``f4ddded0f61c`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### fifo Results:
 - Compilation: Yes
 - Coverages: Passed 0 of 767
 - Errors: 0 reporting errors


### fifo Results - 
<ul>
<li><b>both covers:</b> Passed 0 of 255</li>
<li><b>enqueue covers:</b> Passed 0 of 256</li>
<li><b>dequeue covers:</b> Passed 0 of 256</li>
<li><b>False Negative Reset Errors:</b> 0</li>
<li><b>False Negative Data Errors:</b> 0</li>
<li><b>False Positive Data Errors:</b> 0</li>
<li><b>False Positive Reset Errors:</b> 0</li>
</ul>

### multiplier Results:
 - Compilation: Yes
 - Coverages: Passed 65536 of 65540
 - Errors: 0 reporting errors


### multiplier Results - 
<ul>
<li><b>start in ADD cover:</b> Passed 0 of 1</li>
<li><b>start in SHIFT cover:</b> Passed 0 of 1</li>
<li><b>reset in SHIFT cover:</b> Passed 0 of 1</li>
<li><b>multiply operand covers:</b> Passed 65536 of 65536</li>
<li><b>reset in ADD cover:</b> Passed 0 of 1</li>
<li><b>False Negative NOT_READY Errors:</b> 0</li>
<li><b>False Positive NOT_READY Errors:</b> 0</li>
<li><b>False Positive BAD_PRODUCT Errors:</b> 0</li>
<li><b>False Negative BAD_PRODUCT Errors:</b> 0</li>
</ul>

### cam Results:
 - Compilation: Yes
 - Coverages: Passed 0 of 18
 - Errors: 0 reporting errors


### cam Results - 
<ul>
<li><b>evict covers:</b> Passed 0 of 8</li>
<li><b>Write-Write to same Key in Consecutive Cycles Cover:</b> Passed 0 of 1</li>
<li><b>hits covers:</b> Passed 0 of 8</li>
<li><b>Write-Read to same Key in Consecutive Cycles Cover:</b> Passed 0 of 1</li>
<li><b>False Negative Read Errors:</b> 0</li>
<li><b>False Positive Read Errors:</b> 0</li>
</ul>

### cacheline_adaptor Results:
 - Compilation: Yes
 - Errors Reported: Yes --- You have more work to do!

### cacheline_adaptor Compilation - ![Success][success]
You succesfully compiled. Your report is below.
<details>
<summary>Compilation Report</summary>

```
Reading pref.tcl

# 10.5b

# do /job/student/cacheline_adaptor/staff_files/staff_run.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Modifying /opt/altera/modelsim_ase/linuxaloem/../modelsim.ini
# 
# vlog -sv -work work  {./hdl/cacheline_adaptor.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 15:03:31 on Sep 07,2020
# vlog -sv -work work ./hdl/cacheline_adaptor.sv 
# -- Compiling module cacheline_adaptor
# 
# Top level modules:
# 	cacheline_adaptor
# End time: 15:03:31 on Sep 07,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# vlog -sv -work work  {./hvl/testbench.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 15:03:31 on Sep 07,2020
# vlog -sv -work work ./hvl/testbench.sv 
# -- Compiling module cacheline_adaptor
# -- Compiling module testbench
# 
# Top level modules:
# 	testbench
# End time: 15:03:31 on Sep 07,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixv_ver -L stratixv_hssi_ver -L stratixv_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixv_ver -L stratixv_hssi_ver -L stratixv_pcie_hip_ver -L rtl_work -L work -voptargs=""+acc"" testbench 
# Start time: 15:03:31 on Sep 07,2020
# Loading sv_std.std
# Loading work.testbench
# Loading work.cacheline_adaptor
# 
# run -all
# Starting Read Tests
# ** Error: @499995 TB: timeout
#    Time: 499995 ps  Scope: testbench.timeout File: ./hvl/testbench.sv Line: 198
# ** Note: $finish    : ./hvl/testbench.sv(199)
#    Time: 499995 ps  Iteration: 2  Instance: /testbench
# End time: 15:03:31 on Sep 07,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0
```

</details>
---
Staff use: 5f5643f5e894e90ee2d6c98b


[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
