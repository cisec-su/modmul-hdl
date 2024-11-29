onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib dsp_macro_monty_26_0_iff_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dsp_macro_monty_26_0_iff.udo}

run 1000ns

quit -force
