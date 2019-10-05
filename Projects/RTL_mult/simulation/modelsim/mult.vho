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

-- DATE "04/01/2019 15:00:28"

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

ENTITY 	MultTop IS
    PORT (
	Multiplier : IN std_logic_vector(3 DOWNTO 0);
	Multiplicand : IN std_logic_vector(3 DOWNTO 0);
	Product : OUT std_logic_vector(7 DOWNTO 0);
	Start : IN std_logic;
	Clk : IN std_logic;
	Done : OUT std_logic
	);
END MultTop;

-- Design Ports Information


ARCHITECTURE structure OF MultTop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Multiplier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Multiplicand : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Product : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Start : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Done : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Start~combout\ : std_logic;
SIGNAL \C|state.QtempS~regout\ : std_logic;
SIGNAL \C|state.AddS~regout\ : std_logic;
SIGNAL \C|state.ShiftS~regout\ : std_logic;
SIGNAL \C|state~8_combout\ : std_logic;
SIGNAL \C|Selector0~0_combout\ : std_logic;
SIGNAL \C|state.HaltS~regout\ : std_logic;
SIGNAL \C|state.InitS~regout\ : std_logic;
SIGNAL \A|S[0]~0_combout\ : std_logic;
SIGNAL \A|S[0]~2\ : std_logic;
SIGNAL \A|S[0]~2COUT1_26\ : std_logic;
SIGNAL \A|S[1]~7\ : std_logic;
SIGNAL \A|S[1]~7COUT1_27\ : std_logic;
SIGNAL \A|S[2]~12\ : std_logic;
SIGNAL \A|S[2]~12COUT1_28\ : std_logic;
SIGNAL \A|S[3]~17\ : std_logic;
SIGNAL \A|S[3]~17COUT1_29\ : std_logic;
SIGNAL \A|S[4]~20_combout\ : std_logic;
SIGNAL \A|S[3]~15_combout\ : std_logic;
SIGNAL \ACC|Dinternal[0]~0_combout\ : std_logic;
SIGNAL \A|S[2]~10_combout\ : std_logic;
SIGNAL \A|S[1]~5_combout\ : std_logic;
SIGNAL \Q|Dinternal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACC|Dinternal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \M|Dinternal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Multiplier~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|CNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Multiplicand~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|ALT_INV_state.HaltS~regout\ : std_logic;

BEGIN

ww_Multiplier <= Multiplier;
ww_Multiplicand <= Multiplicand;
Product <= ww_Product;
ww_Start <= Start;
ww_Clk <= Clk;
Done <= ww_Done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\C|ALT_INV_state.HaltS~regout\ <= NOT \C|state.HaltS~regout\;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Start,
	combout => \Start~combout\);

-- Location: LC_X4_Y7_N5
\C|state.QtempS\ : maxv_lcell
-- Equation(s):
-- \C|state.QtempS~regout\ = DFFEAS((\C|state.InitS~regout\) # ((\C|state.ShiftS~regout\ & ((!\C|CNT\(0)) # (!\C|CNT\(1))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bafa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C|state.InitS~regout\,
	datab => \C|CNT\(1),
	datac => \C|state.ShiftS~regout\,
	datad => \C|CNT\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C|state.QtempS~regout\);

