`ifndef MODADD
`define MODADD

typedef struct packed {
    int FF_IN, FF_ADD, FF_OUT;
} modadd_params_t;

function int modadd_lat(input modadd_params_t params);
    modadd_lat = params.FF_IN + params.FF_ADD + params.FF_OUT;
endfunction

`endif