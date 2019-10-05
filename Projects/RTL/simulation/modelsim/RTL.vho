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

-- DATE "04/05/2019 09:29:32"

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

ENTITY 	fourbit IS
    PORT (
	Start : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	p : OUT std_logic_vector(7 DOWNTO 0);
	Done : OUT std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END fourbit;

-- Design Ports Information


ARCHITECTURE structure OF fourbit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_p : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Done : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Start~combout\ : std_logic;
SIGNAL \fsm_state.DONES~regout\ : std_logic;
SIGNAL \fsm_state.IDLE~regout\ : std_logic;
SIGNAL \T[2]~0\ : std_logic;
SIGNAL \Count[1]~0_combout\ : std_logic;
SIGNAL \fsm_state.WORKS~regout\ : std_logic;
SIGNAL \T[2]~1_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_29\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~9COUT1_30\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~16COUT1_31\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \p[0]~1_combout\ : std_logic;
SIGNAL \p[0]~reg0_regout\ : std_logic;
SIGNAL \p[1]~reg0_regout\ : std_logic;
SIGNAL \p[2]~reg0_regout\ : std_logic;
SIGNAL \p[3]~reg0_regout\ : std_logic;
SIGNAL \p[4]~reg0_regout\ : std_logic;
SIGNAL \p[5]~reg0_regout\ : std_logic;
SIGNAL \p[6]~reg0_regout\ : std_logic;
SIGNAL \fsm_state~5\ : std_logic;
SIGNAL \Done~reg0_regout\ : std_logic;
SIGNAL R : std_logic_vector(7 DOWNTO 0);
SIGNAL Count : std_logic_vector(1 DOWNTO 0);
SIGNAL T : std_logic_vector(2 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Start <= Start;
ww_a <= a;
ww_b <= b;
p <= ww_p;
Done <= ww_Done;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Start,
	combout => \Start~combout\);

-- Location: LC_X6_Y7_N8
\fsm_state.DONES\ : maxv_lcell
-- Equation(s):
-- \fsm_state~5\ = (\fsm_state.WORKS~regout\ & (!\reset~combout\ & (Count(1) & Count(0))))
-- \fsm_state.DONES~regout\ = DFFEAS(\fsm_state~5\, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.WORKS~regout\,
	datab => \reset~combout\,
	datac => Count(1),
	datad => Count(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fsm_state~5\,
	regout => \fsm_state.DONES~regout\);

-- Location: LC_X6_Y7_N9
\fsm_state.IDLE\ : maxv_lcell
-- Equation(s):
-- \fsm_state.IDLE~regout\ = DFFEAS((!\fsm_state.DONES~regout\ & (!\reset~combout\ & ((\Start~combout\) # (\fsm_state.IDLE~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0504",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.DONES~regout\,
	datab => \Start~combout\,
	datac => \reset~combout\,
	datad => \fsm_state.IDLE~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.IDLE~regout\);

-- Location: LC_X7_Y7_N6
\fsm_state.WORKS\ : maxv_lcell
-- Equation(s):
-- \T[2]~0\ = ((fsm_state.WORKS & ((!Count(0)) # (!Count(1)))))
-- \fsm_state.WORKS~regout\ = DFFEAS(\T[2]~0\, GLOBAL(\clk~combout\), VCC, , , \Count[1]~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => Count(1),
	datac => \Count[1]~0_combout\,
	datad => Count(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T[2]~0\,
	regout => \fsm_state.WORKS~regout\);

-- Location: LC_X7_Y7_N7
\Count[1]~0\ : maxv_lcell
-- Equation(s):
-- \Count[1]~0_combout\ = (!\reset~combout\ & ((\T[2]~0\) # ((\Start~combout\ & !\fsm_state.IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Start~combout\,
	datac => \fsm_state.IDLE~regout\,
	datad => \T[2]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Count[1]~0_combout\);

-- Location: LC_X7_Y7_N8
\Count[0]\ : maxv_lcell
-- Equation(s):
-- Count(0) = DFFEAS((Count(0) & (((!\Count[1]~0_combout\)))) # (!Count(0) & (\fsm_state.WORKS~regout\ & (!\reset~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04ae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(0),
	datab => \fsm_state.WORKS~regout\,
	datac => \reset~combout\,
	datad => \Count[1]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(0));

-- Location: LC_X7_Y7_N0
\Count[1]\ : maxv_lcell
-- Equation(s):
-- Count(1) = DFFEAS((\Count[1]~0_combout\ & (\fsm_state.WORKS~regout\ & (Count(0) $ (Count(1))))) # (!\Count[1]~0_combout\ & (((Count(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(0),
	datab => Count(1),
	datac => \Count[1]~0_combout\,
	datad => \fsm_state.WORKS~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X6_Y7_N2
\T[2]~1\ : maxv_lcell
-- Equation(s):
-- \T[2]~1_combout\ = (!\reset~combout\ & ((\fsm_state.IDLE~regout\ & ((\T[2]~0\))) # (!\fsm_state.IDLE~regout\ & (\Start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \Start~combout\,
	datac => \fsm_state.IDLE~regout\,
	datad => \T[2]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \T[2]~1_combout\);

-- Location: LC_X6_Y7_N1
\T[2]\ : maxv_lcell
-- Equation(s):
-- T(2) = DFFEAS((\T[2]~1_combout\ & (((!\fsm_state.IDLE~regout\ & \b~combout\(3))))) # (!\T[2]~1_combout\ & (T(2))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => T(2),
	datab => \fsm_state.IDLE~regout\,
	datac => \b~combout\(3),
	datad => \T[2]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => T(2));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X7_Y7_N9
\T[1]\ : maxv_lcell
-- Equation(s):
-- T(1) = DFFEAS((\fsm_state.WORKS~regout\ & (((T(2))))) # (!\fsm_state.WORKS~regout\ & (((\b~combout\(2))))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.WORKS~regout\,
	datac => T(2),
	datad => \b~combout\(2),
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => T(1));

-- Location: LC_X7_Y7_N4
\T[0]\ : maxv_lcell
-- Equation(s):
-- T(0) = DFFEAS((\fsm_state.WORKS~regout\ & (((T(1))))) # (!\fsm_state.WORKS~regout\ & (\b~combout\(1))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.WORKS~regout\,
	datab => \b~combout\(1),
	datad => T(1),
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => T(0));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X6_Y7_N6
\Add0~21\ : maxv_lcell
-- Equation(s):
-- \Add0~21_combout\ = ((\b~combout\(0) & (!\fsm_state.WORKS~regout\ & \a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(0),
	datac => \fsm_state.WORKS~regout\,
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~21_combout\);

-- Location: LC_X8_Y7_N5
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \a~combout\(0) $ ((R(4)))
-- \Add0~2\ = CARRY((\a~combout\(0) & (R(4))))
-- \Add0~2COUT1_29\ = CARRY((\a~combout\(0) & (R(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => R(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_29\);

-- Location: LC_X8_Y7_N6
\Add0~7\ : maxv_lcell
-- Equation(s):
-- \Add0~7_combout\ = R(5) $ (\a~combout\(1) $ ((\Add0~2\)))
-- \Add0~9\ = CARRY((R(5) & (!\a~combout\(1) & !\Add0~2\)) # (!R(5) & ((!\Add0~2\) # (!\a~combout\(1)))))
-- \Add0~9COUT1_30\ = CARRY((R(5) & (!\a~combout\(1) & !\Add0~2COUT1_29\)) # (!R(5) & ((!\Add0~2COUT1_29\) # (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => R(5),
	datab => \a~combout\(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~7_combout\,
	cout0 => \Add0~9\,
	cout1 => \Add0~9COUT1_30\);

-- Location: LC_X8_Y7_N7
\Add0~14\ : maxv_lcell
-- Equation(s):
-- \Add0~14_combout\ = \a~combout\(2) $ (R(6) $ ((!\Add0~9\)))
-- \Add0~16\ = CARRY((\a~combout\(2) & ((R(6)) # (!\Add0~9\))) # (!\a~combout\(2) & (R(6) & !\Add0~9\)))
-- \Add0~16COUT1_31\ = CARRY((\a~combout\(2) & ((R(6)) # (!\Add0~9COUT1_30\))) # (!\a~combout\(2) & (R(6) & !\Add0~9COUT1_30\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => R(6),
	cin0 => \Add0~9\,
	cin1 => \Add0~9COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~14_combout\,
	cout0 => \Add0~16\,
	cout1 => \Add0~16COUT1_31\);

-- Location: LC_X8_Y7_N8
\Add0~22\ : maxv_lcell
-- Equation(s):
-- \Add0~22_combout\ = ((\Add0~16\ $ (\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \a~combout\(3),
	cin0 => \Add0~16\,
	cin1 => \Add0~16COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~22_combout\);

-- Location: LC_X8_Y7_N9
\R[6]\ : maxv_lcell
-- Equation(s):
-- R(6) = DFFEAS((\Add0~21_combout\) # ((T(0) & (\fsm_state.WORKS~regout\ & \Add0~22_combout\))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => T(0),
	datab => \fsm_state.WORKS~regout\,
	datac => \Add0~21_combout\,
	datad => \Add0~22_combout\,
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => R(6));

-- Location: LC_X8_Y7_N3
\Add0~19\ : maxv_lcell
-- Equation(s):
-- \Add0~19_combout\ = ((T(0) & ((\Add0~14_combout\))) # (!T(0) & (R(6))))

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
	datab => R(6),
	datac => \Add0~14_combout\,
	datad => T(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~19_combout\);

-- Location: LC_X8_Y7_N4
\R[5]\ : maxv_lcell
-- Equation(s):
-- R(5) = DFFEAS((\fsm_state.WORKS~regout\ & (((\Add0~19_combout\)))) # (!\fsm_state.WORKS~regout\ & (\b~combout\(0) & (\a~combout\(2)))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \b~combout\(0),
	datab => \fsm_state.WORKS~regout\,
	datac => \a~combout\(2),
	datad => \Add0~19_combout\,
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => R(5));

-- Location: LC_X8_Y7_N2
\Add0~12\ : maxv_lcell
-- Equation(s):
-- \Add0~12_combout\ = ((T(0) & ((\Add0~7_combout\))) # (!T(0) & (R(5))))

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
	dataa => R(5),
	datac => \Add0~7_combout\,
	datad => T(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~12_combout\);

-- Location: LC_X8_Y7_N0
\R[4]\ : maxv_lcell
-- Equation(s):
-- R(4) = DFFEAS((\fsm_state.WORKS~regout\ & (((\Add0~12_combout\)))) # (!\fsm_state.WORKS~regout\ & (\b~combout\(0) & (\a~combout\(1)))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \b~combout\(0),
	datab => \fsm_state.WORKS~regout\,
	datac => \a~combout\(1),
	datad => \Add0~12_combout\,
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => R(4));

-- Location: LC_X8_Y7_N1
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = ((T(0) & ((\Add0~0_combout\))) # (!T(0) & (R(4))))

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
	datab => R(4),
	datac => \Add0~0_combout\,
	datad => T(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X7_Y7_N2
\R[3]\ : maxv_lcell
-- Equation(s):
-- R(3) = DFFEAS((\fsm_state.WORKS~regout\ & (((\Add0~5_combout\)))) # (!\fsm_state.WORKS~regout\ & (\a~combout\(0) & (\b~combout\(0)))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \a~combout\(0),
	datab => \fsm_state.WORKS~regout\,
	datac => \b~combout\(0),
	datad => \Add0~5_combout\,
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => R(3));

-- Location: LC_X7_Y7_N5
\R[2]\ : maxv_lcell
-- Equation(s):
-- R(2) = DFFEAS((((\fsm_state.WORKS~regout\ & R(3)))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \fsm_state.WORKS~regout\,
	datad => R(3),
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => R(2));

-- Location: LC_X7_Y7_N1
\R[1]\ : maxv_lcell
-- Equation(s):
-- R(1) = DFFEAS((R(2) & (((\fsm_state.WORKS~regout\)))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => R(2),
	datac => \fsm_state.WORKS~regout\,
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => R(1));

-- Location: LC_X7_Y7_N3
\R[0]\ : maxv_lcell
-- Equation(s):
-- R(0) = DFFEAS(((R(1) & (\fsm_state.WORKS~regout\))), GLOBAL(\clk~combout\), VCC, , \Count[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => R(1),
	datac => \fsm_state.WORKS~regout\,
	aclr => GND,
	ena => \Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => R(0));

-- Location: LC_X6_Y7_N3
\p[0]~1\ : maxv_lcell
-- Equation(s):
-- \p[0]~1_combout\ = (\reset~combout\) # ((\fsm_state.WORKS~regout\ & (Count(0) & Count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state.WORKS~regout\,
	datab => Count(0),
	datac => Count(1),
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \p[0]~1_combout\);

-- Location: LC_X5_Y7_N2
\p[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \p[0]~reg0_regout\ = DFFEAS((((!\reset~combout\ & R(0)))), GLOBAL(\clk~combout\), VCC, , \p[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => R(0),
	aclr => GND,
	ena => \p[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p[0]~reg0_regout\);

-- Location: LC_X5_Y7_N6
\p[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \p[1]~reg0_regout\ = DFFEAS((((!\reset~combout\ & R(1)))), GLOBAL(\clk~combout\), VCC, , \p[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => R(1),
	aclr => GND,
	ena => \p[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p[1]~reg0_regout\);

-- Location: LC_X6_Y7_N4
\p[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \p[2]~reg0_regout\ = DFFEAS(((R(2) & ((!\reset~combout\)))), GLOBAL(\clk~combout\), VCC, , \p[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => R(2),
	datad => \reset~combout\,
	aclr => GND,
	ena => \p[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p[2]~reg0_regout\);

-- Location: LC_X5_Y7_N5
\p[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \p[3]~reg0_regout\ = DFFEAS((((!\reset~combout\ & R(3)))), GLOBAL(\clk~combout\), VCC, , \p[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => R(3),
	aclr => GND,
	ena => \p[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p[3]~reg0_regout\);

-- Location: LC_X6_Y7_N0
\p[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \p[4]~reg0_regout\ = DFFEAS(((!\reset~combout\ & ((R(4))))), GLOBAL(\clk~combout\), VCC, , \p[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \reset~combout\,
	datad => R(4),
	aclr => GND,
	ena => \p[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p[4]~reg0_regout\);

-- Location: LC_X6_Y7_N5
\p[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \p[5]~reg0_regout\ = DFFEAS(((!\reset~combout\ & (R(5)))), GLOBAL(\clk~combout\), VCC, , \p[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datac => R(5),
	aclr => GND,
	ena => \p[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p[5]~reg0_regout\);

-- Location: LC_X5_Y7_N4
\p[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \p[6]~reg0_regout\ = DFFEAS((((!\reset~combout\ & R(6)))), GLOBAL(\clk~combout\), VCC, , \p[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datac => \reset~combout\,
	datad => R(6),
	aclr => GND,
	ena => \p[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \p[6]~reg0_regout\);

-- Location: LC_X6_Y7_N7
\Done~reg0\ : maxv_lcell
-- Equation(s):
-- \Done~reg0_regout\ = DFFEAS(((\fsm_state~5\) # ((\reset~combout\ & \Done~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datac => \Done~reg0_regout\,
	datad => \fsm_state~5\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Done~reg0_regout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \p[0]~reg0_regout\,
	oe => VCC,
	padio => ww_p(0));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \p[1]~reg0_regout\,
	oe => VCC,
	padio => ww_p(1));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \p[2]~reg0_regout\,
	oe => VCC,
	padio => ww_p(2));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \p[3]~reg0_regout\,
	oe => VCC,
	padio => ww_p(3));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \p[4]~reg0_regout\,
	oe => VCC,
	padio => ww_p(4));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \p[5]~reg0_regout\,
	oe => VCC,
	padio => ww_p(5));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \p[6]~reg0_regout\,
	oe => VCC,
	padio => ww_p(6));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\p[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_p(7));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Done~reg0_regout\,
	oe => VCC,
	padio => ww_Done);
END structure;


