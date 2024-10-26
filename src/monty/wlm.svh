`ifndef WLM
`define WLM


`include "word_red.svh"


typedef struct packed {
    int R, LOGQ, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT;
} wlm_params_t;


function int wlm_iter(input wlm_params_t params);
    wlm_iter = (params.LOGQ - 1) / params.R + 1;
endfunction


function int wlm_word_red_ff_in(input int i, wlm_params_t params);
    if (i == 0)
        wlm_word_red_ff_in = params.FF_IN;
    else
        wlm_word_red_ff_in = 0;
endfunction


function int wlm_word_red_ff_out(input int i, wlm_params_t params);
    if (i == (wlm_iter(params) - 1))
        wlm_word_red_ff_out = params.FF_OUT;
    else
        wlm_word_red_ff_out = 1;
endfunction


function int wlm_word_red_r(input int i, wlm_params_t params);
    if (i == (wlm_iter(params) - 1))
        wlm_word_red_r = params.LOGQ - i*params.R;
    else
        wlm_word_red_r = params.R;
endfunction


function int wlm_word_red_y(input int i, wlm_params_t params);
    wlm_word_red_y =  wlm_word_red_r(0, params) - wlm_word_red_r(i, params);
endfunction


function int wlm_word_red_i_lat(int i, input wlm_params_t params);
    word_red_params_t params_ = {wlm_word_red_r(i, params), params.LOGQH, wlm_word_red_ff_in(i, params), params.FF_SUB, params.FF_MUL, params.FF_SUM, wlm_word_red_ff_out(i, params)};
    wlm_word_red_i_lat = word_red_lat(params_);
endfunction


function int wlm_lat(input wlm_params_t params);
    int sum = 0;
    for (int i = 0; i < wlm_iter(params); i++) begin
        sum += wlm_word_red_i_lat(i, params);
    end
    wlm_lat = sum;
endfunction

`endif