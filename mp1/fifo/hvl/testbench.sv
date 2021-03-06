`ifndef testbench
`define testbench

import fifo_types::*;

module testbench(fifo_itf itf);

fifo_synch_1r1w dut (
    .clk_i     ( itf.clk     ),
    .reset_n_i ( itf.reset_n ),

    // valid-ready enqueue protocol
    .data_i    ( itf.data_i  ),
    .valid_i   ( itf.valid_i ),
    .ready_o   ( itf.rdy     ),

    // valid-yumi deqeueue protocol
    .valid_o   ( itf.valid_o ),
    .data_o    ( itf.data_o  ),
    .yumi_i    ( itf.yumi    )
);

// Clock Synchronizer for Student Use
default clocking tb_clk @(negedge itf.clk); endclocking

task reset();
    itf.reset_n <= 1'b0;
    ##(10);
    itf.reset_n <= 1'b1;
    ##(1);
endtask : reset

function automatic void report_error(error_e err); 
    itf.tb_report_dut_error(err);
endfunction : report_error

// DO NOT MODIFY CODE ABOVE THIS LINE

word_t data; 
int quesz;
word_t spec_q[$:(cap_p-1)] = {};

task enqueue();
    @(tb_clk);
    itf.data_i <= data;
    itf.valid_i <= itf.rdy;
    @(tb_clk);
    itf.valid_i <= 1'b0;
    quesz++;
endtask : enqueue

task dequeue();
    @(tb_clk);
    itf.yumi <= itf.valid_o;
    @(tb_clk);
    itf.yumi <= 1'b0;
    quesz--;
endtask: dequeue

task both();
    @(tb_clk);
    itf.data_i <= data;
    itf.yumi <= itf.valid_o;
    itf.valid_i <= itf.rdy;
    // ##1;
    // itf.valid_i <= 1'b0;
    // itf.yumi <= 1'b0;
endtask : both

initial begin
    reset();
    /************************ Your Code Here ***********************/
    // Feel free to make helper tasks / functions, initial / always blocks, etc.
    

    //enqueue test covers
    for(int i = 0; i < cap_p; i++) begin
        @(tb_clk);
        data <= i;
        enqueue();
        spec_q.push_back(data);
    end

    //dequeue test covers
    for(int i = quesz; i > 0; i--) begin
        $display("spec front: %d, dut front: %d", spec_q[0], itf.data_o);
        assert (itf.data_o == spec_q.pop_front())
        else begin
            $error("%0d: %0t: %s error detected", `__LINE__, $time, "Incorrect data on yumi_i");
            $report_error (INCORRECT_DATA_O_ON_YUMI_I);
        end
        dequeue();
    end

    // simultaneous tests
    for(int i = 0; i < cap_p; i++) begin 
        data <= 0;
        quesz <= 0;

        for(int j = (i+1); j > 0; j--) begin
            enqueue();
            data++;
        end

        if(quesz < cap_p && quesz > 1) begin
            both(); // cover for fifo's of size [1, cap_p - 1]
        end
    end

    @(tb_clk);
    reset();
    assert (itf.rdy == 1'b1)
    else begin
        $error ("%0d: %0t: %s error detected", `__LINE__, $time, "Reset does not cause ready_o");
        report_error (RESET_DOES_NOT_CAUSE_READY_O);
    end

    /***************************************************************/
    // Make sure your test bench exits by calling itf.finish();
    itf.finish();
    $error("TB: Illegal Exit ocurred");
end

endmodule : testbench
`endif

