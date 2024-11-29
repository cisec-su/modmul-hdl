`ifndef INTMUL_NONSTD_34X43
`define INTMUL_NONSTD_34X43

typedef struct packed {
    int FF_IN, FF_MUL, FF_OUT, FF_CSA, USE_CSA, USE_DSP;
} intmul_nonstd_34x43_params_t;

function int intmul_nonstd_34x43_lat(input intmul_nonstd_34x43_params_t params);
    intmul_nonstd_34x43_lat = params.FF_IN + params.FF_MUL + params.FF_OUT + (params.FF_CSA & params.USE_CSA);
endfunction

`endif
