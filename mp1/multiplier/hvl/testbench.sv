import mult_types::*;

`ifndef testbench
`define testbench
module testbench(multiplier_itf.testbench itf);

add_shift_multiplier dut (
    .clk_i          ( itf.clk          ),
    .reset_n_i      ( itf.reset_n      ),
    .multiplicand_i ( itf.multiplicand ),
    .multiplier_i   ( itf.multiplier   ),
    .start_i        ( itf.start        ),
    .ready_o        ( itf.rdy          ),
    .product_o      ( itf.product      ),
    .done_o         ( itf.done         )
);

assign itf.mult_op = dut.ms.op;
default clocking tb_clk @(negedge itf.clk); endclocking

// DO NOT MODIFY CODE ABOVE THIS LINE

/* Uncomment to "monitor" changes to adder operational state over time */
//initial $monitor("dut-op: time: %0t op: %s", $time, dut.ms.op.name);


// Resets the multiplier
task reset();
    itf.reset_n <= 1'b0;
    ##5;
    itf.reset_n <= 1'b1;
    ##1;
endtask : reset

task start();
    itf.start <= 1'b1;
    ##1;
    itf.start <= 1'b0;
    ##1;
endtask : start

// error_e defined in package mult_types in file ../include/types.sv
// Asynchronously reports error in DUT to grading harness
function void report_error(error_e error);
    itf.tb_report_dut_error(error);
endfunction : report_error

function result_t spec_output(int a, int b);
    return a*b;
endfunction : spec_output

initial itf.reset_n = 1'b0;
initial begin
    reset();
    /********************** Your Code Here *****************************/
    /* Assert start and check product for every possible operand */
    //generate stimuli
    for (int i = 0; i < 9'b100000000; i++) begin
        for (int j = 0; j < 9'b100000000; j++) begin
            // load operands into multiplier
            itf.multiplicand <= i;
            itf.multiplier <= j;
            ##1; // wait for values to get loaded

            // start multiplier
            start();

            // wait until done to check output product of dut
            @(tb_clk iff (itf.done == 1'b1)); // wait for dut to be in done state
            assert(itf.product == spec_output(i,j))
            else begin
              $error ("%0d: %0t: BAD_PRODUCT error detected", `__LINE__, $time);
              report_error(BAD_PRODUCT);
            end

            reset();

            assert(itf.rdy == 1'b1)
            else begin
                $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
                report_error(NOT_READY);
            end
        end
    end
    /************** End of operand checking section **************/

    /************ Begin asserting start in run states*************/
    // dummy operands for next two covers
        itf.multiplicand <= 255;
        itf.multiplier <= 25;
        ##1; 
        start();
        // assert that start only occurs when not in run state
        if(itf.mult_op == ADD) begin
            start();
            assert(itf.rdy == 1'b0)
            else begin
                $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
                report_error(NOT_READY);
            end
        end

        if(itf.mult_op == SHIFT) begin
            start();
            assert(itf.rdy == 1'b0) 
            else begin
                $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
                report_error(NOT_READY);
            end
        end
    /************ End asserting start in run states ************/

    /*********** Begin asserting reset in run states ***********/
    // assert that reset occurs in ADD state
    itf.multiplicand <= 255;
    itf.multiplier <= 25;
    ##1;
    start();
    if(itf.mult_op == ADD) begin
        reset();
        assert(itf.rdy == 1'b1) 
        else begin
            $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
            report_error(NOT_READY);
        end
    end

    @(tb_clk iff itf.rdy == 1'b1);

    // assert that reset occurs in SHIFT state
    start();
    if(itf.mult_op == SHIFT) begin 
        reset();
        assert(itf.rdy == 1'b1) 
        else begin
            $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
            report_error(NOT_READY);
        end
    end
    /************ End asserting reset in run states ************/

    /*******************************************************************/
    itf.finish(); // Use this finish task in order to let grading harness
                  // complete in process and/or scheduled operations
    $error("Improper Simulation Exit");
end
endmodule : testbench
`endif
