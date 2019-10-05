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

-- DATE "02/15/2019 16:00:56"

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
SIGNAL \scan_instance|current_state.s_shift~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_update~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_idle~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_DR~regout\ : std_logic;
SIGNAL \scan_instance|current_state.s_capture~regout\ : std_logic;
SIGNAL \scan_instance|Selector3~0\ : std_logic;
SIGNAL \TDI~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[0]~27_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|L2~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[3]~37_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[3]~38_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[3]~63_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~44_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[7]~54_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|S~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l2[2]~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[9]~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l3[7]~7_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~22_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[0]~24_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[8]~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l2[5]~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[0]~19_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l3[3]~5_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l2[1]~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l3[3]~6_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[0]~18_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l1[6]~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l1[7]~4_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~59_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~60_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA1|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA2|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA3|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA4|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA5|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA6|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA7|sum~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~61_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m6|FA7|sum~8_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[10]~4_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[1]~3_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[13]~10_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[12]~8_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[11]~6_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA2|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA3|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA4|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA5|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA6|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m6|FA7|sum~13_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m6|FA7|sum~9_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[0]~2_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[2]~5_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA6|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA2|sum~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA3|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m1|FA3|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA4|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m1|FA4|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA5|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m1|FA5|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m1|FA6|sum~combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[3]~7_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m1|FA3|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m1|FA4|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m2|FA4|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m1|FA5|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m2|FA5|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m2|FA6|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m2|FA5|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m2|FA4|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m3|FA5|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m3|FA6|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m3|FA5|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m4|FA6|Cout~0_combout\ : std_logic;
SIGNAL \scan_instance|In_Reg|PO[4]~9_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m3|FA6|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m6|FA7|sum~11_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m6|FA7|sum~6_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m4|FA6|sum~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m5|FA6|Cout~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m2|FA6|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m1|FA6|Cout~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m6|FA7|sum~12_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m6|FA7|sum~7_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m6|FA7|sum~10_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~62_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l2[6]~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l3[6]~8_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA6|sum~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l2[4]~1_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l1[5]~3_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l3[2]~3_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l3[5]~5_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l3[2]~4_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~55_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~56_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~57_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m5|FA6|sum~2_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~58_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m4|FA5|sum~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA5|sum~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~45_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l2[3]~4_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|Z[7]~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~65_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[5]~64_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l3[1]~7_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l3[5]~4_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l3[5]~6_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~50_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~51_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~52_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m3|FA4|sum~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA4|sum~8_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l2[2]~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|S~combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l3[0]~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l3[4]~2_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l3[4]~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~46_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~47_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~48_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA3|sum~8_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~43_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[3]~32_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~40_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[3]~34_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l2[3]~3_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~41_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~42_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA2|sum~8_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~39_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~33_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l2[2]~2_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~35_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~36_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S3|m0|FA1|sum~4_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l1[1]~0_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S2|l1[2]~1_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~28_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~29_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1[0]~23_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA1|sum~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~30_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~31_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S0|FA0|S~combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~25_combout\ : std_logic;
SIGNAL \dut_instance|add_instance|S1|l1[0]~0_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~20_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~21_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1~26_combout\ : std_logic;
SIGNAL \scan_instance|Out_Reg|L1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L2\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dut_instance|add_instance|S3|p0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut_instance|add_instance|S3|p5\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \scan_instance|In_Reg|L1\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dut_instance|add_instance|S3|p1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut_instance|add_instance|S3|p2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut_instance|add_instance|S3|p3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut_instance|add_instance|S3|p4\ : std_logic_vector(7 DOWNTO 0);

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

