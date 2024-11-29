onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L dsp_macro_v1_0_3 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.dsp_macro_monty_26_v3_0_iff

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dsp_macro_monty_26_v3_0_iff.udo}

run 1000ns

quit -force
