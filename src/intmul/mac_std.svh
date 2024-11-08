`ifndef MAC_STD
`define MAC_STD

typedef struct packed {
    int LOGA, LOGB, MODE_E, LOGE, FF_IN_A, FF_IN_B, FF_IN_E, FF_MUL, FF_OUT, FF_CSA, USE_CSA;
} mac_std_params_t;


typedef enum int {
    DIS_E = 0,
    ADD_E = 1,
    SUB_E = 2
} mode_e_t;


function int mac_std_lat(input mac_std_params_t params);
    mac_std_lat = (params.FF_IN_A || params.FF_IN_B || (params.FF_IN_E & (params.MODE_E != 0))) + params.FF_MUL + params.FF_OUT + (params.FF_CSA & params.USE_CSA);
endfunction


function int mac_std_logd(input mac_std_params_t params);
    mac_std_logd = params.LOGA + params.LOGB;
endfunction


function int mac_std_logc(input mac_std_params_t params);
    if (params.MODE_E == 0) begin
        mac_std_logc = mac_std_logd(params);
    end
    else if (params.MODE_E == 1) begin
        mac_std_logc = (mac_std_logd(params) > params.LOGE) ? mac_std_logd(params) + 1 : params.LOGE + 1;
    end
    else if (params.MODE_E == 2) begin
        mac_std_logc = (mac_std_logd(params) >= params.LOGE) ? mac_std_logd(params) + 2 : params.LOGE + 1;
    end
endfunction


`endif