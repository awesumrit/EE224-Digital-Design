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

-- DATE "04/20/2019 13:59:28"

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
SIGNAL \add_instance|M1|Z[0]~0_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[1]~1_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[2]~2_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[2]~3_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[2]~4_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa2|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M2|MUX_OP~0_combout\ : std_logic;
SIGNAL \add_instance|M2|Z[3]~0_combout\ : std_logic;
SIGNAL \add_instance|M2|Z[3]~1_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[3]~5_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[3]~6_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[3]~7_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa3|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add1|fa3|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[4]~6_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[4]~7_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[4]~22_combout\ : std_logic;
SIGNAL \add_instance|M2|Block_sig16[0]~0_combout\ : std_logic;
SIGNAL \add_instance|Muxnot2|Z~0_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[4]~8_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[4]~9_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa4|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add2|fa4|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M3|Block_sig16[0]~0_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[6]~4_combout\ : std_logic;
SIGNAL \add_instance|M3|MUX_OP~0_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[5]~5_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[5]~8_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[5]~23_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[4]~12_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[5]~10_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[5]~11_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[5]~13_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa4|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa5|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add2|fa5|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add1|fa5|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[6]~10_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[6]~9_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[6]~11_combout\ : std_logic;
SIGNAL \add_instance|Muxnot2|Z~1_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[6]~14_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[6]~15_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa6|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M3|Z[6]~6_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[6]~7_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa5|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa6|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add3|fa6|ha|S~combout\ : std_logic;
SIGNAL \add_instance|Add2|fa6|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[7]~16_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[7]~17_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[7]~24_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[7]~12_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[7]~13_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa7|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M3|Z[7]~8_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[7]~9_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa6|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa7|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M4|Block_sig16[0]~0_combout\ : std_logic;
SIGNAL \add_instance|M4|MUX_OP~0_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[8]~2_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[7]~3_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa7|x1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[8]~10_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[8]~11_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[8]~12_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa7|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Muxnot2|Z~2_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[8]~18_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[8]~15_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[8]~14_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[8]~16_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa8|ha|S~combout\ : std_logic;
SIGNAL \add_instance|Add2|fa8|ha|S~combout\ : std_logic;
SIGNAL \add_instance|Add2|fa7|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa7|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[8]~4_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[8]~5_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa8|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add1|fa8|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[9]~18_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[9]~17_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[9]~19_combout\ : std_logic;
SIGNAL \add_instance|M1|Z[9]~19_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa9|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M3|Z[9]~13_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[9]~23_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[9]~14_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa9|ha|S~combout\ : std_logic;
SIGNAL \add_instance|Add2|fa8|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa8|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[9]~6_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[9]~7_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa9|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add3|fa9|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa9|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[10]~20_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa10|ha|S~combout\ : std_logic;
SIGNAL \add_instance|Add1|fa9|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[10]~16_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[10]~15_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[10]~17_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa10|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M4|Z[10]~8_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[10]~9_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[10]~10_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa10|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add3|fa10|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa10|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M2|t9[11]~21_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa11|ha|S~0_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa10|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[11]~18_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[11]~19_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[11]~20_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa11|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M4|Z[11]~11_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[11]~22_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[11]~12_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa11|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M3|Z[12]~21_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa11|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa12|ha|S~combout\ : std_logic;
SIGNAL \add_instance|M4|Z[12]~13_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[12]~14_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[12]~15_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa11|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa11|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa12|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|M3|Z[12]~24_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa12|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[13]~16_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[13]~17_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[13]~18_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa12|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M3|Z[13]~22_combout\ : std_logic;
SIGNAL \add_instance|Add1|fa12|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa13|ha|S~0_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa13|x1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add2|fa13|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa13|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[14]~19_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[14]~20_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa14|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|Add2|fa14|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|M4|Z[15]~21_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa14|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|Add3|fa15|x1|Y~combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|M2|Z\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|M3|Z\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|M4|Z\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|M1|ALT_INV_Z[0]~0_combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|M1|ALT_INV_Z[0]~0_combout\ <= NOT \add_instance|M1|Z[0]~0_combout\;

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X9_Y4_N7
\add_instance|M1|Z[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[0]~0_combout\ = (((!\input_vector~combout\(8)))) # (!\input_vector~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[0]~0_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X10_Y4_N6
\add_instance|M1|Z[1]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[1]~1_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(8) $ (((\input_vector~combout\(9) & \input_vector~combout\(0)))))) # (!\input_vector~combout\(1) & (\input_vector~combout\(9) & (\input_vector~combout\(0))))

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
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[1]~1_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X10_Y4_N8
\add_instance|M1|Z[2]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[2]~2_combout\ = \input_vector~combout\(10) $ (((\input_vector~combout\(9)) # ((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5566",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[2]~2_combout\);

-- Location: LC_X10_Y4_N9
\add_instance|M1|Z[2]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[2]~3_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0)) # (\input_vector~combout\(9) $ (\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[2]~3_combout\);

