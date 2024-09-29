transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student2/edchiu/Desktop/coe328/Lab1/lab1_vhdl1.vhd}
vcom -93 -work work {/home/student2/edchiu/Desktop/coe328/Lab1/lab1_vhdl2.vhd}

