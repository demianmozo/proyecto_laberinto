onerror {quit -f}
vlib work
vlog -work work ratatouille.vo
vlog -work work ratatouille.vt
<<<<<<< HEAD
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.seleccionadores_mux_vlg_vec_tst
vcd file -direction ratatouille.msim.vcd
vcd add -internal seleccionadores_mux_vlg_vec_tst/*
vcd add -internal seleccionadores_mux_vlg_vec_tst/i1/*
=======
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Matriz_ubicacion_vlg_vec_tst
vcd file -direction ratatouille.msim.vcd
vcd add -internal Matriz_ubicacion_vlg_vec_tst/*
vcd add -internal Matriz_ubicacion_vlg_vec_tst/i1/*
>>>>>>> 9b7ff377bc77e1fe38980f10943eaabc3df35041
add wave /*
run -all
