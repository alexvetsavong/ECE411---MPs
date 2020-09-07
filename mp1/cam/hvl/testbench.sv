import cam_types::*;

module testbench(cam_itf itf);

cam dut (
    .clk_i     ( itf.clk     ),
    .reset_n_i ( itf.reset_n ),
    .rw_n_i    ( itf.rw_n    ),
    .valid_i   ( itf.valid_i ),
    .key_i     ( itf.key     ),
    .val_i     ( itf.val_i   ),
    .val_o     ( itf.val_o   ),
    .valid_o   ( itf.valid_o )
);

default clocking tb_clk @(negedge itf.clk); endclocking

task reset();
    itf.reset_n <= 1'b0;
    repeat (5) @(tb_clk);
    itf.reset_n <= 1'b1;
    repeat (5) @(tb_clk);
endtask

// DO NOT MODIFY CODE ABOVE THIS LINE

function void report_error(error_e error);
    itf.tb_report_dut_error(error);
endfunction : report_error

task write(input key_t key, input val_t val);
    itf.rw_n <= 1'b0;
    itf.val_i <= val;
    itf.key <= key;
    ##1;
    itf.valid_i <= 1'b1;
endtask

task read(input key_t key, output val_t val);
    itf.rw_n <= 1'b1;
    itf.key <= key;
    @(tb_clk);
    itf.valid_i <= 1'b1;
    val = itf.val_o;
endtask

val_t temp;

initial begin
    $display("Starting CAM Tests");

    reset();
    /************************** Your Code Here ****************************/
    // Feel free to make helper tasks / functions, initial / always blocks, etc.
    // Consider using the task skeltons above
    // To report errors, call itf.tb_report_dut_error in cam/include/cam_itf.sv
    
    
    // test evicts
    for(int i = 0; i < camsize_p; i++) begin
        write(i,i);
    end 

    for(int i = camsize_p; i < (camsize_p*2); i++) begin
        write(i,i);
    end

    // test read operation
    reset();

    for (int i = 0; i < camsize_p; i++) begin 
        write((i*2), i);
        read((i*2), temp);
    end

    // read error checking
    for (int i = 0; i < 16'b1000000000000000; i++) begin
        read(i, temp);
        @(tb_clk);
        assert (itf.val_o == temp) else begin
            report_error(READ_ERROR);
            $error("%0t TB: Read %0d, expected %0d", $time, itf.val_o, temp);
        end
    end

    //consecutive writes
    for(int i = 0; i < camsize_p; i++) begin
        for(int j = 0; j < 9'b100000000; j++) begin
            write(i,j);
        end
    end

    /**********************************************************************/

    itf.finish();
end

endmodule : testbench
