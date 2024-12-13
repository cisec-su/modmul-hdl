`ifndef MODSUB
`define MODSUB

typedef struct packed {
    int LOGA, LOGB, LOGQ, LOGQH, FF_IN, FF_SUB, FF_OUT;
} modsub_params_t;

function int modsub_lat(input modsub_params_t params);
    modsub_lat = params.FF_IN + params.FF_SUB + params.FF_OUT;
endfunction

`endif