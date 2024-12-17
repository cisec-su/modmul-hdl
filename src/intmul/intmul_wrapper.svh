`ifndef INTMUL_WRAPPER_SVH
`define INTMUL_WRAPPER_SVH

`include "dsp.vh"
`include "mac_std.svh"
`include "intmul_nonstd_BBxAB.svh"
`include "intmul_nonstd_BBAxBBA.svh"

typedef struct packed {
    int LOGA, LOGB, FF_IN, FF_MUL, FF_OUT, USE_CSA, FF_CSA, MORE_DSP, NON_STD;
} intmul_wrapper_params_t;

function int intmul_wrapper_lat(input intmul_wrapper_params_t params);
    mac_std_params_t mac_std_params = {params.LOGA, params.LOGB, DIS_E, 0, params.FF_IN, params.FF_IN, 0, params.FF_MUL, params.FF_OUT, params.FF_CSA, params.USE_CSA};
    intmul_nonstd_BBxAB_params_t intmul_nonstd_BBxAB_params = {params.LOGA, params.LOGB, params.FF_IN, params.FF_MUL, params.FF_OUT, params.FF_CSA, params.USE_CSA, params.MORE_DSP};
    intmul_nonstd_BBAxBBA_params_t intmul_nonstd_BBAxBBA_params = {params.LOGA, params.LOGB, params.FF_IN, params.FF_MUL, params.FF_OUT, params.FF_CSA, params.USE_CSA, params.MORE_DSP};
    intmul_wrapper_lat = (params.NON_STD == 0) ? mac_std_lat(mac_std_params) :
        (((params.LOGA <= 2*`DSP_B_U) && (params.LOGB <= `DSP_A_U +`DSP_B_U)) || ((params.LOGA <= `DSP_A_U +`DSP_B_U) && (params.LOGB <= 2*`DSP_B_U))) ?
            intmul_nonstd_BBxAB_lat(intmul_nonstd_BBxAB_params) :
            (((params.LOGA <= `DSP_A_U + 2*`DSP_B_U) && (params.LOGB <= `DSP_A_U + 2*`DSP_B_U))) ?
                intmul_nonstd_BBAxBBA_lat(intmul_nonstd_BBAxBBA_params) :
                0; 
endfunction


`endif