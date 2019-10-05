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

-- DATE "04/22/2019 22:18:13"

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

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(15 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|M1|m0|FA2|o1|Y~3_combout\ : std_logic;
SIGNAL \add_instance|M1|m0|FA2|o1|Y~9_combout\ : std_logic;
SIGNAL \add_instance|M1|m0|FA3|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m0|FA4|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m1|FA6|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M1|m0|FA4|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M1|m0|FA3|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M1|m0|FA2|x1|Y~4_combout\ : std_logic;
SIGNAL \add_instance|M1|m0|FA2|x1|Y~5_combout\ : std_logic;
SIGNAL \add_instance|M1|m1|FA3|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m1|FA4|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m1|FA5|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m1|FA4|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M1|m1|FA3|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA4|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m1|FA5|ha|S~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA5|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA6|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m1|FA6|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA7|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA5|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA4|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M1|m3|FA5|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA6|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M1|m3|FA6|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m3|FA7|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA7|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M2|C~0_combout\ : std_logic;
SIGNAL \add_instance|M1|m0|FA1|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M2|C[9]~1_combout\ : std_logic;
SIGNAL \add_instance|M2|C[2]~2_combout\ : std_logic;
SIGNAL \add_instance|M2|C[3]~3_combout\ : std_logic;
SIGNAL \add_instance|M1|m2|FA3|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M2|C[4]~4_combout\ : std_logic;
SIGNAL \add_instance|M2|C[5]~5_combout\ : std_logic;
SIGNAL \add_instance|M1|m3|FA5|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M2|C[6]~6_combout\ : std_logic;
SIGNAL \add_instance|M1|m3|FA6|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M2|C[7]~7_combout\ : std_logic;
SIGNAL \add_instance|M1|m3|FA7|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M2|C[8]~8_combout\ : std_logic;
SIGNAL \add_instance|M2|C[9]~9_combout\ : std_logic;
SIGNAL \add_instance|A3|FA0|S~combout\ : std_logic;
SIGNAL \add_instance|A1|FA1|x1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|A1|FA0|S~combout\ : std_logic;
SIGNAL \add_instance|A3|FA1|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|A2|FA1|a1|Y~combout\ : std_logic;
SIGNAL \add_instance|A3|FA1|a1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|A1|FA1|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|A1|FA2|x1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|A3|FA2|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|A1|FA2|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|A3|FA3|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|A3|FA4|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M1|p2\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|M1|p0\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \add_instance|M1|p3\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \add_instance|z\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|A3|FA3|x1|ALT_INV_Y~combout\ : std_logic;
SIGNAL \add_instance|A3|FA2|x1|ALT_INV_Y~combout\ : std_logic;
SIGNAL \add_instance|A3|FA0|ALT_INV_S~combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|A3|FA3|x1|ALT_INV_Y~combout\ <= NOT \add_instance|A3|FA3|x1|Y~combout\;
\add_instance|A3|FA2|x1|ALT_INV_Y~combout\ <= NOT \add_instance|A3|FA2|x1|Y~combout\;
\add_instance|A3|FA0|ALT_INV_S~combout\ <= NOT \add_instance|A3|FA0|S~combout\;

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X14_Y9_N4
\add_instance|M1|m0|FA2|o1|Y~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA2|o1|Y~3_combout\ = (((\input_vector~combout\(10)) # (\input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA2|o1|Y~3_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X14_Y9_N9
\add_instance|M1|m0|FA2|o1|Y~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA2|o1|Y~9_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(9) & (\add_instance|M1|m0|FA2|o1|Y~3_combout\ & \input_vector~combout\(0))))

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
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(9),
	datac => \add_instance|M1|m0|FA2|o1|Y~3_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA2|o1|Y~9_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X14_Y9_N0
\add_instance|M1|p0[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p0\(3) = (\input_vector~combout\(11) & (((\input_vector~combout\(0)))))

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
	dataa => \input_vector~combout\(11),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p0\(3));

-- Location: LC_X14_Y9_N6
\add_instance|M1|m0|FA3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA3|o1|Y~0_combout\ = (\add_instance|M1|m0|FA2|o1|Y~9_combout\ & ((\add_instance|M1|p0\(3)) # ((\input_vector~combout\(10) & \input_vector~combout\(1))))) # (!\add_instance|M1|m0|FA2|o1|Y~9_combout\ & (\input_vector~combout\(10) & 
-- (\input_vector~combout\(1) & \add_instance|M1|p0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \add_instance|M1|m0|FA2|o1|Y~9_combout\,
	datac => \input_vector~combout\(1),
	datad => \add_instance|M1|p0\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA3|o1|Y~0_combout\);

-- Location: LC_X14_Y9_N8
\add_instance|M1|m0|FA4|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA4|o1|Y~0_combout\ = (\add_instance|M1|m0|FA3|o1|Y~0_combout\ & ((\input_vector~combout\(0)) # ((\input_vector~combout\(1) & \input_vector~combout\(11))))) # (!\add_instance|M1|m0|FA3|o1|Y~0_combout\ & (\input_vector~combout\(0) & 
-- (\input_vector~combout\(1) & \input_vector~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m0|FA3|o1|Y~0_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA4|o1|Y~0_combout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X14_Y10_N5
\add_instance|M1|m1|FA6|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m1|FA6|ha|S~combout\ = (\input_vector~combout\(2) $ (((\add_instance|M1|m0|FA4|o1|Y~0_combout\ & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|M1|m0|FA4|o1|Y~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m1|FA6|ha|S~combout\);

-- Location: LC_X14_Y9_N7
\add_instance|M1|m0|FA4|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA4|ha|S~combout\ = \input_vector~combout\(0) $ (((\input_vector~combout\(11) & (\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA4|ha|S~combout\);

-- Location: LC_X14_Y9_N5
\add_instance|M1|p2[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p2\(4) = (((\input_vector~combout\(10) & \input_vector~combout\(2))))

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
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p2\(4));

-- Location: LC_X16_Y9_N3
\add_instance|M1|p2[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p2\(2) = (((\input_vector~combout\(8) & \input_vector~combout\(2))))

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
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p2\(2));

-- Location: LC_X14_Y9_N1
\add_instance|M1|m0|FA3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA3|x1|Y~combout\ = \add_instance|M1|m0|FA2|o1|Y~9_combout\ $ (\add_instance|M1|p0\(3) $ (((\input_vector~combout\(10) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \add_instance|M1|m0|FA2|o1|Y~9_combout\,
	datac => \input_vector~combout\(1),
	datad => \add_instance|M1|p0\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA3|x1|Y~combout\);

-- Location: LC_X16_Y9_N8
\add_instance|M1|m0|FA2|x1|Y~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA2|x1|Y~4_combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(1) & ((!\input_vector~combout\(8)) # (!\input_vector~combout\(0))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA2|x1|Y~4_combout\);

-- Location: LC_X16_Y9_N0
\add_instance|M1|m0|FA2|x1|Y~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA2|x1|Y~5_combout\ = (\add_instance|M1|m0|FA2|x1|Y~4_combout\ & (\input_vector~combout\(9) $ (((\input_vector~combout\(10) & \input_vector~combout\(0)))))) # (!\add_instance|M1|m0|FA2|x1|Y~4_combout\ & (\input_vector~combout\(10) & 
-- (\input_vector~combout\(9) & \input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "68a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m0|FA2|x1|Y~4_combout\,
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA2|x1|Y~5_combout\);

-- Location: LC_X16_Y9_N6
\add_instance|M1|p2[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p2\(3) = (((\input_vector~combout\(9) & \input_vector~combout\(2))))

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
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p2\(3));

-- Location: LC_X16_Y9_N2
\add_instance|M1|m1|FA3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m1|FA3|o1|Y~0_combout\ = (\add_instance|M1|m0|FA3|x1|Y~combout\ & ((\add_instance|M1|p2\(3)) # ((\add_instance|M1|p2\(2) & \add_instance|M1|m0|FA2|x1|Y~5_combout\)))) # (!\add_instance|M1|m0|FA3|x1|Y~combout\ & (\add_instance|M1|p2\(2) & 
-- (\add_instance|M1|m0|FA2|x1|Y~5_combout\ & \add_instance|M1|p2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|p2\(2),
	datab => \add_instance|M1|m0|FA3|x1|Y~combout\,
	datac => \add_instance|M1|m0|FA2|x1|Y~5_combout\,
	datad => \add_instance|M1|p2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m1|FA3|o1|Y~0_combout\);

-- Location: LC_X14_Y9_N2
\add_instance|M1|m1|FA4|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m1|FA4|o1|Y~0_combout\ = (\add_instance|M1|p2\(4) & ((\add_instance|M1|m1|FA3|o1|Y~0_combout\) # (\add_instance|M1|m0|FA3|o1|Y~0_combout\ $ (\add_instance|M1|m0|FA4|ha|S~combout\)))) # (!\add_instance|M1|p2\(4) & 
-- (\add_instance|M1|m1|FA3|o1|Y~0_combout\ & (\add_instance|M1|m0|FA3|o1|Y~0_combout\ $ (\add_instance|M1|m0|FA4|ha|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m0|FA3|o1|Y~0_combout\,
	datab => \add_instance|M1|m0|FA4|ha|S~combout\,
	datac => \add_instance|M1|p2\(4),
	datad => \add_instance|M1|m1|FA3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m1|FA4|o1|Y~0_combout\);

-- Location: LC_X14_Y10_N4
\add_instance|M1|p2[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p2\(5) = (((\input_vector~combout\(11) & \input_vector~combout\(2))))

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
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p2\(5));

-- Location: LC_X14_Y10_N9
\add_instance|M1|m1|FA5|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m1|FA5|o1|Y~0_combout\ = (\add_instance|M1|m1|FA4|o1|Y~0_combout\ & ((\add_instance|M1|p2\(5)) # (\add_instance|M1|m0|FA4|o1|Y~0_combout\ $ (\input_vector~combout\(1))))) # (!\add_instance|M1|m1|FA4|o1|Y~0_combout\ & 
-- (\add_instance|M1|p2\(5) & (\add_instance|M1|m0|FA4|o1|Y~0_combout\ $ (\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m1|FA4|o1|Y~0_combout\,
	datab => \add_instance|M1|m0|FA4|o1|Y~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \add_instance|M1|p2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m1|FA5|o1|Y~0_combout\);

-- Location: LC_X14_Y9_N3
\add_instance|M1|m1|FA4|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m1|FA4|x1|Y~combout\ = \add_instance|M1|m0|FA3|o1|Y~0_combout\ $ (\add_instance|M1|m0|FA4|ha|S~combout\ $ (\add_instance|M1|p2\(4) $ (\add_instance|M1|m1|FA3|o1|Y~0_combout\)))

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
	dataa => \add_instance|M1|m0|FA3|o1|Y~0_combout\,
	datab => \add_instance|M1|m0|FA4|ha|S~combout\,
	datac => \add_instance|M1|p2\(4),
	datad => \add_instance|M1|m1|FA3|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m1|FA4|x1|Y~combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X14_Y8_N7
\add_instance|M1|p3[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p3\(4) = ((\input_vector~combout\(3) & (\input_vector~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p3\(4));

-- Location: LC_X16_Y9_N4
\add_instance|M1|m1|FA3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m1|FA3|x1|Y~combout\ = \add_instance|M1|m0|FA3|x1|Y~combout\ $ (\add_instance|M1|p2\(3) $ (((\add_instance|M1|p2\(2) & \add_instance|M1|m0|FA2|x1|Y~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|p2\(2),
	datab => \add_instance|M1|m0|FA3|x1|Y~combout\,
	datac => \add_instance|M1|m0|FA2|x1|Y~5_combout\,
	datad => \add_instance|M1|p2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m1|FA3|x1|Y~combout\);

-- Location: LC_X14_Y8_N3
\add_instance|M1|p3[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p3\(3) = ((\input_vector~combout\(3) & (\input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p3\(3));

-- Location: LC_X14_Y8_N5
\add_instance|M1|m2|FA4|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA4|o1|Y~0_combout\ = (\add_instance|M1|m1|FA4|x1|Y~combout\ & ((\add_instance|M1|p3\(4)) # ((\add_instance|M1|m1|FA3|x1|Y~combout\ & \add_instance|M1|p3\(3))))) # (!\add_instance|M1|m1|FA4|x1|Y~combout\ & (\add_instance|M1|p3\(4) & 
-- (\add_instance|M1|m1|FA3|x1|Y~combout\ & \add_instance|M1|p3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m1|FA4|x1|Y~combout\,
	datab => \add_instance|M1|p3\(4),
	datac => \add_instance|M1|m1|FA3|x1|Y~combout\,
	datad => \add_instance|M1|p3\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA4|o1|Y~0_combout\);

-- Location: LC_X14_Y10_N7
\add_instance|M1|p3[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p3\(5) = ((\input_vector~combout\(3) & ((\input_vector~combout\(10)))))

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
	datab => \input_vector~combout\(3),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p3\(5));

-- Location: LC_X14_Y10_N2
\add_instance|M1|m1|FA5|ha|S~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m1|FA5|ha|S~0_combout\ = \add_instance|M1|m0|FA4|o1|Y~0_combout\ $ (\input_vector~combout\(1) $ (((\input_vector~combout\(11) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \add_instance|M1|m0|FA4|o1|Y~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m1|FA5|ha|S~0_combout\);

-- Location: LC_X14_Y10_N8
\add_instance|M1|m2|FA5|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA5|o1|Y~0_combout\ = (\add_instance|M1|m2|FA4|o1|Y~0_combout\ & ((\add_instance|M1|p3\(5)) # (\add_instance|M1|m1|FA4|o1|Y~0_combout\ $ (\add_instance|M1|m1|FA5|ha|S~0_combout\)))) # (!\add_instance|M1|m2|FA4|o1|Y~0_combout\ & 
-- (\add_instance|M1|p3\(5) & (\add_instance|M1|m1|FA4|o1|Y~0_combout\ $ (\add_instance|M1|m1|FA5|ha|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m1|FA4|o1|Y~0_combout\,
	datab => \add_instance|M1|m2|FA4|o1|Y~0_combout\,
	datac => \add_instance|M1|p3\(5),
	datad => \add_instance|M1|m1|FA5|ha|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA5|o1|Y~0_combout\);

-- Location: LC_X15_Y9_N9
\add_instance|M1|p3[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|p3\(6) = ((\input_vector~combout\(11) & ((\input_vector~combout\(3)))))

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
	datab => \input_vector~combout\(11),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|p3\(6));

-- Location: LC_X15_Y9_N4
\add_instance|M1|m2|FA6|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA6|o1|Y~0_combout\ = (\add_instance|M1|m2|FA5|o1|Y~0_combout\ & ((\add_instance|M1|p3\(6)) # (\add_instance|M1|m1|FA6|ha|S~combout\ $ (\add_instance|M1|m1|FA5|o1|Y~0_combout\)))) # (!\add_instance|M1|m2|FA5|o1|Y~0_combout\ & 
-- (\add_instance|M1|p3\(6) & (\add_instance|M1|m1|FA6|ha|S~combout\ $ (\add_instance|M1|m1|FA5|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m1|FA6|ha|S~combout\,
	datab => \add_instance|M1|m1|FA5|o1|Y~0_combout\,
	datac => \add_instance|M1|m2|FA5|o1|Y~0_combout\,
	datad => \add_instance|M1|p3\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA6|o1|Y~0_combout\);

-- Location: LC_X14_Y10_N6
\add_instance|M1|m1|FA6|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m1|FA6|o1|Y~0_combout\ = (\add_instance|M1|m1|FA5|o1|Y~0_combout\ & ((\input_vector~combout\(2)) # ((\add_instance|M1|m0|FA4|o1|Y~0_combout\ & \input_vector~combout\(1))))) # (!\add_instance|M1|m1|FA5|o1|Y~0_combout\ & 
-- (\add_instance|M1|m0|FA4|o1|Y~0_combout\ & (\input_vector~combout\(1) & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m0|FA4|o1|Y~0_combout\,
	datab => \add_instance|M1|m1|FA5|o1|Y~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m1|FA6|o1|Y~0_combout\);

-- Location: LC_X15_Y9_N7
\add_instance|M1|m2|FA7|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA7|ha|S~combout\ = (\add_instance|M1|m1|FA6|o1|Y~0_combout\ $ (((\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|M1|m1|FA6|o1|Y~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA7|ha|S~combout\);

-- Location: LC_X14_Y10_N3
\add_instance|M1|m2|FA5|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA5|x1|Y~combout\ = \add_instance|M1|m1|FA4|o1|Y~0_combout\ $ (\add_instance|M1|m2|FA4|o1|Y~0_combout\ $ (\add_instance|M1|p3\(5) $ (\add_instance|M1|m1|FA5|ha|S~0_combout\)))

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
	dataa => \add_instance|M1|m1|FA4|o1|Y~0_combout\,
	datab => \add_instance|M1|m2|FA4|o1|Y~0_combout\,
	datac => \add_instance|M1|p3\(5),
	datad => \add_instance|M1|m1|FA5|ha|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA5|x1|Y~combout\);

-- Location: LC_X14_Y8_N8
\add_instance|M1|m2|FA4|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA4|x1|Y~combout\ = \add_instance|M1|m1|FA4|x1|Y~combout\ $ (\add_instance|M1|p3\(4) $ (((\add_instance|M1|m1|FA3|x1|Y~combout\ & \add_instance|M1|p3\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m1|FA4|x1|Y~combout\,
	datab => \add_instance|M1|p3\(4),
	datac => \add_instance|M1|m1|FA3|x1|Y~combout\,
	datad => \add_instance|M1|p3\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA4|x1|Y~combout\);

-- Location: LC_X14_Y8_N2
\add_instance|M1|m3|FA5|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m3|FA5|o1|Y~0_combout\ = (\add_instance|M1|m2|FA5|x1|Y~combout\ & ((\input_vector~combout\(9)) # ((\input_vector~combout\(8) & \add_instance|M1|m2|FA4|x1|Y~combout\)))) # (!\add_instance|M1|m2|FA5|x1|Y~combout\ & 
-- (\input_vector~combout\(8) & (\input_vector~combout\(9) & \add_instance|M1|m2|FA4|x1|Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|M1|m2|FA5|x1|Y~combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|M1|m2|FA4|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m3|FA5|o1|Y~0_combout\);

-- Location: LC_X15_Y9_N8
\add_instance|M1|m2|FA6|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA6|ha|S~combout\ = \add_instance|M1|m1|FA6|ha|S~combout\ $ (\add_instance|M1|m1|FA5|o1|Y~0_combout\ $ (((\input_vector~combout\(11) & \input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m1|FA6|ha|S~combout\,
	datab => \input_vector~combout\(11),
	datac => \add_instance|M1|m1|FA5|o1|Y~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA6|ha|S~combout\);

-- Location: LC_X15_Y9_N1
\add_instance|M1|m3|FA6|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m3|FA6|o1|Y~0_combout\ = (\add_instance|M1|m3|FA5|o1|Y~0_combout\ & ((\input_vector~combout\(10)) # (\add_instance|M1|m2|FA5|o1|Y~0_combout\ $ (\add_instance|M1|m2|FA6|ha|S~combout\)))) # (!\add_instance|M1|m3|FA5|o1|Y~0_combout\ & 
-- (\input_vector~combout\(10) & (\add_instance|M1|m2|FA5|o1|Y~0_combout\ $ (\add_instance|M1|m2|FA6|ha|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m2|FA5|o1|Y~0_combout\,
	datab => \add_instance|M1|m3|FA5|o1|Y~0_combout\,
	datac => \input_vector~combout\(10),
	datad => \add_instance|M1|m2|FA6|ha|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m3|FA6|o1|Y~0_combout\);

-- Location: LC_X15_Y9_N2
\add_instance|M1|m3|FA7|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m3|FA7|o1|Y~0_combout\ = (\input_vector~combout\(11) & ((\add_instance|M1|m3|FA6|o1|Y~0_combout\) # (\add_instance|M1|m2|FA6|o1|Y~0_combout\ $ (\add_instance|M1|m2|FA7|ha|S~combout\)))) # (!\input_vector~combout\(11) & 
-- (\add_instance|M1|m3|FA6|o1|Y~0_combout\ & (\add_instance|M1|m2|FA6|o1|Y~0_combout\ $ (\add_instance|M1|m2|FA7|ha|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m2|FA6|o1|Y~0_combout\,
	datab => \input_vector~combout\(11),
	datac => \add_instance|M1|m2|FA7|ha|S~combout\,
	datad => \add_instance|M1|m3|FA6|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m3|FA7|o1|Y~0_combout\);

-- Location: LC_X15_Y9_N5
\add_instance|M1|m2|FA7|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA7|o1|Y~0_combout\ = ((\add_instance|M1|m1|FA6|o1|Y~0_combout\ & ((\add_instance|M1|m2|FA6|o1|Y~0_combout\) # (\input_vector~combout\(3)))) # (!\add_instance|M1|m1|FA6|o1|Y~0_combout\ & (\add_instance|M1|m2|FA6|o1|Y~0_combout\ & 
-- \input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|M1|m1|FA6|o1|Y~0_combout\,
	datac => \add_instance|M1|m2|FA6|o1|Y~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA7|o1|Y~0_combout\);

-- Location: LC_X14_Y8_N1
\add_instance|M2|C~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C~0_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(0) & ((\add_instance|M1|m3|FA7|o1|Y~0_combout\) # (\add_instance|M1|m2|FA7|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m3|FA7|o1|Y~0_combout\,
	datab => \add_instance|M1|m2|FA7|o1|Y~0_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C~0_combout\);

-- Location: LC_X16_Y9_N5
\add_instance|M1|m0|FA1|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m0|FA1|ha|S~combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(0) $ (((\input_vector~combout\(8) & \input_vector~combout\(1)))))) # (!\input_vector~combout\(9) & (((\input_vector~combout\(8) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m0|FA1|ha|S~combout\);

-- Location: LC_X15_Y9_N6
\add_instance|M2|C[9]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[9]~1_combout\ = (!\add_instance|M1|m3|FA7|o1|Y~0_combout\ & ((\add_instance|M1|m1|FA6|o1|Y~0_combout\ & (!\add_instance|M1|m2|FA6|o1|Y~0_combout\ & !\input_vector~combout\(3))) # (!\add_instance|M1|m1|FA6|o1|Y~0_combout\ & 
-- ((!\input_vector~combout\(3)) # (!\add_instance|M1|m2|FA6|o1|Y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0115",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m3|FA7|o1|Y~0_combout\,
	datab => \add_instance|M1|m1|FA6|o1|Y~0_combout\,
	datac => \add_instance|M1|m2|FA6|o1|Y~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[9]~1_combout\);

-- Location: LC_X16_Y9_N7
\add_instance|M2|C[2]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[2]~2_combout\ = (\add_instance|M2|C[9]~1_combout\ & (((\input_vector~combout\(8) & \input_vector~combout\(0))))) # (!\add_instance|M2|C[9]~1_combout\ & (\add_instance|M1|m0|FA1|ha|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m0|FA1|ha|S~combout\,
	datab => \add_instance|M2|C[9]~1_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[2]~2_combout\);

-- Location: LC_X16_Y9_N1
\add_instance|M2|C[3]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[3]~3_combout\ = (\add_instance|M2|C[9]~1_combout\ & (\add_instance|M1|m0|FA1|ha|S~combout\)) # (!\add_instance|M2|C[9]~1_combout\ & ((\add_instance|M1|m0|FA2|x1|Y~5_combout\ $ (\add_instance|M1|p2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m0|FA1|ha|S~combout\,
	datab => \add_instance|M1|m0|FA2|x1|Y~5_combout\,
	datac => \add_instance|M2|C[9]~1_combout\,
	datad => \add_instance|M1|p2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[3]~3_combout\);

-- Location: LC_X14_Y8_N0
\add_instance|M1|m2|FA3|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m2|FA3|ha|S~combout\ = \add_instance|M1|m1|FA3|x1|Y~combout\ $ (((\input_vector~combout\(8) & (\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(3),
	datac => \add_instance|M1|m1|FA3|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m2|FA3|ha|S~combout\);

-- Location: LC_X16_Y9_N9
\add_instance|M2|C[4]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[4]~4_combout\ = (\add_instance|M2|C[9]~1_combout\ & ((\add_instance|M1|m0|FA2|x1|Y~5_combout\ $ (\add_instance|M1|p2\(2))))) # (!\add_instance|M2|C[9]~1_combout\ & (\add_instance|M1|m2|FA3|ha|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3aca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m2|FA3|ha|S~combout\,
	datab => \add_instance|M1|m0|FA2|x1|Y~5_combout\,
	datac => \add_instance|M2|C[9]~1_combout\,
	datad => \add_instance|M1|p2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[4]~4_combout\);

-- Location: LC_X14_Y8_N6
\add_instance|M2|C[5]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[5]~5_combout\ = (\add_instance|M2|C[9]~1_combout\ & (\add_instance|M1|m2|FA3|ha|S~combout\)) # (!\add_instance|M2|C[9]~1_combout\ & ((\input_vector~combout\(8) $ (\add_instance|M1|m2|FA4|x1|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8dd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|C[9]~1_combout\,
	datab => \add_instance|M1|m2|FA3|ha|S~combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|M1|m2|FA4|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[5]~5_combout\);

-- Location: LC_X14_Y8_N9
\add_instance|M1|m3|FA5|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m3|FA5|x1|Y~combout\ = \add_instance|M1|m2|FA5|x1|Y~combout\ $ (\input_vector~combout\(9) $ (((\input_vector~combout\(8) & \add_instance|M1|m2|FA4|x1|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|M1|m2|FA5|x1|Y~combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|M1|m2|FA4|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m3|FA5|x1|Y~combout\);

-- Location: LC_X14_Y8_N4
\add_instance|M2|C[6]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[6]~6_combout\ = (\add_instance|M2|C[9]~1_combout\ & ((\input_vector~combout\(8) $ (\add_instance|M1|m2|FA4|x1|Y~combout\)))) # (!\add_instance|M2|C[9]~1_combout\ & (\add_instance|M1|m3|FA5|x1|Y~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ee4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|C[9]~1_combout\,
	datab => \add_instance|M1|m3|FA5|x1|Y~combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|M1|m2|FA4|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[6]~6_combout\);

-- Location: LC_X15_Y9_N0
\add_instance|M1|m3|FA6|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m3|FA6|x1|Y~combout\ = \add_instance|M1|m2|FA5|o1|Y~0_combout\ $ (\add_instance|M1|m3|FA5|o1|Y~0_combout\ $ (\input_vector~combout\(10) $ (\add_instance|M1|m2|FA6|ha|S~combout\)))

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
	dataa => \add_instance|M1|m2|FA5|o1|Y~0_combout\,
	datab => \add_instance|M1|m3|FA5|o1|Y~0_combout\,
	datac => \input_vector~combout\(10),
	datad => \add_instance|M1|m2|FA6|ha|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m3|FA6|x1|Y~combout\);

-- Location: LC_X11_Y7_N5
\add_instance|M2|C[7]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[7]~7_combout\ = (\add_instance|M1|m2|FA7|o1|Y~0_combout\ & (((\add_instance|M1|m3|FA6|x1|Y~combout\)))) # (!\add_instance|M1|m2|FA7|o1|Y~0_combout\ & ((\add_instance|M1|m3|FA7|o1|Y~0_combout\ & ((\add_instance|M1|m3|FA6|x1|Y~combout\))) 
-- # (!\add_instance|M1|m3|FA7|o1|Y~0_combout\ & (\add_instance|M1|m3|FA5|x1|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m2|FA7|o1|Y~0_combout\,
	datab => \add_instance|M1|m3|FA5|x1|Y~combout\,
	datac => \add_instance|M1|m3|FA6|x1|Y~combout\,
	datad => \add_instance|M1|m3|FA7|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[7]~7_combout\);

-- Location: LC_X15_Y9_N3
\add_instance|M1|m3|FA7|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|m3|FA7|x1|Y~combout\ = \add_instance|M1|m2|FA6|o1|Y~0_combout\ $ (\input_vector~combout\(11) $ (\add_instance|M1|m2|FA7|ha|S~combout\ $ (\add_instance|M1|m3|FA6|o1|Y~0_combout\)))

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
	dataa => \add_instance|M1|m2|FA6|o1|Y~0_combout\,
	datab => \input_vector~combout\(11),
	datac => \add_instance|M1|m2|FA7|ha|S~combout\,
	datad => \add_instance|M1|m3|FA6|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|m3|FA7|x1|Y~combout\);

-- Location: LC_X11_Y7_N4
\add_instance|M2|C[8]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[8]~8_combout\ = (\add_instance|M1|m2|FA7|o1|Y~0_combout\ & (\add_instance|M1|m3|FA7|x1|Y~combout\)) # (!\add_instance|M1|m2|FA7|o1|Y~0_combout\ & ((\add_instance|M1|m3|FA7|o1|Y~0_combout\ & (\add_instance|M1|m3|FA7|x1|Y~combout\)) # 
-- (!\add_instance|M1|m3|FA7|o1|Y~0_combout\ & ((\add_instance|M1|m3|FA6|x1|Y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m2|FA7|o1|Y~0_combout\,
	datab => \add_instance|M1|m3|FA7|x1|Y~combout\,
	datac => \add_instance|M1|m3|FA6|x1|Y~combout\,
	datad => \add_instance|M1|m3|FA7|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[8]~8_combout\);

-- Location: LC_X11_Y7_N2
\add_instance|M2|C[9]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|C[9]~9_combout\ = ((\add_instance|M1|m2|FA7|o1|Y~0_combout\ & ((\add_instance|M1|m3|FA7|o1|Y~0_combout\))) # (!\add_instance|M1|m2|FA7|o1|Y~0_combout\ & (\add_instance|M1|m3|FA7|x1|Y~combout\ & !\add_instance|M1|m3|FA7|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m3|FA7|x1|Y~combout\,
	datac => \add_instance|M1|m2|FA7|o1|Y~0_combout\,
	datad => \add_instance|M1|m3|FA7|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|C[9]~9_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X11_Y7_N7
\add_instance|A3|FA0|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|A3|FA0|S~combout\ = \input_vector~combout\(12) $ (\input_vector~combout\(4) $ (((\add_instance|M1|m2|FA7|o1|Y~0_combout\) # (\add_instance|M1|m3|FA7|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(4),
	datac => \add_instance|M1|m2|FA7|o1|Y~0_combout\,
	datad => \add_instance|M1|m3|FA7|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A3|FA0|S~combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X11_Y9_N3
\add_instance|A1|FA1|x1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1|FA1|x1|Y~0_combout\ = \input_vector~combout\(5) $ (\input_vector~combout\(13) $ (((\input_vector~combout\(12) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1|FA1|x1|Y~0_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|A1|FA0|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1|FA0|S~combout\ = (\input_vector~combout\(4) $ ((\input_vector~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1|FA0|S~combout\);

-- Location: LC_X11_Y7_N9
\add_instance|A3|FA1|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|A3|FA1|x1|Y~combout\ = \add_instance|A1|FA1|x1|Y~0_combout\ $ (((\add_instance|M1|m2|FA7|o1|Y~0_combout\) # ((\add_instance|A1|FA0|S~combout\) # (\add_instance|M1|m3|FA7|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3336",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m2|FA7|o1|Y~0_combout\,
	datab => \add_instance|A1|FA1|x1|Y~0_combout\,
	datac => \add_instance|A1|FA0|S~combout\,
	datad => \add_instance|M1|m3|FA7|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A3|FA1|x1|Y~combout\);

-- Location: LC_X11_Y9_N7
\add_instance|A2|FA1|a1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|A2|FA1|a1|Y~combout\ = (\input_vector~combout\(12) & (!\input_vector~combout\(4) & (\input_vector~combout\(5) $ (\input_vector~combout\(13))))) # (!\input_vector~combout\(12) & (\input_vector~combout\(4) & (\input_vector~combout\(5) $ 
-- (\input_vector~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A2|FA1|a1|Y~combout\);

-- Location: LC_X11_Y7_N8
\add_instance|A3|FA1|a1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|A3|FA1|a1|Y~0_combout\ = ((\add_instance|A1|FA0|S~combout\) # ((!\add_instance|M1|m2|FA7|o1|Y~0_combout\ & !\add_instance|M1|m3|FA7|o1|Y~0_combout\))) # (!\add_instance|A1|FA1|x1|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|m2|FA7|o1|Y~0_combout\,
	datab => \add_instance|A1|FA1|x1|Y~0_combout\,
	datac => \add_instance|A1|FA0|S~combout\,
	datad => \add_instance|M1|m3|FA7|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A3|FA1|a1|Y~0_combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X11_Y9_N9
\add_instance|A1|FA1|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1|FA1|o1|Y~0_combout\ = (\input_vector~combout\(5) & ((\input_vector~combout\(13)) # ((\input_vector~combout\(12) & \input_vector~combout\(4))))) # (!\input_vector~combout\(5) & (\input_vector~combout\(12) & (\input_vector~combout\(4) & 
-- \input_vector~combout\(13))))

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
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1|FA1|o1|Y~0_combout\);

-- Location: LC_X11_Y9_N2
\add_instance|A1|FA2|x1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1|FA2|x1|Y~0_combout\ = \input_vector~combout\(14) $ (((\input_vector~combout\(6) $ (\add_instance|A1|FA1|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datac => \input_vector~combout\(6),
	datad => \add_instance|A1|FA1|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1|FA2|x1|Y~0_combout\);

-- Location: LC_X11_Y9_N5
\add_instance|A3|FA2|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|A3|FA2|x1|Y~combout\ = (\add_instance|A2|FA1|a1|Y~combout\ $ (\add_instance|A3|FA1|a1|Y~0_combout\ $ (\add_instance|A1|FA2|x1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|A2|FA1|a1|Y~combout\,
	datac => \add_instance|A3|FA1|a1|Y~0_combout\,
	datad => \add_instance|A1|FA2|x1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A3|FA2|x1|Y~combout\);

-- Location: LC_X11_Y9_N4
\add_instance|A1|FA2|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|A1|FA2|o1|Y~0_combout\ = (\input_vector~combout\(14) & (((\input_vector~combout\(6)) # (\add_instance|A1|FA1|o1|Y~0_combout\)))) # (!\input_vector~combout\(14) & (((\input_vector~combout\(6) & \add_instance|A1|FA1|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datac => \input_vector~combout\(6),
	datad => \add_instance|A1|FA1|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A1|FA2|o1|Y~0_combout\);

-- Location: LC_X11_Y9_N8
\add_instance|A3|FA3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|A3|FA3|x1|Y~combout\ = \add_instance|A1|FA2|o1|Y~0_combout\ $ (((\add_instance|A2|FA1|a1|Y~combout\ & ((\add_instance|A1|FA2|x1|Y~0_combout\) # (!\add_instance|A3|FA1|a1|Y~0_combout\))) # (!\add_instance|A2|FA1|a1|Y~combout\ & 
-- (!\add_instance|A3|FA1|a1|Y~0_combout\ & \add_instance|A1|FA2|x1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A1|FA2|o1|Y~0_combout\,
	datab => \add_instance|A2|FA1|a1|Y~combout\,
	datac => \add_instance|A3|FA1|a1|Y~0_combout\,
	datad => \add_instance|A1|FA2|x1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A3|FA3|x1|Y~combout\);

-- Location: LC_X11_Y9_N6
\add_instance|A3|FA4|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|A3|FA4|x1|Y~combout\ = (\add_instance|A1|FA2|o1|Y~0_combout\) # ((\add_instance|A2|FA1|a1|Y~combout\ & ((\add_instance|A1|FA2|x1|Y~0_combout\) # (!\add_instance|A3|FA1|a1|Y~0_combout\))) # (!\add_instance|A2|FA1|a1|Y~combout\ & 
-- (!\add_instance|A3|FA1|a1|Y~0_combout\ & \add_instance|A1|FA2|x1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|A1|FA2|o1|Y~0_combout\,
	datab => \add_instance|A2|FA1|a1|Y~combout\,
	datac => \add_instance|A3|FA1|a1|Y~0_combout\,
	datad => \add_instance|A1|FA2|x1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|A3|FA4|x1|Y~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X1_Y5_N4
\add_instance|z[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|z\(15) = ((\input_vector~combout\(15) $ (\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|z\(15));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C[2]~2_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C[3]~3_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C[4]~4_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C[5]~5_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C[6]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C[7]~7_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C[8]~8_combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M2|C[9]~9_combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|A3|FA0|ALT_INV_S~combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|A3|FA1|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|A3|FA2|x1|ALT_INV_Y~combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|A3|FA3|x1|ALT_INV_Y~combout\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|A3|FA4|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|z\(15),
	oe => VCC,
	padio => ww_output_vector(15));
END structure;


