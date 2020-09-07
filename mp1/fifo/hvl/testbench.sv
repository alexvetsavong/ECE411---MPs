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
int ctr;

task enqueue();
    itf.data_i <= data;
    @(posedge tb_clk)
    itf.valid_i <= itf.rdy;
    ctr++;
endtask : enqueue

task dequeue();
    @(posedge tb_clk)
    itf.yumi <= itf.valid_o;
    ctr--;
endtask: dequeue

task both();
    @(posedge tb_clk)
    itf.data_i <= data;
    itf.valid_i <= itf.rdy;
    itf.yumi <= itf.valid_o;
endtask : both

initial begin
    reset();
    /************************ Your Code Here ***********************/
    // Feel free to make helper tasks / functions, initial / always blocks, etc.
    
    //enqueue test covers
    for(int i = 0; i < cap_p; i++) begin
        data <= i;
        @(tb_clk);
        enqueue();
    end

    //dequeue test covers
    for(int i = ctr; i > 0; i--) begin
        dequeue();
    end

    // simultaneous tests
    for(int i = 0; i < cap_p; i++) begin 
        for(int j = (i+1); j > 0; j--) begin
            data <= j + (i*(i+1));
            enqueue();
            $display("enqueued i = %d", i);
        end
        both();
    end

    /***************************************************************/
    // Make sure your test bench exits by calling itf.finish();
    itf.finish();
    $error("TB: Illegal Exit ocurred");
end

endmodule : testbench
`endif

