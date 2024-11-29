`ifndef INTMUL_NONSTD_60X60
`define INTMUL_NONSTD_60X60

typedef struct packed {
    int FF_IN, FF_MUL, FF_OUT, FF_CSA, USE_CSA, USE_DSP;
} intmul_nonstd_60x60_params_t;

function int intmul_nonstd_60x60_lat(input intmul_nonstd_60x60_params_t params);
    intmul_nonstd_60x60_lat = params.FF_IN + params.FF_MUL + params.FF_OUT + (params.FF_CSA & params.USE_CSA);
endfunction

`endif
