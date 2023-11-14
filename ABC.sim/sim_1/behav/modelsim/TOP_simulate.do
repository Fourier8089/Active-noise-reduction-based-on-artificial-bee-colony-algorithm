######################################################################
#
# File name : TOP_simulate.do
# Created on: Mon Nov 13 20:35:59 +0800 2023
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.TOP xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {TOP_wave.do}

view wave
view structure
view signals

do {TOP.udo}

run 1000ns
