transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+dsp_macro_karatsuba_34x43_1_s0ff  -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L dsp_macro_v1_0_3 -L xil_defaultlib -L secureip -O5 xil_defaultlib.dsp_macro_karatsuba_34x43_1_s0ff

do {dsp_macro_karatsuba_34x43_1_s0ff.udo}

run 1000ns

endsim

quit -force