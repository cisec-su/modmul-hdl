`ifndef WORD_RED
`define WORD_RED

`include "dsp.vh"


typedef struct packed {
    int W, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT;
} wordred_params_t;


function int wordred_mode(input wordred_params_t params);
    if      (params.LOGQH  <= `DSP_B_U && params.W     <=  `DSP_A_U                              ) begin
        wordred_mode = 3;
    end
    else if (params.W      <= `DSP_A_U && params.LOGQH <= (`DSP_B_U*2) && params.LOGQH > `DSP_B_U) begin
        wordred_mode = 0;
    end
    else if (params.LOGQH  <= `DSP_A_U && params.W     <= (`DSP_B_U*2) && params.W     > `DSP_B_U) begin
        wordred_mode = 1;
    end
    else if (params.LOGQH  <= `DSP_B_U && params.W     <= (`DSP_A_U*2) && params.W     > `DSP_A_U) begin
        wordred_mode = 2;
    end
    else if (params.W      <= `DSP_B_U && params.LOGQH <= (`DSP_A_U*2) && params.LOGQH > `DSP_A_U) begin
        wordred_mode = 4;
    end
    else begin
        wordred_mode = -1;
    end
endfunction


function int wordred_logt(input int LOGC, input int LOGQH, input int W, input int Y);
    int t0 = LOGC - W + 1;
    int t1 = LOGQH + W + Y + 1;
    if (t0 > t1)
        wordred_logt = t0;
    else
        wordred_logt = t1;
endfunction

function int wordred_do_p1(input wordred_params_t params);
    if (wordred_mode(params) == 0 || wordred_mode(params) == 1 || wordred_mode(params) == 2 || wordred_mode(params) == 4) begin
        wordred_do_p1 = 1;
    end
    else begin
        wordred_do_p1 = 0;
    end
endfunction


function int wordred_ff_sum(input wordred_params_t params);
    if (wordred_do_p1(params)) begin
        wordred_ff_sum = params.FF_SUM;
    end
    else begin
        wordred_ff_sum = 0;
    end
endfunction


function int wordred_lat(input wordred_params_t params);
    wordred_lat = params.FF_IN + params.FF_SUB + params.FF_MUL + wordred_ff_sum(params) + params.FF_OUT;
endfunction


`endif