-- Location: LC_X10_Y4_N4
\add_instance|M1|Z[2]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[2]~4_combout\ = (\add_instance|M1|Z[2]~3_combout\ & ((\add_instance|M1|Z[2]~2_combout\) # ((!\input_vector~combout\(0))))) # (!\add_instance|M1|Z[2]~3_combout\ & (((\input_vector~combout\(0) & \input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|Z[2]~2_combout\,
	datab => \add_instance|M1|Z[2]~3_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[2]~4_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X10_Y4_N5
\add_instance|Add1|fa2|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa2|ha|S~combout\ = \add_instance|M1|Z[2]~4_combout\ $ (((\input_vector~combout\(8) & (\input_vector~combout\(2) $ (\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|Z[2]~4_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa2|ha|S~combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X7_Y6_N5
\add_instance|M2|MUX_OP~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|MUX_OP~0_combout\ = ((\input_vector~combout\(1) $ (\input_vector~combout\(2))))

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
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|MUX_OP~0_combout\);

-- Location: LC_X9_Y4_N1
\add_instance|M2|Z[3]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|Z[3]~0_combout\ = (\add_instance|M2|MUX_OP~0_combout\ & (\input_vector~combout\(9) $ (((\input_vector~combout\(3) & \input_vector~combout\(8)))))) # (!\add_instance|M2|MUX_OP~0_combout\ & (((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \add_instance|M2|MUX_OP~0_combout\,
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|Z[3]~0_combout\);

-- Location: LC_X9_Y4_N2
\add_instance|M2|Z[3]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|Z[3]~1_combout\ = (\add_instance|M2|Z[3]~0_combout\ & ((\input_vector~combout\(1) & ((!\input_vector~combout\(3)) # (!\input_vector~combout\(2)))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(2)) # 
-- (\input_vector~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(3),
	datad => \add_instance|M2|Z[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|Z[3]~1_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X11_Y6_N9
\add_instance|M1|Z[3]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[3]~5_combout\ = \input_vector~combout\(11) $ (((\input_vector~combout\(10)) # ((\input_vector~combout\(9)) # (\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "01fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[3]~5_combout\);

-- Location: LC_X10_Y4_N3
\add_instance|M1|Z[3]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[3]~6_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & (\add_instance|M1|Z[3]~5_combout\)) # (!\input_vector~combout\(0) & ((\add_instance|M1|Z[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|M1|Z[3]~5_combout\,
	datac => \input_vector~combout\(0),
	datad => \add_instance|M1|Z[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[3]~6_combout\);

-- Location: LC_X10_Y4_N0
\add_instance|M1|Z[3]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[3]~7_combout\ = (\add_instance|M1|Z[3]~6_combout\) # ((!\input_vector~combout\(1) & (\input_vector~combout\(11) & \input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(0),
	datad => \add_instance|M1|Z[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[3]~7_combout\);

-- Location: LC_X10_Y4_N2
\add_instance|M2|Z[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|Z\(2) = ((\input_vector~combout\(8) & (\input_vector~combout\(2) $ (\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|Z\(2));

-- Location: LC_X10_Y4_N1
\add_instance|Add1|fa3|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa3|x1|Y~combout\ = \add_instance|M2|Z[3]~1_combout\ $ (\add_instance|M1|Z[3]~7_combout\ $ (((\add_instance|M1|Z[2]~4_combout\ & \add_instance|M2|Z\(2)))))

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
	dataa => \add_instance|M1|Z[2]~4_combout\,
	datab => \add_instance|M2|Z[3]~1_combout\,
	datac => \add_instance|M1|Z[3]~7_combout\,
	datad => \add_instance|M2|Z\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa3|x1|Y~combout\);

-- Location: LC_X10_Y4_N7
\add_instance|Add1|fa3|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa3|o1|Y~0_combout\ = (\add_instance|M2|Z[3]~1_combout\ & ((\add_instance|M1|Z[3]~7_combout\) # ((\add_instance|M1|Z[2]~4_combout\ & \add_instance|M2|Z\(2))))) # (!\add_instance|M2|Z[3]~1_combout\ & (\add_instance|M1|Z[2]~4_combout\ & 
-- (\add_instance|M1|Z[3]~7_combout\ & \add_instance|M2|Z\(2))))

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
	dataa => \add_instance|M1|Z[2]~4_combout\,
	datab => \add_instance|M2|Z[3]~1_combout\,
	datac => \add_instance|M1|Z[3]~7_combout\,
	datad => \add_instance|M2|Z\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa3|o1|Y~0_combout\);

-- Location: LC_X9_Y4_N4
\add_instance|M2|t9[4]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[4]~6_combout\ = \input_vector~combout\(10) $ (((\input_vector~combout\(3) & ((\input_vector~combout\(9)) # (\input_vector~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[4]~6_combout\);

-- Location: LC_X9_Y4_N9
\add_instance|M2|t9[4]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[4]~7_combout\ = (\input_vector~combout\(9) $ (((\input_vector~combout\(3) & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[4]~7_combout\);

-- Location: LC_X9_Y4_N3
\add_instance|M2|t9[4]~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[4]~22_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(2) & ((\add_instance|M2|t9[4]~7_combout\))) # (!\input_vector~combout\(2) & (\add_instance|M2|t9[4]~6_combout\)))) # (!\input_vector~combout\(1) & 
-- ((\input_vector~combout\(2) & (\add_instance|M2|t9[4]~6_combout\)) # (!\input_vector~combout\(2) & ((\add_instance|M2|t9[4]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f960",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(2),
	datac => \add_instance|M2|t9[4]~6_combout\,
	datad => \add_instance|M2|t9[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[4]~22_combout\);

-- Location: LC_X7_Y6_N6
\add_instance|M2|Block_sig16[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|Block_sig16[0]~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(3) & \input_vector~combout\(2))))) # (!\input_vector~combout\(1) & (((!\input_vector~combout\(3) & !\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|Block_sig16[0]~0_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: LC_X11_Y6_N4
\add_instance|Muxnot2|Z~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Muxnot2|Z~0_combout\ = ((!\input_vector~combout\(9) & (!\input_vector~combout\(10) & !\input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Muxnot2|Z~0_combout\);

-- Location: LC_X11_Y6_N6
\add_instance|M1|Z[4]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[4]~8_combout\ = \input_vector~combout\(12) $ (((\input_vector~combout\(1) & ((\input_vector~combout\(11)) # (!\add_instance|Muxnot2|Z~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "63cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(12),
	datac => \add_instance|Muxnot2|Z~0_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[4]~8_combout\);

-- Location: LC_X11_Y6_N2
\add_instance|M1|Z[4]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[4]~9_combout\ = (\input_vector~combout\(0) & (((\add_instance|M1|Z[4]~8_combout\)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(1) & ((\add_instance|M1|Z[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \add_instance|M1|Z[4]~8_combout\,
	datad => \add_instance|M1|Z[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[4]~9_combout\);

-- Location: LC_X9_Y6_N3
\add_instance|Add1|fa4|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa4|x1|Y~combout\ = \add_instance|Add1|fa3|o1|Y~0_combout\ $ (\add_instance|M1|Z[4]~9_combout\ $ (((\add_instance|M2|t9[4]~22_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add1|fa3|o1|Y~0_combout\,
	datab => \add_instance|M2|t9[4]~22_combout\,
	datac => \add_instance|M2|Block_sig16[0]~0_combout\,
	datad => \add_instance|M1|Z[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa4|x1|Y~combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X9_Y6_N9
\add_instance|Add2|fa4|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa4|ha|S~combout\ = \add_instance|Add1|fa4|x1|Y~combout\ $ (((\input_vector~combout\(8) & (\input_vector~combout\(3) $ (\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add1|fa4|x1|Y~combout\,
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa4|ha|S~combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X10_Y7_N4
\add_instance|M3|Block_sig16[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Block_sig16[0]~0_combout\ = ((\input_vector~combout\(3) & (\input_vector~combout\(4) & \input_vector~combout\(5))) # (!\input_vector~combout\(3) & (!\input_vector~combout\(4) & !\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Block_sig16[0]~0_combout\);

-- Location: LC_X9_Y4_N6
\add_instance|M3|Z[6]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[6]~4_combout\ = (\input_vector~combout\(9) $ (((\input_vector~combout\(5) & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[6]~4_combout\);

-- Location: LC_X7_Y7_N0
\add_instance|M3|MUX_OP~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|MUX_OP~0_combout\ = ((\input_vector~combout\(3) $ (\input_vector~combout\(4))))

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
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|MUX_OP~0_combout\);

-- Location: LC_X9_Y6_N5
\add_instance|M3|Z[5]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[5]~5_combout\ = (!\add_instance|M3|Block_sig16[0]~0_combout\ & ((\add_instance|M3|MUX_OP~0_combout\ & (\add_instance|M3|Z[6]~4_combout\)) # (!\add_instance|M3|MUX_OP~0_combout\ & ((\input_vector~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|Block_sig16[0]~0_combout\,
	datab => \add_instance|M3|Z[6]~4_combout\,
	datac => \add_instance|M3|MUX_OP~0_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[5]~5_combout\);

-- Location: LC_X7_Y6_N4
\add_instance|M2|t9[5]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[5]~8_combout\ = \input_vector~combout\(11) $ ((((\input_vector~combout\(3) & !\add_instance|Muxnot2|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datac => \input_vector~combout\(3),
	datad => \add_instance|Muxnot2|Z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[5]~8_combout\);

-- Location: LC_X7_Y6_N9
\add_instance|M2|t9[5]~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[5]~23_combout\ = (\add_instance|M2|t9[4]~6_combout\ & ((\add_instance|M2|t9[5]~8_combout\) # (\input_vector~combout\(1) $ (!\input_vector~combout\(2))))) # (!\add_instance|M2|t9[4]~6_combout\ & (\add_instance|M2|t9[5]~8_combout\ & 
-- (\input_vector~combout\(1) $ (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|t9[4]~6_combout\,
	datab => \add_instance|M2|t9[5]~8_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[5]~23_combout\);

-- Location: LC_X7_Y6_N0
\add_instance|M1|Z[4]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[4]~12_combout\ = (\input_vector~combout\(12) $ (((\input_vector~combout\(11)) # (!\add_instance|Muxnot2|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(11),
	datad => \add_instance|Muxnot2|Z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[4]~12_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: LC_X11_Y6_N1
\add_instance|M1|Z[5]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[5]~10_combout\ = \input_vector~combout\(13) $ (((\input_vector~combout\(12)) # ((\input_vector~combout\(11)) # (!\add_instance|Muxnot2|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5565",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(12),
	datac => \add_instance|Muxnot2|Z~0_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[5]~10_combout\);

-- Location: LC_X11_Y6_N7
\add_instance|M1|Z[5]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[5]~11_combout\ = ((\input_vector~combout\(1) & ((\add_instance|M1|Z[5]~10_combout\))) # (!\input_vector~combout\(1) & (\input_vector~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datac => \input_vector~combout\(1),
	datad => \add_instance|M1|Z[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[5]~11_combout\);

-- Location: LC_X11_Y6_N3
\add_instance|M1|Z[5]~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[5]~13_combout\ = (\input_vector~combout\(0) & (((\add_instance|M1|Z[5]~11_combout\)))) # (!\input_vector~combout\(0) & (\add_instance|M1|Z[4]~12_combout\ & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|M1|Z[4]~12_combout\,
	datac => \add_instance|M1|Z[5]~11_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[5]~13_combout\);

-- Location: LC_X9_Y6_N8
\add_instance|Add1|fa4|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa4|o1|Y~0_combout\ = (\add_instance|Add1|fa3|o1|Y~0_combout\ & ((\add_instance|M1|Z[4]~9_combout\) # ((\add_instance|M2|t9[4]~22_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))) # (!\add_instance|Add1|fa3|o1|Y~0_combout\ & 
-- (\add_instance|M2|t9[4]~22_combout\ & (!\add_instance|M2|Block_sig16[0]~0_combout\ & \add_instance|M1|Z[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add1|fa3|o1|Y~0_combout\,
	datab => \add_instance|M2|t9[4]~22_combout\,
	datac => \add_instance|M2|Block_sig16[0]~0_combout\,
	datad => \add_instance|M1|Z[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa4|o1|Y~0_combout\);

-- Location: LC_X9_Y6_N2
\add_instance|Add1|fa5|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa5|x1|Y~combout\ = \add_instance|M1|Z[5]~13_combout\ $ (\add_instance|Add1|fa4|o1|Y~0_combout\ $ (((\add_instance|M2|t9[5]~23_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "39c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|t9[5]~23_combout\,
	datab => \add_instance|M1|Z[5]~13_combout\,
	datac => \add_instance|M2|Block_sig16[0]~0_combout\,
	datad => \add_instance|Add1|fa4|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa5|x1|Y~combout\);

-- Location: LC_X9_Y6_N6
\add_instance|M3|Z[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z\(4) = ((\input_vector~combout\(8) & (\input_vector~combout\(3) $ (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z\(4));

-- Location: LC_X9_Y6_N4
\add_instance|Add2|fa5|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa5|x1|Y~combout\ = \add_instance|M3|Z[5]~5_combout\ $ (\add_instance|Add1|fa5|x1|Y~combout\ $ (((\add_instance|M3|Z\(4) & \add_instance|Add1|fa4|x1|Y~combout\))))

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
	dataa => \add_instance|M3|Z[5]~5_combout\,
	datab => \add_instance|Add1|fa5|x1|Y~combout\,
	datac => \add_instance|M3|Z\(4),
	datad => \add_instance|Add1|fa4|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa5|x1|Y~combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X9_Y6_N1
\add_instance|Add1|fa5|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa5|o1|Y~0_combout\ = (\add_instance|M1|Z[5]~13_combout\ & ((\add_instance|Add1|fa4|o1|Y~0_combout\) # ((\add_instance|M2|t9[5]~23_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))) # (!\add_instance|M1|Z[5]~13_combout\ & 
-- (\add_instance|M2|t9[5]~23_combout\ & (!\add_instance|M2|Block_sig16[0]~0_combout\ & \add_instance|Add1|fa4|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|t9[5]~23_combout\,
	datab => \add_instance|M1|Z[5]~13_combout\,
	datac => \add_instance|M2|Block_sig16[0]~0_combout\,
	datad => \add_instance|Add1|fa4|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa5|o1|Y~0_combout\);

-- Location: LC_X7_Y6_N3
\add_instance|M2|t9[6]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[6]~10_combout\ = (\input_vector~combout\(11) & ((\input_vector~combout\(12)) # (\input_vector~combout\(1) $ (!\input_vector~combout\(2))))) # (!\input_vector~combout\(11) & (\input_vector~combout\(12) & (\input_vector~combout\(1) $ 
-- (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[6]~10_combout\);

-- Location: LC_X7_Y6_N1
\add_instance|M2|t9[6]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[6]~9_combout\ = (\add_instance|M2|MUX_OP~0_combout\ & (\input_vector~combout\(12) $ (((\input_vector~combout\(11)) # (!\add_instance|Muxnot2|Z~0_combout\))))) # (!\add_instance|M2|MUX_OP~0_combout\ & ((\input_vector~combout\(11) $ 
-- (!\add_instance|Muxnot2|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7827",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|MUX_OP~0_combout\,
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(11),
	datad => \add_instance|Muxnot2|Z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[6]~9_combout\);

-- Location: LC_X7_Y6_N2
\add_instance|M2|t9[6]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[6]~11_combout\ = ((\input_vector~combout\(3) & ((\add_instance|M2|t9[6]~9_combout\))) # (!\input_vector~combout\(3) & (\add_instance|M2|t9[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|t9[6]~10_combout\,
	datac => \input_vector~combout\(3),
	datad => \add_instance|M2|t9[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[6]~11_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: LC_X11_Y6_N5
\add_instance|Muxnot2|Z~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Muxnot2|Z~1_combout\ = (!\input_vector~combout\(13) & (!\input_vector~combout\(12) & (\add_instance|Muxnot2|Z~0_combout\ & !\input_vector~combout\(11))))

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
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(12),
	datac => \add_instance|Muxnot2|Z~0_combout\,
	datad => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Muxnot2|Z~1_combout\);

-- Location: LC_X11_Y6_N0
\add_instance|M1|Z[6]~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[6]~14_combout\ = \input_vector~combout\(14) $ ((((!\add_instance|Muxnot2|Z~1_combout\ & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datac => \add_instance|Muxnot2|Z~1_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[6]~14_combout\);

-- Location: LC_X11_Y6_N8
\add_instance|M1|Z[6]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[6]~15_combout\ = (\input_vector~combout\(0) & (\add_instance|M1|Z[6]~14_combout\)) # (!\input_vector~combout\(0) & (((\input_vector~combout\(1) & \add_instance|M1|Z[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|M1|Z[6]~14_combout\,
	datac => \input_vector~combout\(1),
	datad => \add_instance|M1|Z[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[6]~15_combout\);

-- Location: LC_X8_Y6_N7
\add_instance|Add1|fa6|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa6|ha|S~combout\ = (\add_instance|M1|Z[6]~15_combout\ $ (((\add_instance|M2|t9[6]~11_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|M2|t9[6]~11_combout\,
	datac => \add_instance|M2|Block_sig16[0]~0_combout\,
	datad => \add_instance|M1|Z[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa6|ha|S~combout\);

-- Location: LC_X9_Y4_N8
\add_instance|M3|Z[6]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[6]~6_combout\ = \input_vector~combout\(10) $ (((\input_vector~combout\(5) & ((\input_vector~combout\(9)) # (\input_vector~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[6]~6_combout\);

-- Location: LC_X7_Y7_N5
\add_instance|M3|Z[6]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[6]~7_combout\ = (!\add_instance|M3|Block_sig16[0]~0_combout\ & ((\add_instance|M3|MUX_OP~0_combout\ & (\add_instance|M3|Z[6]~6_combout\)) # (!\add_instance|M3|MUX_OP~0_combout\ & ((\add_instance|M3|Z[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|Z[6]~6_combout\,
	datab => \add_instance|M3|Z[6]~4_combout\,
	datac => \add_instance|M3|MUX_OP~0_combout\,
	datad => \add_instance|M3|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[6]~7_combout\);

-- Location: LC_X9_Y6_N7
\add_instance|Add2|fa5|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa5|o1|Y~0_combout\ = (\add_instance|Add1|fa5|x1|Y~combout\ & ((\add_instance|M3|Z[5]~5_combout\) # ((\add_instance|Add1|fa4|x1|Y~combout\ & \add_instance|M3|Z\(4))))) # (!\add_instance|Add1|fa5|x1|Y~combout\ & 
-- (\add_instance|Add1|fa4|x1|Y~combout\ & (\add_instance|M3|Z[5]~5_combout\ & \add_instance|M3|Z\(4))))

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
	dataa => \add_instance|Add1|fa4|x1|Y~combout\,
	datab => \add_instance|Add1|fa5|x1|Y~combout\,
	datac => \add_instance|M3|Z[5]~5_combout\,
	datad => \add_instance|M3|Z\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa5|o1|Y~0_combout\);

-- Location: LC_X8_Y6_N6
\add_instance|Add2|fa6|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa6|x1|Y~combout\ = \add_instance|Add1|fa5|o1|Y~0_combout\ $ (\add_instance|Add1|fa6|ha|S~combout\ $ (\add_instance|M3|Z[6]~7_combout\ $ (\add_instance|Add2|fa5|o1|Y~0_combout\)))

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
	dataa => \add_instance|Add1|fa5|o1|Y~0_combout\,
	datab => \add_instance|Add1|fa6|ha|S~combout\,
	datac => \add_instance|M3|Z[6]~7_combout\,
	datad => \add_instance|Add2|fa5|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa6|x1|Y~combout\);

-- Location: LC_X8_Y6_N5
\add_instance|Add3|fa6|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa6|ha|S~combout\ = \add_instance|Add2|fa6|x1|Y~combout\ $ (((\input_vector~combout\(8) & (\input_vector~combout\(5) $ (\input_vector~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \add_instance|Add2|fa6|x1|Y~combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa6|ha|S~combout\);

-- Location: LC_X8_Y6_N8
\add_instance|Add2|fa6|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa6|o1|Y~0_combout\ = (\add_instance|M3|Z[6]~7_combout\ & ((\add_instance|Add2|fa5|o1|Y~0_combout\) # (\add_instance|Add1|fa5|o1|Y~0_combout\ $ (\add_instance|Add1|fa6|ha|S~combout\)))) # (!\add_instance|M3|Z[6]~7_combout\ & 
-- (\add_instance|Add2|fa5|o1|Y~0_combout\ & (\add_instance|Add1|fa5|o1|Y~0_combout\ $ (\add_instance|Add1|fa6|ha|S~combout\))))

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
	dataa => \add_instance|Add1|fa5|o1|Y~0_combout\,
	datab => \add_instance|Add1|fa6|ha|S~combout\,
	datac => \add_instance|M3|Z[6]~7_combout\,
	datad => \add_instance|Add2|fa5|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa6|o1|Y~0_combout\);

-- Location: LC_X9_Y5_N4
\add_instance|M1|Z[7]~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[7]~16_combout\ = (\input_vector~combout\(14) & (!\input_vector~combout\(0) & ((!\add_instance|Muxnot2|Z~1_combout\)))) # (!\input_vector~combout\(14) & (((\add_instance|Muxnot2|Z~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3344",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(14),
	datad => \add_instance|Muxnot2|Z~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[7]~16_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: LC_X6_Y5_N5
\add_instance|M1|Z[7]~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[7]~17_combout\ = (\input_vector~combout\(1) & (\add_instance|M1|Z[7]~16_combout\ $ (((!\input_vector~combout\(15)) # (!\input_vector~combout\(0)))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(0) & 
-- \input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|M1|Z[7]~16_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[7]~17_combout\);

-- Location: LC_X10_Y7_N5
\add_instance|M2|t9[7]~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[7]~24_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(2) & (\add_instance|M1|Z[4]~12_combout\)) # (!\input_vector~combout\(2) & ((\add_instance|M1|Z[5]~10_combout\))))) # (!\input_vector~combout\(1) & 
-- ((\input_vector~combout\(2) & ((\add_instance|M1|Z[5]~10_combout\))) # (!\input_vector~combout\(2) & (\add_instance|M1|Z[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(2),
	datac => \add_instance|M1|Z[4]~12_combout\,
	datad => \add_instance|M1|Z[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[7]~24_combout\);

-- Location: LC_X10_Y7_N9
\add_instance|M2|t9[7]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[7]~12_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(2) & (\input_vector~combout\(12))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(13)))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(2) & 
-- ((\input_vector~combout\(13)))) # (!\input_vector~combout\(2) & (\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[7]~12_combout\);

-- Location: LC_X10_Y7_N6
\add_instance|M2|t9[7]~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[7]~13_combout\ = ((\input_vector~combout\(3) & (\add_instance|M2|t9[7]~24_combout\)) # (!\input_vector~combout\(3) & ((\add_instance|M2|t9[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \add_instance|M2|t9[7]~24_combout\,
	datad => \add_instance|M2|t9[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[7]~13_combout\);

-- Location: LC_X7_Y6_N7
\add_instance|Add1|fa7|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa7|ha|S~combout\ = \add_instance|M1|Z[7]~17_combout\ $ (((!\add_instance|M2|Block_sig16[0]~0_combout\ & ((\add_instance|M2|t9[7]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|Z[7]~17_combout\,
	datab => \add_instance|M2|Block_sig16[0]~0_combout\,
	datad => \add_instance|M2|t9[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa7|ha|S~combout\);

-- Location: LC_X7_Y7_N3
\add_instance|M3|Z[7]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[7]~8_combout\ = (\input_vector~combout\(11) $ (((\input_vector~combout\(5) & !\add_instance|Muxnot2|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f05a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datac => \input_vector~combout\(11),
	datad => \add_instance|Muxnot2|Z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[7]~8_combout\);

-- Location: LC_X7_Y7_N7
\add_instance|M3|Z[7]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[7]~9_combout\ = (!\add_instance|M3|Block_sig16[0]~0_combout\ & ((\add_instance|M3|MUX_OP~0_combout\ & ((\add_instance|M3|Z[7]~8_combout\))) # (!\add_instance|M3|MUX_OP~0_combout\ & (\add_instance|M3|Z[6]~6_combout\))))

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
	dataa => \add_instance|M3|Z[6]~6_combout\,
	datab => \add_instance|M3|MUX_OP~0_combout\,
	datac => \add_instance|M3|Z[7]~8_combout\,
	datad => \add_instance|M3|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[7]~9_combout\);

-- Location: LC_X8_Y6_N2
\add_instance|Add1|fa6|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa6|o1|Y~0_combout\ = (\add_instance|Add1|fa5|o1|Y~0_combout\ & ((\add_instance|M1|Z[6]~15_combout\) # ((\add_instance|M2|t9[6]~11_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))) # (!\add_instance|Add1|fa5|o1|Y~0_combout\ & 
-- (\add_instance|M2|t9[6]~11_combout\ & (!\add_instance|M2|Block_sig16[0]~0_combout\ & \add_instance|M1|Z[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add1|fa5|o1|Y~0_combout\,
	datab => \add_instance|M2|t9[6]~11_combout\,
	datac => \add_instance|M2|Block_sig16[0]~0_combout\,
	datad => \add_instance|M1|Z[6]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa6|o1|Y~0_combout\);

-- Location: LC_X8_Y6_N9
\add_instance|Add2|fa7|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa7|x1|Y~combout\ = \add_instance|Add2|fa6|o1|Y~0_combout\ $ (\add_instance|Add1|fa7|ha|S~combout\ $ (\add_instance|M3|Z[7]~9_combout\ $ (\add_instance|Add1|fa6|o1|Y~0_combout\)))

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
	dataa => \add_instance|Add2|fa6|o1|Y~0_combout\,
	datab => \add_instance|Add1|fa7|ha|S~combout\,
	datac => \add_instance|M3|Z[7]~9_combout\,
	datad => \add_instance|Add1|fa6|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa7|x1|Y~combout\);

-- Location: LC_X8_Y6_N0
\add_instance|M4|Z[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z\(6) = ((\input_vector~combout\(8) & (\input_vector~combout\(5) $ (\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z\(6));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X11_Y7_N3
\add_instance|M4|Block_sig16[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Block_sig16[0]~0_combout\ = (\input_vector~combout\(7) & (((\input_vector~combout\(5) & \input_vector~combout\(6))))) # (!\input_vector~combout\(7) & (((!\input_vector~combout\(5) & !\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Block_sig16[0]~0_combout\);

-- Location: LC_X12_Y8_N2
\add_instance|M4|MUX_OP~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|MUX_OP~0_combout\ = (\input_vector~combout\(6) $ (((\input_vector~combout\(5)))))

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
	datab => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|MUX_OP~0_combout\);

-- Location: LC_X11_Y7_N4
\add_instance|M4|Z[8]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[8]~2_combout\ = (\input_vector~combout\(9) $ (((\input_vector~combout\(7) & \input_vector~combout\(8)))))

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
	dataa => \input_vector~combout\(7),
	datac => \input_vector~combout\(9),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[8]~2_combout\);

-- Location: LC_X11_Y7_N8
\add_instance|M4|Z[7]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[7]~3_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\add_instance|M4|MUX_OP~0_combout\ & (\add_instance|M4|Z[8]~2_combout\)) # (!\add_instance|M4|MUX_OP~0_combout\ & ((\input_vector~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M4|Block_sig16[0]~0_combout\,
	datab => \add_instance|M4|MUX_OP~0_combout\,
	datac => \add_instance|M4|Z[8]~2_combout\,
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[7]~3_combout\);

-- Location: LC_X8_Y6_N3
\add_instance|Add3|fa7|x1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa7|x1|Y~0_combout\ = \add_instance|Add2|fa7|x1|Y~combout\ $ (\add_instance|M4|Z[7]~3_combout\ $ (((\add_instance|Add2|fa6|x1|Y~combout\ & \add_instance|M4|Z\(6)))))

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
	dataa => \add_instance|Add2|fa6|x1|Y~combout\,
	datab => \add_instance|Add2|fa7|x1|Y~combout\,
	datac => \add_instance|M4|Z\(6),
	datad => \add_instance|M4|Z[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa7|x1|Y~0_combout\);

-- Location: LC_X7_Y7_N2
\add_instance|M3|Z[8]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[8]~10_combout\ = (\add_instance|M3|MUX_OP~0_combout\ & (\input_vector~combout\(12) $ (((\input_vector~combout\(11)) # (!\add_instance|Muxnot2|Z~0_combout\))))) # (!\add_instance|M3|MUX_OP~0_combout\ & (\input_vector~combout\(11) $ 
-- (((!\add_instance|Muxnot2|Z~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a35",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(12),
	datac => \add_instance|M3|MUX_OP~0_combout\,
	datad => \add_instance|Muxnot2|Z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[8]~10_combout\);

-- Location: LC_X7_Y7_N6
\add_instance|M3|Z[8]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[8]~11_combout\ = (\input_vector~combout\(11) & ((\input_vector~combout\(12)) # (\input_vector~combout\(3) $ (!\input_vector~combout\(4))))) # (!\input_vector~combout\(11) & (\input_vector~combout\(12) & (\input_vector~combout\(3) $ 
-- (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(12),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[8]~11_combout\);

-- Location: LC_X7_Y7_N4
\add_instance|M3|Z[8]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[8]~12_combout\ = (!\add_instance|M3|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(5) & (\add_instance|M3|Z[8]~10_combout\)) # (!\input_vector~combout\(5) & ((\add_instance|M3|Z[8]~11_combout\)))))

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
	dataa => \input_vector~combout\(5),
	datab => \add_instance|M3|Z[8]~10_combout\,
	datac => \add_instance|M3|Z[8]~11_combout\,
	datad => \add_instance|M3|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[8]~12_combout\);

-- Location: LC_X7_Y6_N8
\add_instance|Add1|fa7|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa7|o1|Y~0_combout\ = (\add_instance|M1|Z[7]~17_combout\ & ((\add_instance|Add1|fa6|o1|Y~0_combout\) # ((!\add_instance|M2|Block_sig16[0]~0_combout\ & \add_instance|M2|t9[7]~13_combout\)))) # (!\add_instance|M1|Z[7]~17_combout\ & 
-- (!\add_instance|M2|Block_sig16[0]~0_combout\ & (\add_instance|Add1|fa6|o1|Y~0_combout\ & \add_instance|M2|t9[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|Z[7]~17_combout\,
	datab => \add_instance|M2|Block_sig16[0]~0_combout\,
	datac => \add_instance|Add1|fa6|o1|Y~0_combout\,
	datad => \add_instance|M2|t9[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa7|o1|Y~0_combout\);

-- Location: LC_X9_Y5_N8
\add_instance|Muxnot2|Z~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Muxnot2|Z~2_combout\ = ((!\input_vector~combout\(14) & ((\add_instance|Muxnot2|Z~1_combout\))))

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
	datab => \input_vector~combout\(14),
	datad => \add_instance|Muxnot2|Z~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Muxnot2|Z~2_combout\);

-- Location: LC_X9_Y4_N5
\add_instance|M1|Z[8]~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[8]~18_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(15) & (!\input_vector~combout\(0) & \add_instance|Muxnot2|Z~2_combout\)) # (!\input_vector~combout\(15) & ((!\add_instance|Muxnot2|Z~2_combout\))))) # 
-- (!\input_vector~combout\(1) & (\input_vector~combout\(15) & (\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4862",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(0),
	datad => \add_instance|Muxnot2|Z~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[8]~18_combout\);

-- Location: LC_X9_Y5_N7
\add_instance|M2|t9[8]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[8]~15_combout\ = (\input_vector~combout\(13) & ((\input_vector~combout\(14)) # (\input_vector~combout\(1) $ (!\input_vector~combout\(2))))) # (!\input_vector~combout\(13) & (\input_vector~combout\(14) & (\input_vector~combout\(1) $ 
-- (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[8]~15_combout\);

-- Location: LC_X9_Y5_N3
\add_instance|M2|t9[8]~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[8]~14_combout\ = (\add_instance|M2|MUX_OP~0_combout\ & (\add_instance|Muxnot2|Z~1_combout\ $ ((!\input_vector~combout\(14))))) # (!\add_instance|M2|MUX_OP~0_combout\ & (((\add_instance|M1|Z[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Muxnot2|Z~1_combout\,
	datab => \input_vector~combout\(14),
	datac => \add_instance|M1|Z[5]~10_combout\,
	datad => \add_instance|M2|MUX_OP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[8]~14_combout\);

-- Location: LC_X9_Y5_N2
\add_instance|M2|t9[8]~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[8]~16_combout\ = ((\input_vector~combout\(3) & ((\add_instance|M2|t9[8]~14_combout\))) # (!\input_vector~combout\(3) & (\add_instance|M2|t9[8]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \add_instance|M2|t9[8]~15_combout\,
	datad => \add_instance|M2|t9[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[8]~16_combout\);

-- Location: LC_X10_Y6_N6
\add_instance|Add1|fa8|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa8|ha|S~combout\ = (\add_instance|M1|Z[8]~18_combout\ $ (((!\add_instance|M2|Block_sig16[0]~0_combout\ & \add_instance|M2|t9[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|M2|Block_sig16[0]~0_combout\,
	datac => \add_instance|M1|Z[8]~18_combout\,
	datad => \add_instance|M2|t9[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa8|ha|S~combout\);

-- Location: LC_X10_Y6_N4
\add_instance|Add2|fa8|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa8|ha|S~combout\ = \add_instance|M3|Z[8]~12_combout\ $ (((\add_instance|Add1|fa7|o1|Y~0_combout\ $ (\add_instance|Add1|fa8|ha|S~combout\))))

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
	dataa => \add_instance|M3|Z[8]~12_combout\,
	datac => \add_instance|Add1|fa7|o1|Y~0_combout\,
	datad => \add_instance|Add1|fa8|ha|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa8|ha|S~combout\);

-- Location: LC_X8_Y6_N1
\add_instance|Add2|fa7|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa7|o1|Y~0_combout\ = (\add_instance|Add2|fa6|o1|Y~0_combout\ & ((\add_instance|M3|Z[7]~9_combout\) # (\add_instance|Add1|fa7|ha|S~combout\ $ (\add_instance|Add1|fa6|o1|Y~0_combout\)))) # (!\add_instance|Add2|fa6|o1|Y~0_combout\ & 
-- (\add_instance|M3|Z[7]~9_combout\ & (\add_instance|Add1|fa7|ha|S~combout\ $ (\add_instance|Add1|fa6|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add2|fa6|o1|Y~0_combout\,
	datab => \add_instance|Add1|fa7|ha|S~combout\,
	datac => \add_instance|M3|Z[7]~9_combout\,
	datad => \add_instance|Add1|fa6|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa7|o1|Y~0_combout\);

-- Location: LC_X8_Y6_N4
\add_instance|Add3|fa7|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa7|o1|Y~0_combout\ = (\add_instance|Add2|fa7|x1|Y~combout\ & ((\add_instance|M4|Z[7]~3_combout\) # ((\add_instance|Add2|fa6|x1|Y~combout\ & \add_instance|M4|Z\(6))))) # (!\add_instance|Add2|fa7|x1|Y~combout\ & 
-- (\add_instance|Add2|fa6|x1|Y~combout\ & (\add_instance|M4|Z\(6) & \add_instance|M4|Z[7]~3_combout\)))

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
	dataa => \add_instance|Add2|fa6|x1|Y~combout\,
	datab => \add_instance|Add2|fa7|x1|Y~combout\,
	datac => \add_instance|M4|Z\(6),
	datad => \add_instance|M4|Z[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa7|o1|Y~0_combout\);

-- Location: LC_X11_Y7_N1
\add_instance|M4|Z[8]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[8]~4_combout\ = \input_vector~combout\(10) $ (((\input_vector~combout\(7) & ((\input_vector~combout\(9)) # (\input_vector~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[8]~4_combout\);

-- Location: LC_X11_Y7_N9
\add_instance|M4|Z[8]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[8]~5_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\add_instance|M4|MUX_OP~0_combout\ & (\add_instance|M4|Z[8]~4_combout\)) # (!\add_instance|M4|MUX_OP~0_combout\ & ((\add_instance|M4|Z[8]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M4|Block_sig16[0]~0_combout\,
	datab => \add_instance|M4|Z[8]~4_combout\,
	datac => \add_instance|M4|Z[8]~2_combout\,
	datad => \add_instance|M4|MUX_OP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[8]~5_combout\);

-- Location: LC_X10_Y6_N5
\add_instance|Add3|fa8|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa8|x1|Y~combout\ = \add_instance|Add2|fa8|ha|S~combout\ $ (\add_instance|Add2|fa7|o1|Y~0_combout\ $ (\add_instance|Add3|fa7|o1|Y~0_combout\ $ (\add_instance|M4|Z[8]~5_combout\)))

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
	dataa => \add_instance|Add2|fa8|ha|S~combout\,
	datab => \add_instance|Add2|fa7|o1|Y~0_combout\,
	datac => \add_instance|Add3|fa7|o1|Y~0_combout\,
	datad => \add_instance|M4|Z[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa8|x1|Y~combout\);

-- Location: LC_X10_Y6_N9
\add_instance|Add1|fa8|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa8|o1|Y~0_combout\ = (\add_instance|M1|Z[8]~18_combout\ & ((\add_instance|Add1|fa7|o1|Y~0_combout\) # ((!\add_instance|M2|Block_sig16[0]~0_combout\ & \add_instance|M2|t9[8]~16_combout\)))) # (!\add_instance|M1|Z[8]~18_combout\ & 
-- (!\add_instance|M2|Block_sig16[0]~0_combout\ & (\add_instance|Add1|fa7|o1|Y~0_combout\ & \add_instance|M2|t9[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M1|Z[8]~18_combout\,
	datab => \add_instance|M2|Block_sig16[0]~0_combout\,
	datac => \add_instance|Add1|fa7|o1|Y~0_combout\,
	datad => \add_instance|M2|t9[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa8|o1|Y~0_combout\);

-- Location: LC_X9_Y5_N5
\add_instance|M2|t9[9]~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[9]~18_combout\ = (\input_vector~combout\(2) & ((\input_vector~combout\(1) & ((\input_vector~combout\(14)))) # (!\input_vector~combout\(1) & (\input_vector~combout\(15))))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(1) & 
-- (\input_vector~combout\(15))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f960",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[9]~18_combout\);

-- Location: LC_X9_Y5_N9
\add_instance|M2|t9[9]~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[9]~17_combout\ = (\add_instance|M2|MUX_OP~0_combout\ & (\input_vector~combout\(15) $ (((\input_vector~combout\(14)) # (!\add_instance|Muxnot2|Z~1_combout\))))) # (!\add_instance|M2|MUX_OP~0_combout\ & 
-- (\add_instance|Muxnot2|Z~1_combout\ $ (((!\input_vector~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e95",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Muxnot2|Z~1_combout\,
	datab => \add_instance|M2|MUX_OP~0_combout\,
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[9]~17_combout\);

-- Location: LC_X9_Y5_N6
\add_instance|M2|t9[9]~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[9]~19_combout\ = ((\input_vector~combout\(3) & ((\add_instance|M2|t9[9]~17_combout\))) # (!\input_vector~combout\(3) & (\add_instance|M2|t9[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(3),
	datac => \add_instance|M2|t9[9]~18_combout\,
	datad => \add_instance|M2|t9[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[9]~19_combout\);

-- Location: LC_X6_Y5_N7
\add_instance|M1|Z[9]~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|M1|Z[9]~19_combout\ = (\input_vector~combout\(1) & (!\add_instance|Muxnot2|Z~2_combout\ & ((!\input_vector~combout\(15))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(0) & \input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|Muxnot2|Z~2_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M1|Z[9]~19_combout\);

-- Location: LC_X6_Y5_N1
\add_instance|Add1|fa9|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa9|ha|S~combout\ = (\add_instance|M1|Z[9]~19_combout\ $ (((\add_instance|M2|t9[9]~19_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f05a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|t9[9]~19_combout\,
	datac => \add_instance|M1|Z[9]~19_combout\,
	datad => \add_instance|M2|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa9|ha|S~combout\);

-- Location: LC_X10_Y7_N1
\add_instance|M3|Z[9]~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[9]~13_combout\ = (\input_vector~combout\(4) & ((\input_vector~combout\(3) & (\input_vector~combout\(12))) # (!\input_vector~combout\(3) & ((\input_vector~combout\(13)))))) # (!\input_vector~combout\(4) & ((\input_vector~combout\(3) & 
-- ((\input_vector~combout\(13)))) # (!\input_vector~combout\(3) & (\input_vector~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[9]~13_combout\);

-- Location: LC_X10_Y7_N0
\add_instance|M3|Z[9]~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[9]~23_combout\ = (\input_vector~combout\(4) & ((\input_vector~combout\(3) & (\add_instance|M1|Z[4]~12_combout\)) # (!\input_vector~combout\(3) & ((\add_instance|M1|Z[5]~10_combout\))))) # (!\input_vector~combout\(4) & 
-- ((\input_vector~combout\(3) & ((\add_instance|M1|Z[5]~10_combout\))) # (!\input_vector~combout\(3) & (\add_instance|M1|Z[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(3),
	datac => \add_instance|M1|Z[4]~12_combout\,
	datad => \add_instance|M1|Z[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[9]~23_combout\);

-- Location: LC_X10_Y7_N7
\add_instance|M3|Z[9]~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[9]~14_combout\ = (!\add_instance|M3|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(5) & ((\add_instance|M3|Z[9]~23_combout\))) # (!\input_vector~combout\(5) & (\add_instance|M3|Z[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|Block_sig16[0]~0_combout\,
	datab => \add_instance|M3|Z[9]~13_combout\,
	datac => \add_instance|M3|Z[9]~23_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[9]~14_combout\);

-- Location: LC_X10_Y6_N8
\add_instance|Add2|fa9|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa9|ha|S~combout\ = (\add_instance|Add1|fa8|o1|Y~0_combout\ $ (\add_instance|Add1|fa9|ha|S~combout\ $ (\add_instance|M3|Z[9]~14_combout\)))

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
	datab => \add_instance|Add1|fa8|o1|Y~0_combout\,
	datac => \add_instance|Add1|fa9|ha|S~combout\,
	datad => \add_instance|M3|Z[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa9|ha|S~combout\);

-- Location: LC_X10_Y6_N0
\add_instance|Add2|fa8|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa8|o1|Y~0_combout\ = (\add_instance|M3|Z[8]~12_combout\ & ((\add_instance|Add2|fa7|o1|Y~0_combout\) # (\add_instance|Add1|fa7|o1|Y~0_combout\ $ (\add_instance|Add1|fa8|ha|S~combout\)))) # (!\add_instance|M3|Z[8]~12_combout\ & 
-- (\add_instance|Add2|fa7|o1|Y~0_combout\ & (\add_instance|Add1|fa7|o1|Y~0_combout\ $ (\add_instance|Add1|fa8|ha|S~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|Z[8]~12_combout\,
	datab => \add_instance|Add2|fa7|o1|Y~0_combout\,
	datac => \add_instance|Add1|fa7|o1|Y~0_combout\,
	datad => \add_instance|Add1|fa8|ha|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa8|o1|Y~0_combout\);

-- Location: LC_X10_Y6_N7
\add_instance|Add3|fa8|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa8|o1|Y~0_combout\ = (\add_instance|Add3|fa7|o1|Y~0_combout\ & ((\add_instance|M4|Z[8]~5_combout\) # (\add_instance|Add2|fa8|ha|S~combout\ $ (\add_instance|Add2|fa7|o1|Y~0_combout\)))) # (!\add_instance|Add3|fa7|o1|Y~0_combout\ & 
-- (\add_instance|M4|Z[8]~5_combout\ & (\add_instance|Add2|fa8|ha|S~combout\ $ (\add_instance|Add2|fa7|o1|Y~0_combout\))))

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
	dataa => \add_instance|Add2|fa8|ha|S~combout\,
	datab => \add_instance|Add2|fa7|o1|Y~0_combout\,
	datac => \add_instance|Add3|fa7|o1|Y~0_combout\,
	datad => \add_instance|M4|Z[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa8|o1|Y~0_combout\);

-- Location: LC_X11_Y7_N0
\add_instance|M4|Z[9]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[9]~6_combout\ = \input_vector~combout\(11) $ (((\input_vector~combout\(7) & (!\add_instance|Muxnot2|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(11),
	datac => \add_instance|Muxnot2|Z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[9]~6_combout\);

-- Location: LC_X11_Y7_N7
\add_instance|M4|Z[9]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[9]~7_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\add_instance|M4|MUX_OP~0_combout\ & ((\add_instance|M4|Z[9]~6_combout\))) # (!\add_instance|M4|MUX_OP~0_combout\ & (\add_instance|M4|Z[8]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M4|Block_sig16[0]~0_combout\,
	datab => \add_instance|M4|Z[8]~4_combout\,
	datac => \add_instance|M4|Z[9]~6_combout\,
	datad => \add_instance|M4|MUX_OP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[9]~7_combout\);

-- Location: LC_X10_Y6_N3
\add_instance|Add3|fa9|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa9|x1|Y~combout\ = \add_instance|Add2|fa9|ha|S~combout\ $ (\add_instance|Add2|fa8|o1|Y~0_combout\ $ (\add_instance|Add3|fa8|o1|Y~0_combout\ $ (\add_instance|M4|Z[9]~7_combout\)))

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
	dataa => \add_instance|Add2|fa9|ha|S~combout\,
	datab => \add_instance|Add2|fa8|o1|Y~0_combout\,
	datac => \add_instance|Add3|fa8|o1|Y~0_combout\,
	datad => \add_instance|M4|Z[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa9|x1|Y~combout\);

-- Location: LC_X10_Y6_N1
\add_instance|Add3|fa9|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa9|o1|Y~0_combout\ = (\add_instance|Add3|fa8|o1|Y~0_combout\ & ((\add_instance|M4|Z[9]~7_combout\) # (\add_instance|Add2|fa9|ha|S~combout\ $ (\add_instance|Add2|fa8|o1|Y~0_combout\)))) # (!\add_instance|Add3|fa8|o1|Y~0_combout\ & 
-- (\add_instance|M4|Z[9]~7_combout\ & (\add_instance|Add2|fa9|ha|S~combout\ $ (\add_instance|Add2|fa8|o1|Y~0_combout\))))

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
	dataa => \add_instance|Add2|fa9|ha|S~combout\,
	datab => \add_instance|Add2|fa8|o1|Y~0_combout\,
	datac => \add_instance|Add3|fa8|o1|Y~0_combout\,
	datad => \add_instance|M4|Z[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa9|o1|Y~0_combout\);

-- Location: LC_X10_Y6_N2
\add_instance|Add2|fa9|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa9|o1|Y~0_combout\ = (\add_instance|M3|Z[9]~14_combout\ & ((\add_instance|Add2|fa8|o1|Y~0_combout\) # (\add_instance|Add1|fa9|ha|S~combout\ $ (\add_instance|Add1|fa8|o1|Y~0_combout\)))) # (!\add_instance|M3|Z[9]~14_combout\ & 
-- (\add_instance|Add2|fa8|o1|Y~0_combout\ & (\add_instance|Add1|fa9|ha|S~combout\ $ (\add_instance|Add1|fa8|o1|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|Z[9]~14_combout\,
	datab => \add_instance|Add2|fa8|o1|Y~0_combout\,
	datac => \add_instance|Add1|fa9|ha|S~combout\,
	datad => \add_instance|Add1|fa8|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa9|o1|Y~0_combout\);

-- Location: LC_X6_Y5_N0
\add_instance|M2|t9[10]~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[10]~20_combout\ = (\input_vector~combout\(15) & (((!\add_instance|M2|MUX_OP~0_combout\ & \add_instance|Muxnot2|Z~2_combout\)) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(15) & (\input_vector~combout\(3) & 
-- ((!\add_instance|Muxnot2|Z~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(3),
	datac => \add_instance|M2|MUX_OP~0_combout\,
	datad => \add_instance|Muxnot2|Z~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[10]~20_combout\);

-- Location: LC_X6_Y5_N8
\add_instance|Add1|fa10|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa10|ha|S~combout\ = (\add_instance|M1|Z[9]~19_combout\ $ (((\add_instance|M2|t9[10]~20_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|M2|t9[10]~20_combout\,
	datac => \add_instance|M1|Z[9]~19_combout\,
	datad => \add_instance|M2|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa10|ha|S~combout\);

-- Location: LC_X6_Y5_N6
\add_instance|Add1|fa9|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa9|o1|Y~0_combout\ = (\add_instance|M1|Z[9]~19_combout\ & ((\add_instance|Add1|fa8|o1|Y~0_combout\) # ((\add_instance|M2|t9[9]~19_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))) # (!\add_instance|M1|Z[9]~19_combout\ & 
-- (\add_instance|M2|t9[9]~19_combout\ & (!\add_instance|M2|Block_sig16[0]~0_combout\ & \add_instance|Add1|fa8|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|t9[9]~19_combout\,
	datab => \add_instance|M2|Block_sig16[0]~0_combout\,
	datac => \add_instance|M1|Z[9]~19_combout\,
	datad => \add_instance|Add1|fa8|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa9|o1|Y~0_combout\);

-- Location: LC_X9_Y8_N9
\add_instance|M3|Z[10]~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[10]~16_combout\ = (\input_vector~combout\(3) & ((\input_vector~combout\(4) & (\input_vector~combout\(13))) # (!\input_vector~combout\(4) & ((\input_vector~combout\(14)))))) # (!\input_vector~combout\(3) & ((\input_vector~combout\(4) & 
-- ((\input_vector~combout\(14)))) # (!\input_vector~combout\(4) & (\input_vector~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[10]~16_combout\);

-- Location: LC_X9_Y8_N7
\add_instance|M3|Z[10]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[10]~15_combout\ = (\add_instance|M3|MUX_OP~0_combout\ & ((\input_vector~combout\(14) $ (!\add_instance|Muxnot2|Z~1_combout\)))) # (!\add_instance|M3|MUX_OP~0_combout\ & (\add_instance|M1|Z[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e44e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|MUX_OP~0_combout\,
	datab => \add_instance|M1|Z[5]~10_combout\,
	datac => \input_vector~combout\(14),
	datad => \add_instance|Muxnot2|Z~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[10]~15_combout\);

-- Location: LC_X9_Y8_N0
\add_instance|M3|Z[10]~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[10]~17_combout\ = (!\add_instance|M3|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(5) & ((\add_instance|M3|Z[10]~15_combout\))) # (!\input_vector~combout\(5) & (\add_instance|M3|Z[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|Block_sig16[0]~0_combout\,
	datab => \add_instance|M3|Z[10]~16_combout\,
	datac => \add_instance|M3|Z[10]~15_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[10]~17_combout\);

-- Location: LC_X10_Y5_N6
\add_instance|Add2|fa10|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa10|ha|S~combout\ = (\add_instance|Add1|fa10|ha|S~combout\ $ (\add_instance|Add1|fa9|o1|Y~0_combout\ $ (\add_instance|M3|Z[10]~17_combout\)))

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
	datab => \add_instance|Add1|fa10|ha|S~combout\,
	datac => \add_instance|Add1|fa9|o1|Y~0_combout\,
	datad => \add_instance|M3|Z[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa10|ha|S~combout\);

-- Location: LC_X11_Y7_N5
\add_instance|M4|Z[10]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[10]~8_combout\ = (\add_instance|M4|MUX_OP~0_combout\ & (\input_vector~combout\(12) $ (((\input_vector~combout\(11)) # (!\add_instance|Muxnot2|Z~0_combout\))))) # (!\add_instance|M4|MUX_OP~0_combout\ & ((\input_vector~combout\(11) $ 
-- (!\add_instance|Muxnot2|Z~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(11),
	datac => \add_instance|Muxnot2|Z~0_combout\,
	datad => \add_instance|M4|MUX_OP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[10]~8_combout\);

-- Location: LC_X11_Y7_N2
\add_instance|M4|Z[10]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[10]~9_combout\ = (\input_vector~combout\(12) & ((\input_vector~combout\(11)) # (\input_vector~combout\(5) $ (\input_vector~combout\(6))))) # (!\input_vector~combout\(12) & (\input_vector~combout\(11) & (\input_vector~combout\(5) $ 
-- (!\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[10]~9_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|M4|Z[10]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[10]~10_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(7) & (\add_instance|M4|Z[10]~8_combout\)) # (!\input_vector~combout\(7) & ((\add_instance|M4|Z[10]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M4|Z[10]~8_combout\,
	datab => \add_instance|M4|Z[10]~9_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|M4|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[10]~10_combout\);

-- Location: LC_X10_Y5_N4
\add_instance|Add3|fa10|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa10|x1|Y~combout\ = \add_instance|Add3|fa9|o1|Y~0_combout\ $ (\add_instance|Add2|fa9|o1|Y~0_combout\ $ (\add_instance|Add2|fa10|ha|S~combout\ $ (\add_instance|M4|Z[10]~10_combout\)))

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
	dataa => \add_instance|Add3|fa9|o1|Y~0_combout\,
	datab => \add_instance|Add2|fa9|o1|Y~0_combout\,
	datac => \add_instance|Add2|fa10|ha|S~combout\,
	datad => \add_instance|M4|Z[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa10|x1|Y~combout\);

-- Location: LC_X10_Y5_N2
\add_instance|Add3|fa10|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa10|o1|Y~0_combout\ = (\add_instance|Add3|fa9|o1|Y~0_combout\ & ((\add_instance|M4|Z[10]~10_combout\) # (\add_instance|Add2|fa9|o1|Y~0_combout\ $ (\add_instance|Add2|fa10|ha|S~combout\)))) # (!\add_instance|Add3|fa9|o1|Y~0_combout\ & 
-- (\add_instance|M4|Z[10]~10_combout\ & (\add_instance|Add2|fa9|o1|Y~0_combout\ $ (\add_instance|Add2|fa10|ha|S~combout\))))

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
	dataa => \add_instance|Add3|fa9|o1|Y~0_combout\,
	datab => \add_instance|Add2|fa9|o1|Y~0_combout\,
	datac => \add_instance|Add2|fa10|ha|S~combout\,
	datad => \add_instance|M4|Z[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa10|o1|Y~0_combout\);

-- Location: LC_X10_Y5_N5
\add_instance|Add2|fa10|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa10|o1|Y~0_combout\ = (\add_instance|Add2|fa9|o1|Y~0_combout\ & ((\add_instance|M3|Z[10]~17_combout\) # (\add_instance|Add1|fa9|o1|Y~0_combout\ $ (\add_instance|Add1|fa10|ha|S~combout\)))) # (!\add_instance|Add2|fa9|o1|Y~0_combout\ & 
-- (\add_instance|M3|Z[10]~17_combout\ & (\add_instance|Add1|fa9|o1|Y~0_combout\ $ (\add_instance|Add1|fa10|ha|S~combout\))))

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
	dataa => \add_instance|Add1|fa9|o1|Y~0_combout\,
	datab => \add_instance|Add1|fa10|ha|S~combout\,
	datac => \add_instance|Add2|fa9|o1|Y~0_combout\,
	datad => \add_instance|M3|Z[10]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa10|o1|Y~0_combout\);

-- Location: LC_X9_Y8_N3
\add_instance|M2|t9[11]~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|M2|t9[11]~21_combout\ = (\input_vector~combout\(15) & (((!\input_vector~combout\(3))))) # (!\input_vector~combout\(15) & (\input_vector~combout\(3) & ((\input_vector~combout\(14)) # (!\add_instance|Muxnot2|Z~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(3),
	datad => \add_instance|Muxnot2|Z~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M2|t9[11]~21_combout\);

-- Location: LC_X6_Y5_N9
\add_instance|Add1|fa11|ha|S~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa11|ha|S~0_combout\ = (\add_instance|M1|Z[9]~19_combout\ $ (((!\add_instance|M2|Block_sig16[0]~0_combout\ & \add_instance|M2|t9[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|M2|Block_sig16[0]~0_combout\,
	datac => \add_instance|M1|Z[9]~19_combout\,
	datad => \add_instance|M2|t9[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa11|ha|S~0_combout\);

-- Location: LC_X6_Y5_N2
\add_instance|Add1|fa10|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa10|o1|Y~0_combout\ = (\add_instance|Add1|fa9|o1|Y~0_combout\ & ((\add_instance|M1|Z[9]~19_combout\) # ((\add_instance|M2|t9[10]~20_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))) # (!\add_instance|Add1|fa9|o1|Y~0_combout\ & 
-- (\add_instance|M2|t9[10]~20_combout\ & (\add_instance|M1|Z[9]~19_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add1|fa9|o1|Y~0_combout\,
	datab => \add_instance|M2|t9[10]~20_combout\,
	datac => \add_instance|M1|Z[9]~19_combout\,
	datad => \add_instance|M2|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa10|o1|Y~0_combout\);

-- Location: LC_X9_Y8_N2
\add_instance|M3|Z[11]~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[11]~18_combout\ = (\add_instance|M3|MUX_OP~0_combout\ & (\input_vector~combout\(15) $ (((\input_vector~combout\(14)) # (!\add_instance|Muxnot2|Z~1_combout\))))) # (!\add_instance|M3|MUX_OP~0_combout\ & ((\input_vector~combout\(14) $ 
-- (!\add_instance|Muxnot2|Z~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7827",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|MUX_OP~0_combout\,
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(14),
	datad => \add_instance|Muxnot2|Z~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[11]~18_combout\);

-- Location: LC_X9_Y8_N4
\add_instance|M3|Z[11]~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[11]~19_combout\ = (\input_vector~combout\(3) & ((\input_vector~combout\(4) & ((\input_vector~combout\(14)))) # (!\input_vector~combout\(4) & (\input_vector~combout\(15))))) # (!\input_vector~combout\(3) & ((\input_vector~combout\(4) & 
-- (\input_vector~combout\(15))) # (!\input_vector~combout\(4) & ((\input_vector~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[11]~19_combout\);

-- Location: LC_X9_Y8_N6
\add_instance|M3|Z[11]~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[11]~20_combout\ = (!\add_instance|M3|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(5) & (\add_instance|M3|Z[11]~18_combout\)) # (!\input_vector~combout\(5) & ((\add_instance|M3|Z[11]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|Block_sig16[0]~0_combout\,
	datab => \add_instance|M3|Z[11]~18_combout\,
	datac => \add_instance|M3|Z[11]~19_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[11]~20_combout\);

-- Location: LC_X9_Y7_N5
\add_instance|Add2|fa11|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa11|ha|S~combout\ = \add_instance|Add1|fa11|ha|S~0_combout\ $ (((\add_instance|Add1|fa10|o1|Y~0_combout\ $ (\add_instance|M3|Z[11]~20_combout\))))

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
	dataa => \add_instance|Add1|fa11|ha|S~0_combout\,
	datac => \add_instance|Add1|fa10|o1|Y~0_combout\,
	datad => \add_instance|M3|Z[11]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa11|ha|S~combout\);

-- Location: LC_X10_Y7_N3
\add_instance|M4|Z[11]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[11]~11_combout\ = (\input_vector~combout\(6) & ((\input_vector~combout\(5) & ((\input_vector~combout\(12)))) # (!\input_vector~combout\(5) & (\input_vector~combout\(13))))) # (!\input_vector~combout\(6) & ((\input_vector~combout\(5) & 
-- (\input_vector~combout\(13))) # (!\input_vector~combout\(5) & ((\input_vector~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(12),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[11]~11_combout\);

-- Location: LC_X10_Y7_N2
\add_instance|M4|Z[11]~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[11]~22_combout\ = (\input_vector~combout\(6) & ((\input_vector~combout\(5) & (\add_instance|M1|Z[4]~12_combout\)) # (!\input_vector~combout\(5) & ((\add_instance|M1|Z[5]~10_combout\))))) # (!\input_vector~combout\(6) & 
-- ((\input_vector~combout\(5) & ((\add_instance|M1|Z[5]~10_combout\))) # (!\input_vector~combout\(5) & (\add_instance|M1|Z[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f690",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datab => \input_vector~combout\(5),
	datac => \add_instance|M1|Z[4]~12_combout\,
	datad => \add_instance|M1|Z[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[11]~22_combout\);

-- Location: LC_X10_Y7_N8
\add_instance|M4|Z[11]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[11]~12_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(7) & ((\add_instance|M4|Z[11]~22_combout\))) # (!\input_vector~combout\(7) & (\add_instance|M4|Z[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M4|Z[11]~11_combout\,
	datab => \add_instance|M4|Z[11]~22_combout\,
	datac => \add_instance|M4|Block_sig16[0]~0_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[11]~12_combout\);

-- Location: LC_X9_Y7_N0
\add_instance|Add3|fa11|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa11|x1|Y~combout\ = \add_instance|Add3|fa10|o1|Y~0_combout\ $ (\add_instance|Add2|fa10|o1|Y~0_combout\ $ (\add_instance|Add2|fa11|ha|S~combout\ $ (\add_instance|M4|Z[11]~12_combout\)))

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
	dataa => \add_instance|Add3|fa10|o1|Y~0_combout\,
	datab => \add_instance|Add2|fa10|o1|Y~0_combout\,
	datac => \add_instance|Add2|fa11|ha|S~combout\,
	datad => \add_instance|M4|Z[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa11|x1|Y~combout\);

-- Location: LC_X7_Y7_N9
\add_instance|M3|Z[12]~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[12]~21_combout\ = (\add_instance|Muxnot2|Z~2_combout\ & (\input_vector~combout\(15) & ((!\input_vector~combout\(5)) # (!\add_instance|M3|MUX_OP~0_combout\)))) # (!\add_instance|Muxnot2|Z~2_combout\ & ((\input_vector~combout\(15) $ 
-- (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "25f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Muxnot2|Z~2_combout\,
	datab => \add_instance|M3|MUX_OP~0_combout\,
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[12]~21_combout\);

-- Location: LC_X6_Y5_N4
\add_instance|Add1|fa11|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa11|o1|Y~0_combout\ = (\add_instance|Add1|fa10|o1|Y~0_combout\ & ((\add_instance|M1|Z[9]~19_combout\) # ((\add_instance|M2|t9[11]~21_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))) # (!\add_instance|Add1|fa10|o1|Y~0_combout\ 
-- & (\add_instance|M2|t9[11]~21_combout\ & (\add_instance|M1|Z[9]~19_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|t9[11]~21_combout\,
	datab => \add_instance|Add1|fa10|o1|Y~0_combout\,
	datac => \add_instance|M1|Z[9]~19_combout\,
	datad => \add_instance|M2|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa11|o1|Y~0_combout\);

-- Location: LC_X9_Y7_N2
\add_instance|Add2|fa12|ha|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa12|ha|S~combout\ = \add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa11|o1|Y~0_combout\ $ (((\add_instance|M3|Z[12]~21_combout\ & !\add_instance|M3|Block_sig16[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add1|fa11|ha|S~0_combout\,
	datab => \add_instance|M3|Z[12]~21_combout\,
	datac => \add_instance|Add1|fa11|o1|Y~0_combout\,
	datad => \add_instance|M3|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa12|ha|S~combout\);

-- Location: LC_X9_Y5_N0
\add_instance|M4|Z[12]~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[12]~13_combout\ = (\add_instance|M4|MUX_OP~0_combout\ & (\add_instance|Muxnot2|Z~1_combout\ $ ((!\input_vector~combout\(14))))) # (!\add_instance|M4|MUX_OP~0_combout\ & (((\add_instance|M1|Z[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Muxnot2|Z~1_combout\,
	datab => \input_vector~combout\(14),
	datac => \add_instance|M1|Z[5]~10_combout\,
	datad => \add_instance|M4|MUX_OP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[12]~13_combout\);

-- Location: LC_X9_Y8_N8
\add_instance|M4|Z[12]~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[12]~14_combout\ = (\input_vector~combout\(14) & ((\input_vector~combout\(13)) # (\input_vector~combout\(6) $ (\input_vector~combout\(5))))) # (!\input_vector~combout\(14) & (\input_vector~combout\(13) & (\input_vector~combout\(6) $ 
-- (!\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(13),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[12]~14_combout\);

-- Location: LC_X9_Y7_N1
\add_instance|M4|Z[12]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[12]~15_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(7) & (\add_instance|M4|Z[12]~13_combout\)) # (!\input_vector~combout\(7) & ((\add_instance|M4|Z[12]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M4|Z[12]~13_combout\,
	datab => \add_instance|M4|Z[12]~14_combout\,
	datac => \input_vector~combout\(7),
	datad => \add_instance|M4|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[12]~15_combout\);

-- Location: LC_X9_Y7_N7
\add_instance|Add3|fa11|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa11|o1|Y~0_combout\ = (\add_instance|Add3|fa10|o1|Y~0_combout\ & ((\add_instance|M4|Z[11]~12_combout\) # (\add_instance|Add2|fa10|o1|Y~0_combout\ $ (\add_instance|Add2|fa11|ha|S~combout\)))) # (!\add_instance|Add3|fa10|o1|Y~0_combout\ 
-- & (\add_instance|M4|Z[11]~12_combout\ & (\add_instance|Add2|fa10|o1|Y~0_combout\ $ (\add_instance|Add2|fa11|ha|S~combout\))))

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
	dataa => \add_instance|Add3|fa10|o1|Y~0_combout\,
	datab => \add_instance|Add2|fa10|o1|Y~0_combout\,
	datac => \add_instance|Add2|fa11|ha|S~combout\,
	datad => \add_instance|M4|Z[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa11|o1|Y~0_combout\);

-- Location: LC_X9_Y7_N9
\add_instance|Add2|fa11|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa11|o1|Y~0_combout\ = (\add_instance|M3|Z[11]~20_combout\ & ((\add_instance|Add2|fa10|o1|Y~0_combout\) # (\add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa10|o1|Y~0_combout\)))) # (!\add_instance|M3|Z[11]~20_combout\ & 
-- (\add_instance|Add2|fa10|o1|Y~0_combout\ & (\add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa10|o1|Y~0_combout\))))

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
	dataa => \add_instance|Add1|fa11|ha|S~0_combout\,
	datab => \add_instance|M3|Z[11]~20_combout\,
	datac => \add_instance|Add1|fa10|o1|Y~0_combout\,
	datad => \add_instance|Add2|fa10|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa11|o1|Y~0_combout\);

-- Location: LC_X9_Y7_N4
\add_instance|Add3|fa12|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa12|x1|Y~combout\ = \add_instance|Add2|fa12|ha|S~combout\ $ (\add_instance|M4|Z[12]~15_combout\ $ (\add_instance|Add3|fa11|o1|Y~0_combout\ $ (\add_instance|Add2|fa11|o1|Y~0_combout\)))

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
	dataa => \add_instance|Add2|fa12|ha|S~combout\,
	datab => \add_instance|M4|Z[12]~15_combout\,
	datac => \add_instance|Add3|fa11|o1|Y~0_combout\,
	datad => \add_instance|Add2|fa11|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa12|x1|Y~combout\);

-- Location: LC_X7_Y7_N8
\add_instance|M3|Z[12]~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[12]~24_combout\ = (\add_instance|M3|Z[12]~21_combout\ & ((\input_vector~combout\(5) & ((!\input_vector~combout\(4)) # (!\input_vector~combout\(3)))) # (!\input_vector~combout\(5) & ((\input_vector~combout\(3)) # 
-- (\input_vector~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4cc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|M3|Z[12]~21_combout\,
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[12]~24_combout\);

-- Location: LC_X9_Y7_N8
\add_instance|Add2|fa12|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa12|o1|Y~0_combout\ = (\add_instance|M3|Z[12]~24_combout\ & ((\add_instance|Add2|fa11|o1|Y~0_combout\) # (\add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa11|o1|Y~0_combout\)))) # (!\add_instance|M3|Z[12]~24_combout\ & 
-- (\add_instance|Add2|fa11|o1|Y~0_combout\ & (\add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa11|o1|Y~0_combout\))))

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
	dataa => \add_instance|Add1|fa11|ha|S~0_combout\,
	datab => \add_instance|M3|Z[12]~24_combout\,
	datac => \add_instance|Add1|fa11|o1|Y~0_combout\,
	datad => \add_instance|Add2|fa11|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa12|o1|Y~0_combout\);

-- Location: LC_X9_Y8_N1
\add_instance|M4|Z[13]~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[13]~16_combout\ = (\add_instance|M4|MUX_OP~0_combout\ & (\input_vector~combout\(15) $ (((\input_vector~combout\(14)) # (!\add_instance|Muxnot2|Z~1_combout\))))) # (!\add_instance|M4|MUX_OP~0_combout\ & 
-- (\add_instance|Muxnot2|Z~1_combout\ $ (((!\input_vector~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "39a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Muxnot2|Z~1_combout\,
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(14),
	datad => \add_instance|M4|MUX_OP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[13]~16_combout\);

-- Location: LC_X9_Y8_N5
\add_instance|M4|Z[13]~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[13]~17_combout\ = (\input_vector~combout\(14) & ((\input_vector~combout\(15)) # (\input_vector~combout\(6) $ (!\input_vector~combout\(5))))) # (!\input_vector~combout\(14) & (\input_vector~combout\(15) & (\input_vector~combout\(6) $ 
-- (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[13]~17_combout\);

-- Location: LC_X9_Y7_N6
\add_instance|M4|Z[13]~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[13]~18_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(7) & (\add_instance|M4|Z[13]~16_combout\)) # (!\input_vector~combout\(7) & ((\add_instance|M4|Z[13]~17_combout\)))))

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
	dataa => \input_vector~combout\(7),
	datab => \add_instance|M4|Z[13]~16_combout\,
	datac => \add_instance|M4|Z[13]~17_combout\,
	datad => \add_instance|M4|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[13]~18_combout\);

-- Location: LC_X9_Y7_N3
\add_instance|Add3|fa12|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa12|o1|Y~0_combout\ = (\add_instance|M4|Z[12]~15_combout\ & ((\add_instance|Add3|fa11|o1|Y~0_combout\) # (\add_instance|Add2|fa11|o1|Y~0_combout\ $ (\add_instance|Add2|fa12|ha|S~combout\)))) # (!\add_instance|M4|Z[12]~15_combout\ & 
-- (\add_instance|Add3|fa11|o1|Y~0_combout\ & (\add_instance|Add2|fa11|o1|Y~0_combout\ $ (\add_instance|Add2|fa12|ha|S~combout\))))

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
	dataa => \add_instance|Add2|fa11|o1|Y~0_combout\,
	datab => \add_instance|M4|Z[12]~15_combout\,
	datac => \add_instance|Add3|fa11|o1|Y~0_combout\,
	datad => \add_instance|Add2|fa12|ha|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa12|o1|Y~0_combout\);

-- Location: LC_X7_Y7_N1
\add_instance|M3|Z[13]~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|M3|Z[13]~22_combout\ = (!\add_instance|M3|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(15) & ((!\input_vector~combout\(5)))) # (!\input_vector~combout\(15) & (!\add_instance|Muxnot2|Z~2_combout\ & \input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0130",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Muxnot2|Z~2_combout\,
	datab => \add_instance|M3|Block_sig16[0]~0_combout\,
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M3|Z[13]~22_combout\);

-- Location: LC_X6_Y5_N3
\add_instance|Add1|fa12|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add1|fa12|o1|Y~0_combout\ = (\add_instance|Add1|fa10|o1|Y~0_combout\ & ((\add_instance|M1|Z[9]~19_combout\) # ((\add_instance|M2|t9[11]~21_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))) # (!\add_instance|Add1|fa10|o1|Y~0_combout\ 
-- & (\add_instance|M2|t9[11]~21_combout\ & (\add_instance|M1|Z[9]~19_combout\ & !\add_instance|M2|Block_sig16[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M2|t9[11]~21_combout\,
	datab => \add_instance|Add1|fa10|o1|Y~0_combout\,
	datac => \add_instance|M1|Z[9]~19_combout\,
	datad => \add_instance|M2|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add1|fa12|o1|Y~0_combout\);

-- Location: LC_X8_Y5_N8
\add_instance|Add2|fa13|ha|S~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa13|ha|S~0_combout\ = \add_instance|M3|Z[13]~22_combout\ $ (\add_instance|Add1|fa11|ha|S~0_combout\ $ ((\add_instance|Add1|fa12|o1|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M3|Z[13]~22_combout\,
	datab => \add_instance|Add1|fa11|ha|S~0_combout\,
	datac => \add_instance|Add1|fa12|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa13|ha|S~0_combout\);

-- Location: LC_X8_Y5_N5
\add_instance|Add3|fa13|x1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa13|x1|Y~0_combout\ = \add_instance|Add2|fa12|o1|Y~0_combout\ $ (\add_instance|M4|Z[13]~18_combout\ $ (\add_instance|Add3|fa12|o1|Y~0_combout\ $ (\add_instance|Add2|fa13|ha|S~0_combout\)))

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
	dataa => \add_instance|Add2|fa12|o1|Y~0_combout\,
	datab => \add_instance|M4|Z[13]~18_combout\,
	datac => \add_instance|Add3|fa12|o1|Y~0_combout\,
	datad => \add_instance|Add2|fa13|ha|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa13|x1|Y~0_combout\);

-- Location: LC_X8_Y5_N9
\add_instance|Add2|fa13|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa13|o1|Y~0_combout\ = (\add_instance|M3|Z[13]~22_combout\ & ((\add_instance|Add2|fa12|o1|Y~0_combout\) # (\add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa12|o1|Y~0_combout\)))) # (!\add_instance|M3|Z[13]~22_combout\ & 
-- (\add_instance|Add2|fa12|o1|Y~0_combout\ & (\add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa12|o1|Y~0_combout\))))

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
	dataa => \add_instance|M3|Z[13]~22_combout\,
	datab => \add_instance|Add1|fa11|ha|S~0_combout\,
	datac => \add_instance|Add1|fa12|o1|Y~0_combout\,
	datad => \add_instance|Add2|fa12|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa13|o1|Y~0_combout\);

-- Location: LC_X8_Y5_N0
\add_instance|Add3|fa13|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa13|o1|Y~0_combout\ = (\add_instance|M4|Z[13]~18_combout\ & ((\add_instance|Add3|fa12|o1|Y~0_combout\) # (\add_instance|Add2|fa12|o1|Y~0_combout\ $ (\add_instance|Add2|fa13|ha|S~0_combout\)))) # (!\add_instance|M4|Z[13]~18_combout\ & 
-- (\add_instance|Add3|fa12|o1|Y~0_combout\ & (\add_instance|Add2|fa12|o1|Y~0_combout\ $ (\add_instance|Add2|fa13|ha|S~0_combout\))))

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
	dataa => \add_instance|Add2|fa12|o1|Y~0_combout\,
	datab => \add_instance|M4|Z[13]~18_combout\,
	datac => \add_instance|Add3|fa12|o1|Y~0_combout\,
	datad => \add_instance|Add2|fa13|ha|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa13|o1|Y~0_combout\);

-- Location: LC_X9_Y5_N1
\add_instance|M4|Z[14]~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[14]~19_combout\ = (\add_instance|Muxnot2|Z~1_combout\ & ((\input_vector~combout\(14) & (!\input_vector~combout\(15))) # (!\input_vector~combout\(14) & (\input_vector~combout\(15) & !\add_instance|M4|MUX_OP~0_combout\)))) # 
-- (!\add_instance|Muxnot2|Z~1_combout\ & (((!\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d2d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Muxnot2|Z~1_combout\,
	datab => \input_vector~combout\(14),
	datac => \input_vector~combout\(15),
	datad => \add_instance|M4|MUX_OP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[14]~19_combout\);

-- Location: LC_X8_Y5_N2
\add_instance|M4|Z[14]~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[14]~20_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(7) & (\add_instance|M4|Z[14]~19_combout\)) # (!\input_vector~combout\(7) & ((\input_vector~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|M4|Z[14]~19_combout\,
	datab => \add_instance|M4|Block_sig16[0]~0_combout\,
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[14]~20_combout\);

-- Location: LC_X8_Y5_N7
\add_instance|Add3|fa14|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa14|x1|Y~combout\ = \add_instance|Add2|fa13|ha|S~0_combout\ $ (\add_instance|Add2|fa13|o1|Y~0_combout\ $ (\add_instance|Add3|fa13|o1|Y~0_combout\ $ (\add_instance|M4|Z[14]~20_combout\)))

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
	dataa => \add_instance|Add2|fa13|ha|S~0_combout\,
	datab => \add_instance|Add2|fa13|o1|Y~0_combout\,
	datac => \add_instance|Add3|fa13|o1|Y~0_combout\,
	datad => \add_instance|M4|Z[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa14|x1|Y~combout\);

-- Location: LC_X8_Y5_N1
\add_instance|Add2|fa14|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add2|fa14|o1|Y~0_combout\ = (\add_instance|M3|Z[13]~22_combout\ & ((\add_instance|Add2|fa12|o1|Y~0_combout\) # (\add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa12|o1|Y~0_combout\)))) # (!\add_instance|M3|Z[13]~22_combout\ & 
-- (\add_instance|Add2|fa12|o1|Y~0_combout\ & (\add_instance|Add1|fa11|ha|S~0_combout\ $ (\add_instance|Add1|fa12|o1|Y~0_combout\))))

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
	dataa => \add_instance|M3|Z[13]~22_combout\,
	datab => \add_instance|Add1|fa11|ha|S~0_combout\,
	datac => \add_instance|Add1|fa12|o1|Y~0_combout\,
	datad => \add_instance|Add2|fa12|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add2|fa14|o1|Y~0_combout\);

-- Location: LC_X8_Y5_N6
\add_instance|M4|Z[15]~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|M4|Z[15]~21_combout\ = (!\add_instance|M4|Block_sig16[0]~0_combout\ & ((\input_vector~combout\(7) & (!\add_instance|Muxnot2|Z~2_combout\ & !\input_vector~combout\(15))) # (!\input_vector~combout\(7) & ((\input_vector~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0052",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|Muxnot2|Z~2_combout\,
	datac => \input_vector~combout\(15),
	datad => \add_instance|M4|Block_sig16[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|M4|Z[15]~21_combout\);

-- Location: LC_X8_Y5_N3
\add_instance|Add3|fa14|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa14|o1|Y~0_combout\ = (\add_instance|Add3|fa13|o1|Y~0_combout\ & ((\add_instance|M4|Z[14]~20_combout\) # (\add_instance|Add2|fa13|ha|S~0_combout\ $ (\add_instance|Add2|fa13|o1|Y~0_combout\)))) # 
-- (!\add_instance|Add3|fa13|o1|Y~0_combout\ & (\add_instance|M4|Z[14]~20_combout\ & (\add_instance|Add2|fa13|ha|S~0_combout\ $ (\add_instance|Add2|fa13|o1|Y~0_combout\))))

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
	dataa => \add_instance|Add2|fa13|ha|S~0_combout\,
	datab => \add_instance|Add2|fa13|o1|Y~0_combout\,
	datac => \add_instance|Add3|fa13|o1|Y~0_combout\,
	datad => \add_instance|M4|Z[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa14|o1|Y~0_combout\);

-- Location: LC_X8_Y5_N4
\add_instance|Add3|fa15|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add3|fa15|x1|Y~combout\ = \add_instance|Add2|fa13|ha|S~0_combout\ $ (\add_instance|Add2|fa14|o1|Y~0_combout\ $ (\add_instance|M4|Z[15]~21_combout\ $ (\add_instance|Add3|fa14|o1|Y~0_combout\)))

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
	dataa => \add_instance|Add2|fa13|ha|S~0_combout\,
	datab => \add_instance|Add2|fa14|o1|Y~0_combout\,
	datac => \add_instance|M4|Z[15]~21_combout\,
	datad => \add_instance|Add3|fa14|o1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add3|fa15|x1|Y~combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M1|ALT_INV_Z[0]~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|M1|Z[1]~1_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add1|fa2|ha|S~combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add1|fa3|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add2|fa4|ha|S~combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add2|fa5|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa6|ha|S~combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa7|x1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa8|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa9|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa10|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa11|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa12|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa13|x1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa14|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Add3|fa15|x1|Y~combout\,
	oe => VCC,
	padio => ww_output_vector(15));
END structure;


