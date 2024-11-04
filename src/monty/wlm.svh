`ifndef WLM
`define WLM


`include "wordred.svh"
`include "correction_u.svh"


typedef struct packed {
    int W, LOGQ, LOGQH, CORRECT, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT;
} wlm_params_t;


function int wlm_iter(input wlm_params_t params);
    wlm_iter = (params.LOGQ - 1) / (params.W - 1) + 1;
endfunction


function int wlm_wordred_ff_in(input int i, wlm_params_t params);
    if (i == 0)
        wlm_wordred_ff_in = params.FF_IN;
    else
        wlm_wordred_ff_in = 0;
endfunction


function int wlm_wordred_ff_out(input int i, wlm_params_t params);
    if (i == (wlm_iter(params) - 1))
        if (params.CORRECT == 0)
            wlm_wordred_ff_out = params.FF_OUT;
        else
            wlm_wordred_ff_out = 1;
    else
        wlm_wordred_ff_out = 1;
endfunction


function int wlm_wordred_w(input int i, wlm_params_t params);
    if (i == (wlm_iter(params) - 1))
        wlm_wordred_w = params.LOGQ - i*(params.W - 1);
    else
        wlm_wordred_w = params.W;
endfunction


function int wlm_wordred_y(input int i, wlm_params_t params);
    wlm_wordred_y =  wlm_wordred_w(0, params) - wlm_wordred_w(i, params);
endfunction


function int wlm_wordred_i_lat(int i, input wlm_params_t params);
    wordred_params_t params_ = {wlm_wordred_w(i, params), params.LOGQH, wlm_wordred_ff_in(i, params), params.FF_SUB, params.FF_MUL, params.FF_SUM, wlm_wordred_ff_out(i, params)};
    wlm_wordred_i_lat = wordred_lat(params_);
endfunction


function int wlm_correction_lat(input wlm_params_t params);
    if (params.CORRECT == 0)
        wlm_correction_lat = 0;
    else begin
        correction_u_params_t params_ = {0, 0, params.FF_OUT};
        wlm_correction_lat = correction_u_lat(params_);
    end
endfunction


function int wlm_lat(input wlm_params_t params);
    int sum = 0;
    for (int i = 0; i < wlm_iter(params); i++) begin
        sum += wlm_wordred_i_lat(i, params);
    end
    wlm_lat = sum + wlm_correction_lat(params);
endfunction


`endif