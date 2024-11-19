onerror {quit -f}
vlib work
vlog -work work ratatouille.vo
vlog -work work ratatouille.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.elijo_sentido_vlg_vec_tst
vcd file -direction ratatouille.msim.vcd
vcd add -internal elijo_sentido_vlg_vec_tst/*
vcd add -internal elijo_sentido_vlg_vec_tst/i1/*
add wave /*
run -all
