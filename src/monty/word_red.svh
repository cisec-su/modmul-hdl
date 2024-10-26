`ifndef WORD_RED
`define WORD_RED

`include "dsp_def_new.vh"

typedef struct packed {
    int R, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT;
} word_red_params_t;

function int word_red_mode(input word_red_params_t params);
    if (params.R           <= `DSP_A_U && params.LOGQH <= (`DSP_B_U*2) && params.LOGQH > `DSP_B_U) begin
        word_red_mode = 0;
    end
    else if (params.LOGQH  <= `DSP_A_U && params.R     <= (`DSP_B_U*2) && params.R     > `DSP_B_U) begin
        word_red_mode = 1;
    end
    else if (params.LOGQH  <= `DSP_B_U && params.R     <= (`DSP_A_U*2) && params.R     > `DSP_A_U) begin
        word_red_mode = 2;
    end
    else if (params.LOGQH  <= `DSP_B_U && params.R     <=  `DSP_B_U                       ) begin
        word_red_mode = 3;
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

// function int word_red_lat(
//     input int /*R, LOGQH, */FF_IN, FF_SUM, FF_SUB, FF_MUL, FF_OUT);
//     word_red_lat = FF_IN + FF_SUM + FF_SUB + FF_MUL + FF_OUT;
// endfunction

// class word_red;
//     int R, LOGQH, FF_IN, FF_SUM, FF_SUB, FF_MUL, FF_OUT, MODE;

//     function new(int R, LOGQH, FF_IN, FF_SUB, FF_MUL, FF_SUM, FF_OUT);
//         this.R = R;
//         this.LOGQH = LOGQH;
//         this.FF_IN = FF_IN;
//         this.FF_SUM = FF_SUM;
//         this.FF_SUB = FF_SUB;
//         this.FF_MUL = FF_MUL;
//         this.FF_OUT = FF_OUT;
//         this.MODE = mode();
//     endfunction

// // localparam MODE = (R      <= `DSP_A_U && LOGQH <= (`DSP_B_U*2) && LOGQH > `DSP_B_U) ? 0 : 
// //                   (LOGQH  <= `DSP_A_U && R     <= (`DSP_B_U*2) && R     > `DSP_B_U) ? 1 : 
// //                   (LOGQH  <= `DSP_B_U && R     <= (`DSP_A_U*2) && R     > `DSP_A_U) ? 2 : 
// //                   (LOGQH  <= `DSP_B_U && R     <=  `DSP_B_U                       ) ? 3 : 
// //                   (R      <= `DSP_B_U && LOGQH <= (`DSP_A_U*2) && LOGQH > `DSP_A_U) ? 4 : 
// //                   -1; // undefined behaviour

//     function int mode();
//         if (R      <= `DSP_A_U && LOGQH <= (`DSP_B_U*2) && LOGQH > `DSP_B_U) begin
//             mode = 0;
//         end
//         else if (LOGQH  <= `DSP_A_U && R     <= (`DSP_B_U*2) && R     > `DSP_B_U) begin
//             mode = 1;
//         end
//         else if (LOGQH  <= `DSP_B_U && R     <= (`DSP_A_U*2) && R     > `DSP_A_U) begin
//             mode = 2;
//         end
//         else if (LOGQH  <= `DSP_B_U && R     <=  `DSP_B_U                       ) begin
//             mode = 3;
//         end
//         else if (R      <= `DSP_B_U && LOGQH <= (`DSP_A_U*2) && LOGQH > `DSP_A_U) begin
//             mode = 3;
//         end
//         else begin
//             mode = -1;
//         end
//     endfunction

// // localparam DO_P1 = (MODE == 0 || MODE == 1 || MODE == 2 || MODE == 4) ? 1 : 0;

//     function int do_p1();
//         if (mode() == 0 || mode() == 1 || mode() == 2 || mode() == 4) begin
//             do_p1 = 1;
//         end
//         else begin
//             do_p1 = 0;
//         end
//     endfunction

// //localparam FF_SUM_ = (DO_P1) ? FF_SUM : 0;

//     function int ff_sum();
//         if (do_p1()) begin
//             ff_sum = FF_SUM;
//         end
//         else begin
//             ff_sum = 0;
//         end
//     endfunction

// // localparam LAT = FF_IN + FF_SUB + FF_MUL + FF_SUM_ + FF_OUT;

//     function int lat();
//         lat = FF_IN + FF_SUB + FF_MUL + ff_sum() + FF_OUT;
//     endfunction

// endclass

`endif