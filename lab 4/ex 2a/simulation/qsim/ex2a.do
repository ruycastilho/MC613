onerror {quit -f}
vlib work
vlog -work work dec2to4.vo
vlog -work work ex2a.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dec2to4_vlg_vec_tst
vcd file -direction ex2a.msim.vcd
vcd add -internal dec2to4_vlg_vec_tst/*
vcd add -internal dec2to4_vlg_vec_tst/i1/*
add wave /*
run -all
