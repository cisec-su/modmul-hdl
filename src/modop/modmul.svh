`ifndef MODMUL_SVH
`define MODMUL_SVH

`include "dsp.vh"
`include "intmul.svh"
`include "wlm.svh"
`include "wlm_mixed.svh"

typedef struct packed {
    int W, LOGQ, LOGQH, CORRECT, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT;
} modmul_params_t;

function int modmul_lat(input intmul_params_t intmul_params, input wlm_mixed_params_t wlm_mixed_params, input wlm_params_t wlm_params, input modmul_params_t modmul_params);
    modmul_lat = intmul_lat(intmul_params) + ((modmul_params.LOGQH < `DSP_B_U) ? wlm_mixed_lat(wlm_mixed_params) : wlm_lat(wlm_params));
endfunction

`endif