-- Location: LC_X4_Y7_N2
\C|state.AddS\ : maxv_lcell
-- Equation(s):
-- \C|state.AddS~regout\ = DFFEAS((((\C|state.QtempS~regout\ & \Q|Dinternal\(0)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

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
	clk => \Clk~combout\,
	datac => \C|state.QtempS~regout\,
	datad => \Q|Dinternal\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C|state.AddS~regout\);

-- Location: LC_X4_Y7_N4
\C|state.ShiftS\ : maxv_lcell
-- Equation(s):
-- \C|state.ShiftS~regout\ = DFFEAS((\C|state.AddS~regout\) # ((\C|state.QtempS~regout\ & ((!\Q|Dinternal\(0))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C|state.QtempS~regout\,
	datab => \C|state.AddS~regout\,
	datad => \Q|Dinternal\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C|state.ShiftS~regout\);

-- Location: LC_X4_Y7_N6
\C|state~8\ : maxv_lcell
-- Equation(s):
-- \C|state~8_combout\ = (((\C|state.ShiftS~regout\) # (\C|state.InitS~regout\)))

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
	datac => \C|state.ShiftS~regout\,
	datad => \C|state.InitS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C|state~8_combout\);

-- Location: LC_X4_Y7_N1
\C|CNT[0]\ : maxv_lcell
-- Equation(s):
-- \C|CNT\(0) = DFFEAS(((!\C|CNT\(0) & ((!\C|state.InitS~regout\)))), GLOBAL(\Clk~combout\), VCC, , \C|state~8_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C|CNT\(0),
	datad => \C|state.InitS~regout\,
	aclr => GND,
	ena => \C|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C|CNT\(0));

-- Location: LC_X4_Y7_N9
\C|CNT[1]\ : maxv_lcell
-- Equation(s):
-- \C|CNT\(1) = DFFEAS((\C|CNT\(1) $ (((\C|CNT\(0))))), GLOBAL(\Clk~combout\), VCC, , \C|state~8_combout\, , , \C|state.InitS~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C|CNT\(1),
	datad => \C|CNT\(0),
	aclr => GND,
	sclr => \C|state.InitS~regout\,
	ena => \C|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C|CNT\(1));

-- Location: LC_X4_Y7_N7
\C|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \C|Selector0~0_combout\ = ((\C|CNT\(1) & ((\C|CNT\(0)))))

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
	datab => \C|CNT\(1),
	datad => \C|CNT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C|Selector0~0_combout\);

-- Location: LC_X4_Y7_N8
\C|state.HaltS\ : maxv_lcell
-- Equation(s):
-- \C|state.HaltS~regout\ = DFFEAS((\Start~combout\ & (((!\C|state.ShiftS~regout\)) # (!\C|Selector0~0_combout\))) # (!\Start~combout\ & (\C|state.HaltS~regout\ & ((!\C|state.ShiftS~regout\) # (!\C|Selector0~0_combout\)))), GLOBAL(\Clk~combout\), VCC, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Start~combout\,
	datab => \C|Selector0~0_combout\,
	datac => \C|state.ShiftS~regout\,
	datad => \C|state.HaltS~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C|state.HaltS~regout\);

-- Location: LC_X4_Y7_N3
\C|state.InitS\ : maxv_lcell
-- Equation(s):
-- \C|state.InitS~regout\ = DFFEAS((((\Start~combout\ & !\C|state.HaltS~regout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

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
	clk => \Clk~combout\,
	datac => \Start~combout\,
	datad => \C|state.HaltS~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C|state.InitS~regout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplier[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplier(0),
	combout => \Multiplier~combout\(0));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplier[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplier(2),
	combout => \Multiplier~combout\(2));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplicand[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplicand(0),
	combout => \Multiplicand~combout\(0));

-- Location: LC_X3_Y7_N2
\M|Dinternal[0]\ : maxv_lcell
-- Equation(s):
-- \M|Dinternal\(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , \C|state.InitS~regout\, \Multiplicand~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \Multiplicand~combout\(0),
	aclr => GND,
	sload => VCC,
	ena => \C|state.InitS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M|Dinternal\(0));

-- Location: LC_X2_Y7_N5
\A|S[0]~0\ : maxv_lcell
-- Equation(s):
-- \A|S[0]~0_combout\ = \ACC|Dinternal\(0) $ ((\M|Dinternal\(0)))
-- \A|S[0]~2\ = CARRY((\ACC|Dinternal\(0) & (\M|Dinternal\(0))))
-- \A|S[0]~2COUT1_26\ = CARRY((\ACC|Dinternal\(0) & (\M|Dinternal\(0))))

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
	dataa => \ACC|Dinternal\(0),
	datab => \M|Dinternal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A|S[0]~0_combout\,
	cout0 => \A|S[0]~2\,
	cout1 => \A|S[0]~2COUT1_26\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplicand[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplicand(3),
	combout => \Multiplicand~combout\(3));

-- Location: LC_X3_Y7_N0
\M|Dinternal[3]\ : maxv_lcell
-- Equation(s):
-- \M|Dinternal\(3) = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , \C|state.InitS~regout\, \Multiplicand~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \Multiplicand~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \C|state.InitS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M|Dinternal\(3));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplicand[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplicand(2),
	combout => \Multiplicand~combout\(2));

-- Location: LC_X3_Y7_N7
\M|Dinternal[2]\ : maxv_lcell
-- Equation(s):
-- \M|Dinternal\(2) = DFFEAS((((\Multiplicand~combout\(2)))), GLOBAL(\Clk~combout\), VCC, , \C|state.InitS~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \Multiplicand~combout\(2),
	aclr => GND,
	ena => \C|state.InitS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M|Dinternal\(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplicand[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplicand(1),
	combout => \Multiplicand~combout\(1));

-- Location: LC_X3_Y7_N1
\M|Dinternal[1]\ : maxv_lcell
-- Equation(s):
-- \M|Dinternal\(1) = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , \C|state.InitS~regout\, \Multiplicand~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \Multiplicand~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \C|state.InitS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M|Dinternal\(1));

-- Location: LC_X2_Y7_N6
\A|S[1]~5\ : maxv_lcell
-- Equation(s):
-- \A|S[1]~5_combout\ = \M|Dinternal\(1) $ (\ACC|Dinternal\(1) $ ((\A|S[0]~2\)))
-- \A|S[1]~7\ = CARRY((\M|Dinternal\(1) & (!\ACC|Dinternal\(1) & !\A|S[0]~2\)) # (!\M|Dinternal\(1) & ((!\A|S[0]~2\) # (!\ACC|Dinternal\(1)))))
-- \A|S[1]~7COUT1_27\ = CARRY((\M|Dinternal\(1) & (!\ACC|Dinternal\(1) & !\A|S[0]~2COUT1_26\)) # (!\M|Dinternal\(1) & ((!\A|S[0]~2COUT1_26\) # (!\ACC|Dinternal\(1)))))

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
	dataa => \M|Dinternal\(1),
	datab => \ACC|Dinternal\(1),
	cin0 => \A|S[0]~2\,
	cin1 => \A|S[0]~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A|S[1]~5_combout\,
	cout0 => \A|S[1]~7\,
	cout1 => \A|S[1]~7COUT1_27\);

-- Location: LC_X2_Y7_N7
\A|S[2]~10\ : maxv_lcell
-- Equation(s):
-- \A|S[2]~10_combout\ = \M|Dinternal\(2) $ (\ACC|Dinternal\(2) $ ((!\A|S[1]~7\)))
-- \A|S[2]~12\ = CARRY((\M|Dinternal\(2) & ((\ACC|Dinternal\(2)) # (!\A|S[1]~7\))) # (!\M|Dinternal\(2) & (\ACC|Dinternal\(2) & !\A|S[1]~7\)))
-- \A|S[2]~12COUT1_28\ = CARRY((\M|Dinternal\(2) & ((\ACC|Dinternal\(2)) # (!\A|S[1]~7COUT1_27\))) # (!\M|Dinternal\(2) & (\ACC|Dinternal\(2) & !\A|S[1]~7COUT1_27\)))

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
	dataa => \M|Dinternal\(2),
	datab => \ACC|Dinternal\(2),
	cin0 => \A|S[1]~7\,
	cin1 => \A|S[1]~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A|S[2]~10_combout\,
	cout0 => \A|S[2]~12\,
	cout1 => \A|S[2]~12COUT1_28\);

-- Location: LC_X2_Y7_N8
\A|S[3]~15\ : maxv_lcell
-- Equation(s):
-- \A|S[3]~15_combout\ = \M|Dinternal\(3) $ (\ACC|Dinternal\(3) $ ((\A|S[2]~12\)))
-- \A|S[3]~17\ = CARRY((\M|Dinternal\(3) & (!\ACC|Dinternal\(3) & !\A|S[2]~12\)) # (!\M|Dinternal\(3) & ((!\A|S[2]~12\) # (!\ACC|Dinternal\(3)))))
-- \A|S[3]~17COUT1_29\ = CARRY((\M|Dinternal\(3) & (!\ACC|Dinternal\(3) & !\A|S[2]~12COUT1_28\)) # (!\M|Dinternal\(3) & ((!\A|S[2]~12COUT1_28\) # (!\ACC|Dinternal\(3)))))

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
	dataa => \M|Dinternal\(3),
	datab => \ACC|Dinternal\(3),
	cin0 => \A|S[2]~12\,
	cin1 => \A|S[2]~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A|S[3]~15_combout\,
	cout0 => \A|S[3]~17\,
	cout1 => \A|S[3]~17COUT1_29\);

-- Location: LC_X2_Y7_N9
\A|S[4]~20\ : maxv_lcell
-- Equation(s):
-- \A|S[4]~20_combout\ = (((!\A|S[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \A|S[3]~17\,
	cin1 => \A|S[3]~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A|S[4]~20_combout\);

-- Location: LC_X2_Y7_N3
\ACC|Dinternal[4]\ : maxv_lcell
-- Equation(s):
-- \ACC|Dinternal\(4) = DFFEAS((\C|state.AddS~regout\ & (((\A|S[4]~20_combout\)))) # (!\C|state.AddS~regout\ & (\ACC|Dinternal\(4) & (!\C|state.ShiftS~regout\))), GLOBAL(\Clk~combout\), VCC, , , , , \C|state.InitS~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \ACC|Dinternal\(4),
	datab => \C|state.AddS~regout\,
	datac => \C|state.ShiftS~regout\,
	datad => \A|S[4]~20_combout\,
	aclr => GND,
	sclr => \C|state.InitS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACC|Dinternal\(4));

-- Location: LC_X3_Y7_N6
\ACC|Dinternal[0]~0\ : maxv_lcell
-- Equation(s):
-- \ACC|Dinternal[0]~0_combout\ = ((\C|state.AddS~regout\) # ((\C|state.InitS~regout\) # (\C|state.ShiftS~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C|state.AddS~regout\,
	datac => \C|state.InitS~regout\,
	datad => \C|state.ShiftS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ACC|Dinternal[0]~0_combout\);

-- Location: LC_X2_Y7_N0
\ACC|Dinternal[3]\ : maxv_lcell
-- Equation(s):
-- \ACC|Dinternal\(3) = DFFEAS((\C|state.AddS~regout\ & (((\A|S[3]~15_combout\)))) # (!\C|state.AddS~regout\ & (\ACC|Dinternal\(4))), GLOBAL(\Clk~combout\), VCC, , \ACC|Dinternal[0]~0_combout\, , , \C|state.InitS~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \ACC|Dinternal\(4),
	datab => \C|state.AddS~regout\,
	datad => \A|S[3]~15_combout\,
	aclr => GND,
	sclr => \C|state.InitS~regout\,
	ena => \ACC|Dinternal[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACC|Dinternal\(3));

-- Location: LC_X2_Y7_N1
\ACC|Dinternal[2]\ : maxv_lcell
-- Equation(s):
-- \ACC|Dinternal\(2) = DFFEAS(((\C|state.AddS~regout\ & ((\A|S[2]~10_combout\))) # (!\C|state.AddS~regout\ & (\ACC|Dinternal\(3)))), GLOBAL(\Clk~combout\), VCC, , \ACC|Dinternal[0]~0_combout\, , , \C|state.InitS~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \ACC|Dinternal\(3),
	datac => \A|S[2]~10_combout\,
	datad => \C|state.AddS~regout\,
	aclr => GND,
	sclr => \C|state.InitS~regout\,
	ena => \ACC|Dinternal[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACC|Dinternal\(2));

-- Location: LC_X2_Y7_N2
\ACC|Dinternal[1]\ : maxv_lcell
-- Equation(s):
-- \ACC|Dinternal\(1) = DFFEAS(((\C|state.AddS~regout\ & ((\A|S[1]~5_combout\))) # (!\C|state.AddS~regout\ & (\ACC|Dinternal\(2)))), GLOBAL(\Clk~combout\), VCC, , \ACC|Dinternal[0]~0_combout\, , , \C|state.InitS~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \ACC|Dinternal\(2),
	datac => \A|S[1]~5_combout\,
	datad => \C|state.AddS~regout\,
	aclr => GND,
	sclr => \C|state.InitS~regout\,
	ena => \ACC|Dinternal[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACC|Dinternal\(1));

-- Location: LC_X2_Y7_N4
\ACC|Dinternal[0]\ : maxv_lcell
-- Equation(s):
-- \ACC|Dinternal\(0) = DFFEAS(((\C|state.AddS~regout\ & (\A|S[0]~0_combout\)) # (!\C|state.AddS~regout\ & ((\ACC|Dinternal\(1))))), GLOBAL(\Clk~combout\), VCC, , \ACC|Dinternal[0]~0_combout\, , , \C|state.InitS~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C|state.AddS~regout\,
	datac => \A|S[0]~0_combout\,
	datad => \ACC|Dinternal\(1),
	aclr => GND,
	sclr => \C|state.InitS~regout\,
	ena => \ACC|Dinternal[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACC|Dinternal\(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplier[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplier(3),
	combout => \Multiplier~combout\(3));

-- Location: LC_X3_Y7_N9
\Q|Dinternal[3]\ : maxv_lcell
-- Equation(s):
-- \Q|Dinternal\(3) = DFFEAS(((\C|state.InitS~regout\ & ((\Multiplier~combout\(3)))) # (!\C|state.InitS~regout\ & (\ACC|Dinternal\(0)))), GLOBAL(\Clk~combout\), VCC, , \C|state~8_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \ACC|Dinternal\(0),
	datac => \C|state.InitS~regout\,
	datad => \Multiplier~combout\(3),
	aclr => GND,
	ena => \C|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q|Dinternal\(3));

-- Location: LC_X3_Y7_N5
\Q|Dinternal[2]\ : maxv_lcell
-- Equation(s):
-- \Q|Dinternal\(2) = DFFEAS((\C|state.InitS~regout\ & (((\Multiplier~combout\(2))))) # (!\C|state.InitS~regout\ & (((\Q|Dinternal\(3))))), GLOBAL(\Clk~combout\), VCC, , \C|state~8_combout\, , , , )

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
	clk => \Clk~combout\,
	dataa => \C|state.InitS~regout\,
	datac => \Multiplier~combout\(2),
	datad => \Q|Dinternal\(3),
	aclr => GND,
	ena => \C|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q|Dinternal\(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplier[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplier(1),
	combout => \Multiplier~combout\(1));

-- Location: LC_X3_Y7_N3
\Q|Dinternal[1]\ : maxv_lcell
-- Equation(s):
-- \Q|Dinternal\(1) = DFFEAS(((\C|state.InitS~regout\ & ((\Multiplier~combout\(1)))) # (!\C|state.InitS~regout\ & (\Q|Dinternal\(2)))), GLOBAL(\Clk~combout\), VCC, , \C|state~8_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Q|Dinternal\(2),
	datac => \C|state.InitS~regout\,
	datad => \Multiplier~combout\(1),
	aclr => GND,
	ena => \C|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q|Dinternal\(1));

-- Location: LC_X3_Y7_N4
\Q|Dinternal[0]\ : maxv_lcell
-- Equation(s):
-- \Q|Dinternal\(0) = DFFEAS((\C|state.InitS~regout\ & (((\Multiplier~combout\(0))))) # (!\C|state.InitS~regout\ & (((\Q|Dinternal\(1))))), GLOBAL(\Clk~combout\), VCC, , \C|state~8_combout\, , , , )

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
	clk => \Clk~combout\,
	dataa => \C|state.InitS~regout\,
	datac => \Multiplier~combout\(0),
	datad => \Q|Dinternal\(1),
	aclr => GND,
	ena => \C|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q|Dinternal\(0));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Product[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Q|Dinternal\(0),
	oe => VCC,
	padio => ww_Product(0));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Product[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Q|Dinternal\(1),
	oe => VCC,
	padio => ww_Product(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Product[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Q|Dinternal\(2),
	oe => VCC,
	padio => ww_Product(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Product[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Q|Dinternal\(3),
	oe => VCC,
	padio => ww_Product(3));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Product[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ACC|Dinternal\(0),
	oe => VCC,
	padio => ww_Product(4));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Product[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ACC|Dinternal\(1),
	oe => VCC,
	padio => ww_Product(5));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Product[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ACC|Dinternal\(2),
	oe => VCC,
	padio => ww_Product(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Product[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ACC|Dinternal\(3),
	oe => VCC,
	padio => ww_Product(7));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \C|ALT_INV_state.HaltS~regout\,
	oe => VCC,
	padio => ww_Done);
END structure;


