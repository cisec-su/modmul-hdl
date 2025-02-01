`ifndef MODMUL_WLM_SVH
`define MODMUL_WLM_SVH

`include "dsp.vh"
`include "intmul_wrapper.svh"
`include "wlm.svh"
`include "wlm_mixed.svh"

typedef struct packed {
    int LOGQ, LOGQH, CORRECT, FF_IN, FF_MUL, FF_SUM, FF_SUB, FF_OUT, USE_CSA, FF_CSA, MORE_DSP, NON_STD;
} modmul_wlm_params_t;

function int modmul_wlm_lat(input modmul_wlm_params_t params);
    intmul_wrapper_params_t intmul_wrapper_params = {params.LOGQ, params.LOGQ, params.FF_IN, params.FF_MUL, 1, params.USE_CSA, params.FF_CSA, params.MORE_DSP, params.NON_STD};
    wlm_mixed_params_t wlm_mixed_params = {params.LOGQ, params.LOGQH, params.CORRECT, 0, params.FF_SUB, params.FF_MUL, params.FF_SUM, params.FF_OUT};
    wlm_params_t wlm_params = {params.LOGQ, params.LOGQH, params.CORRECT, 0, params.FF_SUB, params.FF_MUL, params.FF_SUM, params.FF_OUT};
    modmul_wlm_lat = intmul_wrapper_lat(intmul_wrapper_params) + ((params.LOGQH <= `DSP_B_U) ? wlm_mixed_lat(wlm_mixed_params) : wlm_lat(wlm_params));
endfunction

`endif