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

-- DATE "02/14/2019 22:55:28"

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
	output_vector : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|m0|FA1|sum~0_combout\ : std_logic;
SIGNAL \add_instance|m0|FA2|sum~4_combout\ : std_logic;
SIGNAL \add_instance|m0|FA2|sum~5_combout\ : std_logic;
SIGNAL \add_instance|m1|FA2|sum~2_combout\ : std_logic;
SIGNAL \add_instance|m0|FA2|Cout~3_combout\ : std_logic;
SIGNAL \add_instance|m0|FA2|Cout~9_combout\ : std_logic;
SIGNAL \add_instance|m0|FA3|sum~combout\ : std_logic;
SIGNAL \add_instance|m1|FA3|sum~combout\ : std_logic;
SIGNAL \add_instance|m2|FA3|sum~2_combout\ : std_logic;
SIGNAL \add_instance|m0|FA3|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m0|FA4|sum~combout\ : std_logic;
SIGNAL \add_instance|m1|FA3|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m1|FA4|sum~combout\ : std_logic;
SIGNAL \add_instance|m2|FA4|sum~combout\ : std_logic;
SIGNAL \add_instance|m3|FA4|sum~2_combout\ : std_logic;
SIGNAL \add_instance|m0|FA4|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m0|FA5|sum~combout\ : std_logic;
SIGNAL \add_instance|m1|FA4|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m1|FA5|sum~combout\ : std_logic;
SIGNAL \add_instance|m2|FA4|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m2|FA5|sum~combout\ : std_logic;
SIGNAL \add_instance|m3|FA5|sum~combout\ : std_logic;
SIGNAL \add_instance|m4|FA5|sum~2_combout\ : std_logic;
SIGNAL \add_instance|m3|FA5|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m0|FA5|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m0|FA6|sum~combout\ : std_logic;
SIGNAL \add_instance|m1|FA5|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m1|FA6|sum~combout\ : std_logic;
SIGNAL \add_instance|m2|FA5|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m2|FA6|sum~combout\ : std_logic;
SIGNAL \add_instance|m3|FA6|sum~combout\ : std_logic;
SIGNAL \add_instance|m4|FA6|sum~combout\ : std_logic;
SIGNAL \add_instance|m5|FA6|sum~0_combout\ : std_logic;
SIGNAL \add_instance|m0|FA6|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m5|FA6|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m6|FA7|sum~0_combout\ : std_logic;
SIGNAL \add_instance|m6|FA7|sum~2_combout\ : std_logic;
SIGNAL \add_instance|m6|FA7|sum~1_combout\ : std_logic;
SIGNAL \add_instance|m6|FA7|sum~3_combout\ : std_logic;
SIGNAL \add_instance|m6|FA7|sum~4_combout\ : std_logic;
SIGNAL \add_instance|m4|FA6|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m2|FA6|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m1|FA6|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m3|FA6|Cout~0_combout\ : std_logic;
SIGNAL \add_instance|m6|FA7|sum~5_combout\ : std_logic;
SIGNAL \add_instance|m6|FA7|sum~6_combout\ : std_logic;
SIGNAL \add_instance|p3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|p0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|p2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|p4\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|p5\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X12_Y7_N2
\add_instance|p0[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p0\(0) = ((\input_vector~combout\(0) & (\input_vector~combout\(8))))

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
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p0\(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X12_Y7_N3
\add_instance|m0|FA1|sum~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA1|sum~0_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(1) $ (((\input_vector~combout\(9) & \input_vector~combout\(0)))))) # (!\input_vector~combout\(8) & (((\input_vector~combout\(9) & \input_vector~combout\(0)))))

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
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA1|sum~0_combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X12_Y7_N5
\add_instance|m0|FA2|sum~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA2|sum~4_combout\ = \input_vector~combout\(10) $ (((\input_vector~combout\(1) & (\input_vector~combout\(9) & !\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA2|sum~4_combout\);

-- Location: LC_X12_Y7_N4
\add_instance|m0|FA2|sum~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA2|sum~5_combout\ = (\input_vector~combout\(0) & (\add_instance|m0|FA2|sum~4_combout\)) # (!\input_vector~combout\(0) & (((\input_vector~combout\(1) & \input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m0|FA2|sum~4_combout\,
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA2|sum~5_combout\);

-- Location: LC_X13_Y7_N4
\add_instance|m1|FA2|sum~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA2|sum~2_combout\ = \add_instance|m0|FA2|sum~5_combout\ $ (((\input_vector~combout\(2) & ((\input_vector~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|m0|FA2|sum~5_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA2|sum~2_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X12_Y7_N9
\add_instance|m0|FA2|Cout~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA2|Cout~3_combout\ = (\input_vector~combout\(8)) # (((\input_vector~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datac => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA2|Cout~3_combout\);

-- Location: LC_X12_Y7_N6
\add_instance|m0|FA2|Cout~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA2|Cout~9_combout\ = (\input_vector~combout\(9) & (\input_vector~combout\(0) & (\input_vector~combout\(1) & \add_instance|m0|FA2|Cout~3_combout\)))

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
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \add_instance|m0|FA2|Cout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA2|Cout~9_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X12_Y7_N1
\add_instance|p0[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p0\(3) = ((\input_vector~combout\(0) & ((\input_vector~combout\(11)))))

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
	datab => \input_vector~combout\(0),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p0\(3));

-- Location: LC_X12_Y7_N0
\add_instance|m0|FA3|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA3|sum~combout\ = \add_instance|m0|FA2|Cout~9_combout\ $ (\add_instance|p0\(3) $ (((\input_vector~combout\(1) & \input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m0|FA2|Cout~9_combout\,
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(10),
	datad => \add_instance|p0\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA3|sum~combout\);

-- Location: LC_X13_Y7_N6
\add_instance|p2[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p2\(2) = ((\input_vector~combout\(8) & ((\input_vector~combout\(2)))))

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
	datab => \input_vector~combout\(8),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p2\(2));

-- Location: LC_X13_Y7_N1
\add_instance|p2[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p2\(3) = (\input_vector~combout\(2) & (((\input_vector~combout\(9)))))

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
	dataa => \input_vector~combout\(2),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p2\(3));

-- Location: LC_X13_Y7_N7
\add_instance|m1|FA3|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA3|sum~combout\ = \add_instance|m0|FA3|sum~combout\ $ (\add_instance|p2\(3) $ (((\add_instance|m0|FA2|sum~5_combout\ & \add_instance|p2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m0|FA3|sum~combout\,
	datab => \add_instance|m0|FA2|sum~5_combout\,
	datac => \add_instance|p2\(2),
	datad => \add_instance|p2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA3|sum~combout\);

-- Location: LC_X13_Y7_N8
\add_instance|m2|FA3|sum~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|FA3|sum~2_combout\ = (\add_instance|m1|FA3|sum~combout\ $ (((\input_vector~combout\(8) & \input_vector~combout\(3)))))

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
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(3),
	datad => \add_instance|m1|FA3|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|FA3|sum~2_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X13_Y7_N3
\add_instance|p3[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p3\(4) = (((\input_vector~combout\(3) & \input_vector~combout\(9))))

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
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p3\(4));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X9_Y7_N4
\add_instance|p0[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p0\(4) = (((\input_vector~combout\(12) & \input_vector~combout\(0))))

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
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p0\(4));

-- Location: LC_X12_Y7_N7
\add_instance|m0|FA3|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA3|Cout~0_combout\ = (\add_instance|m0|FA2|Cout~9_combout\ & ((\add_instance|p0\(3)) # ((\input_vector~combout\(1) & \input_vector~combout\(10))))) # (!\add_instance|m0|FA2|Cout~9_combout\ & (\input_vector~combout\(1) & 
-- (\input_vector~combout\(10) & \add_instance|p0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m0|FA2|Cout~9_combout\,
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(10),
	datad => \add_instance|p0\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA3|Cout~0_combout\);

-- Location: LC_X9_Y7_N1
\add_instance|m0|FA4|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA4|sum~combout\ = \add_instance|p0\(4) $ (\add_instance|m0|FA3|Cout~0_combout\ $ (((\input_vector~combout\(11) & \input_vector~combout\(1)))))

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
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(1),
	datac => \add_instance|p0\(4),
	datad => \add_instance|m0|FA3|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA4|sum~combout\);

-- Location: LC_X13_Y7_N2
\add_instance|m1|FA3|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA3|Cout~0_combout\ = (\add_instance|m0|FA3|sum~combout\ & ((\add_instance|p2\(3)) # ((\add_instance|m0|FA2|sum~5_combout\ & \add_instance|p2\(2))))) # (!\add_instance|m0|FA3|sum~combout\ & (\add_instance|m0|FA2|sum~5_combout\ & 
-- (\add_instance|p2\(2) & \add_instance|p2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m0|FA3|sum~combout\,
	datab => \add_instance|m0|FA2|sum~5_combout\,
	datac => \add_instance|p2\(2),
	datad => \add_instance|p2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA3|Cout~0_combout\);

-- Location: LC_X8_Y7_N3
\add_instance|m1|FA4|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA4|sum~combout\ = \add_instance|m0|FA4|sum~combout\ $ (\add_instance|m1|FA3|Cout~0_combout\ $ (((\input_vector~combout\(10) & \input_vector~combout\(2)))))

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
	dataa => \add_instance|m0|FA4|sum~combout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|m1|FA3|Cout~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA4|sum~combout\);

-- Location: LC_X13_Y7_N9
\add_instance|p3[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p3\(3) = (((\input_vector~combout\(3) & \input_vector~combout\(8))))

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
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p3\(3));

-- Location: LC_X13_Y7_N5
\add_instance|m2|FA4|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|FA4|sum~combout\ = \add_instance|p3\(4) $ (\add_instance|m1|FA4|sum~combout\ $ (((\add_instance|m1|FA3|sum~combout\ & \add_instance|p3\(3)))))

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
	dataa => \add_instance|p3\(4),
	datab => \add_instance|m1|FA3|sum~combout\,
	datac => \add_instance|m1|FA4|sum~combout\,
	datad => \add_instance|p3\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|FA4|sum~combout\);

-- Location: LC_X14_Y9_N1
\add_instance|m3|FA4|sum~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|FA4|sum~2_combout\ = (\add_instance|m2|FA4|sum~combout\ $ (((\input_vector~combout\(8) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datac => \input_vector~combout\(4),
	datad => \add_instance|m2|FA4|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|FA4|sum~2_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X9_Y7_N7
\add_instance|m0|FA4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA4|Cout~0_combout\ = (\add_instance|p0\(4) & ((\add_instance|m0|FA3|Cout~0_combout\) # ((\input_vector~combout\(11) & \input_vector~combout\(1))))) # (!\add_instance|p0\(4) & (\input_vector~combout\(11) & (\input_vector~combout\(1) & 
-- \add_instance|m0|FA3|Cout~0_combout\)))

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
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(1),
	datac => \add_instance|p0\(4),
	datad => \add_instance|m0|FA3|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA4|Cout~0_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X9_Y7_N9
\add_instance|p0[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p0\(5) = (((\input_vector~combout\(13) & \input_vector~combout\(0))))

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
	datac => \input_vector~combout\(13),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p0\(5));

-- Location: LC_X9_Y7_N3
\add_instance|m0|FA5|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA5|sum~combout\ = \add_instance|m0|FA4|Cout~0_combout\ $ (\add_instance|p0\(5) $ (((\input_vector~combout\(1) & \input_vector~combout\(12)))))

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
	dataa => \input_vector~combout\(1),
	datab => \add_instance|m0|FA4|Cout~0_combout\,
	datac => \input_vector~combout\(12),
	datad => \add_instance|p0\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA5|sum~combout\);

-- Location: LC_X8_Y7_N5
\add_instance|m1|FA4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA4|Cout~0_combout\ = (\add_instance|m0|FA4|sum~combout\ & ((\add_instance|m1|FA3|Cout~0_combout\) # ((\input_vector~combout\(10) & \input_vector~combout\(2))))) # (!\add_instance|m0|FA4|sum~combout\ & (\input_vector~combout\(10) & 
-- (\add_instance|m1|FA3|Cout~0_combout\ & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m0|FA4|sum~combout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|m1|FA3|Cout~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA4|Cout~0_combout\);

-- Location: LC_X8_Y7_N6
\add_instance|m1|FA5|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA5|sum~combout\ = \add_instance|m0|FA5|sum~combout\ $ (\add_instance|m1|FA4|Cout~0_combout\ $ (((\input_vector~combout\(11) & \input_vector~combout\(2)))))

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
	dataa => \add_instance|m0|FA5|sum~combout\,
	datab => \input_vector~combout\(11),
	datac => \add_instance|m1|FA4|Cout~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA5|sum~combout\);

-- Location: LC_X13_Y7_N0
\add_instance|m2|FA4|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|FA4|Cout~0_combout\ = (\add_instance|p3\(4) & ((\add_instance|m1|FA4|sum~combout\) # ((\add_instance|m1|FA3|sum~combout\ & \add_instance|p3\(3))))) # (!\add_instance|p3\(4) & (\add_instance|m1|FA3|sum~combout\ & 
-- (\add_instance|m1|FA4|sum~combout\ & \add_instance|p3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|p3\(4),
	datab => \add_instance|m1|FA3|sum~combout\,
	datac => \add_instance|m1|FA4|sum~combout\,
	datad => \add_instance|p3\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|FA4|Cout~0_combout\);

-- Location: LC_X14_Y9_N4
\add_instance|m2|FA5|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|FA5|sum~combout\ = \add_instance|m1|FA5|sum~combout\ $ (\add_instance|m2|FA4|Cout~0_combout\ $ (((\input_vector~combout\(3) & \input_vector~combout\(10)))))

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
	dataa => \input_vector~combout\(3),
	datab => \add_instance|m1|FA5|sum~combout\,
	datac => \add_instance|m2|FA4|Cout~0_combout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|FA5|sum~combout\);

-- Location: LC_X12_Y7_N8
\add_instance|p4[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p4\(5) = ((\input_vector~combout\(4) & (\input_vector~combout\(9))))

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
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p4\(5));

-- Location: LC_X14_Y9_N6
\add_instance|p4[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p4\(4) = (((\input_vector~combout\(4) & \input_vector~combout\(8))))

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
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p4\(4));

-- Location: LC_X14_Y9_N2
\add_instance|m3|FA5|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|FA5|sum~combout\ = \add_instance|m2|FA5|sum~combout\ $ (\add_instance|p4\(5) $ (((\add_instance|p4\(4) & \add_instance|m2|FA4|sum~combout\))))

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
	dataa => \add_instance|m2|FA5|sum~combout\,
	datab => \add_instance|p4\(5),
	datac => \add_instance|p4\(4),
	datad => \add_instance|m2|FA4|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|FA5|sum~combout\);

-- Location: LC_X11_Y7_N0
\add_instance|m4|FA5|sum~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|FA5|sum~2_combout\ = (\add_instance|m3|FA5|sum~combout\ $ (((\input_vector~combout\(8) & \input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(5),
	datad => \add_instance|m3|FA5|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|FA5|sum~2_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X14_Y9_N7
\add_instance|m3|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|FA5|Cout~0_combout\ = (\add_instance|p4\(5) & ((\add_instance|m2|FA5|sum~combout\) # ((\add_instance|m2|FA4|sum~combout\ & \add_instance|p4\(4))))) # (!\add_instance|p4\(5) & (\add_instance|m2|FA4|sum~combout\ & 
-- (\add_instance|m2|FA5|sum~combout\ & \add_instance|p4\(4))))

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
	dataa => \add_instance|m2|FA4|sum~combout\,
	datab => \add_instance|p4\(5),
	datac => \add_instance|m2|FA5|sum~combout\,
	datad => \add_instance|p4\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|FA5|Cout~0_combout\);

-- Location: LC_X9_Y7_N5
\add_instance|m0|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA5|Cout~0_combout\ = (\add_instance|m0|FA4|Cout~0_combout\ & ((\add_instance|p0\(5)) # ((\input_vector~combout\(1) & \input_vector~combout\(12))))) # (!\add_instance|m0|FA4|Cout~0_combout\ & (\input_vector~combout\(1) & 
-- (\input_vector~combout\(12) & \add_instance|p0\(5))))

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
	dataa => \input_vector~combout\(1),
	datab => \add_instance|m0|FA4|Cout~0_combout\,
	datac => \input_vector~combout\(12),
	datad => \add_instance|p0\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA5|Cout~0_combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X9_Y7_N2
\add_instance|p0[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p0\(6) = ((\input_vector~combout\(0) & ((\input_vector~combout\(14)))))

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
	datab => \input_vector~combout\(0),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p0\(6));

-- Location: LC_X9_Y7_N8
\add_instance|m0|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA6|sum~combout\ = \add_instance|m0|FA5|Cout~0_combout\ $ (\add_instance|p0\(6) $ (((\input_vector~combout\(13) & \input_vector~combout\(1)))))

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
	dataa => \add_instance|m0|FA5|Cout~0_combout\,
	datab => \add_instance|p0\(6),
	datac => \input_vector~combout\(13),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA6|sum~combout\);

-- Location: LC_X8_Y7_N7
\add_instance|m1|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA5|Cout~0_combout\ = (\add_instance|m0|FA5|sum~combout\ & ((\add_instance|m1|FA4|Cout~0_combout\) # ((\input_vector~combout\(11) & \input_vector~combout\(2))))) # (!\add_instance|m0|FA5|sum~combout\ & (\input_vector~combout\(11) & 
-- (\add_instance|m1|FA4|Cout~0_combout\ & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m0|FA5|sum~combout\,
	datab => \input_vector~combout\(11),
	datac => \add_instance|m1|FA4|Cout~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA5|Cout~0_combout\);

-- Location: LC_X8_Y7_N8
\add_instance|m1|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA6|sum~combout\ = \add_instance|m0|FA6|sum~combout\ $ (\add_instance|m1|FA5|Cout~0_combout\ $ (((\input_vector~combout\(12) & \input_vector~combout\(2)))))

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
	dataa => \add_instance|m0|FA6|sum~combout\,
	datab => \input_vector~combout\(12),
	datac => \add_instance|m1|FA5|Cout~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA6|sum~combout\);

-- Location: LC_X14_Y9_N9
\add_instance|m2|FA5|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|FA5|Cout~0_combout\ = (\add_instance|m1|FA5|sum~combout\ & ((\add_instance|m2|FA4|Cout~0_combout\) # ((\input_vector~combout\(3) & \input_vector~combout\(10))))) # (!\add_instance|m1|FA5|sum~combout\ & (\input_vector~combout\(3) & 
-- (\add_instance|m2|FA4|Cout~0_combout\ & \input_vector~combout\(10))))

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
	dataa => \input_vector~combout\(3),
	datab => \add_instance|m1|FA5|sum~combout\,
	datac => \add_instance|m2|FA4|Cout~0_combout\,
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|FA5|Cout~0_combout\);

-- Location: LC_X14_Y9_N8
\add_instance|m2|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|FA6|sum~combout\ = \add_instance|m1|FA6|sum~combout\ $ (\add_instance|m2|FA5|Cout~0_combout\ $ (((\input_vector~combout\(3) & \input_vector~combout\(11)))))

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
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(11),
	datac => \add_instance|m1|FA6|sum~combout\,
	datad => \add_instance|m2|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|FA6|sum~combout\);

-- Location: LC_X14_Y9_N3
\add_instance|m3|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|FA6|sum~combout\ = \add_instance|m3|FA5|Cout~0_combout\ $ (\add_instance|m2|FA6|sum~combout\ $ (((\input_vector~combout\(4) & \input_vector~combout\(10)))))

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
	dataa => \input_vector~combout\(4),
	datab => \add_instance|m3|FA5|Cout~0_combout\,
	datac => \input_vector~combout\(10),
	datad => \add_instance|m2|FA6|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|FA6|sum~combout\);

-- Location: LC_X11_Y7_N1
\add_instance|p5[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p5\(6) = ((\input_vector~combout\(5) & ((\input_vector~combout\(9)))))

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
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p5\(6));

-- Location: LC_X11_Y7_N5
\add_instance|p5[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|p5\(5) = ((\input_vector~combout\(5) & ((\input_vector~combout\(8)))))

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
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|p5\(5));

-- Location: LC_X11_Y7_N4
\add_instance|m4|FA6|sum\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|FA6|sum~combout\ = \add_instance|m3|FA6|sum~combout\ $ (\add_instance|p5\(6) $ (((\add_instance|p5\(5) & \add_instance|m3|FA5|sum~combout\))))

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
	dataa => \add_instance|m3|FA6|sum~combout\,
	datab => \add_instance|p5\(6),
	datac => \add_instance|p5\(5),
	datad => \add_instance|m3|FA5|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|FA6|sum~combout\);

-- Location: LC_X11_Y7_N2
\add_instance|m5|FA6|sum~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m5|FA6|sum~0_combout\ = (\add_instance|m4|FA6|sum~combout\ $ (((\input_vector~combout\(6) & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \add_instance|m4|FA6|sum~combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m5|FA6|sum~0_combout\);

-- Location: LC_X9_Y7_N0
\add_instance|m0|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m0|FA6|Cout~0_combout\ = (\add_instance|m0|FA5|Cout~0_combout\ & ((\add_instance|p0\(6)) # ((\input_vector~combout\(13) & \input_vector~combout\(1))))) # (!\add_instance|m0|FA5|Cout~0_combout\ & (\add_instance|p0\(6) & 
-- (\input_vector~combout\(13) & \input_vector~combout\(1))))

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
	dataa => \add_instance|m0|FA5|Cout~0_combout\,
	datab => \add_instance|p0\(6),
	datac => \input_vector~combout\(13),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m0|FA6|Cout~0_combout\);

-- Location: LC_X11_Y7_N8
\add_instance|m5|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m5|FA6|Cout~0_combout\ = (\input_vector~combout\(6) & (((\add_instance|m4|FA6|sum~combout\ & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \add_instance|m4|FA6|sum~combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m5|FA6|Cout~0_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X9_Y7_N6
\add_instance|m6|FA7|sum~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m6|FA7|sum~0_combout\ = (\input_vector~combout\(14) & (\input_vector~combout\(1) $ (((\input_vector~combout\(0) & \input_vector~combout\(15)))))) # (!\input_vector~combout\(14) & (\input_vector~combout\(0) & ((\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m6|FA7|sum~0_combout\);

-- Location: LC_X8_Y7_N1
\add_instance|m6|FA7|sum~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|m6|FA7|sum~2_combout\ = (\input_vector~combout\(4) & (\input_vector~combout\(11) $ (((\input_vector~combout\(5) & \input_vector~combout\(10)))))) # (!\input_vector~combout\(4) & (((\input_vector~combout\(5) & \input_vector~combout\(10)))))

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
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m6|FA7|sum~2_combout\);

-- Location: LC_X8_Y7_N4
\add_instance|m6|FA7|sum~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|m6|FA7|sum~1_combout\ = (\input_vector~combout\(3) & (\input_vector~combout\(12) $ (((\input_vector~combout\(13) & \input_vector~combout\(2)))))) # (!\input_vector~combout\(3) & (((\input_vector~combout\(13) & \input_vector~combout\(2)))))

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
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(13),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m6|FA7|sum~1_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X11_Y7_N7
\add_instance|m6|FA7|sum~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|m6|FA7|sum~3_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(7) $ (((\input_vector~combout\(6) & \input_vector~combout\(9)))))) # (!\input_vector~combout\(8) & (((\input_vector~combout\(6) & \input_vector~combout\(9)))))

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
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(7),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m6|FA7|sum~3_combout\);

-- Location: LC_X8_Y7_N2
\add_instance|m6|FA7|sum~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|m6|FA7|sum~4_combout\ = \add_instance|m6|FA7|sum~0_combout\ $ (\add_instance|m6|FA7|sum~2_combout\ $ (\add_instance|m6|FA7|sum~1_combout\ $ (\add_instance|m6|FA7|sum~3_combout\)))

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
	dataa => \add_instance|m6|FA7|sum~0_combout\,
	datab => \add_instance|m6|FA7|sum~2_combout\,
	datac => \add_instance|m6|FA7|sum~1_combout\,
	datad => \add_instance|m6|FA7|sum~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m6|FA7|sum~4_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|m4|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m4|FA6|Cout~0_combout\ = (\add_instance|m3|FA6|sum~combout\ & ((\add_instance|p5\(6)) # ((\add_instance|p5\(5) & \add_instance|m3|FA5|sum~combout\)))) # (!\add_instance|m3|FA6|sum~combout\ & (\add_instance|p5\(6) & (\add_instance|p5\(5) & 
-- \add_instance|m3|FA5|sum~combout\)))

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
	dataa => \add_instance|m3|FA6|sum~combout\,
	datab => \add_instance|p5\(6),
	datac => \add_instance|p5\(5),
	datad => \add_instance|m3|FA5|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m4|FA6|Cout~0_combout\);

-- Location: LC_X14_Y9_N0
\add_instance|m2|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m2|FA6|Cout~0_combout\ = (\add_instance|m1|FA6|sum~combout\ & ((\add_instance|m2|FA5|Cout~0_combout\) # ((\input_vector~combout\(3) & \input_vector~combout\(11))))) # (!\add_instance|m1|FA6|sum~combout\ & (\input_vector~combout\(3) & 
-- (\input_vector~combout\(11) & \add_instance|m2|FA5|Cout~0_combout\)))

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
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(11),
	datac => \add_instance|m1|FA6|sum~combout\,
	datad => \add_instance|m2|FA5|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m2|FA6|Cout~0_combout\);

-- Location: LC_X8_Y7_N9
\add_instance|m1|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m1|FA6|Cout~0_combout\ = (\add_instance|m0|FA6|sum~combout\ & ((\add_instance|m1|FA5|Cout~0_combout\) # ((\input_vector~combout\(12) & \input_vector~combout\(2))))) # (!\add_instance|m0|FA6|sum~combout\ & (\input_vector~combout\(12) & 
-- (\add_instance|m1|FA5|Cout~0_combout\ & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|m0|FA6|sum~combout\,
	datab => \input_vector~combout\(12),
	datac => \add_instance|m1|FA5|Cout~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m1|FA6|Cout~0_combout\);

-- Location: LC_X14_Y9_N5
\add_instance|m3|FA6|Cout~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|m3|FA6|Cout~0_combout\ = (\add_instance|m3|FA5|Cout~0_combout\ & ((\add_instance|m2|FA6|sum~combout\) # ((\input_vector~combout\(4) & \input_vector~combout\(10))))) # (!\add_instance|m3|FA5|Cout~0_combout\ & (\input_vector~combout\(4) & 
-- (\input_vector~combout\(10) & \add_instance|m2|FA6|sum~combout\)))

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
	dataa => \input_vector~combout\(4),
	datab => \add_instance|m3|FA5|Cout~0_combout\,
	datac => \input_vector~combout\(10),
	datad => \add_instance|m2|FA6|sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m3|FA6|Cout~0_combout\);

-- Location: LC_X11_Y7_N3
\add_instance|m6|FA7|sum~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|m6|FA7|sum~5_combout\ = \add_instance|m4|FA6|Cout~0_combout\ $ (\add_instance|m2|FA6|Cout~0_combout\ $ (\add_instance|m1|FA6|Cout~0_combout\ $ (\add_instance|m3|FA6|Cout~0_combout\)))

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
	dataa => \add_instance|m4|FA6|Cout~0_combout\,
	datab => \add_instance|m2|FA6|Cout~0_combout\,
	datac => \add_instance|m1|FA6|Cout~0_combout\,
	datad => \add_instance|m3|FA6|Cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m6|FA7|sum~5_combout\);

-- Location: LC_X11_Y7_N9
\add_instance|m6|FA7|sum~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|m6|FA7|sum~6_combout\ = \add_instance|m0|FA6|Cout~0_combout\ $ (\add_instance|m5|FA6|Cout~0_combout\ $ (\add_instance|m6|FA7|sum~4_combout\ $ (\add_instance|m6|FA7|sum~5_combout\)))

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
	dataa => \add_instance|m0|FA6|Cout~0_combout\,
	datab => \add_instance|m5|FA6|Cout~0_combout\,
	datac => \add_instance|m6|FA7|sum~4_combout\,
	datad => \add_instance|m6|FA7|sum~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|m6|FA7|sum~6_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|p0\(0),
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|m0|FA1|sum~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|m1|FA2|sum~2_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|m2|FA3|sum~2_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|m3|FA4|sum~2_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|m4|FA5|sum~2_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|m5|FA6|sum~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|m6|FA7|sum~6_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


