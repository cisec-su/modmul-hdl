`ifndef WLM_MIXED
`define WLM_MIXED

`include "word_red.svh"

typedef struct packed {
    int LOGQ, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT;
} wlm_mixed_params_t;

function int wlm_mixed_R0(input wlm_mixed_params_t params);
    wlm_mixed_R0 = params.LOGQ - params.LOGQH;
endfunction

function int wlm_mixed_R1(input wlm_mixed_params_t params);
    wlm_mixed_R1 = params.LOGQH;
endfunction

function int wlm_mixed_word_red_0_lat(input wlm_mixed_params_t params);
    word_red_params_t params_ = {wlm_mixed_R0(params), params.LOGQH, params.FF_IN, params.FF_SUB, params.FF_MUL, params.FF_SUM, 1};
    wlm_mixed_word_red_0_lat = word_red_lat(params_);
endfunction

function int wlm_mixed_word_red_1_lat(input wlm_mixed_params_t params);
    word_red_params_t params_ = {wlm_mixed_R1(params), params.LOGQH, 0, params.FF_SUB, params.FF_MUL, params.FF_SUM, params.FF_OUT};
    wlm_mixed_word_red_1_lat = word_red_lat(params_);
endfunction


function int wlm_mixed_lat(input wlm_mixed_params_t params);
    wlm_mixed_lat = wlm_mixed_word_red_0_lat(params) + wlm_mixed_word_red_1_lat(params);
endfunction

`endif