-- Location: LC_X7_Y9_N4
\scan_instance|current_state.s_shift\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Selector3~0\ = ((!\TMS~combout\ & ((C1_current_state.s_shift) # (\scan_instance|current_state.s_capture~regout\))))
-- \scan_instance|current_state.s_shift~regout\ = DFFEAS(\scan_instance|Selector3~0\, GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Selector3~0\,
	regout => \scan_instance|current_state.s_shift~regout\);

-- Location: LC_X7_Y9_N5
\scan_instance|current_state.s_update\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_update~regout\ = DFFEAS((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # ((\scan_instance|current_state.s_capture~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|current_state.s_shift~regout\,
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_capture~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_update~regout\);

-- Location: LC_X7_Y9_N7
\scan_instance|current_state.s_idle\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_idle~regout\ = DFFEAS(((!\scan_instance|current_state.s_update~regout\ & ((\scan_instance|current_state.s_idle~regout\) # (\TMS~combout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \scan_instance|current_state.s_update~regout\,
	datad => \TMS~combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_idle~regout\);

-- Location: LC_X7_Y9_N9
\scan_instance|current_state.s_DR\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_DR~regout\ = DFFEAS(((\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\) # (!\scan_instance|current_state.s_idle~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|current_state.s_DR~regout\,
	datac => \scan_instance|current_state.s_idle~regout\,
	datad => \TMS~combout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_DR~regout\);

-- Location: LC_X7_Y9_N8
\scan_instance|current_state.s_capture\ : maxv_lcell
-- Equation(s):
-- \scan_instance|current_state.s_capture~regout\ = DFFEAS(((!\TMS~combout\ & ((\scan_instance|current_state.s_DR~regout\)))), GLOBAL(\TCLK~combout\), !GLOBAL(\TRST~combout\), , , , , , )

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
	datab => \TMS~combout\,
	datad => \scan_instance|current_state.s_DR~regout\,
	aclr => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|current_state.s_capture~regout\);

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

-- Location: LC_X7_Y9_N2
\scan_instance|Out_Reg|L1[0]~27\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[0]~27_combout\ = (\TRST~combout\) # ((!\scan_instance|current_state.s_update~regout\ & (\scan_instance|current_state.s_idle~regout\ & !\TMS~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|current_state.s_update~regout\,
	datab => \scan_instance|current_state.s_idle~regout\,
	datac => \TRST~combout\,
	datad => \TMS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[0]~27_combout\);

-- Location: LC_X6_Y6_N9
\scan_instance|In_Reg|L1[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(17) = DFFEAS(((\TDI~combout\ & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TDI~combout\,
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(17));

-- Location: LC_X7_Y9_N3
\scan_instance|In_Reg|L2~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2~1_combout\ = (\TRST~combout\) # ((\TMS~combout\ & ((\scan_instance|current_state.s_shift~regout\) # (\scan_instance|current_state.s_capture~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
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
	combout => \scan_instance|In_Reg|L2~1_combout\);

-- Location: LC_X6_Y6_N0
\scan_instance|In_Reg|L2[17]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(17) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(17))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(17),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(17));

-- Location: LC_X6_Y6_N4
\scan_instance|In_Reg|L1[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(16) = DFFEAS(((\scan_instance|In_Reg|L1\(17) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(17),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(16));

-- Location: LC_X6_Y6_N7
\scan_instance|In_Reg|L2[16]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(16) = DFFEAS((\scan_instance|In_Reg|L1\(16) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(16),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(16));

-- Location: LC_X4_Y6_N4
\scan_instance|Out_Reg|L1[3]~37\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[3]~37_combout\ = (!\TRST~combout\ & ((\scan_instance|Selector3~0\) # ((!\scan_instance|In_Reg|L2\(17) & \scan_instance|In_Reg|L2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(17),
	datab => \scan_instance|In_Reg|L2\(16),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[3]~37_combout\);

-- Location: LC_X8_Y9_N6
\scan_instance|In_Reg|L1[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(15) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(16) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(16),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(15));

-- Location: LC_X8_Y9_N2
\scan_instance|In_Reg|L1[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(14) = DFFEAS(((!\TRST~combout\ & (\scan_instance|In_Reg|L1\(15) & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(15),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(14));

-- Location: LC_X8_Y9_N8
\scan_instance|In_Reg|L1[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(13) = DFFEAS(((\scan_instance|In_Reg|L1\(14) & (!\TRST~combout\ & \scan_instance|Selector3~0\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(14),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(13));

-- Location: LC_X8_Y9_N5
\scan_instance|In_Reg|L1[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(12) = DFFEAS((\scan_instance|In_Reg|L1\(13) & (!\TRST~combout\ & ((\scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(13),
	datab => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(12));

-- Location: LC_X9_Y8_N7
\scan_instance|In_Reg|L1[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(11) = DFFEAS((\scan_instance|In_Reg|L1\(12) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(12),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(11));

-- Location: LC_X9_Y7_N1
\scan_instance|In_Reg|L1[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(10) = DFFEAS((\scan_instance|Selector3~0\ & (((\scan_instance|In_Reg|L1\(11) & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datac => \scan_instance|In_Reg|L1\(11),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(10));

-- Location: LC_X8_Y7_N2
\scan_instance|In_Reg|L2[10]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(10) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(10)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(10),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(10));

-- Location: LC_X4_Y6_N1
\scan_instance|Out_Reg|L1[3]~38\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[3]~38_combout\ = (\TRST~combout\) # ((\scan_instance|Selector3~0\) # ((!\scan_instance|In_Reg|L2\(17) & !\scan_instance|In_Reg|L2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(17),
	datab => \scan_instance|In_Reg|L2\(16),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[3]~38_combout\);

-- Location: LC_X4_Y6_N3
\scan_instance|Out_Reg|L1[3]~63\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[3]~63_combout\ = (!\scan_instance|Out_Reg|L1[3]~38_combout\ & (((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(10))) # (!\scan_instance|Out_Reg|L1[3]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~37_combout\,
	datab => \scan_instance|In_Reg|L2\(10),
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[3]~63_combout\);

-- Location: LC_X4_Y6_N7
\scan_instance|Out_Reg|L1[5]~44\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~44_combout\ = (!\TRST~combout\ & ((\scan_instance|Selector3~0\) # ((\scan_instance|In_Reg|L2\(17) & \scan_instance|In_Reg|L2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(17),
	datab => \scan_instance|In_Reg|L2\(16),
	datac => \TRST~combout\,
	datad => \scan_instance|Selector3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~44_combout\);

-- Location: LC_X9_Y7_N5
\scan_instance|In_Reg|L1[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(9) = DFFEAS((\scan_instance|Selector3~0\ & (\scan_instance|In_Reg|L1\(10) & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|In_Reg|L1\(10),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(9));

-- Location: LC_X9_Y7_N6
\scan_instance|In_Reg|L1[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(8) = DFFEAS((\scan_instance|Selector3~0\ & (((\scan_instance|In_Reg|L1\(9) & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datac => \scan_instance|In_Reg|L1\(9),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(8));

-- Location: LC_X6_Y6_N6
\scan_instance|In_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(7) = DFFEAS(((\scan_instance|In_Reg|L1\(8) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(8),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(7));

-- Location: LC_X6_Y6_N1
\scan_instance|In_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(6) = DFFEAS((\scan_instance|Selector3~0\ & (((\scan_instance|In_Reg|L1\(7) & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datac => \scan_instance|In_Reg|L1\(7),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(6));

-- Location: LC_X6_Y6_N5
\scan_instance|In_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(5) = DFFEAS(((\scan_instance|In_Reg|L1\(6) & (\scan_instance|Selector3~0\ & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(6),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(5));

-- Location: LC_X7_Y6_N0
\scan_instance|In_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(4) = DFFEAS((\scan_instance|In_Reg|L1\(5) & (\scan_instance|Selector3~0\ & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(5),
	datab => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(4));

-- Location: LC_X7_Y6_N8
\scan_instance|In_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(3) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(4) & \scan_instance|Selector3~0\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(4),
	datad => \scan_instance|Selector3~0\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(3));

-- Location: LC_X7_Y6_N9
\scan_instance|In_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(2) = DFFEAS((\scan_instance|In_Reg|L1\(3) & (\scan_instance|Selector3~0\ & ((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(3),
	datab => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(2));

-- Location: LC_X9_Y7_N3
\scan_instance|In_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(1) = DFFEAS((\scan_instance|Selector3~0\ & (((\scan_instance|In_Reg|L1\(2) & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datac => \scan_instance|In_Reg|L1\(2),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(1));

-- Location: LC_X9_Y7_N9
\scan_instance|In_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L1\(0) = DFFEAS((\scan_instance|In_Reg|L1\(1) & (((\scan_instance|Selector3~0\ & !\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(1),
	datac => \scan_instance|Selector3~0\,
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L1\(0));

-- Location: LC_X4_Y6_N6
\scan_instance|Out_Reg|L1[7]~54\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[7]~54_combout\ = (\scan_instance|In_Reg|L2\(17) & (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(16)) # (!\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "080a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(17),
	datab => \scan_instance|In_Reg|L2\(16),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[7]~54_combout\);

-- Location: LC_X8_Y9_N9
\scan_instance|In_Reg|L2[13]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(13) = DFFEAS((\scan_instance|In_Reg|L1\(13) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(13),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(13));

-- Location: LC_X8_Y9_N1
\scan_instance|In_Reg|L2[14]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(14) = DFFEAS(((!\TRST~combout\ & ((\scan_instance|In_Reg|L1\(14))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(14),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(14));

-- Location: LC_X9_Y8_N8
\scan_instance|In_Reg|L2[11]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(11) = DFFEAS((((\scan_instance|In_Reg|L1\(11) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(11),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(11));

-- Location: LC_X9_Y8_N0
\scan_instance|In_Reg|L2[12]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(12) = DFFEAS((((\scan_instance|In_Reg|L1\(12) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(12),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(12));

-- Location: LC_X10_Y8_N1
\scan_instance|In_Reg|L2[15]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(15) = DFFEAS((((\scan_instance|In_Reg|L1\(15) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(15),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(15));

-- Location: LC_X9_Y8_N4
\dut_instance|add_instance|S1|S~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|S~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(11)) # ((\scan_instance|In_Reg|L2\(12)) # (\scan_instance|In_Reg|L2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|S~0_combout\);

-- Location: LC_X5_Y8_N7
\dut_instance|add_instance|S2|l2[2]~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l2[2]~0_combout\ = (!\scan_instance|In_Reg|L2\(13) & (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(14) & !\dut_instance|add_instance|S1|S~0_combout\)))

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
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \dut_instance|add_instance|S1|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l2[2]~0_combout\);

-- Location: LC_X6_Y6_N2
\scan_instance|In_Reg|L2[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(7) = DFFEAS((((\scan_instance|In_Reg|L1\(7) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(7),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(7));

-- Location: LC_X8_Y7_N6
\scan_instance|In_Reg|L2[8]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(8) = DFFEAS((\scan_instance|In_Reg|L1\(8) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(8),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(8));

-- Location: LC_X8_Y7_N4
\scan_instance|In_Reg|L2[9]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(9) = DFFEAS((((!\TRST~combout\ & \scan_instance|In_Reg|L1\(9)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(9),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(9));

-- Location: LC_X4_Y9_N9
\scan_instance|In_Reg|PO[9]~0\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[9]~0_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(9))))

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
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[9]~0_combout\);

-- Location: LC_X4_Y9_N0
\dut_instance|add_instance|S2|l3[7]~7\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l3[7]~7_combout\ = (\dut_instance|add_instance|S2|l2[2]~0_combout\ & (\scan_instance|In_Reg|L2\(7) & (!\scan_instance|In_Reg|L2\(8) & !\scan_instance|In_Reg|PO[9]~0_combout\)))

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
	dataa => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datab => \scan_instance|In_Reg|L2\(7),
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|PO[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l3[7]~7_combout\);

-- Location: LC_X7_Y7_N1
\scan_instance|Out_Reg|L1[5]~22\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~22_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(17))))

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
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~22_combout\);

-- Location: LC_X6_Y7_N2
\scan_instance|Out_Reg|L1[0]~24\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[0]~24_combout\ = ((\TRST~combout\) # (\scan_instance|In_Reg|L2\(17) $ (!\scan_instance|In_Reg|L2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(17),
	datad => \scan_instance|In_Reg|L2\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[0]~24_combout\);

-- Location: LC_X7_Y7_N6
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

-- Location: LC_X7_Y6_N3
\scan_instance|In_Reg|L2[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(5) = DFFEAS((!\TRST~combout\ & (((\scan_instance|In_Reg|L1\(5))))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

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
	datad => \scan_instance|In_Reg|L1\(5),
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(5));

-- Location: LC_X6_Y7_N3
\scan_instance|In_Reg|PO[8]~1\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[8]~1_combout\ = (((\scan_instance|In_Reg|L2\(8) & !\TRST~combout\)))

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
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[8]~1_combout\);

-- Location: LC_X4_Y7_N0
\dut_instance|add_instance|S1|l2[5]~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l2[5]~3_combout\ = (\dut_instance|add_instance|S2|l2[2]~0_combout\ & ((\scan_instance|In_Reg|PO[8]~1_combout\ & (\scan_instance|In_Reg|L2\(4))) # (!\scan_instance|In_Reg|PO[8]~1_combout\ & ((\scan_instance|In_Reg|L2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \scan_instance|In_Reg|PO[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l2[5]~3_combout\);

-- Location: LC_X5_Y8_N8
\scan_instance|Out_Reg|L1[0]~19\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[0]~19_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(10)) # (\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(10),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[0]~19_combout\);

-- Location: LC_X9_Y7_N2
\scan_instance|In_Reg|L2[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(2) = DFFEAS((((\scan_instance|In_Reg|L1\(2) & !\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datac => \scan_instance|In_Reg|L1\(2),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(2));

-- Location: LC_X7_Y6_N1
\scan_instance|In_Reg|L2[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(3) = DFFEAS((\scan_instance|In_Reg|L1\(3) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(3),
	datad => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(3));

-- Location: LC_X4_Y7_N3
\dut_instance|add_instance|S1|l3[3]~5\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l3[3]~5_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(3))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(8) & (\scan_instance|In_Reg|L2\(2))) # (!\scan_instance|In_Reg|L2\(8) & 
-- ((\scan_instance|In_Reg|L2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(8),
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l3[3]~5_combout\);

-- Location: LC_X8_Y7_N0
\scan_instance|In_Reg|L2[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(0) = DFFEAS(((\scan_instance|In_Reg|L1\(0) & (!\TRST~combout\))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	datab => \scan_instance|In_Reg|L1\(0),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(0));

-- Location: LC_X8_Y7_N9
\scan_instance|In_Reg|L2[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|L2\(1) = DFFEAS((\scan_instance|In_Reg|L1\(1) & (((!\TRST~combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|In_Reg|L2~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|In_Reg|L1\(1),
	datac => \TRST~combout\,
	aclr => GND,
	ena => \scan_instance|In_Reg|L2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|In_Reg|L2\(1));

-- Location: LC_X6_Y7_N0
\dut_instance|add_instance|S1|l2[1]~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l2[1]~0_combout\ = (\scan_instance|In_Reg|L2\(8) & ((\TRST~combout\ & ((\scan_instance|In_Reg|L2\(1)))) # (!\TRST~combout\ & (\scan_instance|In_Reg|L2\(0))))) # (!\scan_instance|In_Reg|L2\(8) & 
-- (((\scan_instance|In_Reg|L2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(8),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l2[1]~0_combout\);

-- Location: LC_X4_Y7_N1
\dut_instance|add_instance|S1|l3[3]~6\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l3[3]~6_combout\ = (\dut_instance|add_instance|S2|l2[2]~0_combout\ & ((\scan_instance|In_Reg|PO[9]~0_combout\ & ((\dut_instance|add_instance|S1|l2[1]~0_combout\))) # (!\scan_instance|In_Reg|PO[9]~0_combout\ & 
-- (\dut_instance|add_instance|S1|l3[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S1|l3[3]~5_combout\,
	datab => \dut_instance|add_instance|S1|l2[1]~0_combout\,
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \scan_instance|In_Reg|PO[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l3[3]~6_combout\);

-- Location: LC_X5_Y7_N9
\scan_instance|Out_Reg|L1[0]~18\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[0]~18_combout\ = (\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(10) & ((\scan_instance|In_Reg|L2\(9)) # (!\scan_instance|In_Reg|L2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \scan_instance|In_Reg|L2\(10),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[0]~18_combout\);

-- Location: LC_X6_Y6_N8
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

-- Location: LC_X4_Y8_N5
\dut_instance|add_instance|S2|l1[6]~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l1[6]~2_combout\ = ((\scan_instance|In_Reg|L2\(6) & ((\dut_instance|add_instance|S2|l2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(6),
	datad => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l1[6]~2_combout\);

-- Location: LC_X4_Y8_N9
\dut_instance|add_instance|S2|l1[7]~4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l1[7]~4_combout\ = (\scan_instance|In_Reg|L2\(7) & (((\dut_instance|add_instance|S2|l2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(7),
	datad => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l1[7]~4_combout\);

-- Location: LC_X4_Y8_N6
\scan_instance|Out_Reg|L1~59\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~59_combout\ = (\scan_instance|Out_Reg|L1[0]~18_combout\ & ((\scan_instance|Out_Reg|L1[0]~19_combout\) # ((\dut_instance|add_instance|S2|l1[7]~4_combout\)))) # (!\scan_instance|Out_Reg|L1[0]~18_combout\ & 
-- (!\scan_instance|Out_Reg|L1[0]~19_combout\ & (\dut_instance|add_instance|S2|l1[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~18_combout\,
	datab => \scan_instance|Out_Reg|L1[0]~19_combout\,
	datac => \dut_instance|add_instance|S2|l1[6]~2_combout\,
	datad => \dut_instance|add_instance|S2|l1[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~59_combout\);

-- Location: LC_X4_Y8_N7
\scan_instance|Out_Reg|L1~60\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~60_combout\ = (\scan_instance|Out_Reg|L1[0]~19_combout\ & ((\scan_instance|Out_Reg|L1~59_combout\ & (\dut_instance|add_instance|S1|l2[5]~3_combout\)) # (!\scan_instance|Out_Reg|L1~59_combout\ & 
-- ((\dut_instance|add_instance|S1|l3[3]~6_combout\))))) # (!\scan_instance|Out_Reg|L1[0]~19_combout\ & (((\scan_instance|Out_Reg|L1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S1|l2[5]~3_combout\,
	datab => \scan_instance|Out_Reg|L1[0]~19_combout\,
	datac => \dut_instance|add_instance|S1|l3[3]~6_combout\,
	datad => \scan_instance|Out_Reg|L1~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~60_combout\);

-- Location: LC_X5_Y7_N4
\dut_instance|add_instance|S3|p0[0]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p0\(0) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(8)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p0\(0));

-- Location: LC_X5_Y7_N5
\dut_instance|add_instance|S0|FA1|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA1|Cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(9) & ((\scan_instance|In_Reg|L2\(1)) # (!\dut_instance|add_instance|S3|p0\(0)))) # (!\scan_instance|In_Reg|L2\(9) & (\scan_instance|In_Reg|L2\(1) & 
-- !\dut_instance|add_instance|S3|p0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2032",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \dut_instance|add_instance|S3|p0\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA1|Cout~0_combout\);

-- Location: LC_X5_Y7_N6
\dut_instance|add_instance|S0|FA2|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA2|Cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(10) & ((\scan_instance|In_Reg|L2\(2)) # (\dut_instance|add_instance|S0|FA1|Cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(10) & 
-- (\scan_instance|In_Reg|L2\(2) & \dut_instance|add_instance|S0|FA1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \dut_instance|add_instance|S0|FA1|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA2|Cout~0_combout\);

-- Location: LC_X5_Y7_N7
\dut_instance|add_instance|S0|FA3|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA3|Cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(3) & ((\scan_instance|In_Reg|L2\(11)) # (\dut_instance|add_instance|S0|FA2|Cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(3) & 
-- (\scan_instance|In_Reg|L2\(11) & \dut_instance|add_instance|S0|FA2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|L2\(11),
	datad => \dut_instance|add_instance|S0|FA2|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA3|Cout~0_combout\);

-- Location: LC_X5_Y7_N8
\dut_instance|add_instance|S0|FA4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA4|Cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(4) & ((\scan_instance|In_Reg|L2\(12)) # (\dut_instance|add_instance|S0|FA3|Cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(4) & 
-- (\scan_instance|In_Reg|L2\(12) & \dut_instance|add_instance|S0|FA3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \dut_instance|add_instance|S0|FA3|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA4|Cout~0_combout\);

-- Location: LC_X4_Y8_N2
\dut_instance|add_instance|S0|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA5|Cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(13) & ((\scan_instance|In_Reg|L2\(5)) # (\dut_instance|add_instance|S0|FA4|Cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(13) & 
-- (\scan_instance|In_Reg|L2\(5) & \dut_instance|add_instance|S0|FA4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \TRST~combout\,
	datad => \dut_instance|add_instance|S0|FA4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA5|Cout~0_combout\);

-- Location: LC_X4_Y8_N3
\dut_instance|add_instance|S0|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA6|Cout~0_combout\ = (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(6) & ((\scan_instance|In_Reg|L2\(14)) # (\dut_instance|add_instance|S0|FA5|Cout~0_combout\))) # (!\scan_instance|In_Reg|L2\(6) & 
-- (\scan_instance|In_Reg|L2\(14) & \dut_instance|add_instance|S0|FA5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \dut_instance|add_instance|S0|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA6|Cout~0_combout\);

-- Location: LC_X4_Y8_N0
\dut_instance|add_instance|S0|FA7|sum~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA7|sum~0_combout\ = \dut_instance|add_instance|S0|FA6|Cout~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(7) $ (\scan_instance|In_Reg|L2\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f906",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(7),
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \TRST~combout\,
	datad => \dut_instance|add_instance|S0|FA6|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA7|sum~0_combout\);

-- Location: LC_X4_Y8_N1
\scan_instance|Out_Reg|L1~61\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~61_combout\ = (\scan_instance|Out_Reg|L1[5]~22_combout\ & (\scan_instance|Out_Reg|L1[0]~24_combout\)) # (!\scan_instance|Out_Reg|L1[5]~22_combout\ & ((\scan_instance|Out_Reg|L1[0]~24_combout\ & 
-- ((\dut_instance|add_instance|S0|FA7|sum~0_combout\))) # (!\scan_instance|Out_Reg|L1[0]~24_combout\ & (\scan_instance|Out_Reg|L1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~22_combout\,
	datab => \scan_instance|Out_Reg|L1[0]~24_combout\,
	datac => \scan_instance|Out_Reg|L1~60_combout\,
	datad => \dut_instance|add_instance|S0|FA7|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~61_combout\);

-- Location: LC_X6_Y9_N5
\dut_instance|add_instance|S3|m6|FA7|sum~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m6|FA7|sum~8_combout\ = (\scan_instance|In_Reg|PO[8]~1_combout\ & (\scan_instance|In_Reg|L2\(7) $ (((\scan_instance|In_Reg|L2\(6) & \scan_instance|In_Reg|PO[9]~0_combout\))))) # (!\scan_instance|In_Reg|PO[8]~1_combout\ & 
-- (\scan_instance|In_Reg|L2\(6) & (\scan_instance|In_Reg|PO[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[8]~1_combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \scan_instance|In_Reg|PO[9]~0_combout\,
	datad => \scan_instance|In_Reg|L2\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m6|FA7|sum~8_combout\);

-- Location: LC_X7_Y7_N0
\scan_instance|In_Reg|PO[10]~4\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[10]~4_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[10]~4_combout\);

-- Location: LC_X8_Y7_N1
\scan_instance|In_Reg|PO[1]~3\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[1]~3_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(1))))

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
	combout => \scan_instance|In_Reg|PO[1]~3_combout\);

-- Location: LC_X8_Y9_N4
\scan_instance|In_Reg|PO[13]~10\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[13]~10_combout\ = ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(13)))))

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
	datad => \scan_instance|In_Reg|L2\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[13]~10_combout\);

-- Location: LC_X8_Y9_N3
\dut_instance|add_instance|S3|p0[6]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p0\(6) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(14)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p0\(6));

-- Location: LC_X8_Y9_N7
\dut_instance|add_instance|S3|p0[5]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p0\(5) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(13)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p0\(5));

-- Location: LC_X9_Y8_N5
\scan_instance|In_Reg|PO[12]~8\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[12]~8_combout\ = (((\scan_instance|In_Reg|L2\(12) & !\TRST~combout\)))

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
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[12]~8_combout\);

-- Location: LC_X9_Y8_N6
\scan_instance|In_Reg|PO[11]~6\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[11]~6_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(11))))

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
	datad => \scan_instance|In_Reg|L2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[11]~6_combout\);

-- Location: LC_X9_Y8_N3
\dut_instance|add_instance|S3|p0[4]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p0\(4) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(0)) # (!\scan_instance|In_Reg|L2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(12),
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p0\(4));

-- Location: LC_X9_Y8_N9
\dut_instance|add_instance|S3|p0[3]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p0\(3) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(0)))) # (!\scan_instance|In_Reg|L2\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p0\(3));

-- Location: LC_X8_Y7_N8
\dut_instance|add_instance|S3|p0[2]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p0\(2) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(10)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p0\(2));

-- Location: LC_X8_Y7_N5
\dut_instance|add_instance|S3|p1[1]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p1\(1) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(1)) # (!\scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p1\(1));

-- Location: LC_X8_Y7_N7
\dut_instance|add_instance|S3|p0[1]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p0\(1) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(9)) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(0),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p0\(1));

-- Location: LC_X8_Y7_N3
\dut_instance|add_instance|S3|p1[2]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p1\(2) = ((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(1)) # (!\scan_instance|In_Reg|L2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(9),
	datad => \scan_instance|In_Reg|L2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p1\(2));

-- Location: LC_X8_Y8_N2
\dut_instance|add_instance|S3|m0|FA2|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA2|Cout~0_combout\ = (\dut_instance|add_instance|S3|p0\(2) & (!\dut_instance|add_instance|S3|p1\(1) & (!\dut_instance|add_instance|S3|p0\(1) & !\dut_instance|add_instance|S3|p1\(2)))) # 
-- (!\dut_instance|add_instance|S3|p0\(2) & (((!\dut_instance|add_instance|S3|p1\(1) & !\dut_instance|add_instance|S3|p0\(1))) # (!\dut_instance|add_instance|S3|p1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0157",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p0\(2),
	datab => \dut_instance|add_instance|S3|p1\(1),
	datac => \dut_instance|add_instance|S3|p0\(1),
	datad => \dut_instance|add_instance|S3|p1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA2|Cout~0_combout\);

-- Location: LC_X8_Y8_N1
\dut_instance|add_instance|S3|m0|FA3|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA3|Cout~0_combout\ = (\dut_instance|add_instance|S3|p0\(3) & (\scan_instance|In_Reg|PO[1]~3_combout\ & (\scan_instance|In_Reg|PO[10]~4_combout\ & \dut_instance|add_instance|S3|m0|FA2|Cout~0_combout\))) # 
-- (!\dut_instance|add_instance|S3|p0\(3) & ((\dut_instance|add_instance|S3|m0|FA2|Cout~0_combout\) # ((\scan_instance|In_Reg|PO[1]~3_combout\ & \scan_instance|In_Reg|PO[10]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~3_combout\,
	datab => \dut_instance|add_instance|S3|p0\(3),
	datac => \scan_instance|In_Reg|PO[10]~4_combout\,
	datad => \dut_instance|add_instance|S3|m0|FA2|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA3|Cout~0_combout\);

-- Location: LC_X7_Y8_N2
\dut_instance|add_instance|S3|m0|FA4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA4|Cout~0_combout\ = (\dut_instance|add_instance|S3|p0\(4) & (\scan_instance|In_Reg|PO[1]~3_combout\ & (\scan_instance|In_Reg|PO[11]~6_combout\ & \dut_instance|add_instance|S3|m0|FA3|Cout~0_combout\))) # 
-- (!\dut_instance|add_instance|S3|p0\(4) & ((\dut_instance|add_instance|S3|m0|FA3|Cout~0_combout\) # ((\scan_instance|In_Reg|PO[1]~3_combout\ & \scan_instance|In_Reg|PO[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~3_combout\,
	datab => \scan_instance|In_Reg|PO[11]~6_combout\,
	datac => \dut_instance|add_instance|S3|p0\(4),
	datad => \dut_instance|add_instance|S3|m0|FA3|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA4|Cout~0_combout\);

-- Location: LC_X7_Y8_N3
\dut_instance|add_instance|S3|m0|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA5|Cout~0_combout\ = (\dut_instance|add_instance|S3|p0\(5) & (\scan_instance|In_Reg|PO[12]~8_combout\ & (\scan_instance|In_Reg|PO[1]~3_combout\ & \dut_instance|add_instance|S3|m0|FA4|Cout~0_combout\))) # 
-- (!\dut_instance|add_instance|S3|p0\(5) & ((\dut_instance|add_instance|S3|m0|FA4|Cout~0_combout\) # ((\scan_instance|In_Reg|PO[12]~8_combout\ & \scan_instance|In_Reg|PO[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p0\(5),
	datab => \scan_instance|In_Reg|PO[12]~8_combout\,
	datac => \scan_instance|In_Reg|PO[1]~3_combout\,
	datad => \dut_instance|add_instance|S3|m0|FA4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA5|Cout~0_combout\);

-- Location: LC_X6_Y9_N0
\dut_instance|add_instance|S3|m0|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA6|Cout~0_combout\ = (\dut_instance|add_instance|S3|p0\(6) & (\scan_instance|In_Reg|PO[1]~3_combout\ & (\scan_instance|In_Reg|PO[13]~10_combout\ & \dut_instance|add_instance|S3|m0|FA5|Cout~0_combout\))) # 
-- (!\dut_instance|add_instance|S3|p0\(6) & ((\dut_instance|add_instance|S3|m0|FA5|Cout~0_combout\) # ((\scan_instance|In_Reg|PO[1]~3_combout\ & \scan_instance|In_Reg|PO[13]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~3_combout\,
	datab => \scan_instance|In_Reg|PO[13]~10_combout\,
	datac => \dut_instance|add_instance|S3|p0\(6),
	datad => \dut_instance|add_instance|S3|m0|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA6|Cout~0_combout\);

-- Location: LC_X6_Y9_N1
\dut_instance|add_instance|S3|m6|FA7|sum~13\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m6|FA7|sum~13_combout\ = \dut_instance|add_instance|S3|m0|FA6|Cout~0_combout\ $ ((((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(11))) # (!\scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "08f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \TRST~combout\,
	datad => \dut_instance|add_instance|S3|m0|FA6|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m6|FA7|sum~13_combout\);

-- Location: LC_X6_Y9_N2
\dut_instance|add_instance|S3|m6|FA7|sum~9\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m6|FA7|sum~9_combout\ = \dut_instance|add_instance|S3|m6|FA7|sum~8_combout\ $ (\dut_instance|add_instance|S3|m6|FA7|sum~13_combout\ $ (((!\scan_instance|In_Reg|PO[10]~4_combout\) # (!\scan_instance|In_Reg|L2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a95",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|m6|FA7|sum~8_combout\,
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \scan_instance|In_Reg|PO[10]~4_combout\,
	datad => \dut_instance|add_instance|S3|m6|FA7|sum~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m6|FA7|sum~9_combout\);

-- Location: LC_X5_Y8_N0
\scan_instance|In_Reg|PO[0]~2\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[0]~2_combout\ = (((\scan_instance|In_Reg|L2\(0) & !\TRST~combout\)))

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
	combout => \scan_instance|In_Reg|PO[0]~2_combout\);

-- Location: LC_X7_Y6_N5
\dut_instance|add_instance|S3|p5[6]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p5\(6) = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(9)) # (!\scan_instance|In_Reg|L2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p5\(6));

-- Location: LC_X7_Y9_N6
\dut_instance|add_instance|S3|p5[5]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p5\(5) = (((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(5))) # (!\scan_instance|In_Reg|L2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(8),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p5\(5));

-- Location: LC_X9_Y7_N7
\scan_instance|In_Reg|PO[2]~5\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[2]~5_combout\ = (((!\TRST~combout\ & \scan_instance|In_Reg|L2\(2))))

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
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[2]~5_combout\);

-- Location: LC_X7_Y8_N4
\dut_instance|add_instance|S3|m0|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA6|sum~combout\ = \dut_instance|add_instance|S3|p0\(6) $ (\dut_instance|add_instance|S3|m0|FA5|Cout~0_combout\ $ (((!\scan_instance|In_Reg|L2\(13)) # (!\scan_instance|In_Reg|PO[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[1]~3_combout\,
	datab => \scan_instance|In_Reg|L2\(13),
	datac => \dut_instance|add_instance|S3|p0\(6),
	datad => \dut_instance|add_instance|S3|m0|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA6|sum~combout\);

-- Location: LC_X9_Y7_N8
\dut_instance|add_instance|S3|p2[2]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p2\(2) = (((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(8))) # (!\scan_instance|In_Reg|L2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p2\(2));

-- Location: LC_X9_Y7_N4
\dut_instance|add_instance|S3|p2[3]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p2\(3) = (((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(2))) # (!\scan_instance|In_Reg|L2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p2\(3));

-- Location: LC_X8_Y8_N0
\dut_instance|add_instance|S3|m0|FA2|sum~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA2|sum~0_combout\ = \dut_instance|add_instance|S3|p0\(2) $ (\dut_instance|add_instance|S3|p1\(2) $ (((\dut_instance|add_instance|S3|p1\(1)) # (\dut_instance|add_instance|S3|p0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p0\(2),
	datab => \dut_instance|add_instance|S3|p1\(1),
	datac => \dut_instance|add_instance|S3|p0\(1),
	datad => \dut_instance|add_instance|S3|p1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA2|sum~0_combout\);

-- Location: LC_X8_Y8_N3
\dut_instance|add_instance|S3|m0|FA3|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA3|sum~combout\ = \dut_instance|add_instance|S3|p0\(3) $ (\dut_instance|add_instance|S3|m0|FA2|Cout~0_combout\ $ (((!\scan_instance|In_Reg|PO[1]~3_combout\) # (!\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \scan_instance|In_Reg|PO[1]~3_combout\,
	datac => \dut_instance|add_instance|S3|p0\(3),
	datad => \dut_instance|add_instance|S3|m0|FA2|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA3|sum~combout\);

-- Location: LC_X8_Y8_N7
\dut_instance|add_instance|S3|m1|FA3|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m1|FA3|Cout~0_combout\ = (\dut_instance|add_instance|S3|p2\(3) & (!\dut_instance|add_instance|S3|p2\(2) & (!\dut_instance|add_instance|S3|m0|FA2|sum~0_combout\ & \dut_instance|add_instance|S3|m0|FA3|sum~combout\))) # 
-- (!\dut_instance|add_instance|S3|p2\(3) & ((\dut_instance|add_instance|S3|m0|FA3|sum~combout\) # ((!\dut_instance|add_instance|S3|p2\(2) & !\dut_instance|add_instance|S3|m0|FA2|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3701",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p2\(2),
	datab => \dut_instance|add_instance|S3|p2\(3),
	datac => \dut_instance|add_instance|S3|m0|FA2|sum~0_combout\,
	datad => \dut_instance|add_instance|S3|m0|FA3|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m1|FA3|Cout~0_combout\);

-- Location: LC_X8_Y8_N5
\dut_instance|add_instance|S3|m0|FA4|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA4|sum~combout\ = \dut_instance|add_instance|S3|p0\(4) $ (\dut_instance|add_instance|S3|m0|FA3|Cout~0_combout\ $ (((!\scan_instance|In_Reg|PO[1]~3_combout\) # (!\scan_instance|In_Reg|L2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \scan_instance|In_Reg|PO[1]~3_combout\,
	datac => \dut_instance|add_instance|S3|p0\(4),
	datad => \dut_instance|add_instance|S3|m0|FA3|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA4|sum~combout\);

-- Location: LC_X8_Y8_N6
\dut_instance|add_instance|S3|m1|FA4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m1|FA4|Cout~0_combout\ = (\dut_instance|add_instance|S3|m1|FA3|Cout~0_combout\ & ((\dut_instance|add_instance|S3|m0|FA4|sum~combout\) # ((\scan_instance|In_Reg|PO[10]~4_combout\ & \scan_instance|In_Reg|PO[2]~5_combout\)))) # 
-- (!\dut_instance|add_instance|S3|m1|FA3|Cout~0_combout\ & (\scan_instance|In_Reg|PO[10]~4_combout\ & (\scan_instance|In_Reg|PO[2]~5_combout\ & \dut_instance|add_instance|S3|m0|FA4|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[10]~4_combout\,
	datab => \scan_instance|In_Reg|PO[2]~5_combout\,
	datac => \dut_instance|add_instance|S3|m1|FA3|Cout~0_combout\,
	datad => \dut_instance|add_instance|S3|m0|FA4|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m1|FA4|Cout~0_combout\);

-- Location: LC_X7_Y8_N0
\dut_instance|add_instance|S3|m0|FA5|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA5|sum~combout\ = \dut_instance|add_instance|S3|p0\(5) $ (\dut_instance|add_instance|S3|m0|FA4|Cout~0_combout\ $ (((!\scan_instance|In_Reg|PO[1]~3_combout\) # (!\scan_instance|In_Reg|L2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a95",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p0\(5),
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \scan_instance|In_Reg|PO[1]~3_combout\,
	datad => \dut_instance|add_instance|S3|m0|FA4|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA5|sum~combout\);

-- Location: LC_X7_Y8_N1
\dut_instance|add_instance|S3|m1|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m1|FA5|Cout~0_combout\ = (\dut_instance|add_instance|S3|m1|FA4|Cout~0_combout\ & ((\dut_instance|add_instance|S3|m0|FA5|sum~combout\) # ((\scan_instance|In_Reg|PO[2]~5_combout\ & \scan_instance|In_Reg|PO[11]~6_combout\)))) # 
-- (!\dut_instance|add_instance|S3|m1|FA4|Cout~0_combout\ & (\scan_instance|In_Reg|PO[2]~5_combout\ & (\scan_instance|In_Reg|PO[11]~6_combout\ & \dut_instance|add_instance|S3|m0|FA5|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~5_combout\,
	datab => \scan_instance|In_Reg|PO[11]~6_combout\,
	datac => \dut_instance|add_instance|S3|m1|FA4|Cout~0_combout\,
	datad => \dut_instance|add_instance|S3|m0|FA5|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m1|FA5|Cout~0_combout\);

-- Location: LC_X7_Y8_N5
\dut_instance|add_instance|S3|m1|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m1|FA6|sum~combout\ = \dut_instance|add_instance|S3|m0|FA6|sum~combout\ $ (\dut_instance|add_instance|S3|m1|FA5|Cout~0_combout\ $ (((!\scan_instance|In_Reg|L2\(12)) # (!\scan_instance|In_Reg|PO[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~5_combout\,
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \dut_instance|add_instance|S3|m0|FA6|sum~combout\,
	datad => \dut_instance|add_instance|S3|m1|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m1|FA6|sum~combout\);

-- Location: LC_X7_Y6_N7
\scan_instance|In_Reg|PO[3]~7\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[3]~7_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(3)))))

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
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[3]~7_combout\);

-- Location: LC_X7_Y6_N6
\dut_instance|add_instance|S3|p3[3]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p3\(3) = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(3)) # (!\scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p3\(3));

-- Location: LC_X7_Y6_N2
\dut_instance|add_instance|S3|p3[4]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p3\(4) = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(9))) # (!\scan_instance|In_Reg|L2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(3),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p3\(4));

-- Location: LC_X8_Y8_N4
\dut_instance|add_instance|S3|m1|FA3|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m1|FA3|sum~combout\ = \dut_instance|add_instance|S3|p2\(3) $ (\dut_instance|add_instance|S3|m0|FA3|sum~combout\ $ (((\dut_instance|add_instance|S3|p2\(2)) # (\dut_instance|add_instance|S3|m0|FA2|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p2\(2),
	datab => \dut_instance|add_instance|S3|p2\(3),
	datac => \dut_instance|add_instance|S3|m0|FA2|sum~0_combout\,
	datad => \dut_instance|add_instance|S3|m0|FA3|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m1|FA3|sum~combout\);

-- Location: LC_X8_Y8_N8
\dut_instance|add_instance|S3|m1|FA4|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m1|FA4|sum~combout\ = \dut_instance|add_instance|S3|m0|FA4|sum~combout\ $ (\dut_instance|add_instance|S3|m1|FA3|Cout~0_combout\ $ (((!\scan_instance|In_Reg|L2\(2)) # (!\scan_instance|In_Reg|PO[10]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[10]~4_combout\,
	datab => \scan_instance|In_Reg|L2\(2),
	datac => \dut_instance|add_instance|S3|m0|FA4|sum~combout\,
	datad => \dut_instance|add_instance|S3|m1|FA3|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m1|FA4|sum~combout\);

-- Location: LC_X8_Y8_N9
\dut_instance|add_instance|S3|m2|FA4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m2|FA4|Cout~0_combout\ = (\dut_instance|add_instance|S3|p3\(4) & (!\dut_instance|add_instance|S3|p3\(3) & (\dut_instance|add_instance|S3|m1|FA3|sum~combout\ & !\dut_instance|add_instance|S3|m1|FA4|sum~combout\))) # 
-- (!\dut_instance|add_instance|S3|p3\(4) & (((!\dut_instance|add_instance|S3|p3\(3) & \dut_instance|add_instance|S3|m1|FA3|sum~combout\)) # (!\dut_instance|add_instance|S3|m1|FA4|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1073",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p3\(3),
	datab => \dut_instance|add_instance|S3|p3\(4),
	datac => \dut_instance|add_instance|S3|m1|FA3|sum~combout\,
	datad => \dut_instance|add_instance|S3|m1|FA4|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m2|FA4|Cout~0_combout\);

-- Location: LC_X7_Y8_N7
\dut_instance|add_instance|S3|m1|FA5|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m1|FA5|sum~combout\ = \dut_instance|add_instance|S3|m1|FA4|Cout~0_combout\ $ (\dut_instance|add_instance|S3|m0|FA5|sum~combout\ $ (((!\scan_instance|In_Reg|L2\(11)) # (!\scan_instance|In_Reg|PO[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[2]~5_combout\,
	datab => \scan_instance|In_Reg|L2\(11),
	datac => \dut_instance|add_instance|S3|m1|FA4|Cout~0_combout\,
	datad => \dut_instance|add_instance|S3|m0|FA5|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m1|FA5|sum~combout\);

-- Location: LC_X7_Y8_N8
\dut_instance|add_instance|S3|m2|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m2|FA5|Cout~0_combout\ = (\dut_instance|add_instance|S3|m2|FA4|Cout~0_combout\ & (((\scan_instance|In_Reg|PO[10]~4_combout\ & \scan_instance|In_Reg|PO[3]~7_combout\)) # (!\dut_instance|add_instance|S3|m1|FA5|sum~combout\))) # 
-- (!\dut_instance|add_instance|S3|m2|FA4|Cout~0_combout\ & (\scan_instance|In_Reg|PO[10]~4_combout\ & (\scan_instance|In_Reg|PO[3]~7_combout\ & !\dut_instance|add_instance|S3|m1|FA5|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[10]~4_combout\,
	datab => \scan_instance|In_Reg|PO[3]~7_combout\,
	datac => \dut_instance|add_instance|S3|m2|FA4|Cout~0_combout\,
	datad => \dut_instance|add_instance|S3|m1|FA5|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m2|FA5|Cout~0_combout\);

-- Location: LC_X7_Y8_N9
\dut_instance|add_instance|S3|m2|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m2|FA6|sum~combout\ = \dut_instance|add_instance|S3|m1|FA6|sum~combout\ $ (\dut_instance|add_instance|S3|m2|FA5|Cout~0_combout\ $ (((!\scan_instance|In_Reg|L2\(3)) # (!\scan_instance|In_Reg|PO[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[11]~6_combout\,
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \dut_instance|add_instance|S3|m1|FA6|sum~combout\,
	datad => \dut_instance|add_instance|S3|m2|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m2|FA6|sum~combout\);

-- Location: LC_X7_Y9_N1
\dut_instance|add_instance|S3|p4[4]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p4\(4) = (\TRST~combout\) # (((!\scan_instance|In_Reg|L2\(4)) # (!\scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p4\(4));

-- Location: LC_X7_Y7_N3
\dut_instance|add_instance|S3|p4[5]\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|p4\(5) = (((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(4))) # (!\scan_instance|In_Reg|L2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|p4\(5));

-- Location: LC_X7_Y8_N6
\dut_instance|add_instance|S3|m2|FA5|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m2|FA5|sum~combout\ = \dut_instance|add_instance|S3|m2|FA4|Cout~0_combout\ $ (\dut_instance|add_instance|S3|m1|FA5|sum~combout\ $ (((!\scan_instance|In_Reg|L2\(3)) # (!\scan_instance|In_Reg|PO[10]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "69c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[10]~4_combout\,
	datab => \dut_instance|add_instance|S3|m2|FA4|Cout~0_combout\,
	datac => \dut_instance|add_instance|S3|m1|FA5|sum~combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m2|FA5|sum~combout\);

-- Location: LC_X6_Y8_N3
\dut_instance|add_instance|S3|m2|FA4|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m2|FA4|sum~combout\ = \dut_instance|add_instance|S3|p3\(4) $ (\dut_instance|add_instance|S3|m1|FA4|sum~combout\ $ (((\dut_instance|add_instance|S3|p3\(3)) # (!\dut_instance|add_instance|S3|m1|FA3|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9a65",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p3\(4),
	datab => \dut_instance|add_instance|S3|p3\(3),
	datac => \dut_instance|add_instance|S3|m1|FA3|sum~combout\,
	datad => \dut_instance|add_instance|S3|m1|FA4|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m2|FA4|sum~combout\);

-- Location: LC_X6_Y8_N6
\dut_instance|add_instance|S3|m3|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m3|FA5|Cout~0_combout\ = (\dut_instance|add_instance|S3|p4\(5) & (!\dut_instance|add_instance|S3|p4\(4) & (\dut_instance|add_instance|S3|m2|FA5|sum~combout\ & !\dut_instance|add_instance|S3|m2|FA4|sum~combout\))) # 
-- (!\dut_instance|add_instance|S3|p4\(5) & ((\dut_instance|add_instance|S3|m2|FA5|sum~combout\) # ((!\dut_instance|add_instance|S3|p4\(4) & !\dut_instance|add_instance|S3|m2|FA4|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3071",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p4\(4),
	datab => \dut_instance|add_instance|S3|p4\(5),
	datac => \dut_instance|add_instance|S3|m2|FA5|sum~combout\,
	datad => \dut_instance|add_instance|S3|m2|FA4|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m3|FA5|Cout~0_combout\);

-- Location: LC_X6_Y8_N7
\dut_instance|add_instance|S3|m3|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m3|FA6|sum~combout\ = \dut_instance|add_instance|S3|m2|FA6|sum~combout\ $ (\dut_instance|add_instance|S3|m3|FA5|Cout~0_combout\ $ (((!\scan_instance|In_Reg|PO[10]~4_combout\) # (!\scan_instance|In_Reg|L2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|PO[10]~4_combout\,
	datac => \dut_instance|add_instance|S3|m2|FA6|sum~combout\,
	datad => \dut_instance|add_instance|S3|m3|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m3|FA6|sum~combout\);

-- Location: LC_X6_Y8_N4
\dut_instance|add_instance|S3|m3|FA5|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m3|FA5|sum~combout\ = \dut_instance|add_instance|S3|p4\(5) $ (\dut_instance|add_instance|S3|m2|FA5|sum~combout\ $ (((\dut_instance|add_instance|S3|p4\(4)) # (\dut_instance|add_instance|S3|m2|FA4|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p4\(4),
	datab => \dut_instance|add_instance|S3|p4\(5),
	datac => \dut_instance|add_instance|S3|m2|FA5|sum~combout\,
	datad => \dut_instance|add_instance|S3|m2|FA4|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m3|FA5|sum~combout\);

-- Location: LC_X6_Y8_N5
\dut_instance|add_instance|S3|m4|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m4|FA6|Cout~0_combout\ = (\dut_instance|add_instance|S3|p5\(6) & (!\dut_instance|add_instance|S3|p5\(5) & (!\dut_instance|add_instance|S3|m3|FA6|sum~combout\ & \dut_instance|add_instance|S3|m3|FA5|sum~combout\))) # 
-- (!\dut_instance|add_instance|S3|p5\(6) & (((!\dut_instance|add_instance|S3|p5\(5) & \dut_instance|add_instance|S3|m3|FA5|sum~combout\)) # (!\dut_instance|add_instance|S3|m3|FA6|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1705",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p5\(6),
	datab => \dut_instance|add_instance|S3|p5\(5),
	datac => \dut_instance|add_instance|S3|m3|FA6|sum~combout\,
	datad => \dut_instance|add_instance|S3|m3|FA5|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m4|FA6|Cout~0_combout\);

-- Location: LC_X7_Y7_N9
\scan_instance|In_Reg|PO[4]~9\ : maxv_lcell
-- Equation(s):
-- \scan_instance|In_Reg|PO[4]~9_combout\ = (!\TRST~combout\ & (((\scan_instance|In_Reg|L2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|In_Reg|PO[4]~9_combout\);

-- Location: LC_X6_Y8_N0
\dut_instance|add_instance|S3|m3|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m3|FA6|Cout~0_combout\ = (\dut_instance|add_instance|S3|m2|FA6|sum~combout\ & ((\dut_instance|add_instance|S3|m3|FA5|Cout~0_combout\) # ((\scan_instance|In_Reg|PO[10]~4_combout\ & \scan_instance|In_Reg|PO[4]~9_combout\)))) # 
-- (!\dut_instance|add_instance|S3|m2|FA6|sum~combout\ & (\scan_instance|In_Reg|PO[10]~4_combout\ & (\scan_instance|In_Reg|PO[4]~9_combout\ & \dut_instance|add_instance|S3|m3|FA5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[10]~4_combout\,
	datab => \scan_instance|In_Reg|PO[4]~9_combout\,
	datac => \dut_instance|add_instance|S3|m2|FA6|sum~combout\,
	datad => \dut_instance|add_instance|S3|m3|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m3|FA6|Cout~0_combout\);

-- Location: LC_X6_Y8_N1
\dut_instance|add_instance|S3|m6|FA7|sum~11\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m6|FA7|sum~11_combout\ = \dut_instance|add_instance|S3|m3|FA6|Cout~0_combout\ $ ((((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(14))) # (!\scan_instance|In_Reg|L2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20df",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \dut_instance|add_instance|S3|m3|FA6|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m6|FA7|sum~11_combout\);

-- Location: LC_X6_Y8_N2
\dut_instance|add_instance|S3|m6|FA7|sum~6\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m6|FA7|sum~6_combout\ = \dut_instance|add_instance|S3|m4|FA6|Cout~0_combout\ $ (\dut_instance|add_instance|S3|m6|FA7|sum~11_combout\ $ (((!\scan_instance|In_Reg|L2\(15)) # (!\scan_instance|In_Reg|PO[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[0]~2_combout\,
	datab => \scan_instance|In_Reg|L2\(15),
	datac => \dut_instance|add_instance|S3|m4|FA6|Cout~0_combout\,
	datad => \dut_instance|add_instance|S3|m6|FA7|sum~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m6|FA7|sum~6_combout\);

-- Location: LC_X6_Y8_N8
\dut_instance|add_instance|S3|m4|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m4|FA6|sum~combout\ = \dut_instance|add_instance|S3|p5\(6) $ (\dut_instance|add_instance|S3|m3|FA6|sum~combout\ $ (((\dut_instance|add_instance|S3|p5\(5)) # (!\dut_instance|add_instance|S3|m3|FA5|sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9a65",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p5\(6),
	datab => \dut_instance|add_instance|S3|p5\(5),
	datac => \dut_instance|add_instance|S3|m3|FA5|sum~combout\,
	datad => \dut_instance|add_instance|S3|m3|FA6|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m4|FA6|sum~combout\);

-- Location: LC_X5_Y8_N5
\dut_instance|add_instance|S3|m5|FA6|Cout~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m5|FA6|Cout~2_combout\ = ((\TRST~combout\) # ((\dut_instance|add_instance|S3|m4|FA6|sum~combout\) # (!\scan_instance|In_Reg|L2\(6)))) # (!\scan_instance|In_Reg|L2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(8),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut_instance|add_instance|S3|m4|FA6|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m5|FA6|Cout~2_combout\);

-- Location: LC_X6_Y8_N9
\dut_instance|add_instance|S3|m2|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m2|FA6|Cout~0_combout\ = (\dut_instance|add_instance|S3|m2|FA5|Cout~0_combout\ & (((\scan_instance|In_Reg|PO[3]~7_combout\ & \scan_instance|In_Reg|PO[11]~6_combout\)) # (!\dut_instance|add_instance|S3|m1|FA6|sum~combout\))) # 
-- (!\dut_instance|add_instance|S3|m2|FA5|Cout~0_combout\ & (\scan_instance|In_Reg|PO[3]~7_combout\ & (\scan_instance|In_Reg|PO[11]~6_combout\ & !\dut_instance|add_instance|S3|m1|FA6|sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80ec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[3]~7_combout\,
	datab => \dut_instance|add_instance|S3|m2|FA5|Cout~0_combout\,
	datac => \scan_instance|In_Reg|PO[11]~6_combout\,
	datad => \dut_instance|add_instance|S3|m1|FA6|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m2|FA6|Cout~0_combout\);

-- Location: LC_X9_Y8_N1
\dut_instance|add_instance|S3|m1|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m1|FA6|Cout~0_combout\ = (\dut_instance|add_instance|S3|m0|FA6|sum~combout\ & ((\dut_instance|add_instance|S3|m1|FA5|Cout~0_combout\) # ((\scan_instance|In_Reg|PO[12]~8_combout\ & \scan_instance|In_Reg|PO[2]~5_combout\)))) # 
-- (!\dut_instance|add_instance|S3|m0|FA6|sum~combout\ & (\scan_instance|In_Reg|PO[12]~8_combout\ & (\scan_instance|In_Reg|PO[2]~5_combout\ & \dut_instance|add_instance|S3|m1|FA5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|PO[12]~8_combout\,
	datab => \scan_instance|In_Reg|PO[2]~5_combout\,
	datac => \dut_instance|add_instance|S3|m0|FA6|sum~combout\,
	datad => \dut_instance|add_instance|S3|m1|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m1|FA6|Cout~0_combout\);

-- Location: LC_X9_Y8_N2
\dut_instance|add_instance|S3|m6|FA7|sum~12\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m6|FA7|sum~12_combout\ = \dut_instance|add_instance|S3|m1|FA6|Cout~0_combout\ $ ((((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(3))) # (!\scan_instance|In_Reg|L2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20df",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(12),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(3),
	datad => \dut_instance|add_instance|S3|m1|FA6|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m6|FA7|sum~12_combout\);

-- Location: LC_X5_Y8_N1
\dut_instance|add_instance|S3|m6|FA7|sum~7\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m6|FA7|sum~7_combout\ = \dut_instance|add_instance|S3|m2|FA6|Cout~0_combout\ $ (\dut_instance|add_instance|S3|m6|FA7|sum~12_combout\ $ (((!\scan_instance|In_Reg|PO[2]~5_combout\) # (!\scan_instance|In_Reg|L2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7887",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \scan_instance|In_Reg|PO[2]~5_combout\,
	datac => \dut_instance|add_instance|S3|m2|FA6|Cout~0_combout\,
	datad => \dut_instance|add_instance|S3|m6|FA7|sum~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m6|FA7|sum~7_combout\);

-- Location: LC_X5_Y8_N2
\dut_instance|add_instance|S3|m6|FA7|sum~10\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m6|FA7|sum~10_combout\ = \dut_instance|add_instance|S3|m6|FA7|sum~9_combout\ $ (\dut_instance|add_instance|S3|m6|FA7|sum~6_combout\ $ (\dut_instance|add_instance|S3|m5|FA6|Cout~2_combout\ $ 
-- (\dut_instance|add_instance|S3|m6|FA7|sum~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|m6|FA7|sum~9_combout\,
	datab => \dut_instance|add_instance|S3|m6|FA7|sum~6_combout\,
	datac => \dut_instance|add_instance|S3|m5|FA6|Cout~2_combout\,
	datad => \dut_instance|add_instance|S3|m6|FA7|sum~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m6|FA7|sum~10_combout\);

-- Location: LC_X5_Y8_N3
\scan_instance|Out_Reg|L1~62\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~62_combout\ = (\scan_instance|Out_Reg|L1[7]~54_combout\ & ((\scan_instance|Out_Reg|L1~61_combout\ & ((!\dut_instance|add_instance|S3|m6|FA7|sum~10_combout\))) # (!\scan_instance|Out_Reg|L1~61_combout\ & 
-- (\dut_instance|add_instance|S2|l3[7]~7_combout\)))) # (!\scan_instance|Out_Reg|L1[7]~54_combout\ & (((\scan_instance|Out_Reg|L1~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "58f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[7]~54_combout\,
	datab => \dut_instance|add_instance|S2|l3[7]~7_combout\,
	datac => \scan_instance|Out_Reg|L1~61_combout\,
	datad => \dut_instance|add_instance|S3|m6|FA7|sum~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~62_combout\);

-- Location: LC_X5_Y8_N4
\scan_instance|Out_Reg|L1[7]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(7) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~62_combout\))) # (!\TRST~combout\ & (\scan_instance|In_Reg|L1\(0))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~62_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L1\(0),
	datad => \scan_instance|Out_Reg|L1~62_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(7));

-- Location: LC_X6_Y9_N3
\dut_instance|add_instance|S2|l2[6]~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l2[6]~1_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(6))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(8) & (\scan_instance|In_Reg|L2\(7))) # (!\scan_instance|In_Reg|L2\(8) & 
-- ((\scan_instance|In_Reg|L2\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(7),
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l2[6]~1_combout\);

-- Location: LC_X4_Y9_N3
\dut_instance|add_instance|S2|l3[6]~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l3[6]~8_combout\ = (\dut_instance|add_instance|S2|l2[2]~0_combout\ & (\dut_instance|add_instance|S2|l2[6]~1_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \dut_instance|add_instance|S2|l2[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l3[6]~8_combout\);

-- Location: LC_X4_Y8_N8
\dut_instance|add_instance|S0|FA6|sum~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA6|sum~0_combout\ = \dut_instance|add_instance|S0|FA5|Cout~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(6) $ (\scan_instance|In_Reg|L2\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(6),
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \dut_instance|add_instance|S0|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA6|sum~0_combout\);

-- Location: LC_X4_Y7_N2
\dut_instance|add_instance|S1|l2[4]~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l2[4]~1_combout\ = (\dut_instance|add_instance|S2|l2[2]~0_combout\ & ((\scan_instance|In_Reg|PO[8]~1_combout\ & ((\scan_instance|In_Reg|L2\(3)))) # (!\scan_instance|In_Reg|PO[8]~1_combout\ & (\scan_instance|In_Reg|L2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|PO[8]~1_combout\,
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l2[4]~1_combout\);

-- Location: LC_X4_Y8_N4
\dut_instance|add_instance|S2|l1[5]~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l1[5]~3_combout\ = ((\scan_instance|In_Reg|L2\(5) & ((\dut_instance|add_instance|S2|l2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \scan_instance|In_Reg|L2\(5),
	datad => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l1[5]~3_combout\);

-- Location: LC_X5_Y9_N9
\dut_instance|add_instance|S1|l3[2]~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l3[2]~3_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(2))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(8) & (\scan_instance|In_Reg|L2\(1))) # (!\scan_instance|In_Reg|L2\(8) & 
-- ((\scan_instance|In_Reg|L2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \scan_instance|In_Reg|L2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l3[2]~3_combout\);

-- Location: LC_X4_Y9_N1
\dut_instance|add_instance|S2|l3[5]~5\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l3[5]~5_combout\ = ((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(9) & \scan_instance|In_Reg|L2\(8)))) # (!\dut_instance|add_instance|S2|l2[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l3[5]~5_combout\);

-- Location: LC_X4_Y9_N2
\dut_instance|add_instance|S1|l3[2]~4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l3[2]~4_combout\ = (!\dut_instance|add_instance|S2|l3[5]~5_combout\ & ((\scan_instance|In_Reg|PO[9]~0_combout\ & (\scan_instance|In_Reg|L2\(0))) # (!\scan_instance|In_Reg|PO[9]~0_combout\ & 
-- ((\dut_instance|add_instance|S1|l3[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \scan_instance|In_Reg|PO[9]~0_combout\,
	datac => \dut_instance|add_instance|S1|l3[2]~3_combout\,
	datad => \dut_instance|add_instance|S2|l3[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l3[2]~4_combout\);

-- Location: LC_X3_Y8_N2
\scan_instance|Out_Reg|L1~55\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~55_combout\ = (\scan_instance|Out_Reg|L1[0]~18_combout\ & (((\scan_instance|Out_Reg|L1[0]~19_combout\)))) # (!\scan_instance|Out_Reg|L1[0]~18_combout\ & ((\scan_instance|Out_Reg|L1[0]~19_combout\ & 
-- ((\dut_instance|add_instance|S1|l3[2]~4_combout\))) # (!\scan_instance|Out_Reg|L1[0]~19_combout\ & (\dut_instance|add_instance|S2|l1[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~18_combout\,
	datab => \dut_instance|add_instance|S2|l1[5]~3_combout\,
	datac => \scan_instance|Out_Reg|L1[0]~19_combout\,
	datad => \dut_instance|add_instance|S1|l3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~55_combout\);

-- Location: LC_X3_Y8_N3
\scan_instance|Out_Reg|L1~56\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~56_combout\ = (\scan_instance|Out_Reg|L1[0]~18_combout\ & ((\scan_instance|Out_Reg|L1~55_combout\ & ((\dut_instance|add_instance|S1|l2[4]~1_combout\))) # (!\scan_instance|Out_Reg|L1~55_combout\ & 
-- (\dut_instance|add_instance|S2|l1[6]~2_combout\)))) # (!\scan_instance|Out_Reg|L1[0]~18_combout\ & (((\scan_instance|Out_Reg|L1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~18_combout\,
	datab => \dut_instance|add_instance|S2|l1[6]~2_combout\,
	datac => \dut_instance|add_instance|S1|l2[4]~1_combout\,
	datad => \scan_instance|Out_Reg|L1~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~56_combout\);

-- Location: LC_X3_Y8_N4
\scan_instance|Out_Reg|L1~57\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~57_combout\ = (\scan_instance|Out_Reg|L1[0]~24_combout\ & ((\dut_instance|add_instance|S0|FA6|sum~0_combout\) # ((\scan_instance|Out_Reg|L1[5]~22_combout\)))) # (!\scan_instance|Out_Reg|L1[0]~24_combout\ & 
-- (((!\scan_instance|Out_Reg|L1[5]~22_combout\ & \scan_instance|Out_Reg|L1~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~24_combout\,
	datab => \dut_instance|add_instance|S0|FA6|sum~0_combout\,
	datac => \scan_instance|Out_Reg|L1[5]~22_combout\,
	datad => \scan_instance|Out_Reg|L1~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~57_combout\);

-- Location: LC_X3_Y8_N5
\dut_instance|add_instance|S3|m5|FA6|sum~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m5|FA6|sum~2_combout\ = \dut_instance|add_instance|S3|m4|FA6|sum~combout\ $ (((\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(6)) # (!\scan_instance|In_Reg|L2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40bf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(8),
	datac => \scan_instance|In_Reg|L2\(6),
	datad => \dut_instance|add_instance|S3|m4|FA6|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m5|FA6|sum~2_combout\);

-- Location: LC_X3_Y8_N6
\scan_instance|Out_Reg|L1~58\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~58_combout\ = (\scan_instance|Out_Reg|L1[7]~54_combout\ & ((\scan_instance|Out_Reg|L1~57_combout\ & ((\dut_instance|add_instance|S3|m5|FA6|sum~2_combout\))) # (!\scan_instance|Out_Reg|L1~57_combout\ & 
-- (\dut_instance|add_instance|S2|l3[6]~8_combout\)))) # (!\scan_instance|Out_Reg|L1[7]~54_combout\ & (((\scan_instance|Out_Reg|L1~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[7]~54_combout\,
	datab => \dut_instance|add_instance|S2|l3[6]~8_combout\,
	datac => \scan_instance|Out_Reg|L1~57_combout\,
	datad => \dut_instance|add_instance|S3|m5|FA6|sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~58_combout\);

-- Location: LC_X3_Y8_N7
\scan_instance|Out_Reg|L1[6]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(6) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~58_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(7))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~58_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \TRST~combout\,
	datac => \scan_instance|Out_Reg|L1\(7),
	datad => \scan_instance|Out_Reg|L1~58_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(6));

-- Location: LC_X3_Y7_N5
\dut_instance|add_instance|S3|m4|FA5|sum~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m4|FA5|sum~2_combout\ = \dut_instance|add_instance|S3|m3|FA5|sum~combout\ $ ((((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(5))) # (!\scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20df",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(8),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \dut_instance|add_instance|S3|m3|FA5|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m4|FA5|sum~2_combout\);

-- Location: LC_X3_Y7_N9
\dut_instance|add_instance|S0|FA5|sum~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA5|sum~0_combout\ = \dut_instance|add_instance|S0|FA4|Cout~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(13) $ (\scan_instance|In_Reg|L2\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \dut_instance|add_instance|S0|FA4|Cout~0_combout\,
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA5|sum~0_combout\);

-- Location: LC_X4_Y6_N5
\scan_instance|Out_Reg|L1[5]~45\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~45_combout\ = (!\scan_instance|In_Reg|L2\(17) & (\scan_instance|In_Reg|L2\(16) & (!\TRST~combout\ & !\scan_instance|In_Reg|L2\(10))))

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
	dataa => \scan_instance|In_Reg|L2\(17),
	datab => \scan_instance|In_Reg|L2\(16),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~45_combout\);

-- Location: LC_X4_Y7_N6
\dut_instance|add_instance|S1|l2[3]~4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l2[3]~4_combout\ = (((\dut_instance|add_instance|S2|l2[2]~0_combout\ & \dut_instance|add_instance|S1|l3[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \dut_instance|add_instance|S1|l3[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l2[3]~4_combout\);

-- Location: LC_X7_Y7_N8
\dut_instance|add_instance|Z[7]~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|Z[7]~0_combout\ = (\TRST~combout\) # (((\scan_instance|In_Reg|L2\(17)) # (!\scan_instance|In_Reg|L2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(16),
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|Z[7]~0_combout\);

-- Location: LC_X7_Y7_N4
\scan_instance|Out_Reg|L1[5]~65\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~65_combout\ = (!\TRST~combout\ & (!\dut_instance|add_instance|Z[7]~0_combout\ & ((\scan_instance|In_Reg|L2\(10)) # (\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(10),
	datab => \scan_instance|In_Reg|L2\(9),
	datac => \TRST~combout\,
	datad => \dut_instance|add_instance|Z[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~65_combout\);

-- Location: LC_X7_Y7_N2
\scan_instance|Out_Reg|L1[5]~64\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[5]~64_combout\ = (\TRST~combout\) # (\scan_instance|In_Reg|L2\(10) $ (((\scan_instance|In_Reg|L2\(17)) # (!\scan_instance|In_Reg|L2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbeb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(10),
	datac => \scan_instance|In_Reg|L2\(16),
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[5]~64_combout\);

-- Location: LC_X6_Y7_N8
\dut_instance|add_instance|S1|l3[1]~7\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l3[1]~7_combout\ = (\dut_instance|add_instance|S1|l2[1]~0_combout\ & (\dut_instance|add_instance|S2|l2[2]~0_combout\ & ((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(9),
	datab => \TRST~combout\,
	datac => \dut_instance|add_instance|S1|l2[1]~0_combout\,
	datad => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l3[1]~7_combout\);

-- Location: LC_X6_Y9_N9
\dut_instance|add_instance|S2|l3[5]~4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l3[5]~4_combout\ = (\TRST~combout\ & (((\scan_instance|In_Reg|L2\(5))))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(8) & ((\scan_instance|In_Reg|L2\(6)))) # (!\scan_instance|In_Reg|L2\(8) & 
-- (\scan_instance|In_Reg|L2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(8),
	datac => \scan_instance|In_Reg|L2\(5),
	datad => \scan_instance|In_Reg|L2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l3[5]~4_combout\);

-- Location: LC_X4_Y9_N6
\dut_instance|add_instance|S2|l3[5]~6\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l3[5]~6_combout\ = (!\dut_instance|add_instance|S2|l3[5]~5_combout\ & ((\scan_instance|In_Reg|PO[9]~0_combout\ & ((\scan_instance|In_Reg|L2\(7)))) # (!\scan_instance|In_Reg|PO[9]~0_combout\ & 
-- (\dut_instance|add_instance|S2|l3[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|l3[5]~4_combout\,
	datab => \scan_instance|In_Reg|PO[9]~0_combout\,
	datac => \scan_instance|In_Reg|L2\(7),
	datad => \dut_instance|add_instance|S2|l3[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l3[5]~6_combout\);

-- Location: LC_X4_Y7_N4
\scan_instance|Out_Reg|L1~50\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~50_combout\ = (\scan_instance|Out_Reg|L1[5]~65_combout\ & (((\dut_instance|add_instance|S1|l3[1]~7_combout\)) # (!\scan_instance|Out_Reg|L1[5]~64_combout\))) # (!\scan_instance|Out_Reg|L1[5]~65_combout\ & 
-- (\scan_instance|Out_Reg|L1[5]~64_combout\ & ((\dut_instance|add_instance|S2|l3[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~65_combout\,
	datab => \scan_instance|Out_Reg|L1[5]~64_combout\,
	datac => \dut_instance|add_instance|S1|l3[1]~7_combout\,
	datad => \dut_instance|add_instance|S2|l3[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~50_combout\);

-- Location: LC_X4_Y7_N5
\scan_instance|Out_Reg|L1~51\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~51_combout\ = (\scan_instance|Out_Reg|L1[5]~45_combout\ & ((\scan_instance|Out_Reg|L1~50_combout\ & ((\dut_instance|add_instance|S1|l2[3]~4_combout\))) # (!\scan_instance|Out_Reg|L1~50_combout\ & 
-- (\dut_instance|add_instance|S1|l2[5]~3_combout\)))) # (!\scan_instance|Out_Reg|L1[5]~45_combout\ & (((\scan_instance|Out_Reg|L1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~45_combout\,
	datab => \dut_instance|add_instance|S1|l2[5]~3_combout\,
	datac => \dut_instance|add_instance|S1|l2[3]~4_combout\,
	datad => \scan_instance|Out_Reg|L1~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~51_combout\);

-- Location: LC_X3_Y7_N6
\scan_instance|Out_Reg|L1~52\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~52_combout\ = (\scan_instance|Out_Reg|L1[5]~44_combout\ & (((\scan_instance|Out_Reg|L1[3]~38_combout\)))) # (!\scan_instance|Out_Reg|L1[5]~44_combout\ & ((\scan_instance|Out_Reg|L1[3]~38_combout\ & 
-- (\dut_instance|add_instance|S0|FA5|sum~0_combout\)) # (!\scan_instance|Out_Reg|L1[3]~38_combout\ & ((\scan_instance|Out_Reg|L1~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~44_combout\,
	datab => \dut_instance|add_instance|S0|FA5|sum~0_combout\,
	datac => \scan_instance|Out_Reg|L1[3]~38_combout\,
	datad => \scan_instance|Out_Reg|L1~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~52_combout\);

-- Location: LC_X3_Y7_N7
\scan_instance|Out_Reg|L1[5]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(5) = DFFEAS((\scan_instance|Out_Reg|L1[5]~44_combout\ & ((\scan_instance|Out_Reg|L1~52_combout\ & (\scan_instance|Out_Reg|L1\(6))) # (!\scan_instance|Out_Reg|L1~52_combout\ & 
-- ((!\dut_instance|add_instance|S3|m4|FA5|sum~2_combout\))))) # (!\scan_instance|Out_Reg|L1[5]~44_combout\ & (((\scan_instance|Out_Reg|L1~52_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1[5]~44_combout\,
	datab => \scan_instance|Out_Reg|L1\(6),
	datac => \dut_instance|add_instance|S3|m4|FA5|sum~2_combout\,
	datad => \scan_instance|Out_Reg|L1~52_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(5));

-- Location: LC_X3_Y7_N4
\dut_instance|add_instance|S3|m3|FA4|sum~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m3|FA4|sum~2_combout\ = \dut_instance|add_instance|S3|m2|FA4|sum~combout\ $ ((((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(8))) # (!\scan_instance|In_Reg|L2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f87",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(8),
	datac => \dut_instance|add_instance|S3|m2|FA4|sum~combout\,
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m3|FA4|sum~2_combout\);

-- Location: LC_X5_Y7_N1
\dut_instance|add_instance|S0|FA4|sum~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA4|sum~8_combout\ = \dut_instance|add_instance|S0|FA3|Cout~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(4) $ (\scan_instance|In_Reg|L2\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f906",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(12),
	datac => \TRST~combout\,
	datad => \dut_instance|add_instance|S0|FA3|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA4|sum~8_combout\);

-- Location: LC_X4_Y7_N9
\dut_instance|add_instance|S1|l2[2]~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l2[2]~2_combout\ = (((\dut_instance|add_instance|S2|l2[2]~0_combout\ & \dut_instance|add_instance|S1|l3[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \dut_instance|add_instance|S1|l3[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l2[2]~2_combout\);

-- Location: LC_X5_Y8_N6
\dut_instance|add_instance|S1|S\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|S~combout\ = (\dut_instance|add_instance|S1|S~0_combout\) # ((!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(13)) # (\scan_instance|In_Reg|L2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(13),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(14),
	datad => \dut_instance|add_instance|S1|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|S~combout\);

-- Location: LC_X5_Y8_N9
\dut_instance|add_instance|S1|l3[0]~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l3[0]~2_combout\ = (!\scan_instance|In_Reg|L2\(8) & (\scan_instance|In_Reg|PO[0]~2_combout\ & (!\dut_instance|add_instance|S1|S~combout\ & !\scan_instance|In_Reg|PO[9]~0_combout\)))

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
	dataa => \scan_instance|In_Reg|L2\(8),
	datab => \scan_instance|In_Reg|PO[0]~2_combout\,
	datac => \dut_instance|add_instance|S1|S~combout\,
	datad => \scan_instance|In_Reg|PO[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l3[0]~2_combout\);

-- Location: LC_X6_Y9_N7
\dut_instance|add_instance|S2|l3[4]~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l3[4]~2_combout\ = (\scan_instance|In_Reg|L2\(8) & ((\TRST~combout\ & (\scan_instance|In_Reg|L2\(4))) # (!\TRST~combout\ & ((\scan_instance|In_Reg|L2\(5)))))) # (!\scan_instance|In_Reg|L2\(8) & (\scan_instance|In_Reg|L2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \scan_instance|In_Reg|L2\(5),
	datac => \scan_instance|In_Reg|L2\(8),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l3[4]~2_combout\);

-- Location: LC_X6_Y9_N8
\dut_instance|add_instance|S2|l3[4]~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l3[4]~3_combout\ = (\dut_instance|add_instance|S2|l2[2]~0_combout\ & ((\scan_instance|In_Reg|PO[9]~0_combout\ & (\dut_instance|add_instance|S2|l2[6]~1_combout\)) # (!\scan_instance|In_Reg|PO[9]~0_combout\ & 
-- ((\dut_instance|add_instance|S2|l3[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|l2[6]~1_combout\,
	datab => \dut_instance|add_instance|S2|l3[4]~2_combout\,
	datac => \scan_instance|In_Reg|PO[9]~0_combout\,
	datad => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l3[4]~3_combout\);

-- Location: LC_X4_Y7_N7
\scan_instance|Out_Reg|L1~46\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~46_combout\ = (\scan_instance|Out_Reg|L1[5]~65_combout\ & (((\dut_instance|add_instance|S1|l3[0]~2_combout\)) # (!\scan_instance|Out_Reg|L1[5]~64_combout\))) # (!\scan_instance|Out_Reg|L1[5]~65_combout\ & 
-- (\scan_instance|Out_Reg|L1[5]~64_combout\ & ((\dut_instance|add_instance|S2|l3[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~65_combout\,
	datab => \scan_instance|Out_Reg|L1[5]~64_combout\,
	datac => \dut_instance|add_instance|S1|l3[0]~2_combout\,
	datad => \dut_instance|add_instance|S2|l3[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~46_combout\);

-- Location: LC_X4_Y7_N8
\scan_instance|Out_Reg|L1~47\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~47_combout\ = (\scan_instance|Out_Reg|L1[5]~45_combout\ & ((\scan_instance|Out_Reg|L1~46_combout\ & (\dut_instance|add_instance|S1|l2[2]~2_combout\)) # (!\scan_instance|Out_Reg|L1~46_combout\ & 
-- ((\dut_instance|add_instance|S1|l2[4]~1_combout\))))) # (!\scan_instance|Out_Reg|L1[5]~45_combout\ & (((\scan_instance|Out_Reg|L1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~45_combout\,
	datab => \dut_instance|add_instance|S1|l2[2]~2_combout\,
	datac => \dut_instance|add_instance|S1|l2[4]~1_combout\,
	datad => \scan_instance|Out_Reg|L1~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~47_combout\);

-- Location: LC_X3_Y7_N0
\scan_instance|Out_Reg|L1~48\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~48_combout\ = (\scan_instance|Out_Reg|L1[5]~44_combout\ & (((\scan_instance|Out_Reg|L1[3]~38_combout\)))) # (!\scan_instance|Out_Reg|L1[5]~44_combout\ & ((\scan_instance|Out_Reg|L1[3]~38_combout\ & 
-- (\dut_instance|add_instance|S0|FA4|sum~8_combout\)) # (!\scan_instance|Out_Reg|L1[3]~38_combout\ & ((\scan_instance|Out_Reg|L1~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~44_combout\,
	datab => \dut_instance|add_instance|S0|FA4|sum~8_combout\,
	datac => \scan_instance|Out_Reg|L1[3]~38_combout\,
	datad => \scan_instance|Out_Reg|L1~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~48_combout\);

-- Location: LC_X3_Y7_N1
\scan_instance|Out_Reg|L1[4]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(4) = DFFEAS((\scan_instance|Out_Reg|L1[5]~44_combout\ & ((\scan_instance|Out_Reg|L1~48_combout\ & (\scan_instance|Out_Reg|L1\(5))) # (!\scan_instance|Out_Reg|L1~48_combout\ & 
-- ((\dut_instance|add_instance|S3|m3|FA4|sum~2_combout\))))) # (!\scan_instance|Out_Reg|L1[5]~44_combout\ & (((\scan_instance|Out_Reg|L1~48_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1[5]~44_combout\,
	datab => \scan_instance|Out_Reg|L1\(5),
	datac => \dut_instance|add_instance|S3|m3|FA4|sum~2_combout\,
	datad => \scan_instance|Out_Reg|L1~48_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(4));

-- Location: LC_X5_Y7_N2
\dut_instance|add_instance|S0|FA3|sum~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA3|sum~8_combout\ = \dut_instance|add_instance|S0|FA2|Cout~0_combout\ $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(11) $ (\scan_instance|In_Reg|L2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e1d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(11),
	datab => \TRST~combout\,
	datac => \dut_instance|add_instance|S0|FA2|Cout~0_combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA3|sum~8_combout\);

-- Location: LC_X4_Y6_N2
\scan_instance|Out_Reg|L1~43\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~43_combout\ = (\scan_instance|Out_Reg|L1[3]~37_combout\ & (\scan_instance|Out_Reg|L1[3]~38_combout\ & (\scan_instance|Out_Reg|L1\(4)))) # (!\scan_instance|Out_Reg|L1[3]~37_combout\ & 
-- (((\dut_instance|add_instance|S0|FA3|sum~8_combout\)) # (!\scan_instance|Out_Reg|L1[3]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~37_combout\,
	datab => \scan_instance|Out_Reg|L1[3]~38_combout\,
	datac => \scan_instance|Out_Reg|L1\(4),
	datad => \dut_instance|add_instance|S0|FA3|sum~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~43_combout\);

-- Location: LC_X7_Y7_N7
\scan_instance|Out_Reg|L1[3]~32\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[3]~32_combout\ = (!\TRST~combout\ & (!\scan_instance|In_Reg|L2\(10) & (!\scan_instance|In_Reg|L2\(16) & \scan_instance|In_Reg|L2\(17))))

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
	dataa => \TRST~combout\,
	datab => \scan_instance|In_Reg|L2\(10),
	datac => \scan_instance|In_Reg|L2\(16),
	datad => \scan_instance|In_Reg|L2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[3]~32_combout\);

-- Location: LC_X6_Y9_N4
\scan_instance|Out_Reg|L1~40\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~40_combout\ = (\scan_instance|Out_Reg|L1[3]~32_combout\ & (\dut_instance|add_instance|S2|l2[2]~0_combout\ & (\dut_instance|add_instance|S2|l3[5]~4_combout\))) # (!\scan_instance|Out_Reg|L1[3]~32_combout\ & 
-- (((\dut_instance|add_instance|S3|p3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~32_combout\,
	datab => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datac => \dut_instance|add_instance|S2|l3[5]~4_combout\,
	datad => \dut_instance|add_instance|S3|p3\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~40_combout\);

-- Location: LC_X6_Y7_N4
\scan_instance|Out_Reg|L1[3]~34\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[3]~34_combout\ = ((\scan_instance|In_Reg|L2\(16)) # ((!\scan_instance|In_Reg|PO[10]~4_combout\ & \scan_instance|In_Reg|PO[9]~0_combout\))) # (!\scan_instance|Out_Reg|L1[5]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfdd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~22_combout\,
	datab => \scan_instance|In_Reg|L2\(16),
	datac => \scan_instance|In_Reg|PO[10]~4_combout\,
	datad => \scan_instance|In_Reg|PO[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[3]~34_combout\);

-- Location: LC_X5_Y9_N2
\dut_instance|add_instance|S2|l2[3]~3\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l2[3]~3_combout\ = (\dut_instance|add_instance|S2|l2[2]~0_combout\ & ((\scan_instance|In_Reg|PO[8]~1_combout\ & (\scan_instance|In_Reg|L2\(4))) # (!\scan_instance|In_Reg|PO[8]~1_combout\ & ((\scan_instance|In_Reg|L2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(4),
	datab => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datac => \scan_instance|In_Reg|PO[8]~1_combout\,
	datad => \scan_instance|In_Reg|L2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l2[3]~3_combout\);

-- Location: LC_X5_Y9_N8
\scan_instance|Out_Reg|L1~41\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~41_combout\ = (\scan_instance|Out_Reg|L1[3]~32_combout\ & (((\scan_instance|Out_Reg|L1[3]~34_combout\) # (\dut_instance|add_instance|S2|l2[3]~3_combout\)))) # (!\scan_instance|Out_Reg|L1[3]~32_combout\ & 
-- (\dut_instance|add_instance|S2|l3[7]~7_combout\ & (!\scan_instance|Out_Reg|L1[3]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S2|l3[7]~7_combout\,
	datab => \scan_instance|Out_Reg|L1[3]~32_combout\,
	datac => \scan_instance|Out_Reg|L1[3]~34_combout\,
	datad => \dut_instance|add_instance|S2|l2[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~41_combout\);

-- Location: LC_X5_Y9_N3
\scan_instance|Out_Reg|L1~42\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~42_combout\ = (\scan_instance|Out_Reg|L1[3]~34_combout\ & (\scan_instance|Out_Reg|L1~40_combout\ $ (((!\dut_instance|add_instance|S3|m1|FA3|sum~combout\ & !\scan_instance|Out_Reg|L1~41_combout\))))) # 
-- (!\scan_instance|Out_Reg|L1[3]~34_combout\ & (((\scan_instance|Out_Reg|L1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|m1|FA3|sum~combout\,
	datab => \scan_instance|Out_Reg|L1~40_combout\,
	datac => \scan_instance|Out_Reg|L1[3]~34_combout\,
	datad => \scan_instance|Out_Reg|L1~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~42_combout\);

-- Location: LC_X4_Y6_N8
\scan_instance|Out_Reg|L1[3]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(3) = DFFEAS((\scan_instance|Out_Reg|L1[3]~63_combout\ & ((\scan_instance|Out_Reg|L1~43_combout\ & (\scan_instance|Out_Reg|L1~42_combout\)) # (!\scan_instance|Out_Reg|L1~43_combout\ & 
-- ((\dut_instance|add_instance|S1|l3[3]~6_combout\))))) # (!\scan_instance|Out_Reg|L1[3]~63_combout\ & (\scan_instance|Out_Reg|L1~43_combout\)), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1[3]~63_combout\,
	datab => \scan_instance|Out_Reg|L1~43_combout\,
	datac => \scan_instance|Out_Reg|L1~42_combout\,
	datad => \dut_instance|add_instance|S1|l3[3]~6_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(3));

-- Location: LC_X5_Y7_N0
\dut_instance|add_instance|S0|FA2|sum~8\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA2|sum~8_combout\ = \dut_instance|add_instance|S0|FA1|Cout~0_combout\ $ (((\TRST~combout\) # (\scan_instance|In_Reg|L2\(2) $ (!\scan_instance|In_Reg|L2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5665",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S0|FA1|Cout~0_combout\,
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(2),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA2|sum~8_combout\);

-- Location: LC_X4_Y6_N9
\scan_instance|Out_Reg|L1~39\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~39_combout\ = (\scan_instance|Out_Reg|L1[3]~38_combout\ & ((\scan_instance|Out_Reg|L1[3]~37_combout\ & (\scan_instance|Out_Reg|L1\(3))) # (!\scan_instance|Out_Reg|L1[3]~37_combout\ & 
-- ((!\dut_instance|add_instance|S0|FA2|sum~8_combout\))))) # (!\scan_instance|Out_Reg|L1[3]~38_combout\ & (((!\scan_instance|Out_Reg|L1[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "838f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1\(3),
	datab => \scan_instance|Out_Reg|L1[3]~38_combout\,
	datac => \scan_instance|Out_Reg|L1[3]~37_combout\,
	datad => \dut_instance|add_instance|S0|FA2|sum~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~39_combout\);

-- Location: LC_X6_Y9_N6
\scan_instance|Out_Reg|L1~33\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~33_combout\ = (\scan_instance|Out_Reg|L1[3]~32_combout\ & (\dut_instance|add_instance|S2|l3[4]~2_combout\ & (\dut_instance|add_instance|S2|l2[2]~0_combout\))) # (!\scan_instance|Out_Reg|L1[3]~32_combout\ & 
-- (((\dut_instance|add_instance|S3|p2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~32_combout\,
	datab => \dut_instance|add_instance|S2|l3[4]~2_combout\,
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \dut_instance|add_instance|S3|p2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~33_combout\);

-- Location: LC_X5_Y9_N4
\dut_instance|add_instance|S2|l2[2]~2\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l2[2]~2_combout\ = (\dut_instance|add_instance|S2|l2[2]~0_combout\ & ((\scan_instance|In_Reg|PO[8]~1_combout\ & ((\scan_instance|In_Reg|L2\(3)))) # (!\scan_instance|In_Reg|PO[8]~1_combout\ & (\scan_instance|In_Reg|L2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datab => \scan_instance|In_Reg|L2\(3),
	datac => \scan_instance|In_Reg|PO[8]~1_combout\,
	datad => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l2[2]~2_combout\);

-- Location: LC_X4_Y9_N4
\scan_instance|Out_Reg|L1~35\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~35_combout\ = (\scan_instance|Out_Reg|L1[3]~32_combout\ & ((\dut_instance|add_instance|S2|l2[2]~2_combout\) # ((\scan_instance|Out_Reg|L1[3]~34_combout\)))) # (!\scan_instance|Out_Reg|L1[3]~32_combout\ & 
-- (((!\scan_instance|Out_Reg|L1[3]~34_combout\ & \dut_instance|add_instance|S2|l3[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~32_combout\,
	datab => \dut_instance|add_instance|S2|l2[2]~2_combout\,
	datac => \scan_instance|Out_Reg|L1[3]~34_combout\,
	datad => \dut_instance|add_instance|S2|l3[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~35_combout\);

-- Location: LC_X4_Y9_N5
\scan_instance|Out_Reg|L1~36\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~36_combout\ = (\scan_instance|Out_Reg|L1[3]~34_combout\ & (\scan_instance|Out_Reg|L1~33_combout\ $ (((\dut_instance|add_instance|S3|m0|FA2|sum~0_combout\ & !\scan_instance|Out_Reg|L1~35_combout\))))) # 
-- (!\scan_instance|Out_Reg|L1[3]~34_combout\ & (((\scan_instance|Out_Reg|L1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[3]~34_combout\,
	datab => \scan_instance|Out_Reg|L1~33_combout\,
	datac => \dut_instance|add_instance|S3|m0|FA2|sum~0_combout\,
	datad => \scan_instance|Out_Reg|L1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~36_combout\);

-- Location: LC_X4_Y6_N0
\scan_instance|Out_Reg|L1[2]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(2) = DFFEAS((\scan_instance|Out_Reg|L1[3]~63_combout\ & ((\scan_instance|Out_Reg|L1~39_combout\ & ((\scan_instance|Out_Reg|L1~36_combout\))) # (!\scan_instance|Out_Reg|L1~39_combout\ & 
-- (\dut_instance|add_instance|S1|l3[2]~4_combout\)))) # (!\scan_instance|Out_Reg|L1[3]~63_combout\ & (\scan_instance|Out_Reg|L1~39_combout\)), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Out_Reg|L1[3]~63_combout\,
	datab => \scan_instance|Out_Reg|L1~39_combout\,
	datac => \dut_instance|add_instance|S1|l3[2]~4_combout\,
	datad => \scan_instance|Out_Reg|L1~36_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(2));

-- Location: LC_X6_Y7_N9
\dut_instance|add_instance|S3|m0|FA1|sum~4\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S3|m0|FA1|sum~4_combout\ = \dut_instance|add_instance|S3|p1\(1) $ ((((\TRST~combout\) # (!\scan_instance|In_Reg|L2\(9))) # (!\scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3393",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datab => \dut_instance|add_instance|S3|p1\(1),
	datac => \scan_instance|In_Reg|L2\(9),
	datad => \TRST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S3|m0|FA1|sum~4_combout\);

-- Location: LC_X5_Y9_N0
\dut_instance|add_instance|S2|l1[1]~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l1[1]~0_combout\ = (\scan_instance|In_Reg|L2\(1) & (((\dut_instance|add_instance|S2|l2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(1),
	datad => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l1[1]~0_combout\);

-- Location: LC_X5_Y9_N5
\dut_instance|add_instance|S2|l1[2]~1\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S2|l1[2]~1_combout\ = (\scan_instance|In_Reg|L2\(2) & (((\dut_instance|add_instance|S2|l2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(2),
	datad => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S2|l1[2]~1_combout\);

-- Location: LC_X5_Y9_N6
\scan_instance|Out_Reg|L1~28\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~28_combout\ = (\scan_instance|Out_Reg|L1[0]~18_combout\ & ((\scan_instance|Out_Reg|L1[0]~19_combout\) # ((\dut_instance|add_instance|S2|l1[1]~0_combout\)))) # (!\scan_instance|Out_Reg|L1[0]~18_combout\ & 
-- (!\scan_instance|Out_Reg|L1[0]~19_combout\ & ((\dut_instance|add_instance|S2|l1[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~18_combout\,
	datab => \scan_instance|Out_Reg|L1[0]~19_combout\,
	datac => \dut_instance|add_instance|S2|l1[1]~0_combout\,
	datad => \dut_instance|add_instance|S2|l1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~28_combout\);

-- Location: LC_X5_Y9_N7
\scan_instance|Out_Reg|L1~29\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~29_combout\ = (\scan_instance|Out_Reg|L1[0]~19_combout\ & ((\scan_instance|Out_Reg|L1~28_combout\ & (\dut_instance|add_instance|S2|l2[3]~3_combout\)) # (!\scan_instance|Out_Reg|L1~28_combout\ & 
-- ((\dut_instance|add_instance|S2|l3[5]~6_combout\))))) # (!\scan_instance|Out_Reg|L1[0]~19_combout\ & (((\scan_instance|Out_Reg|L1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~19_combout\,
	datab => \dut_instance|add_instance|S2|l2[3]~3_combout\,
	datac => \dut_instance|add_instance|S2|l3[5]~6_combout\,
	datad => \scan_instance|Out_Reg|L1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~29_combout\);

-- Location: LC_X6_Y7_N5
\scan_instance|Out_Reg|L1[0]~23\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1[0]~23_combout\ = (\TRST~combout\) # ((!\scan_instance|In_Reg|L2\(17) & ((!\scan_instance|In_Reg|L2\(10)) # (!\scan_instance|In_Reg|L2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(16),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(17),
	datad => \scan_instance|In_Reg|L2\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1[0]~23_combout\);

-- Location: LC_X5_Y7_N3
\dut_instance|add_instance|S0|FA1|sum\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA1|sum~combout\ = \dut_instance|add_instance|S3|p0\(0) $ (((!\TRST~combout\ & (\scan_instance|In_Reg|L2\(1) $ (\scan_instance|In_Reg|L2\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a99a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S3|p0\(0),
	datab => \TRST~combout\,
	datac => \scan_instance|In_Reg|L2\(1),
	datad => \scan_instance|In_Reg|L2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA1|sum~combout\);

-- Location: LC_X6_Y7_N1
\scan_instance|Out_Reg|L1~30\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~30_combout\ = (\scan_instance|Out_Reg|L1[0]~23_combout\ & ((\scan_instance|Out_Reg|L1[0]~24_combout\ & (!\dut_instance|add_instance|S0|FA1|sum~combout\)) # (!\scan_instance|Out_Reg|L1[0]~24_combout\ & 
-- ((\dut_instance|add_instance|S1|l3[1]~7_combout\))))) # (!\scan_instance|Out_Reg|L1[0]~23_combout\ & (((\scan_instance|Out_Reg|L1[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7a70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~23_combout\,
	datab => \dut_instance|add_instance|S0|FA1|sum~combout\,
	datac => \scan_instance|Out_Reg|L1[0]~24_combout\,
	datad => \dut_instance|add_instance|S1|l3[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~30_combout\);

-- Location: LC_X6_Y7_N6
\scan_instance|Out_Reg|L1~31\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~31_combout\ = (\scan_instance|Out_Reg|L1[5]~22_combout\ & ((\scan_instance|Out_Reg|L1~30_combout\ & (\dut_instance|add_instance|S3|m0|FA1|sum~4_combout\)) # (!\scan_instance|Out_Reg|L1~30_combout\ & 
-- ((\scan_instance|Out_Reg|L1~29_combout\))))) # (!\scan_instance|Out_Reg|L1[5]~22_combout\ & (((\scan_instance|Out_Reg|L1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~22_combout\,
	datab => \dut_instance|add_instance|S3|m0|FA1|sum~4_combout\,
	datac => \scan_instance|Out_Reg|L1~29_combout\,
	datad => \scan_instance|Out_Reg|L1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~31_combout\);

-- Location: LC_X6_Y7_N7
\scan_instance|Out_Reg|L1[1]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(1) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~31_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(2))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~31_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \TRST~combout\,
	datac => \scan_instance|Out_Reg|L1\(2),
	datad => \scan_instance|Out_Reg|L1~31_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scan_instance|Out_Reg|L1\(1));

-- Location: LC_X3_Y8_N9
\dut_instance|add_instance|S0|FA0|S\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S0|FA0|S~combout\ = ((\TRST~combout\) # (\scan_instance|In_Reg|L2\(0) $ (!\scan_instance|In_Reg|L2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|In_Reg|L2\(0),
	datac => \TRST~combout\,
	datad => \scan_instance|In_Reg|L2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S0|FA0|S~combout\);

-- Location: LC_X3_Y8_N1
\scan_instance|Out_Reg|L1~25\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~25_combout\ = (\scan_instance|Out_Reg|L1[0]~24_combout\ & (((!\scan_instance|Out_Reg|L1[0]~23_combout\)) # (!\dut_instance|add_instance|S0|FA0|S~combout\))) # (!\scan_instance|Out_Reg|L1[0]~24_combout\ & 
-- (((\scan_instance|Out_Reg|L1[0]~23_combout\ & \dut_instance|add_instance|S1|l3[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7a2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~24_combout\,
	datab => \dut_instance|add_instance|S0|FA0|S~combout\,
	datac => \scan_instance|Out_Reg|L1[0]~23_combout\,
	datad => \dut_instance|add_instance|S1|l3[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~25_combout\);

-- Location: LC_X4_Y9_N8
\dut_instance|add_instance|S1|l1[0]~0\ : maxv_lcell
-- Equation(s):
-- \dut_instance|add_instance|S1|l1[0]~0_combout\ = (((\dut_instance|add_instance|S2|l2[2]~0_combout\ & \scan_instance|In_Reg|L2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut_instance|add_instance|S2|l2[2]~0_combout\,
	datad => \scan_instance|In_Reg|L2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dut_instance|add_instance|S1|l1[0]~0_combout\);

-- Location: LC_X5_Y9_N1
\scan_instance|Out_Reg|L1~20\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~20_combout\ = (\scan_instance|Out_Reg|L1[0]~18_combout\ & (((\scan_instance|Out_Reg|L1[0]~19_combout\)))) # (!\scan_instance|Out_Reg|L1[0]~18_combout\ & ((\scan_instance|Out_Reg|L1[0]~19_combout\ & 
-- (\dut_instance|add_instance|S2|l3[4]~3_combout\)) # (!\scan_instance|Out_Reg|L1[0]~19_combout\ & ((\dut_instance|add_instance|S2|l1[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[0]~18_combout\,
	datab => \dut_instance|add_instance|S2|l3[4]~3_combout\,
	datac => \scan_instance|Out_Reg|L1[0]~19_combout\,
	datad => \dut_instance|add_instance|S2|l1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~20_combout\);

-- Location: LC_X4_Y9_N7
\scan_instance|Out_Reg|L1~21\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~21_combout\ = (\scan_instance|Out_Reg|L1[0]~18_combout\ & ((\scan_instance|Out_Reg|L1~20_combout\ & ((\dut_instance|add_instance|S2|l2[2]~2_combout\))) # (!\scan_instance|Out_Reg|L1~20_combout\ & 
-- (\dut_instance|add_instance|S1|l1[0]~0_combout\)))) # (!\scan_instance|Out_Reg|L1[0]~18_combout\ & (((\scan_instance|Out_Reg|L1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut_instance|add_instance|S1|l1[0]~0_combout\,
	datab => \dut_instance|add_instance|S2|l2[2]~2_combout\,
	datac => \scan_instance|Out_Reg|L1[0]~18_combout\,
	datad => \scan_instance|Out_Reg|L1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~21_combout\);

-- Location: LC_X3_Y8_N8
\scan_instance|Out_Reg|L1~26\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1~26_combout\ = (\scan_instance|Out_Reg|L1[5]~22_combout\ & ((\scan_instance|Out_Reg|L1~25_combout\ & (!\dut_instance|add_instance|S3|p0\(0))) # (!\scan_instance|Out_Reg|L1~25_combout\ & ((\scan_instance|Out_Reg|L1~21_combout\))))) 
-- # (!\scan_instance|Out_Reg|L1[5]~22_combout\ & (\scan_instance|Out_Reg|L1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \scan_instance|Out_Reg|L1[5]~22_combout\,
	datab => \scan_instance|Out_Reg|L1~25_combout\,
	datac => \dut_instance|add_instance|S3|p0\(0),
	datad => \scan_instance|Out_Reg|L1~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \scan_instance|Out_Reg|L1~26_combout\);

-- Location: LC_X3_Y8_N0
\scan_instance|Out_Reg|L1[0]\ : maxv_lcell
-- Equation(s):
-- \scan_instance|Out_Reg|L1\(0) = DFFEAS((\scan_instance|Selector3~0\ & ((\TRST~combout\ & ((\scan_instance|Out_Reg|L1~26_combout\))) # (!\TRST~combout\ & (\scan_instance|Out_Reg|L1\(1))))) # (!\scan_instance|Selector3~0\ & 
-- (((\scan_instance|Out_Reg|L1~26_combout\)))), GLOBAL(\TCLK~combout\), VCC, , \scan_instance|Out_Reg|L1[0]~27_combout\, , , \TRST~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \TCLK~combout\,
	dataa => \scan_instance|Selector3~0\,
	datab => \scan_instance|Out_Reg|L1\(1),
	datac => \TRST~combout\,
	datad => \scan_instance|Out_Reg|L1~26_combout\,
	aclr => GND,
	sclr => \TRST~combout\,
	ena => \scan_instance|Out_Reg|L1[0]~27_combout\,
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


