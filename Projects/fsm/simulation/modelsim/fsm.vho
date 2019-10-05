-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/22/2019 00:46:12"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	TopLevel IS
    PORT (
	TDI : IN std_logic;
	TDO : BUFFER std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic
	);
END TopLevel;

-- Design Ports Information


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL \TCLK~combout\ : std_logic;
SIGNAL \TMS~combout\ : std_logic;
SIGNAL \TRST~combout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|Selector0~0_combout\ : std_logic;
SIGNAL \scan_instance|cap_shft~0_combout\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L1[4]~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[1]~4_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|Mux11~8_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|Mux11~9_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|Mux0~8_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|Mux1~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[4]~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[3]~5_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[6]~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol~14_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol~9_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol~10_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol~15_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol.bomb~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol~11_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol.b~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol~8_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol~7_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~18_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~20_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol.terror~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~15_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~11_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~13_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~14_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~16_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~21_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol.t~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~24_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol.te~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol.terr~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol~12_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol~14_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~17_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~38_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol~22_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol.knife~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol.phi~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol.k~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~35_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~37_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~25_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~27_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~28_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol.kn~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~26_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol.kni~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~23_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~24_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|fsm_state_symbol~36_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[5]~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol.gun~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol~24_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol~16_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol.phi~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol~15_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol.g~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol~23_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|fsm_state_symbol~21_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|mux1[0]~2_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|PO\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => \TCLK~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TMS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TMS,
	combout => \TMS~combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => \TRST~combout\);

