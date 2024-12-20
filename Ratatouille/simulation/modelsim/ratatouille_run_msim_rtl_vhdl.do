transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/monig/Documents/proyecto_laberinto/Ratatouille/Motores/Motores.vhd}
vcom -93 -work work {C:/Users/monig/Documents/proyecto_laberinto/Ratatouille/Motores/temporizador_doble.vhd}

vcom -93 -work work {C:/Users/monig/Documents/proyecto_laberinto/Ratatouille/Motores/tb_Control_Motores.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_Control_Motores

add wave *
view structure
view signals
run 5 sec
