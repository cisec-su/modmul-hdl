`ifndef PLANTARD
`define PLANTARD


typedef struct packed {
    int CORRECT, FF_IN, FF_SHF, FF_SUB, FF_SUM, FF_OUT;
} plantard_shift_params_t;


function int plantard_shift_ff_out(input plantard_shift_params_t params);
    if (params.CORRECT) begin
        plantard_shift_ff_out = params.FF_OUT;
    end
    else begin
        plantard_shift_ff_out = 0;
    end
endfunction

function int plantard_shift_lat(input plantard_shift_params_t params);
    plantard_shift_lat = params.FF_IN + params.FF_SHF + params.FF_SUB + params.FF_SUM + plantard_shift_ff_out(params);
endfunction


`endif