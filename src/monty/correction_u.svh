`ifndef CORRECTION_U
`define CORRECTION_U

typedef struct packed {
    int FF_IN, FF_SUB, FF_OUT;
} correction_u_params_t;


function int correction_u_lat(input correction_u_params_t params);
    correction_u_lat = params.FF_IN + params.FF_SUB + params.FF_OUT;
endfunction


`endif