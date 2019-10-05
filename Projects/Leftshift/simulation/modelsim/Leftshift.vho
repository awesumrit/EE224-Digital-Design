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

-- DATE "02/14/2019 15:40:23"

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

ENTITY 	leftshift IS
    PORT (
	X : IN std_logic_vector(7 DOWNTO 0);
	Y : IN std_logic_vector(7 DOWNTO 0);
	Z : OUT std_logic_vector(7 DOWNTO 0)
	);
END leftshift;

-- Design Ports Information


ARCHITECTURE structure OF leftshift IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(7 DOWNTO 0);
SIGNAL \Z~0_combout\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \S~combout\ : std_logic;
SIGNAL \Z~1_combout\ : std_logic;
SIGNAL \Z~2_combout\ : std_logic;
SIGNAL \Z~3_combout\ : std_logic;
SIGNAL \l3[2]~0_combout\ : std_logic;
SIGNAL \Z~4_combout\ : std_logic;
SIGNAL \Z~5_combout\ : std_logic;
SIGNAL \l2[1]~0_combout\ : std_logic;
SIGNAL \l3[3]~1_combout\ : std_logic;
SIGNAL \l3[3]~2_combout\ : std_logic;
SIGNAL \Z~6_combout\ : std_logic;
SIGNAL \Z~7_combout\ : std_logic;
SIGNAL \Z~8_combout\ : std_logic;
SIGNAL \Z~9_combout\ : std_logic;
SIGNAL \Z~10_combout\ : std_logic;
SIGNAL \Z~11_combout\ : std_logic;
SIGNAL \Z~12_combout\ : std_logic;
SIGNAL \Z~14_combout\ : std_logic;
SIGNAL \Z~13_combout\ : std_logic;
SIGNAL \Z~15_combout\ : std_logic;
SIGNAL \Z~16_combout\ : std_logic;
SIGNAL \Z~17_combout\ : std_logic;
SIGNAL \Z~18_combout\ : std_logic;
SIGNAL \Z~19_combout\ : std_logic;
SIGNAL \X~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Y~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_X <= X;
ww_Y <= Y;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(0),
	combout => \Y~combout\(0));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(1),
	combout => \Y~combout\(1));

-- Location: LC_X16_Y9_N0
\Z~0\ : maxv_lcell
-- Equation(s):
-- \Z~0_combout\ = ((\X~combout\(0) & (!\Y~combout\(0) & !\Y~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(0),
	datac => \Y~combout\(0),
	datad => \Y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~0_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(2),
	combout => \Y~combout\(2));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(7),
	combout => \Y~combout\(7));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(5),
	combout => \Y~combout\(5));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(3),
	combout => \Y~combout\(3));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(4),
	combout => \Y~combout\(4));

-- Location: LC_X16_Y5_N2
\S~0\ : maxv_lcell
-- Equation(s):
-- \S~0_combout\ = (((\Y~combout\(3)) # (\Y~combout\(4))))

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
	datac => \Y~combout\(3),
	datad => \Y~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~0_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(6),
	combout => \Y~combout\(6));

-- Location: LC_X15_Y9_N7
S : maxv_lcell
-- Equation(s):
-- \S~combout\ = (\Y~combout\(7)) # ((\Y~combout\(5)) # ((\S~0_combout\) # (\Y~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(7),
	datab => \Y~combout\(5),
	datac => \S~0_combout\,
	datad => \Y~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~combout\);

