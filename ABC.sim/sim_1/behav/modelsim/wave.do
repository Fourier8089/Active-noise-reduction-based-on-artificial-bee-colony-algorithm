onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clk
add wave -noupdate /tb/reset
add wave -noupdate -radix decimal /tb/x
add wave -noupdate -radix decimal /tb/d
add wave -noupdate -radix decimal /tb/y
add wave -noupdate -radix decimal /tb/a
add wave -noupdate -radix decimal /tb/b
add wave -noupdate -radix decimal /tb/i
add wave -noupdate -radix decimal /glbl/GSR
add wave -noupdate -radix decimal /tb/TOP_0/update_0/R
add wave -noupdate -radix decimal /tb/TOP_0/update_0/k
add wave -noupdate -radix decimal /tb/TOP_0/update_0/e
add wave -noupdate -radix decimal /tb/TOP_0/update_0/index
add wave -noupdate -radix decimal /tb/TOP_0/update_0/cnt1
add wave -noupdate -radix decimal /tb/TOP_0/update_0/cnt
add wave -noupdate -group w /tb/TOP_0/update_0/w1
add wave -noupdate -group w /tb/TOP_0/update_0/w2
add wave -noupdate -group w /tb/TOP_0/update_0/w3
add wave -noupdate -group w /tb/TOP_0/update_0/w4
add wave -noupdate -group w /tb/TOP_0/update_0/w5
add wave -noupdate -group w /tb/TOP_0/update_0/w6
add wave -noupdate -group w /tb/TOP_0/update_0/w7
add wave -noupdate -group w /tb/TOP_0/update_0/w8
add wave -noupdate -group en /tb/TOP_0/update_0/en0
add wave -noupdate -group en /tb/TOP_0/update_0/en1
add wave -noupdate -group en /tb/TOP_0/update_0/en2
add wave -noupdate -group en /tb/TOP_0/update_0/en3
add wave -noupdate -group en /tb/TOP_0/update_0/en4
add wave -noupdate -group en /tb/TOP_0/update_0/en5
add wave -noupdate -group en /tb/TOP_0/update_0/en6
add wave -noupdate -group en /tb/TOP_0/update_0/en7
add wave -noupdate -group en /tb/TOP_0/update_0/en8
add wave -noupdate -group en /tb/TOP_0/update_0/en9
add wave -noupdate -group en /tb/TOP_0/update_0/enn0
add wave -noupdate -group en /tb/TOP_0/update_0/enn1
add wave -noupdate -group en /tb/TOP_0/update_0/enn2
add wave -noupdate -group en /tb/TOP_0/update_0/enn3
add wave -noupdate -group en /tb/TOP_0/update_0/enn4
add wave -noupdate -radix decimal /tb/TOP_0/update_0/r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 266
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {999050 ps} {999978 ps}
