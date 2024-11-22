transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {ratatouille.vho}

vcom -93 -work work {C:/Users/monig/Documents/proyecto_laberinto/Ratatouille/Motores/tb_temporizador_doble.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_temporizador_doble

add wave *
view structure
view signals
run 3 sec
