######################################################################
#
# File name : tb_compile.do
# Created on: Tue Nov 14 09:36:31 +0800 2023
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
D:\\software\\fpga\\modelsim\\win64\\vlib modelsim_lib/work
D:\\software\\fpga\\modelsim\\win64\\vlib modelsim_lib/msim

D:\\software\\fpga\\modelsim\\win64\\vlib modelsim_lib/msim/xil_defaultlib

D:\\software\\fpga\\modelsim\\win64\\vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

D:\\software\\fpga\\modelsim\\win64\\vlog -64 -incr -work xil_defaultlib  \
"../../../../ABC.srcs/sources_1/new/TOP.v" \
"../../../../ABC.srcs/sources_1/new/compare.v" \
"../../../../ABC.srcs/sources_1/new/data.v" \
"../../../../ABC.srcs/sources_1/new/data_out.v" \
"../../../../ABC.srcs/sources_1/new/error.v" \
"../../../../ABC.srcs/sources_1/new/gambling.v" \
"../../../../ABC.srcs/sources_1/new/random.v" \
"../../../../ABC.srcs/sources_1/new/update.v" \
"../../../../ABC.srcs/sim_1/new/tb.v" \


# compile glbl module
D:\\software\\fpga\\modelsim\\win64\\vlog -work xil_defaultlib "glbl.v"

quit -force
