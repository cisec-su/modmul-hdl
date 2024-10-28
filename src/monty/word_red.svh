`ifndef WORD_RED
`define WORD_RED

`include "dsp_def_new.vh"

typedef struct packed {
    int R, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT;
} word_red_params_t;

function int word_red_mode(input word_red_params_t params);
    if      (params.LOGQH  <= `DSP_B_U && params.R     <=  `DSP_A_U                              ) begin
        word_red_mode = 3;
    end
    else if (params.R      <= `DSP_A_U && params.LOGQH <= (`DSP_B_U*2) && params.LOGQH > `DSP_B_U) begin
        word_red_mode = 0;
    end
    else if (params.LOGQH  <= `DSP_A_U && params.R     <= (`DSP_B_U*2) && params.R     > `DSP_B_U) begin
        word_red_mode = 1;
    end
    else if (params.LOGQH  <= `DSP_B_U && params.R     <= (`DSP_A_U*2) && params.R     > `DSP_A_U) begin
        word_red_mode = 2;
    end
    else if (params.R      <= `DSP_B_U && params.LOGQH <= (`DSP_A_U*2) && params.LOGQH > `DSP_A_U) begin
        word_red_mode = 4;
    end
    else begin
        word_red_mode = -1;
    end
endfunction

function int word_red_do_p1(input word_red_params_t params);
    if (word_red_mode(params) == 0 || word_red_mode(params) == 1 || word_red_mode(params) == 2 || word_red_mode(params) == 4) begin
        word_red_do_p1 = 1;
    end
    else begin
        word_red_do_p1 = 0;
    end
endfunction


function int word_red_ff_sum(input word_red_params_t params);
    if (word_red_do_p1(params)) begin
        word_red_ff_sum = params.FF_SUM;
    end
    else begin
        word_red_ff_sum = 0;
    end
endfunction


function int word_red_lat(input word_red_params_t params);
    word_red_lat = params.FF_IN + params.FF_SUB + params.FF_MUL + word_red_ff_sum(params) + params.FF_OUT;
endfunction


`endif