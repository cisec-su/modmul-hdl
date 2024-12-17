`ifndef INTMUL_NONSTD_BBxAB
`define INTMUL_NONSTD_BBxAB

typedef struct packed {
    int LOGA, LOGB, FF_IN, FF_MUL, FF_OUT, FF_CSA, USE_CSA, MORE_DSP;
} intmul_nonstd_BBxAB_params_t;

function int intmul_nonstd_BBxAB_lat(input intmul_nonstd_BBxAB_params_t params);
    intmul_nonstd_BBxAB_lat = params.FF_IN + params.FF_MUL + params.FF_OUT + (params.FF_CSA & params.USE_CSA);
endfunction

`endif