-- Location: LC_X5_Y6_N3
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|current_state.s_DR~regout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datad => \TMS~combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X5_Y6_N9
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS((((!\TMS~combout\ & \scan_instance|current_state.s_DR~regout\))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

-- Location: LC_X5_Y6_N5
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(((!\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X5_Y6_N1
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|current_state.s_shift~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X5_Y6_N0
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\scan_instance|current_state.s_idle~regout\) # (\TMS~combout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X5_Y6_N2
\scan_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector0~0_combout\ = (((\TMS~combout\) # (\scan_instance|current_state.s_update~regout\)) # (!\scan_instance|current_state.s_idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector0~0_combout\);

-- Location: LC_X5_Y6_N6
\scan_instance|cap_shft~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|cap_shft~0_combout\ = (!\TRST~combout\ & (!\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \TMS~combout\,
	datac => \scan_instance|current_state.s_shift~regout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|cap_shft~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TDI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TDI,
	combout => \TDI~combout\);

-- Location: LC_X5_Y6_N7
\scan_instance|In_Reg|L1[4]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1[4]~1_combout\ = (\TRST~combout\) # ((!\TMS~combout\ & (\scan_instance|current_state.s_idle~regout\ & !\scan_instance|current_state.s_update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TMS~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \scan_instance|current_state.s_update~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L1[4]~1_combout\);

-- Location: LC_X5_Y6_N4
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS(((\scan_instance|cap_shft~0_combout\ & ((\TDI~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datad => \TDI~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X10_Y6_N8
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(6))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X10_Y6_N9
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X10_Y6_N7
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(4))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X10_Y6_N6
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(3))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X10_Y6_N5
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(2))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X5_Y6_N8
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|current_state.s_shift~regout\,
	datab => \TRST~combout\,
	datac => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X2_Y8_N2
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(1))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X2_Y8_N0
\scan_instance|In_Reg|PO[1]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[1]~4_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[1]~4_combout\);

-- Location: LC_X1_Y9_N4
\scan_instance|In_Reg|L2[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(6) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(6))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(6),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(6));

-- Location: LC_X2_Y9_N4
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(2))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L1\(2),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X2_Y9_N8
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(3))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(3),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X2_Y9_N9
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X2_Y9_N5
\dut_instance|add_instance|S2|Mux11~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|Mux11~8_combout\ = (!\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(3) & (!\TRST~combout\ & !\scan_instance|In_Reg|L2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|Mux11~8_combout\);

-- Location: LC_X1_Y9_N7
\scan_instance|In_Reg|L2[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(4) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(4)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(4),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(4));

-- Location: LC_X2_Y9_N6
\dut_instance|add_instance|S2|Mux11~9\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|Mux11~9_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(6) & (\dut_instance|add_instance|S2|Mux11~8_combout\ & !\scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \dut_instance|add_instance|S2|Mux11~8_combout\,
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|Mux11~9_combout\);

-- Location: LC_X2_Y9_N7
\dut_instance|add_instance|S0|Mux0~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|Mux0~8_combout\ = (\dut_instance|add_instance|S2|Mux11~8_combout\ & ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(4) & !\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \dut_instance|add_instance|S2|Mux11~8_combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|Mux0~8_combout\);

-- Location: LC_X10_Y6_N4
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((\scan_instance|cap_shft~0_combout\ & (((\scan_instance|In_Reg|L1\(1))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L1[4]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|In_Reg|L1\(1),
	aclr => GND,
	ena => \scan_instance|In_Reg|L1[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X12_Y3_N6
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(0)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L1\(0),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X12_Y3_N4
\scan_instance|In_Reg|PO[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO\(0) = LCELL((((\scan_instance|In_Reg|L2\(0) & !\TRST~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO\(0));

-- Location: LC_X1_Y9_N5
\dut_instance|add_instance|S2|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|Mux1~0_combout\ = (!\scan_instance|In_Reg|L2\(6) & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(5) & \scan_instance|In_Reg|L2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(6),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|Mux1~0_combout\);

-- Location: LC_X1_Y9_N6
\scan_instance|In_Reg|PO[4]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[4]~3_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[4]~3_combout\);

-- Location: LC_X1_Y9_N2
\scan_instance|In_Reg|PO[3]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[3]~5_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[3]~5_combout\);

-- Location: LC_X1_Y9_N3
\scan_instance|In_Reg|PO[6]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[6]~2_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[6]~2_combout\);

-- Location: LC_X2_Y8_N6
\dut_instance|add_instance|S0|fsm_state_symbol~14\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol~14_combout\ = (!\scan_instance|In_Reg|PO[1]~4_combout\ & (!\scan_instance|In_Reg|PO[4]~3_combout\ & (\dut_instance|add_instance|S2|Mux11~8_combout\ & !\scan_instance|In_Reg|PO[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \scan_instance|In_Reg|PO[4]~3_combout\,
	datac => \dut_instance|add_instance|S2|Mux11~8_combout\,
	datad => \scan_instance|In_Reg|PO[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|fsm_state_symbol~14_combout\);

-- Location: LC_X1_Y8_N3
\dut_instance|add_instance|S0|fsm_state_symbol~9\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol~9_combout\ = ((\dut_instance|add_instance|S0|Mux0~8_combout\ & ((\dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\) # (!\dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\,
	datac => \dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\,
	datad => \dut_instance|add_instance|S0|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|fsm_state_symbol~9_combout\);

-- Location: LC_X1_Y8_N0
\dut_instance|add_instance|S0|fsm_state_symbol~10\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol~10_combout\ = (!\dut_instance|add_instance|S0|fsm_state_symbol.bomb~regout\ & (!\dut_instance|add_instance|S0|fsm_state_symbol~7_combout\ & (!\scan_instance|In_Reg|PO[1]~4_combout\ & 
-- !\dut_instance|add_instance|S0|fsm_state_symbol~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol.bomb~regout\,
	datab => \dut_instance|add_instance|S0|fsm_state_symbol~7_combout\,
	datac => \scan_instance|In_Reg|PO[1]~4_combout\,
	datad => \dut_instance|add_instance|S0|fsm_state_symbol~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|fsm_state_symbol~10_combout\);

-- Location: LC_X1_Y8_N1
\dut_instance|add_instance|S0|fsm_state_symbol~15\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol~15_combout\ = (((\dut_instance|add_instance|S0|fsm_state_symbol~8_combout\ & !\dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\)) # (!\dut_instance|add_instance|S0|fsm_state_symbol~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0faf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol~8_combout\,
	datac => \dut_instance|add_instance|S0|fsm_state_symbol~10_combout\,
	datad => \dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|fsm_state_symbol~15_combout\);

-- Location: LC_X1_Y8_N5
\dut_instance|add_instance|S0|fsm_state_symbol.bomb\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol.bomb~regout\ = DFFEAS((\dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\ & (!\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut_instance|add_instance|S0|Mux0~8_combout\ & 
-- \dut_instance|add_instance|S0|fsm_state_symbol~15_combout\))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_instance|add_instance|S0|Mux0~8_combout\,
	datad => \dut_instance|add_instance|S0|fsm_state_symbol~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S0|fsm_state_symbol.bomb~regout\);

-- Location: LC_X1_Y8_N7
\dut_instance|add_instance|S0|fsm_state_symbol~11\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol~11_combout\ = (\dut_instance|add_instance|S0|fsm_state_symbol~8_combout\) # (((!\dut_instance|add_instance|S0|fsm_state_symbol~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol~8_combout\,
	datac => \dut_instance|add_instance|S0|fsm_state_symbol~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|fsm_state_symbol~11_combout\);

-- Location: LC_X1_Y8_N8
\dut_instance|add_instance|S0|fsm_state_symbol.phi\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[1]~4_combout\ & (!\dut_instance|add_instance|S0|fsm_state_symbol.bomb~regout\ & ((\dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\) # 
-- (\dut_instance|add_instance|S0|fsm_state_symbol~11_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_instance|add_instance|S0|fsm_state_symbol.bomb~regout\,
	datad => \dut_instance|add_instance|S0|fsm_state_symbol~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\);

-- Location: LC_X1_Y8_N4
\dut_instance|add_instance|S0|fsm_state_symbol.b\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol.b~regout\ = DFFEAS((\dut_instance|add_instance|S0|fsm_state_symbol~15_combout\ & (\dut_instance|add_instance|S0|fsm_state_symbol~14_combout\ & (!\dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\))) # 
-- (!\dut_instance|add_instance|S0|fsm_state_symbol~15_combout\ & (((\dut_instance|add_instance|S0|fsm_state_symbol.b~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol~14_combout\,
	datab => \dut_instance|add_instance|S0|fsm_state_symbol.phi~regout\,
	datac => \dut_instance|add_instance|S0|fsm_state_symbol.b~regout\,
	datad => \dut_instance|add_instance|S0|fsm_state_symbol~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S0|fsm_state_symbol.b~regout\);

-- Location: LC_X2_Y8_N1
\dut_instance|add_instance|S0|fsm_state_symbol~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol~8_combout\ = (\dut_instance|add_instance|S2|Mux1~0_combout\ & (\scan_instance|In_Reg|PO[3]~5_combout\ & (\scan_instance|In_Reg|PO[4]~3_combout\ & \dut_instance|add_instance|S0|fsm_state_symbol.b~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|Mux1~0_combout\,
	datab => \scan_instance|In_Reg|PO[3]~5_combout\,
	datac => \scan_instance|In_Reg|PO[4]~3_combout\,
	datad => \dut_instance|add_instance|S0|fsm_state_symbol.b~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|fsm_state_symbol~8_combout\);

-- Location: LC_X1_Y8_N2
\dut_instance|add_instance|S0|fsm_state_symbol.bo\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\ = DFFEAS((\dut_instance|add_instance|S0|fsm_state_symbol~8_combout\ & (((!\scan_instance|In_Reg|PO[1]~4_combout\)))) # (!\dut_instance|add_instance|S0|fsm_state_symbol~8_combout\ & 
-- (\dut_instance|add_instance|S0|fsm_state_symbol~10_combout\ & (\dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol~8_combout\,
	datab => \dut_instance|add_instance|S0|fsm_state_symbol~10_combout\,
	datac => \dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\,
	datad => \scan_instance|In_Reg|PO[1]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\);

-- Location: LC_X1_Y8_N9
\dut_instance|add_instance|S0|fsm_state_symbol~7\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol~7_combout\ = (\dut_instance|add_instance|S2|Mux1~0_combout\ & (\scan_instance|In_Reg|PO[4]~3_combout\ & (!\scan_instance|In_Reg|PO[3]~5_combout\ & \dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|Mux1~0_combout\,
	datab => \scan_instance|In_Reg|PO[4]~3_combout\,
	datac => \scan_instance|In_Reg|PO[3]~5_combout\,
	datad => \dut_instance|add_instance|S0|fsm_state_symbol.bo~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|fsm_state_symbol~7_combout\);

-- Location: LC_X1_Y8_N6
\dut_instance|add_instance|S0|fsm_state_symbol.bom\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\ = DFFEAS((\dut_instance|add_instance|S0|fsm_state_symbol~11_combout\ & (\dut_instance|add_instance|S0|fsm_state_symbol~7_combout\ & (!\scan_instance|In_Reg|PO[1]~4_combout\))) # 
-- (!\dut_instance|add_instance|S0|fsm_state_symbol~11_combout\ & (((\dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S0|fsm_state_symbol~7_combout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_instance|add_instance|S0|fsm_state_symbol~11_combout\,
	datad => \dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\);

-- Location: LC_X2_Y7_N7
\dut_instance|add_instance|S2|fsm_state_symbol~18\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~18_combout\ = (\dut_instance|add_instance|S2|fsm_state_symbol.terr~regout\ & (((!\dut_instance|add_instance|S2|Mux1~0_combout\) # (!\scan_instance|In_Reg|PO[4]~3_combout\)) # 
-- (!\scan_instance|In_Reg|PO[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[3]~5_combout\,
	datab => \scan_instance|In_Reg|PO[4]~3_combout\,
	datac => \dut_instance|add_instance|S2|Mux1~0_combout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol.terr~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~18_combout\);

-- Location: LC_X2_Y8_N7
\dut_instance|add_instance|S2|fsm_state_symbol~20\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~20_combout\ = (!\scan_instance|In_Reg|L2\(1) & (!\scan_instance|In_Reg|L2\(5) & (\scan_instance|In_Reg|PO[4]~3_combout\ & !\scan_instance|In_Reg|L2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \scan_instance|In_Reg|PO[4]~3_combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~20_combout\);

-- Location: LC_X3_Y7_N3
\dut_instance|add_instance|S2|fsm_state_symbol.terror\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol.terror~regout\ = DFFEAS((\dut_instance|add_instance|S2|Mux11~9_combout\ & (\dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(1))))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \dut_instance|add_instance|S2|Mux11~9_combout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\,
	datad => \TRST~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S2|fsm_state_symbol.terror~regout\);

-- Location: LC_X3_Y7_N7
\dut_instance|add_instance|S2|fsm_state_symbol~15\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~15_combout\ = (\dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\) # ((\dut_instance|add_instance|S2|fsm_state_symbol.te~regout\) # ((\dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\,
	datab => \dut_instance|add_instance|S2|fsm_state_symbol.te~regout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~15_combout\);

-- Location: LC_X2_Y9_N0
\dut_instance|add_instance|S2|fsm_state_symbol~11\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~11_combout\ = (!\scan_instance|In_Reg|L2\(3) & (!\scan_instance|In_Reg|L2\(5) & (!\TRST~combout\ & \scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(3),
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~11_combout\);

-- Location: LC_X1_Y9_N8
\scan_instance|In_Reg|PO[2]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~1_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~1_combout\);

-- Location: LC_X3_Y7_N8
\dut_instance|add_instance|S2|fsm_state_symbol~13\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~13_combout\ = (\scan_instance|In_Reg|PO[2]~1_combout\ & (((!\scan_instance|In_Reg|PO[6]~2_combout\ & \dut_instance|add_instance|S2|fsm_state_symbol.t~regout\)))) # (!\scan_instance|In_Reg|PO[2]~1_combout\ & 
-- (!\dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\ & (\scan_instance|In_Reg|PO[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1c10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\,
	datab => \scan_instance|In_Reg|PO[2]~1_combout\,
	datac => \scan_instance|In_Reg|PO[6]~2_combout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol.t~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~13_combout\);

-- Location: LC_X3_Y7_N9
\dut_instance|add_instance|S2|fsm_state_symbol~14\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~14_combout\ = (\scan_instance|In_Reg|PO[1]~4_combout\) # ((\dut_instance|add_instance|S2|fsm_state_symbol.terror~regout\) # ((\dut_instance|add_instance|S2|fsm_state_symbol~11_combout\ & 
-- \dut_instance|add_instance|S2|fsm_state_symbol~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol~11_combout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol.terror~regout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~14_combout\);

-- Location: LC_X3_Y7_N1
\dut_instance|add_instance|S2|fsm_state_symbol~16\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~16_combout\ = (\dut_instance|add_instance|S2|fsm_state_symbol~12_combout\) # ((\dut_instance|add_instance|S2|fsm_state_symbol~14_combout\) # ((\dut_instance|add_instance|S2|Mux11~9_combout\ & 
-- \dut_instance|add_instance|S2|fsm_state_symbol~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|Mux11~9_combout\,
	datab => \dut_instance|add_instance|S2|fsm_state_symbol~12_combout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol~15_combout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~16_combout\);

-- Location: LC_X3_Y7_N4
\dut_instance|add_instance|S2|fsm_state_symbol.phi\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[1]~4_combout\ & (!\dut_instance|add_instance|S2|fsm_state_symbol.terror~regout\ & ((\dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\) # 
-- (\dut_instance|add_instance|S2|fsm_state_symbol~16_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol.terror~regout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\);

-- Location: LC_X4_Y7_N6
\dut_instance|add_instance|S2|fsm_state_symbol~21\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~21_combout\ = (!\scan_instance|In_Reg|L2\(2) & (((\scan_instance|In_Reg|L2\(6) & !\dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut_instance|add_instance|S2|fsm_state_symbol.phi~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~21_combout\);

-- Location: LC_X3_Y7_N2
\dut_instance|add_instance|S2|fsm_state_symbol.t\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol.t~regout\ = DFFEAS((\dut_instance|add_instance|S2|fsm_state_symbol~20_combout\ & ((\dut_instance|add_instance|S2|fsm_state_symbol~21_combout\) # ((\dut_instance|add_instance|S2|fsm_state_symbol.t~regout\ & 
-- !\dut_instance|add_instance|S2|fsm_state_symbol~16_combout\)))) # (!\dut_instance|add_instance|S2|fsm_state_symbol~20_combout\ & (\dut_instance|add_instance|S2|fsm_state_symbol.t~regout\ & ((!\dut_instance|add_instance|S2|fsm_state_symbol~16_combout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol~20_combout\,
	datab => \dut_instance|add_instance|S2|fsm_state_symbol.t~regout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol~21_combout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S2|fsm_state_symbol.t~regout\);

-- Location: LC_X4_Y7_N2
\dut_instance|add_instance|S2|fsm_state_symbol~24\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~24_combout\ = (\scan_instance|In_Reg|L2\(2) & (((!\scan_instance|In_Reg|L2\(6) & \dut_instance|add_instance|S2|fsm_state_symbol.t~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut_instance|add_instance|S2|fsm_state_symbol.t~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~24_combout\);

-- Location: LC_X3_Y7_N0
\dut_instance|add_instance|S2|fsm_state_symbol.te\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol.te~regout\ = DFFEAS((\dut_instance|add_instance|S2|fsm_state_symbol~20_combout\ & ((\dut_instance|add_instance|S2|fsm_state_symbol~24_combout\) # ((\dut_instance|add_instance|S2|fsm_state_symbol.te~regout\ & 
-- !\dut_instance|add_instance|S2|fsm_state_symbol~16_combout\)))) # (!\dut_instance|add_instance|S2|fsm_state_symbol~20_combout\ & (\dut_instance|add_instance|S2|fsm_state_symbol.te~regout\ & 
-- ((!\dut_instance|add_instance|S2|fsm_state_symbol~16_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol~20_combout\,
	datab => \dut_instance|add_instance|S2|fsm_state_symbol.te~regout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol~24_combout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S2|fsm_state_symbol.te~regout\);

-- Location: LC_X3_Y7_N5
\dut_instance|add_instance|S2|fsm_state_symbol.ter\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut_instance|add_instance|S2|Mux11~9_combout\ & ((\dut_instance|add_instance|S2|fsm_state_symbol.te~regout\))) # 
-- (!\dut_instance|add_instance|S2|Mux11~9_combout\ & (\dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol.te~regout\,
	datad => \dut_instance|add_instance|S2|Mux11~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\);

-- Location: LC_X2_Y7_N8
\dut_instance|add_instance|S2|fsm_state_symbol.terr\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol.terr~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut_instance|add_instance|S2|fsm_state_symbol~18_combout\) # ((\dut_instance|add_instance|S2|Mux11~9_combout\ & 
-- \dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol~18_combout\,
	datab => \dut_instance|add_instance|S2|Mux11~9_combout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol.ter~regout\,
	datad => \scan_instance|In_Reg|PO[1]~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S2|fsm_state_symbol.terr~regout\);

-- Location: LC_X2_Y7_N6
\dut_instance|add_instance|S2|fsm_state_symbol~12\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol~12_combout\ = (\dut_instance|add_instance|S2|fsm_state_symbol.terr~regout\ & (\dut_instance|add_instance|S2|Mux1~0_combout\ & (\scan_instance|In_Reg|PO[3]~5_combout\ & 
-- \scan_instance|In_Reg|PO[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol.terr~regout\,
	datab => \dut_instance|add_instance|S2|Mux1~0_combout\,
	datac => \scan_instance|In_Reg|PO[3]~5_combout\,
	datad => \scan_instance|In_Reg|PO[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|fsm_state_symbol~12_combout\);

-- Location: LC_X3_Y7_N6
\dut_instance|add_instance|S2|fsm_state_symbol.terro\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\ = DFFEAS((\dut_instance|add_instance|S2|fsm_state_symbol~16_combout\ & (\dut_instance|add_instance|S2|fsm_state_symbol~12_combout\ & (!\scan_instance|In_Reg|PO[1]~4_combout\))) # 
-- (!\dut_instance|add_instance|S2|fsm_state_symbol~16_combout\ & (((\dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S2|fsm_state_symbol~12_combout\,
	datab => \scan_instance|In_Reg|PO[1]~4_combout\,
	datac => \dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol~16_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\);

-- Location: LC_X2_Y7_N5
\scan_instance|Out_Reg|mux1[0]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~1_combout\ = (\dut_instance|add_instance|S2|Mux11~9_combout\ & ((\dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\) # ((\dut_instance|add_instance|S0|Mux0~8_combout\ & 
-- \dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\)))) # (!\dut_instance|add_instance|S2|Mux11~9_combout\ & (\dut_instance|add_instance|S0|Mux0~8_combout\ & (\dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|Mux11~9_combout\,
	datab => \dut_instance|add_instance|S0|Mux0~8_combout\,
	datac => \dut_instance|add_instance|S0|fsm_state_symbol.bom~regout\,
	datad => \dut_instance|add_instance|S2|fsm_state_symbol.terro~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~1_combout\);

-- Location: LC_X2_Y9_N2
\dut_instance|add_instance|S1|fsm_state_symbol~14\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol~14_combout\ = (\scan_instance|In_Reg|L2\(3) & (\scan_instance|In_Reg|L2\(4) & (!\TRST~combout\ & !\scan_instance|In_Reg|L2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(3),
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|fsm_state_symbol~14_combout\);

-- Location: LC_X1_Y9_N9
\dut_instance|add_instance|S3|fsm_state_symbol~17\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~17_combout\ = ((!\scan_instance|In_Reg|L2\(4) & (!\scan_instance|In_Reg|L2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(4),
	datac => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~17_combout\);

-- Location: LC_X1_Y9_N0
\dut_instance|add_instance|S3|fsm_state_symbol~38\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~38_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2) & (\scan_instance|In_Reg|L2\(5) & \dut_instance|add_instance|S3|fsm_state_symbol~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut_instance|add_instance|S3|fsm_state_symbol~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~38_combout\);

-- Location: LC_X2_Y9_N1
\dut_instance|add_instance|S1|fsm_state_symbol~22\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol~22_combout\ = (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(2) & (!\scan_instance|In_Reg|L2\(1) & \dut_instance|add_instance|S2|fsm_state_symbol~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_instance|add_instance|S2|fsm_state_symbol~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|fsm_state_symbol~22_combout\);

-- Location: LC_X2_Y7_N9
\dut_instance|add_instance|S3|fsm_state_symbol.knife\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol.knife~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut_instance|add_instance|S1|fsm_state_symbol~22_combout\ & (\dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\ & 
-- !\scan_instance|In_Reg|PO[6]~2_combout\))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut_instance|add_instance|S1|fsm_state_symbol~22_combout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\,
	datad => \scan_instance|In_Reg|PO[6]~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S3|fsm_state_symbol.knife~regout\);

-- Location: LC_X1_Y7_N1
\dut_instance|add_instance|S3|fsm_state_symbol.phi\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol.phi~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[1]~4_combout\ & (!\dut_instance|add_instance|S3|fsm_state_symbol.knife~regout\ & ((\dut_instance|add_instance|S3|fsm_state_symbol.phi~regout\) # 
-- (\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0054",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol.phi~regout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol~28_combout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol.knife~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S3|fsm_state_symbol.phi~regout\);

-- Location: LC_X1_Y7_N0
\dut_instance|add_instance|S3|fsm_state_symbol.k\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol.k~regout\ = DFFEAS((\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\ & (((\dut_instance|add_instance|S3|fsm_state_symbol~27_combout\)))) # 
-- (!\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\ & (\dut_instance|add_instance|S3|fsm_state_symbol.k~regout\)), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S3|fsm_state_symbol.k~regout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol~27_combout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol~28_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S3|fsm_state_symbol.k~regout\);

-- Location: LC_X2_Y9_N3
\dut_instance|add_instance|S3|fsm_state_symbol~35\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~35_combout\ = (\dut_instance|add_instance|S1|fsm_state_symbol~14_combout\ & ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(2) & !\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ab00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_instance|add_instance|S1|fsm_state_symbol~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~35_combout\);

-- Location: LC_X1_Y7_N2
\dut_instance|add_instance|S3|fsm_state_symbol~37\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~37_combout\ = (!\TRST~combout\ & (\dut_instance|add_instance|S3|fsm_state_symbol.k~regout\ & (\dut_instance|add_instance|S3|fsm_state_symbol~35_combout\ & \scan_instance|In_Reg|L2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol.k~regout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol~35_combout\,
	datad => \scan_instance|In_Reg|L2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~37_combout\);

-- Location: LC_X1_Y7_N4
\dut_instance|add_instance|S3|fsm_state_symbol~25\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~25_combout\ = (!\dut_instance|add_instance|S3|fsm_state_symbol.knife~regout\ & (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((!\dut_instance|add_instance|S3|fsm_state_symbol~23_combout\) # 
-- (!\dut_instance|add_instance|S3|fsm_state_symbol~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|fsm_state_symbol~35_combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol.knife~regout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol~23_combout\,
	datad => \scan_instance|In_Reg|PO[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~25_combout\);

-- Location: LC_X1_Y7_N6
\dut_instance|add_instance|S3|fsm_state_symbol~27\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~27_combout\ = (!\dut_instance|add_instance|S3|fsm_state_symbol~26_combout\ & (!\dut_instance|add_instance|S3|fsm_state_symbol~37_combout\ & (\dut_instance|add_instance|S3|fsm_state_symbol~25_combout\ & 
-- !\dut_instance|add_instance|S3|fsm_state_symbol~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|fsm_state_symbol~26_combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol~37_combout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol~25_combout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~27_combout\);

-- Location: LC_X1_Y7_N7
\dut_instance|add_instance|S3|fsm_state_symbol~28\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~28_combout\ = ((\scan_instance|In_Reg|PO[3]~5_combout\ & (\dut_instance|add_instance|S3|fsm_state_symbol~38_combout\ & !\dut_instance|add_instance|S3|fsm_state_symbol.phi~regout\))) # 
-- (!\dut_instance|add_instance|S3|fsm_state_symbol~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[3]~5_combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol~38_combout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol.phi~regout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~28_combout\);

-- Location: LC_X1_Y7_N9
\dut_instance|add_instance|S3|fsm_state_symbol.kn\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol.kn~regout\ = DFFEAS((\scan_instance|In_Reg|PO[1]~4_combout\ & (!\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\ & ((\dut_instance|add_instance|S3|fsm_state_symbol.kn~regout\)))) # 
-- (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut_instance|add_instance|S3|fsm_state_symbol~37_combout\) # ((!\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\ & \dut_instance|add_instance|S3|fsm_state_symbol.kn~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol~28_combout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol~37_combout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol.kn~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S3|fsm_state_symbol.kn~regout\);

-- Location: LC_X1_Y7_N3
\dut_instance|add_instance|S3|fsm_state_symbol~26\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~26_combout\ = (\dut_instance|add_instance|S3|fsm_state_symbol~38_combout\ & (!\scan_instance|In_Reg|PO[3]~5_combout\ & (!\scan_instance|In_Reg|PO[1]~4_combout\ & 
-- \dut_instance|add_instance|S3|fsm_state_symbol.kn~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|fsm_state_symbol~38_combout\,
	datab => \scan_instance|In_Reg|PO[3]~5_combout\,
	datac => \scan_instance|In_Reg|PO[1]~4_combout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol.kn~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~26_combout\);

-- Location: LC_X1_Y7_N8
\dut_instance|add_instance|S3|fsm_state_symbol.kni\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol.kni~regout\ = DFFEAS((\dut_instance|add_instance|S3|fsm_state_symbol~26_combout\ & (((!\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\ & \dut_instance|add_instance|S3|fsm_state_symbol.kni~regout\)) 
-- # (!\scan_instance|In_Reg|PO[1]~4_combout\))) # (!\dut_instance|add_instance|S3|fsm_state_symbol~26_combout\ & (!\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\ & ((\dut_instance|add_instance|S3|fsm_state_symbol.kni~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S3|fsm_state_symbol~26_combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol~28_combout\,
	datac => \scan_instance|In_Reg|PO[1]~4_combout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol.kni~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S3|fsm_state_symbol.kni~regout\);

-- Location: LC_X1_Y7_N5
\dut_instance|add_instance|S3|fsm_state_symbol~23\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~23_combout\ = ((\dut_instance|add_instance|S3|fsm_state_symbol.kni~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut_instance|add_instance|S3|fsm_state_symbol.kni~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~23_combout\);

-- Location: LC_X2_Y8_N5
\dut_instance|add_instance|S3|fsm_state_symbol~24\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~24_combout\ = (!\scan_instance|In_Reg|PO[2]~1_combout\ & (\dut_instance|add_instance|S1|fsm_state_symbol~14_combout\ & (!\scan_instance|In_Reg|PO[1]~4_combout\ & 
-- \dut_instance|add_instance|S3|fsm_state_symbol~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~1_combout\,
	datab => \dut_instance|add_instance|S1|fsm_state_symbol~14_combout\,
	datac => \scan_instance|In_Reg|PO[1]~4_combout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~24_combout\);

-- Location: LC_X2_Y7_N0
\dut_instance|add_instance|S3|fsm_state_symbol.knif\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\ = DFFEAS((\scan_instance|In_Reg|PO[1]~4_combout\ & (\dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\ & ((!\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\)))) # 
-- (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut_instance|add_instance|S3|fsm_state_symbol~24_combout\) # ((\dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\ & !\dut_instance|add_instance|S3|fsm_state_symbol~28_combout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50dc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol~24_combout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol~28_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\);

-- Location: LC_X2_Y7_N4
\dut_instance|add_instance|S3|fsm_state_symbol~36\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|fsm_state_symbol~36_combout\ = (\dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\ & (\dut_instance|add_instance|S1|fsm_state_symbol~22_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \dut_instance|add_instance|S3|fsm_state_symbol.knif~regout\,
	datac => \dut_instance|add_instance|S1|fsm_state_symbol~22_combout\,
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|fsm_state_symbol~36_combout\);

-- Location: LC_X3_Y9_N1
\scan_instance|In_Reg|PO[5]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[5]~0_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[5]~0_combout\);

-- Location: LC_X3_Y9_N2
\dut_instance|add_instance|S1|fsm_state_symbol.gun\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol.gun~regout\ = DFFEAS((\dut_instance|add_instance|S3|fsm_state_symbol~35_combout\ & (\scan_instance|In_Reg|PO[5]~0_combout\ & (!\scan_instance|In_Reg|PO[1]~4_combout\ & 
-- \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S3|fsm_state_symbol~35_combout\,
	datab => \scan_instance|In_Reg|PO[5]~0_combout\,
	datac => \scan_instance|In_Reg|PO[1]~4_combout\,
	datad => \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S1|fsm_state_symbol.gun~regout\);

-- Location: LC_X3_Y9_N3
\dut_instance|add_instance|S1|fsm_state_symbol~24\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol~24_combout\ = (!\dut_instance|add_instance|S1|fsm_state_symbol~23_combout\ & (!\dut_instance|add_instance|S1|fsm_state_symbol.gun~regout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \dut_instance|add_instance|S1|fsm_state_symbol~23_combout\,
	datad => \dut_instance|add_instance|S1|fsm_state_symbol.gun~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|fsm_state_symbol~24_combout\);

-- Location: LC_X3_Y9_N6
\dut_instance|add_instance|S1|fsm_state_symbol~16\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol~16_combout\ = (\dut_instance|add_instance|S1|fsm_state_symbol~15_combout\) # ((\dut_instance|add_instance|S1|fsm_state_symbol~21_combout\) # ((!\dut_instance|add_instance|S1|fsm_state_symbol~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S1|fsm_state_symbol~15_combout\,
	datab => \dut_instance|add_instance|S1|fsm_state_symbol~21_combout\,
	datad => \dut_instance|add_instance|S1|fsm_state_symbol~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|fsm_state_symbol~16_combout\);

-- Location: LC_X3_Y9_N5
\dut_instance|add_instance|S1|fsm_state_symbol.phi\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol.phi~regout\ = DFFEAS((!\scan_instance|In_Reg|PO[1]~4_combout\ & (!\dut_instance|add_instance|S1|fsm_state_symbol.gun~regout\ & ((\dut_instance|add_instance|S1|fsm_state_symbol~16_combout\) # 
-- (\dut_instance|add_instance|S1|fsm_state_symbol.phi~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut_instance|add_instance|S1|fsm_state_symbol.gun~regout\,
	datac => \dut_instance|add_instance|S1|fsm_state_symbol~16_combout\,
	datad => \dut_instance|add_instance|S1|fsm_state_symbol.phi~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S1|fsm_state_symbol.phi~regout\);

-- Location: LC_X3_Y9_N4
\dut_instance|add_instance|S1|fsm_state_symbol~15\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol~15_combout\ = (!\dut_instance|add_instance|S1|fsm_state_symbol.phi~regout\ & (!\scan_instance|In_Reg|PO[5]~0_combout\ & (\scan_instance|In_Reg|PO[2]~1_combout\ & 
-- \dut_instance|add_instance|S1|fsm_state_symbol~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S1|fsm_state_symbol.phi~regout\,
	datab => \scan_instance|In_Reg|PO[5]~0_combout\,
	datac => \scan_instance|In_Reg|PO[2]~1_combout\,
	datad => \dut_instance|add_instance|S1|fsm_state_symbol~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|fsm_state_symbol~15_combout\);

-- Location: LC_X3_Y9_N9
\dut_instance|add_instance|S1|fsm_state_symbol.g\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol.g~regout\ = DFFEAS((\dut_instance|add_instance|S1|fsm_state_symbol~24_combout\ & (!\dut_instance|add_instance|S1|fsm_state_symbol~21_combout\ & ((\dut_instance|add_instance|S1|fsm_state_symbol~15_combout\) # 
-- (\dut_instance|add_instance|S1|fsm_state_symbol.g~regout\)))), GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \dut_instance|add_instance|S1|fsm_state_symbol~15_combout\,
	datab => \dut_instance|add_instance|S1|fsm_state_symbol~24_combout\,
	datac => \dut_instance|add_instance|S1|fsm_state_symbol~21_combout\,
	datad => \dut_instance|add_instance|S1|fsm_state_symbol.g~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S1|fsm_state_symbol.g~regout\);

-- Location: LC_X3_Y9_N7
\dut_instance|add_instance|S1|fsm_state_symbol~23\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol~23_combout\ = (\dut_instance|add_instance|S1|fsm_state_symbol~22_combout\ & (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(6) & \dut_instance|add_instance|S1|fsm_state_symbol.g~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S1|fsm_state_symbol~22_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut_instance|add_instance|S1|fsm_state_symbol.g~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|fsm_state_symbol~23_combout\);

-- Location: LC_X3_Y9_N0
\dut_instance|add_instance|S1|fsm_state_symbol.gu\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\ = DFFEAS((\scan_instance|In_Reg|PO[1]~4_combout\ & (((!\dut_instance|add_instance|S1|fsm_state_symbol~16_combout\ & \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\)))) # 
-- (!\scan_instance|In_Reg|PO[1]~4_combout\ & ((\dut_instance|add_instance|S1|fsm_state_symbol~23_combout\) # ((!\dut_instance|add_instance|S1|fsm_state_symbol~16_combout\ & \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\)))), 
-- GLOBAL(\scan_instance|In_Reg|PO\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \scan_instance|In_Reg|PO\(0),
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \dut_instance|add_instance|S1|fsm_state_symbol~23_combout\,
	datac => \dut_instance|add_instance|S1|fsm_state_symbol~16_combout\,
	datad => \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\);

-- Location: LC_X3_Y9_N8
\dut_instance|add_instance|S1|fsm_state_symbol~21\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|fsm_state_symbol~21_combout\ = (\scan_instance|In_Reg|L2\(5) & (!\TRST~combout\ & (\dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\ & \dut_instance|add_instance|S3|fsm_state_symbol~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(5),
	datab => \TRST~combout\,
	datac => \dut_instance|add_instance|S1|fsm_state_symbol.gu~regout\,
	datad => \dut_instance|add_instance|S3|fsm_state_symbol~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|fsm_state_symbol~21_combout\);

-- Location: LC_X2_Y7_N1
\scan_instance|Out_Reg|mux1[0]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~0_combout\ = (\scan_instance|cap_shft~0_combout\ & (\scan_instance|In_Reg|L1\(0))) # (!\scan_instance|cap_shft~0_combout\ & (((\dut_instance|add_instance|S3|fsm_state_symbol~36_combout\) # 
-- (\dut_instance|add_instance|S1|fsm_state_symbol~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L1\(0),
	datab => \scan_instance|cap_shft~0_combout\,
	datac => \dut_instance|add_instance|S3|fsm_state_symbol~36_combout\,
	datad => \dut_instance|add_instance|S1|fsm_state_symbol~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~0_combout\);

-- Location: LC_X2_Y7_N2
\scan_instance|Out_Reg|mux1[0]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|mux1[0]~2_combout\ = (\scan_instance|Out_Reg|mux1[0]~0_combout\) # ((!\scan_instance|In_Reg|PO[1]~4_combout\ & (!\scan_instance|cap_shft~0_combout\ & \scan_instance|Out_Reg|mux1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~4_combout\,
	datab => \scan_instance|cap_shft~0_combout\,
	datac => \scan_instance|Out_Reg|mux1[0]~1_combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|mux1[0]~2_combout\);

-- Location: LC_X2_Y7_N3
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\scan_instance|Selector0~0_combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\scan_instance|Selector0~0_combout\ & ((\TRST~combout\ & (\scan_instance|Out_Reg|L1\(0))) # (!\TRST~combout\ & 
-- ((\scan_instance|Out_Reg|mux1[0]~2_combout\))))), GLOBAL(\TCLK~combout\), VCC, , , , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aba8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1\(0),
	datab => \scan_instance|Selector0~0_combout\,
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|mux1[0]~2_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\TDO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \scan_instance|Out_Reg|L1\(0),
	oe => VCC,
	padio => ww_TDO);
END structure;


