onerror {quit -f}
vlib work
vlog -work work fullAdder.vo
vlog -work work ex1a.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fullAdder_vlg_vec_tst
vcd file -direction ex1a.msim.vcd
vcd add -internal fullAdder_vlg_vec_tst/*
vcd add -internal fullAdder_vlg_vec_tst/i1/*
add wave /*
run -all
