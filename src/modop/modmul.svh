`ifndef MODMUL_SVH
`define MODMUL_SVH

`include "dsp.vh"
`include "intmul.svh"
`include "wlm.svh"
`include "wlm_mixed.svh"

typedef struct packed {
    int W, LOGQ, LOGQH, CORRECT, FF_IN, FF_MUL, FF_SUM, FF_SUB, FF_OUT, USE_CSA, FF_CSA;
} modmul_params_t;

function int modmul_lat(input modmul_params_t modmul_params);
    wlm_mixed_params_t wlm_mixed_params = {modmul_params.LOGQ, modmul_params.LOGQH, modmul_params.CORRECT, modmul_params.FF_IN, modmul_params.FF_SUB, modmul_params.FF_MUL, modmul_params.FF_SUM, modmul_params.FF_OUT};
    wlm_params_t wlm_params = {modmul_params.W, modmul_params.LOGQ, modmul_params.LOGQH, modmul_params.CORRECT, modmul_params.FF_IN, modmul_params.FF_SUB, modmul_params.FF_MUL, modmul_params.FF_SUM, modmul_params.FF_OUT};
    intmul_params_t intmul_params = {modmul_params.FF_IN, modmul_params.FF_MUL, modmul_params.FF_OUT, modmul_params.FF_CSA, modmul_params.USE_CSA};
    modmul_lat = intmul_lat(intmul_params) + ((modmul_params.LOGQH < `DSP_B_U) ? wlm_mixed_lat(wlm_mixed_params) : wlm_lat(wlm_params));
endfunction

`endif