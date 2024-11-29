onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib dsp_macro_1_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dsp_macro_1.udo}

run 1000ns

quit -force
