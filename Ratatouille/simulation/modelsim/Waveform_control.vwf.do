vlog -work work C:/Users/LSC/Desktop/proyecto_laberinto-master/Ratatouille/simulation/modelsim/Waveform_control.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.control_vlg_vec_tst
onerror {resume}
add wave {control_vlg_vec_tst/i1/ACT_GIRO}
add wave {control_vlg_vec_tst/i1/ACT_MUROS}
add wave {control_vlg_vec_tst/i1/ACT_SENTIDO}
add wave {control_vlg_vec_tst/i1/clock}
add wave {control_vlg_vec_tst/i1/CUENTA}
add wave {control_vlg_vec_tst/i1/fin_gir}
add wave {control_vlg_vec_tst/i1/LINEA}
add wave {control_vlg_vec_tst/i1/MURO}
add wave {control_vlg_vec_tst/i1/reset}
run -all
