transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Lukas/Desktop/CCO II/Sistemas Digitais/Pr�tica/PLab2/FSM_clock_p5.vhd}
vcom -93 -work work {C:/Users/Lukas/Desktop/CCO II/Sistemas Digitais/Pr�tica/PLab2/contador_p4.vhd}
vcom -93 -work work {C:/Users/Lukas/Desktop/CCO II/Sistemas Digitais/Pr�tica/PLab2/part4.vhd}

