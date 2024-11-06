`ifndef K2RED
`define K2RED

`include "mac_std.svh"


typedef struct packed {
    int LOGQ, LOGQH, CORRECT, FF_IN, FF_MUL, USE_CSA, FF_CSA, FF_CORR, FF_OUT;
} k2red_params_t;


function int k2red_logc(input k2red_params_t params);
    k2red_logc = 2*params.LOGQ;
endfunction


function int k2red_logm(input k2red_params_t params);
    k2red_logm = params.LOGQ - params.LOGQH;
endfunction


function mac_std_params_t k2red_mac_0_params(input k2red_params_t params);
    k2red_mac_0_params = '{LOGA   : params.LOGQH,   LOGB   : k2red_logm(params), MODE_E : 2,
                           LOGE   : k2red_logc(params) - k2red_logm(params) + 1,
                           FF_IN_A: 0,              FF_IN_B: params.FF_IN,       FF_IN_E: params.FF_IN ,
                           FF_MUL : params.FF_MUL,  FF_OUT : 1,
                           USE_CSA: params.USE_CSA, FF_CSA : params.FF_CSA};
endfunction


function int k2red_logt0(input k2red_params_t params);
    k2red_logt0 = mac_std_logc(k2red_mac_0_params(params));
endfunction



function int k2red_mac_0_lat(input k2red_params_t params);
    k2red_mac_0_lat = mac_std_lat(k2red_mac_0_params(params));
endfunction


function int k2red_ff_out_1(input k2red_params_t params);
    if (params.CORRECT)
        k2red_ff_out_1 = 1;
    else
        k2red_ff_out_1 = params.FF_OUT;
endfunction


function mac_std_params_t k2red_mac_1_params(input k2red_params_t params);
    k2red_mac_1_params = '{LOGA   : params.LOGQH,   LOGB   : k2red_logm(params), MODE_E : 2,
                           LOGE   : k2red_logt0(params) - k2red_logm(params),
                           FF_IN_A: 0,              FF_IN_B: 0,                  FF_IN_E: 0,
                           FF_MUL : params.FF_MUL,  FF_OUT : k2red_ff_out_1(params),
                           USE_CSA: params.USE_CSA, FF_CSA : params.FF_CSA};
endfunction


function int k2red_logt1(input k2red_params_t params);
    k2red_logt1 = mac_std_logc(k2red_mac_1_params(params));
endfunction


function int k2red_mac_1_lat(input k2red_params_t params);
    k2red_mac_1_lat = mac_std_lat(k2red_mac_1_params(params));
endfunction


function int k2red_correction_lat(input k2red_params_t params);
    if (params.CORRECT == 0)
        k2red_correction_lat = 0;
    else begin
        k2red_correction_lat = params.FF_OUT + params.FF_CORR;
    end
endfunction


function int k2red_lat(input k2red_params_t params);
    k2red_lat = k2red_mac_0_lat(params) + k2red_mac_1_lat(params) + k2red_correction_lat(params);
endfunction


`endif