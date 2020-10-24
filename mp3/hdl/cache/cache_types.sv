/* 
 * Enumerations useful for the mux selects for the datain and dataout for the 
 * cache.
 */

package datamux;
typedef enum logic {      
    pmem_rdata = 1'b0,
    mem_wdata = 1'b1
} datainmux_sel_t;

typedef enum logic {  
    way0 = 1'b0,
    way1 = 1'b1
} dataoutmux_sel_t;
endpackage
