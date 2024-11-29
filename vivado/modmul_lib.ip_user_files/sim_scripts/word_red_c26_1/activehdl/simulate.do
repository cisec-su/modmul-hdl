transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+word_red_c26_1  -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L dsp_macro_v1_0_3 -L xil_defaultlib -L secureip -O2 xil_defaultlib.word_red_c26_1

do {word_red_c26_1.udo}

run

endsim

quit -force
