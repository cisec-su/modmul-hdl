`ifndef MONTGOMERY_SHIFT
`define MONTGOMERY_SHIFT

`include "correction_u.svh"

typedef struct packed {
    int CORRECT, FF_IN, FF_SHF, FF_SUB, FF_SUM, FF_OUT;
} montgomery_shift_params_t;


function int montgomery_shift_correction_lat(input montgomery_shift_params_t params);
    if (params.CORRECT == 0)
        montgomery_shift_correction_lat = 0;
    else begin
        correction_u_params_t params_ = {0, 0, params.FF_OUT};
        montgomery_shift_correction_lat = correction_u_lat(params_);
    end
endfunction


function int montgomery_shift_lat(input montgomery_shift_params_t params);
    montgomery_shift_lat = params.FF_IN + params.FF_SHF*2 + params.FF_SUB*2 + params.FF_SUM + montgomery_shift_correction_lat(params);
endfunction


`endif