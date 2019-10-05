transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/Adder/Gates.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/Adder/DUT.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/Adder/eightbitadder.vhdl}

