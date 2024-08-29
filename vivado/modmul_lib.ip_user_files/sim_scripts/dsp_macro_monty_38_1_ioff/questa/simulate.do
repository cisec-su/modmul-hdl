onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib dsp_macro_monty_38_1_ioff_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dsp_macro_monty_38_1_ioff.udo}

run 1000ns

quit -force
