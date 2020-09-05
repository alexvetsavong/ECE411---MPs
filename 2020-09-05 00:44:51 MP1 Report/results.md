# AG Report Generated 2020-09-05 00:44
This is a report about mp1 generated for avetsa2 at 2020-09-05 00:44. The autograder used commit ``b0a9adb3eaae`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### cam Results:
 - Compilation: No


### cam Results - 
<ul>
</ul>

### multiplier Results:
 - Compilation: No


### multiplier Results - 
<ul>
</ul>

### fifo Results:
 - Compilation: No


### fifo Results - 
<ul>
</ul>

### cacheline_adaptor Results:
 - Compilation: No

### cacheline_adaptor Compilation - ![Failure][failure]
You did not succesfully compile. Your report is below.
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
# Start time: 05:44:49 on Sep 05,2020
# vlog -sv -work work ./hdl/cacheline_adaptor.sv 
# ** Error: (vlog-7) Failed to open design unit file "./hdl/cacheline_adaptor.sv" in read mode.
# No such file or directory. (errno = ENOENT)
# End time: 05:44:50 on Sep 05,2020, Elapsed time: 0:00:01
# Errors: 1, Warnings: 0
# ** Error: /opt/altera/modelsim_ase/linuxaloem/vlog failed.
# Error in macro /job/student/cacheline_adaptor/staff_files/staff_run.do line 8
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
#     while executing
# "vlog -sv -work work  {./hdl/cacheline_adaptor.sv}"
ModelSim> exit -code 25
```

</details>
---
Staff use: 5f531b51e894e90ee2d6c695


[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
