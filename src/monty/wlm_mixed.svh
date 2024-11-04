`ifndef WLM_MIXED
`define WLM_MIXED

`include "dsp.vh"
`include "wordred.svh"
`include "correction_u.svh"


typedef struct packed {
    int LOGQ, LOGQH, CORRECT, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT;
} wlm_mixed_params_t;


function int wlm_mixed_w1(input wlm_mixed_params_t params);
    int d;
    int r = params.LOGQ - params.LOGQH;
    if (params.LOGQH <= `DSP_B_U)
        d = `DSP_A_U;
    else
        d = `DSP_B_U;
    if (r > d)
        wlm_mixed_w1 = d;
    else
        wlm_mixed_w1 = r;
endfunction


function int wlm_mixed_w0(input wlm_mixed_params_t params);
    wlm_mixed_w0 = params.LOGQ - wlm_mixed_w1(params) + 2;
endfunction


function int wlm_mixed_y0(input wlm_mixed_params_t params);
    wlm_mixed_y0 = params.LOGQ - params.LOGQH - wlm_mixed_w0(params);
endfunction


function int wlm_mixed_y1(input wlm_mixed_params_t params);
    wlm_mixed_y1 = params.LOGQ - params.LOGQH - wlm_mixed_w1(params);
endfunction


function int wlm_mixed_wordred_0_lat(input wlm_mixed_params_t params);
    wordred_params_t params_ = {wlm_mixed_w0(params), params.LOGQH, params.FF_IN, params.FF_SUB, params.FF_MUL, params.FF_SUM, 1};
    wlm_mixed_wordred_0_lat = wordred_lat(params_);
endfunction


function int wlm_mixed_wordred_1_ff_out(wlm_mixed_params_t params);
    if (params.CORRECT == 0)
        wlm_mixed_wordred_1_ff_out = params.FF_OUT;
    else
        wlm_mixed_wordred_1_ff_out = 1;
endfunction


function int wlm_mixed_wordred_1_lat(input wlm_mixed_params_t params);
    wordred_params_t params_ = {wlm_mixed_w1(params), params.LOGQH, 0, params.FF_SUB, params.FF_MUL, params.FF_SUM, wlm_mixed_wordred_1_ff_out(params)};
    wlm_mixed_wordred_1_lat = wordred_lat(params_);
endfunction


function int wlm_mixed_correction_lat(input wlm_mixed_params_t params);
    if (params.CORRECT == 0)
        wlm_mixed_correction_lat = 0;
    else begin
        correction_u_params_t params_ = {0, 0, params.FF_OUT};
        wlm_mixed_correction_lat = correction_u_lat(params_);
    end
endfunction


function int wlm_mixed_lat(input wlm_mixed_params_t params);
    wlm_mixed_lat = wlm_mixed_wordred_0_lat(params) + wlm_mixed_wordred_1_lat(params) + wlm_mixed_correction_lat(params);
endfunction

`endif