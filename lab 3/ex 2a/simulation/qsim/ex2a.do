onerror {quit -f}
vlib work
vlog -work work conv_gray.vo
vlog -work work ex2a.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.conv_gray_vlg_vec_tst
vcd file -direction ex2a.msim.vcd
vcd add -internal conv_gray_vlg_vec_tst/*
vcd add -internal conv_gray_vlg_vec_tst/i1/*
add wave /*
run -all
