`ifndef INTMUL_SVH
`define INTMUL_SVH

typedef enum int {
    USE_STD = 0,    
    USE_NONSTD = 1 
} intmul_mode_t;

typedef struct packed {
    int FF_IN, FF_MUL, FF_OUT, FF_CSA, USE_CSA;
} intmul_params_t;

function int intmul_lat(input intmul_params_t params);
    intmul_lat = params.FF_IN + params.FF_MUL + params.FF_OUT + (params.FF_CSA & params.USE_CSA);
endfunction

`endif
