transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/EE224_A2/DUT.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/EE224_A2/Gates.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/EE224_A2/mux.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/EE224_A2/tenbitadder.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/EE224_A2/quarter_precision_multiplier.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/EE224_A2/multiplier.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/EE224_A2/fivebitadder.vhdl}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/EE224_A2/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
