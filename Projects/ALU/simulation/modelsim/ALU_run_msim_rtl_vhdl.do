transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/TopLevel.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/scan_reg.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/scan_chain.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/Gates.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/mux.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/DUT.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/rightshift.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/multiplier.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/leftshift.vhdl}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/eightbitadder.vhdl}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Projects/ALU/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