-- Location: LC_X15_Y9_N9
\Z~1\ : maxv_lcell
-- Equation(s):
-- \Z~1_combout\ = (\Z~0_combout\ & (!\Y~combout\(2) & (!\S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Z~0_combout\,
	datab => \Y~combout\(2),
	datac => \S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~1_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: LC_X16_Y9_N9
\Z~2\ : maxv_lcell
-- Equation(s):
-- \Z~2_combout\ = (!\Y~combout\(1) & ((\Y~combout\(0) & (\X~combout\(0))) # (!\Y~combout\(0) & ((\X~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	datac => \X~combout\(1),
	datad => \Y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~2_combout\);

-- Location: LC_X15_Y9_N2
\Z~3\ : maxv_lcell
-- Equation(s):
-- \Z~3_combout\ = ((!\S~combout\ & (\Z~2_combout\ & !\Y~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \S~combout\,
	datac => \Z~2_combout\,
	datad => \Y~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~3_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: LC_X16_Y9_N5
\l3[2]~0\ : maxv_lcell
-- Equation(s):
-- \l3[2]~0_combout\ = ((\Y~combout\(0) & (\X~combout\(1))) # (!\Y~combout\(0) & ((\X~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(1),
	datac => \Y~combout\(0),
	datad => \X~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \l3[2]~0_combout\);

-- Location: LC_X16_Y9_N8
\Z~4\ : maxv_lcell
-- Equation(s):
-- \Z~4_combout\ = (\Y~combout\(1) & (!\Y~combout\(0) & (\X~combout\(0)))) # (!\Y~combout\(1) & (((\l3[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	datac => \l3[2]~0_combout\,
	datad => \Y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~4_combout\);

-- Location: LC_X15_Y9_N5
\Z~5\ : maxv_lcell
-- Equation(s):
-- \Z~5_combout\ = (\Z~4_combout\ & (!\Y~combout\(2) & (!\S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Z~4_combout\,
	datab => \Y~combout\(2),
	datac => \S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~5_combout\);

-- Location: LC_X16_Y9_N2
\l2[1]~0\ : maxv_lcell
-- Equation(s):
-- \l2[1]~0_combout\ = (\Y~combout\(0) & (\X~combout\(0))) # (!\Y~combout\(0) & (((\X~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	datac => \X~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \l2[1]~0_combout\);

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: LC_X16_Y9_N4
\l3[3]~1\ : maxv_lcell
-- Equation(s):
-- \l3[3]~1_combout\ = (\Y~combout\(0) & (((\X~combout\(2))))) # (!\Y~combout\(0) & (((\X~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datac => \X~combout\(3),
	datad => \X~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \l3[3]~1_combout\);

-- Location: LC_X16_Y9_N3
\l3[3]~2\ : maxv_lcell
-- Equation(s):
-- \l3[3]~2_combout\ = ((\Y~combout\(1) & (\l2[1]~0_combout\)) # (!\Y~combout\(1) & ((\l3[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \l2[1]~0_combout\,
	datac => \l3[3]~1_combout\,
	datad => \Y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \l3[3]~2_combout\);

-- Location: LC_X15_Y9_N8
\Z~6\ : maxv_lcell
-- Equation(s):
-- \Z~6_combout\ = (\l3[3]~2_combout\ & (!\Y~combout\(2) & (!\S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l3[3]~2_combout\,
	datab => \Y~combout\(2),
	datac => \S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~6_combout\);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(4),
	combout => \X~combout\(4));

-- Location: LC_X16_Y9_N7
\Z~7\ : maxv_lcell
-- Equation(s):
-- \Z~7_combout\ = (\Y~combout\(0) & (\Y~combout\(1))) # (!\Y~combout\(0) & ((\Y~combout\(1) & ((\X~combout\(2)))) # (!\Y~combout\(1) & (\X~combout\(4)))))

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
	dataa => \Y~combout\(0),
	datab => \Y~combout\(1),
	datac => \X~combout\(4),
	datad => \X~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~7_combout\);

-- Location: LC_X16_Y9_N1
\Z~8\ : maxv_lcell
-- Equation(s):
-- \Z~8_combout\ = (\Y~combout\(0) & ((\Z~7_combout\ & ((\X~combout\(1)))) # (!\Z~7_combout\ & (\X~combout\(3))))) # (!\Y~combout\(0) & (\Z~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \Z~7_combout\,
	datac => \X~combout\(3),
	datad => \X~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~8_combout\);

-- Location: LC_X15_Y9_N1
\Z~9\ : maxv_lcell
-- Equation(s):
-- \Z~9_combout\ = (!\S~combout\ & ((\Y~combout\(2) & (\Z~0_combout\)) # (!\Y~combout\(2) & ((\Z~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Z~0_combout\,
	datab => \Y~combout\(2),
	datac => \S~combout\,
	datad => \Z~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~9_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(5),
	combout => \X~combout\(5));

-- Location: LC_X16_Y10_N5
\Z~10\ : maxv_lcell
-- Equation(s):
-- \Z~10_combout\ = (\Y~combout\(0) & (((\X~combout\(4))))) # (!\Y~combout\(0) & (((\X~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datac => \X~combout\(5),
	datad => \X~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~10_combout\);

-- Location: LC_X16_Y9_N6
\Z~11\ : maxv_lcell
-- Equation(s):
-- \Z~11_combout\ = ((\Y~combout\(1) & ((\l3[3]~1_combout\))) # (!\Y~combout\(1) & (\Z~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Z~10_combout\,
	datac => \l3[3]~1_combout\,
	datad => \Y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~11_combout\);

-- Location: LC_X15_Y9_N6
\Z~12\ : maxv_lcell
-- Equation(s):
-- \Z~12_combout\ = (!\S~combout\ & ((\Y~combout\(2) & ((\Z~2_combout\))) # (!\Y~combout\(2) & (\Z~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Z~11_combout\,
	datab => \S~combout\,
	datac => \Z~2_combout\,
	datad => \Y~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~12_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(6),
	combout => \X~combout\(6));

-- Location: LC_X16_Y10_N2
\Z~14\ : maxv_lcell
-- Equation(s):
-- \Z~14_combout\ = ((\Y~combout\(1) & ((\X~combout\(4)))) # (!\Y~combout\(1) & (\X~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(6),
	datac => \Y~combout\(1),
	datad => \X~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~14_combout\);

-- Location: LC_X16_Y10_N6
\Z~13\ : maxv_lcell
-- Equation(s):
-- \Z~13_combout\ = (\Y~combout\(1) & (((\X~combout\(3))))) # (!\Y~combout\(1) & (((\X~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datac => \X~combout\(5),
	datad => \X~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~13_combout\);

-- Location: LC_X16_Y10_N9
\Z~15\ : maxv_lcell
-- Equation(s):
-- \Z~15_combout\ = ((\Y~combout\(0) & ((\Z~13_combout\))) # (!\Y~combout\(0) & (\Z~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Z~14_combout\,
	datac => \Z~13_combout\,
	datad => \Y~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~15_combout\);

-- Location: LC_X15_Y9_N4
\Z~16\ : maxv_lcell
-- Equation(s):
-- \Z~16_combout\ = (!\S~combout\ & ((\Y~combout\(2) & (\Z~4_combout\)) # (!\Y~combout\(2) & ((\Z~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Z~4_combout\,
	datab => \Y~combout\(2),
	datac => \S~combout\,
	datad => \Z~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~16_combout\);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(7),
	combout => \X~combout\(7));

-- Location: LC_X16_Y10_N4
\Z~17\ : maxv_lcell
-- Equation(s):
-- \Z~17_combout\ = (\Y~combout\(1) & (((\X~combout\(5))))) # (!\Y~combout\(1) & (\X~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(7),
	datab => \X~combout\(5),
	datac => \Y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~17_combout\);

-- Location: LC_X16_Y10_N8
\Z~18\ : maxv_lcell
-- Equation(s):
-- \Z~18_combout\ = ((\Y~combout\(0) & (\Z~14_combout\)) # (!\Y~combout\(0) & ((\Z~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Z~14_combout\,
	datac => \Z~17_combout\,
	datad => \Y~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~18_combout\);

-- Location: LC_X15_Y9_N3
\Z~19\ : maxv_lcell
-- Equation(s):
-- \Z~19_combout\ = (!\S~combout\ & ((\Y~combout\(2) & (\l3[3]~2_combout\)) # (!\Y~combout\(2) & ((\Z~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \l3[3]~2_combout\,
	datab => \Y~combout\(2),
	datac => \S~combout\,
	datad => \Z~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Z~19_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~1_combout\,
	oe => VCC,
	padio => ww_Z(0));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~3_combout\,
	oe => VCC,
	padio => ww_Z(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~5_combout\,
	oe => VCC,
	padio => ww_Z(2));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~6_combout\,
	oe => VCC,
	padio => ww_Z(3));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~9_combout\,
	oe => VCC,
	padio => ww_Z(4));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~12_combout\,
	oe => VCC,
	padio => ww_Z(5));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~16_combout\,
	oe => VCC,
	padio => ww_Z(6));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Z~19_combout\,
	oe => VCC,
	padio => ww_Z(7));
END structure;


