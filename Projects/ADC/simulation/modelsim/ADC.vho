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

-- DATE "05/02/2019 16:41:07"

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

ENTITY 	ADC_b IS
    PORT (
	CS : OUT std_logic;
	RD : OUT std_logic;
	WR : OUT std_logic;
	ADC_b_out : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	INTR : IN std_logic;
	dac_in : OUT std_logic_vector(7 DOWNTO 0)
	);
END ADC_b;

-- Design Ports Information


ARCHITECTURE structure OF ADC_b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_ADC_b_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_INTR : std_logic;
SIGNAL ww_dac_in : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add6~40\ : std_logic;
SIGNAL \coun1|Add0~187\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \Count[0]~61\ : std_logic;
SIGNAL \Count[1]~63\ : std_logic;
SIGNAL \Count[1]~63COUT1_65\ : std_logic;
SIGNAL \Count[2]~55\ : std_logic;
SIGNAL \Count[2]~55COUT1_66\ : std_logic;
SIGNAL \Count[3]~57\ : std_logic;
SIGNAL \Count[3]~57COUT1_67\ : std_logic;
SIGNAL \Count[4]~39\ : std_logic;
SIGNAL \Count[4]~39COUT1_68\ : std_logic;
SIGNAL \Count[5]~41\ : std_logic;
SIGNAL \Count[6]~53\ : std_logic;
SIGNAL \Count[6]~53COUT1_69\ : std_logic;
SIGNAL \Count[7]~43\ : std_logic;
SIGNAL \Count[7]~43COUT1_70\ : std_logic;
SIGNAL \Count[8]~45\ : std_logic;
SIGNAL \Count[8]~45COUT1_71\ : std_logic;
SIGNAL \Count[9]~47\ : std_logic;
SIGNAL \Count[9]~47COUT1_72\ : std_logic;
SIGNAL \Count[10]~31\ : std_logic;
SIGNAL \Count[11]~33\ : std_logic;
SIGNAL \Count[11]~33COUT1_73\ : std_logic;
SIGNAL \Count[12]~35\ : std_logic;
SIGNAL \Count[12]~35COUT1_74\ : std_logic;
SIGNAL \Count[13]~37\ : std_logic;
SIGNAL \Count[13]~37COUT1_75\ : std_logic;
SIGNAL \Count[14]~49\ : std_logic;
SIGNAL \Count[14]~49COUT1_76\ : std_logic;
SIGNAL \Count[15]~51\ : std_logic;
SIGNAL \Count[16]~1\ : std_logic;
SIGNAL \Count[16]~1COUT1_77\ : std_logic;
SIGNAL \Count[17]~3\ : std_logic;
SIGNAL \Count[17]~3COUT1_78\ : std_logic;
SIGNAL \Count[18]~5\ : std_logic;
SIGNAL \Count[18]~5COUT1_79\ : std_logic;
SIGNAL \Count[19]~7\ : std_logic;
SIGNAL \Count[19]~7COUT1_80\ : std_logic;
SIGNAL \Count[20]~9\ : std_logic;
SIGNAL \Count[21]~11\ : std_logic;
SIGNAL \Count[21]~11COUT1_81\ : std_logic;
SIGNAL \Count[22]~13\ : std_logic;
SIGNAL \Count[22]~13COUT1_82\ : std_logic;
SIGNAL \Count[23]~15\ : std_logic;
SIGNAL \Count[23]~15COUT1_83\ : std_logic;
SIGNAL \Count[24]~17\ : std_logic;
SIGNAL \Count[24]~17COUT1_84\ : std_logic;
SIGNAL \Count[25]~19\ : std_logic;
SIGNAL \Count[26]~21\ : std_logic;
SIGNAL \Count[26]~21COUT1_85\ : std_logic;
SIGNAL \Count[27]~23\ : std_logic;
SIGNAL \Count[27]~23COUT1_86\ : std_logic;
SIGNAL \Count[28]~25\ : std_logic;
SIGNAL \Count[28]~25COUT1_87\ : std_logic;
SIGNAL \Count[29]~27\ : std_logic;
SIGNAL \Count[29]~27COUT1_88\ : std_logic;
SIGNAL \Count[30]~29\ : std_logic;
SIGNAL \INTR~combout\ : std_logic;
SIGNAL \coun1|Add0~189_cout\ : std_logic;
SIGNAL \coun1|Add0~1_combout\ : std_logic;
SIGNAL \coun1|Add0~3\ : std_logic;
SIGNAL \coun1|Add0~3COUT1_193\ : std_logic;
SIGNAL \coun1|Add0~7_combout\ : std_logic;
SIGNAL \coun1|Add0~9\ : std_logic;
SIGNAL \coun1|Add0~9COUT1_194\ : std_logic;
SIGNAL \coun1|Add0~13_combout\ : std_logic;
SIGNAL \coun1|Add0~15\ : std_logic;
SIGNAL \coun1|Add0~15COUT1_195\ : std_logic;
SIGNAL \coun1|Add0~19_combout\ : std_logic;
SIGNAL \coun1|Add0~21\ : std_logic;
SIGNAL \coun1|Add0~21COUT1_196\ : std_logic;
SIGNAL \coun1|Add0~115_combout\ : std_logic;
SIGNAL \coun1|Add0~117\ : std_logic;
SIGNAL \coun1|Add0~109_combout\ : std_logic;
SIGNAL \coun1|Add0~111\ : std_logic;
SIGNAL \coun1|Add0~111COUT1_197\ : std_logic;
SIGNAL \coun1|Add0~103_combout\ : std_logic;
SIGNAL \coun1|Add0~105\ : std_logic;
SIGNAL \coun1|Add0~105COUT1_198\ : std_logic;
SIGNAL \coun1|Add0~97_combout\ : std_logic;
SIGNAL \coun1|Add0~99\ : std_logic;
SIGNAL \coun1|Add0~99COUT1_199\ : std_logic;
SIGNAL \coun1|Add0~91_combout\ : std_logic;
SIGNAL \coun1|Add0~93\ : std_logic;
SIGNAL \coun1|Add0~93COUT1_200\ : std_logic;
SIGNAL \coun1|Add0~85_combout\ : std_logic;
SIGNAL \coun1|Add0~87\ : std_logic;
SIGNAL \coun1|Add0~79_combout\ : std_logic;
SIGNAL \coun1|Add0~81\ : std_logic;
SIGNAL \coun1|Add0~81COUT1_201\ : std_logic;
SIGNAL \coun1|Add0~73_combout\ : std_logic;
SIGNAL \LessThan3~7\ : std_logic;
SIGNAL \coun1|Add0~75\ : std_logic;
SIGNAL \coun1|Add0~75COUT1_202\ : std_logic;
SIGNAL \coun1|Add0~67_combout\ : std_logic;
SIGNAL \coun1|Add0~69\ : std_logic;
SIGNAL \coun1|Add0~69COUT1_203\ : std_logic;
SIGNAL \coun1|Add0~61_combout\ : std_logic;
SIGNAL \coun1|Add0~63\ : std_logic;
SIGNAL \coun1|Add0~63COUT1_204\ : std_logic;
SIGNAL \coun1|Add0~55_combout\ : std_logic;
SIGNAL \coun1|Add0~57\ : std_logic;
SIGNAL \coun1|Add0~49_combout\ : std_logic;
SIGNAL \LessThan3~6\ : std_logic;
SIGNAL \coun1|Add0~51\ : std_logic;
SIGNAL \coun1|Add0~51COUT1_205\ : std_logic;
SIGNAL \coun1|Add0~43_combout\ : std_logic;
SIGNAL \coun1|Add0~45\ : std_logic;
SIGNAL \coun1|Add0~45COUT1_206\ : std_logic;
SIGNAL \coun1|Add0~37_combout\ : std_logic;
SIGNAL \coun1|Add0~39\ : std_logic;
SIGNAL \coun1|Add0~39COUT1_207\ : std_logic;
SIGNAL \coun1|Add0~31_combout\ : std_logic;
SIGNAL \coun1|Add0~33\ : std_logic;
SIGNAL \coun1|Add0~33COUT1_208\ : std_logic;
SIGNAL \coun1|Add0~25_combout\ : std_logic;
SIGNAL \LessThan3~5\ : std_logic;
SIGNAL \LessThan3~8\ : std_logic;
SIGNAL \LessThan3~9_combout\ : std_logic;
SIGNAL \coun1|Add0~27\ : std_logic;
SIGNAL \coun1|Add0~121_combout\ : std_logic;
SIGNAL \coun1|Add0~123\ : std_logic;
SIGNAL \coun1|Add0~123COUT1_209\ : std_logic;
SIGNAL \coun1|Add0~127_combout\ : std_logic;
SIGNAL \coun1|Add0~129\ : std_logic;
SIGNAL \coun1|Add0~129COUT1_210\ : std_logic;
SIGNAL \coun1|Add0~133_combout\ : std_logic;
SIGNAL \coun1|Add0~135\ : std_logic;
SIGNAL \coun1|Add0~135COUT1_211\ : std_logic;
SIGNAL \coun1|Add0~139_combout\ : std_logic;
SIGNAL \coun1|Add0~141\ : std_logic;
SIGNAL \coun1|Add0~141COUT1_212\ : std_logic;
SIGNAL \coun1|Add0~145_combout\ : std_logic;
SIGNAL \coun1|Add0~147\ : std_logic;
SIGNAL \coun1|Add0~151_combout\ : std_logic;
SIGNAL \coun1|Add0~153\ : std_logic;
SIGNAL \coun1|Add0~153COUT1_213\ : std_logic;
SIGNAL \coun1|Add0~157_combout\ : std_logic;
SIGNAL \coun1|Add0~159\ : std_logic;
SIGNAL \coun1|Add0~159COUT1_214\ : std_logic;
SIGNAL \coun1|Add0~163_combout\ : std_logic;
SIGNAL \coun1|Add0~165\ : std_logic;
SIGNAL \coun1|Add0~165COUT1_215\ : std_logic;
SIGNAL \coun1|Add0~169_combout\ : std_logic;
SIGNAL \coun1|Add0~171\ : std_logic;
SIGNAL \coun1|Add0~171COUT1_216\ : std_logic;
SIGNAL \coun1|Add0~175_combout\ : std_logic;
SIGNAL \LessThan3~11\ : std_logic;
SIGNAL \LessThan3~10\ : std_logic;
SIGNAL \LessThan3~12\ : std_logic;
SIGNAL \coun1|Add0~177\ : std_logic;
SIGNAL \coun1|Add0~181_combout\ : std_logic;
SIGNAL \LessThan3~13\ : std_logic;
SIGNAL \LessThan3~14\ : std_logic;
SIGNAL \LessThan3~4\ : std_logic;
SIGNAL \LessThan5~0\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \fsm_state.wrt~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \fsm_state.css2~regout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \fsm_state.css3~regout\ : std_logic;
SIGNAL \LessThan3~15_combout\ : std_logic;
SIGNAL \fsm_state.css4~regout\ : std_logic;
SIGNAL \LessThan3~16\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \fsm_state.red~regout\ : std_logic;
SIGNAL \LessThan5~1\ : std_logic;
SIGNAL \t8[0]~0_combout\ : std_logic;
SIGNAL \fsm_state.css5~regout\ : std_logic;
SIGNAL \LessThan7~6_combout\ : std_logic;
SIGNAL \LessThan7~7_combout\ : std_logic;
SIGNAL \LessThan7~8_combout\ : std_logic;
SIGNAL \LessThan7~9_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \fsm_state.stay~regout\ : std_logic;
SIGNAL \nq~0_combout\ : std_logic;
SIGNAL \LessThan7~5_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \fsm_state.st~regout\ : std_logic;
SIGNAL \fsm_state.css~regout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \CS$latch~combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \RD$latch~combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \WR$latch~combout\ : std_logic;
SIGNAL \t1[0]~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \t8[0]~1_combout\ : std_logic;
SIGNAL \t8[0]~2_combout\ : std_logic;
SIGNAL \t1[0]~1_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~42COUT1_46\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_47\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_48\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_46\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_47\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_48\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~47COUT1_51\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~42COUT1_52\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~37COUT1_53\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~42COUT1_46\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~37COUT1_47\ : std_logic;
SIGNAL \Add5~32\ : std_logic;
SIGNAL \Add5~32COUT1_48\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~42COUT1_46\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~37COUT1_47\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~32COUT1_48\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~35_combout\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~47COUT1_51\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~42COUT1_52\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~37COUT1_53\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add4~45_combout\ : std_logic;
SIGNAL \Add6~52_cout0\ : std_logic;
SIGNAL \Add6~52COUT1_56\ : std_logic;
SIGNAL \Add6~47_cout0\ : std_logic;
SIGNAL \Add6~47COUT1_57\ : std_logic;
SIGNAL \Add6~42_cout0\ : std_logic;
SIGNAL \Add6~42COUT1_58\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \dac_in[0]$latch~combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~2COUT1_49\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~2COUT1_49\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~2COUT1_54\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_49\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_49\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_54\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~2COUT1_59\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \dac_in[1]$latch~combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \dac_in[2]$latch~combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_50\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_50\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_55\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~12COUT1_50\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_50\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~12COUT1_55\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_60\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \dac_in[3]$latch~combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_51\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_51\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~17COUT1_56\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~17COUT1_51\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~17COUT1_51\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~17COUT1_56\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~17COUT1_61\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \dac_in[4]$latch~combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~22COUT1_52\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~22COUT1_52\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~22COUT1_57\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_52\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_52\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~22COUT1_57\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~22COUT1_62\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \dac_in[5]$latch~combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~27COUT1_58\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~27COUT1_58\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~27COUT1_63\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \dac_in[6]$latch~combout\ : std_logic;
SIGNAL \Add6~32\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \dac_in[7]$latch~combout\ : std_logic;
SIGNAL \coun1|timer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL t3 : std_logic_vector(31 DOWNTO 0);
SIGNAL Count : std_logic_vector(31 DOWNTO 0);
SIGNAL \coun1|Count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL t1 : std_logic_vector(31 DOWNTO 0);
SIGNAL t2 : std_logic_vector(31 DOWNTO 0);
SIGNAL t4 : std_logic_vector(31 DOWNTO 0);
SIGNAL t6 : std_logic_vector(31 DOWNTO 0);
SIGNAL t5 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ADC_b_out~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL dac_prev : std_logic_vector(7 DOWNTO 0);
SIGNAL t7 : std_logic_vector(31 DOWNTO 0);
SIGNAL t8 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_INTR~combout\ : std_logic;

BEGIN

CS <= ww_CS;
RD <= ww_RD;
WR <= ww_WR;
ww_ADC_b_out <= ADC_b_out;
ww_clk <= clk;
ww_reset <= reset;
ww_INTR <= INTR;
dac_in <= ww_dac_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_INTR~combout\ <= NOT \INTR~combout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X7_Y5_N4
\Count[0]\ : maxv_lcell
-- Equation(s):
-- Count(0) = DFFEAS(((!\nq~0_combout\)) # (!Count(0)), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[0]~61\ = CARRY((Count(0) & (\nq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7788",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(0),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(0),
	cout => \Count[0]~61\);

-- Location: LC_X7_Y5_N5
\Count[1]\ : maxv_lcell
-- Equation(s):
-- Count(1) = DFFEAS(\Count[0]~61\ $ (((Count(1) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[1]~63\ = CARRY(((!\Count[0]~61\) # (!\nq~0_combout\)) # (!Count(1)))
-- \Count[1]~63COUT1_65\ = CARRY(((!\Count[0]~61\) # (!\nq~0_combout\)) # (!Count(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(1),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[0]~61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(1),
	cout0 => \Count[1]~63\,
	cout1 => \Count[1]~63COUT1_65\);

-- Location: LC_X7_Y5_N6
\Count[2]\ : maxv_lcell
-- Equation(s):
-- Count(2) = DFFEAS((!\Count[0]~61\ & \Count[1]~63\) # (\Count[0]~61\ & \Count[1]~63COUT1_65\) $ ((((!\nq~0_combout\)) # (!Count(2)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[2]~55\ = CARRY((Count(2) & (\nq~0_combout\ & !\Count[1]~63\)))
-- \Count[2]~55COUT1_66\ = CARRY((Count(2) & (\nq~0_combout\ & !\Count[1]~63COUT1_65\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(2),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[0]~61\,
	cin0 => \Count[1]~63\,
	cin1 => \Count[1]~63COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(2),
	cout0 => \Count[2]~55\,
	cout1 => \Count[2]~55COUT1_66\);

-- Location: LC_X7_Y5_N7
\Count[3]\ : maxv_lcell
-- Equation(s):
-- Count(3) = DFFEAS((!\Count[0]~61\ & \Count[2]~55\) # (\Count[0]~61\ & \Count[2]~55COUT1_66\) $ (((Count(3) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[3]~57\ = CARRY(((!\Count[2]~55\) # (!\nq~0_combout\)) # (!Count(3)))
-- \Count[3]~57COUT1_67\ = CARRY(((!\Count[2]~55COUT1_66\) # (!\nq~0_combout\)) # (!Count(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(3),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[0]~61\,
	cin0 => \Count[2]~55\,
	cin1 => \Count[2]~55COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(3),
	cout0 => \Count[3]~57\,
	cout1 => \Count[3]~57COUT1_67\);

-- Location: LC_X7_Y5_N8
\Count[4]\ : maxv_lcell
-- Equation(s):
-- Count(4) = DFFEAS((!\Count[0]~61\ & \Count[3]~57\) # (\Count[0]~61\ & \Count[3]~57COUT1_67\) $ ((((!\nq~0_combout\)) # (!Count(4)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[4]~39\ = CARRY((Count(4) & (\nq~0_combout\ & !\Count[3]~57\)))
-- \Count[4]~39COUT1_68\ = CARRY((Count(4) & (\nq~0_combout\ & !\Count[3]~57COUT1_67\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(4),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[0]~61\,
	cin0 => \Count[3]~57\,
	cin1 => \Count[3]~57COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(4),
	cout0 => \Count[4]~39\,
	cout1 => \Count[4]~39COUT1_68\);

-- Location: LC_X7_Y5_N9
\Count[5]\ : maxv_lcell
-- Equation(s):
-- Count(5) = DFFEAS((!\Count[0]~61\ & \Count[4]~39\) # (\Count[0]~61\ & \Count[4]~39COUT1_68\) $ (((Count(5) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[5]~41\ = CARRY(((!\Count[4]~39COUT1_68\) # (!\nq~0_combout\)) # (!Count(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(5),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[0]~61\,
	cin0 => \Count[4]~39\,
	cin1 => \Count[4]~39COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(5),
	cout => \Count[5]~41\);

-- Location: LC_X8_Y5_N0
\Count[6]\ : maxv_lcell
-- Equation(s):
-- Count(6) = DFFEAS(\Count[5]~41\ $ ((((!\nq~0_combout\)) # (!Count(6)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[6]~53\ = CARRY((Count(6) & (\nq~0_combout\ & !\Count[5]~41\)))
-- \Count[6]~53COUT1_69\ = CARRY((Count(6) & (\nq~0_combout\ & !\Count[5]~41\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(6),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[5]~41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(6),
	cout0 => \Count[6]~53\,
	cout1 => \Count[6]~53COUT1_69\);

-- Location: LC_X8_Y5_N1
\Count[7]\ : maxv_lcell
-- Equation(s):
-- Count(7) = DFFEAS((!\Count[5]~41\ & \Count[6]~53\) # (\Count[5]~41\ & \Count[6]~53COUT1_69\) $ (((Count(7) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[7]~43\ = CARRY(((!\Count[6]~53\) # (!\nq~0_combout\)) # (!Count(7)))
-- \Count[7]~43COUT1_70\ = CARRY(((!\Count[6]~53COUT1_69\) # (!\nq~0_combout\)) # (!Count(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(7),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[5]~41\,
	cin0 => \Count[6]~53\,
	cin1 => \Count[6]~53COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(7),
	cout0 => \Count[7]~43\,
	cout1 => \Count[7]~43COUT1_70\);

-- Location: LC_X8_Y5_N2
\Count[8]\ : maxv_lcell
-- Equation(s):
-- Count(8) = DFFEAS((!\Count[5]~41\ & \Count[7]~43\) # (\Count[5]~41\ & \Count[7]~43COUT1_70\) $ ((((!Count(8))) # (!\nq~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[8]~45\ = CARRY((\nq~0_combout\ & (Count(8) & !\Count[7]~43\)))
-- \Count[8]~45COUT1_71\ = CARRY((\nq~0_combout\ & (Count(8) & !\Count[7]~43COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \nq~0_combout\,
	datab => Count(8),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[5]~41\,
	cin0 => \Count[7]~43\,
	cin1 => \Count[7]~43COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(8),
	cout0 => \Count[8]~45\,
	cout1 => \Count[8]~45COUT1_71\);

-- Location: LC_X8_Y5_N3
\Count[9]\ : maxv_lcell
-- Equation(s):
-- Count(9) = DFFEAS((!\Count[5]~41\ & \Count[8]~45\) # (\Count[5]~41\ & \Count[8]~45COUT1_71\) $ (((Count(9) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[9]~47\ = CARRY(((!\Count[8]~45\) # (!\nq~0_combout\)) # (!Count(9)))
-- \Count[9]~47COUT1_72\ = CARRY(((!\Count[8]~45COUT1_71\) # (!\nq~0_combout\)) # (!Count(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(9),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[5]~41\,
	cin0 => \Count[8]~45\,
	cin1 => \Count[8]~45COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(9),
	cout0 => \Count[9]~47\,
	cout1 => \Count[9]~47COUT1_72\);

-- Location: LC_X8_Y5_N4
\Count[10]\ : maxv_lcell
-- Equation(s):
-- Count(10) = DFFEAS((!\Count[5]~41\ & \Count[9]~47\) # (\Count[5]~41\ & \Count[9]~47COUT1_72\) $ ((((!\nq~0_combout\)) # (!Count(10)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[10]~31\ = CARRY((Count(10) & (\nq~0_combout\ & !\Count[9]~47COUT1_72\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(10),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[5]~41\,
	cin0 => \Count[9]~47\,
	cin1 => \Count[9]~47COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(10),
	cout => \Count[10]~31\);

-- Location: LC_X8_Y5_N5
\Count[11]\ : maxv_lcell
-- Equation(s):
-- Count(11) = DFFEAS(\Count[10]~31\ $ (((Count(11) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[11]~33\ = CARRY(((!\Count[10]~31\) # (!\nq~0_combout\)) # (!Count(11)))
-- \Count[11]~33COUT1_73\ = CARRY(((!\Count[10]~31\) # (!\nq~0_combout\)) # (!Count(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(11),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[10]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(11),
	cout0 => \Count[11]~33\,
	cout1 => \Count[11]~33COUT1_73\);

-- Location: LC_X8_Y5_N6
\Count[12]\ : maxv_lcell
-- Equation(s):
-- Count(12) = DFFEAS((!\Count[10]~31\ & \Count[11]~33\) # (\Count[10]~31\ & \Count[11]~33COUT1_73\) $ ((((!\nq~0_combout\)) # (!Count(12)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[12]~35\ = CARRY((Count(12) & (\nq~0_combout\ & !\Count[11]~33\)))
-- \Count[12]~35COUT1_74\ = CARRY((Count(12) & (\nq~0_combout\ & !\Count[11]~33COUT1_73\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(12),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[10]~31\,
	cin0 => \Count[11]~33\,
	cin1 => \Count[11]~33COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(12),
	cout0 => \Count[12]~35\,
	cout1 => \Count[12]~35COUT1_74\);

-- Location: LC_X8_Y5_N7
\Count[13]\ : maxv_lcell
-- Equation(s):
-- Count(13) = DFFEAS((!\Count[10]~31\ & \Count[12]~35\) # (\Count[10]~31\ & \Count[12]~35COUT1_74\) $ (((\nq~0_combout\ & (Count(13))))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[13]~37\ = CARRY(((!\Count[12]~35\) # (!Count(13))) # (!\nq~0_combout\))
-- \Count[13]~37COUT1_75\ = CARRY(((!\Count[12]~35COUT1_74\) # (!Count(13))) # (!\nq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \nq~0_combout\,
	datab => Count(13),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[10]~31\,
	cin0 => \Count[12]~35\,
	cin1 => \Count[12]~35COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(13),
	cout0 => \Count[13]~37\,
	cout1 => \Count[13]~37COUT1_75\);

-- Location: LC_X8_Y5_N8
\Count[14]\ : maxv_lcell
-- Equation(s):
-- Count(14) = DFFEAS((!\Count[10]~31\ & \Count[13]~37\) # (\Count[10]~31\ & \Count[13]~37COUT1_75\) $ ((((!\nq~0_combout\)) # (!Count(14)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[14]~49\ = CARRY((Count(14) & (\nq~0_combout\ & !\Count[13]~37\)))
-- \Count[14]~49COUT1_76\ = CARRY((Count(14) & (\nq~0_combout\ & !\Count[13]~37COUT1_75\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(14),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[10]~31\,
	cin0 => \Count[13]~37\,
	cin1 => \Count[13]~37COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(14),
	cout0 => \Count[14]~49\,
	cout1 => \Count[14]~49COUT1_76\);

-- Location: LC_X8_Y5_N9
\Count[15]\ : maxv_lcell
-- Equation(s):
-- Count(15) = DFFEAS((!\Count[10]~31\ & \Count[14]~49\) # (\Count[10]~31\ & \Count[14]~49COUT1_76\) $ (((\nq~0_combout\ & (Count(15))))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[15]~51\ = CARRY(((!\Count[14]~49COUT1_76\) # (!Count(15))) # (!\nq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \nq~0_combout\,
	datab => Count(15),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[10]~31\,
	cin0 => \Count[14]~49\,
	cin1 => \Count[14]~49COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(15),
	cout => \Count[15]~51\);

-- Location: LC_X9_Y5_N0
\Count[16]\ : maxv_lcell
-- Equation(s):
-- Count(16) = DFFEAS(\Count[15]~51\ $ ((((!Count(16))) # (!\nq~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[16]~1\ = CARRY((\nq~0_combout\ & (Count(16) & !\Count[15]~51\)))
-- \Count[16]~1COUT1_77\ = CARRY((\nq~0_combout\ & (Count(16) & !\Count[15]~51\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \nq~0_combout\,
	datab => Count(16),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[15]~51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(16),
	cout0 => \Count[16]~1\,
	cout1 => \Count[16]~1COUT1_77\);

-- Location: LC_X9_Y5_N1
\Count[17]\ : maxv_lcell
-- Equation(s):
-- Count(17) = DFFEAS((!\Count[15]~51\ & \Count[16]~1\) # (\Count[15]~51\ & \Count[16]~1COUT1_77\) $ (((Count(17) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[17]~3\ = CARRY(((!\Count[16]~1\) # (!\nq~0_combout\)) # (!Count(17)))
-- \Count[17]~3COUT1_78\ = CARRY(((!\Count[16]~1COUT1_77\) # (!\nq~0_combout\)) # (!Count(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(17),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[15]~51\,
	cin0 => \Count[16]~1\,
	cin1 => \Count[16]~1COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(17),
	cout0 => \Count[17]~3\,
	cout1 => \Count[17]~3COUT1_78\);

-- Location: LC_X9_Y5_N2
\Count[18]\ : maxv_lcell
-- Equation(s):
-- Count(18) = DFFEAS((!\Count[15]~51\ & \Count[17]~3\) # (\Count[15]~51\ & \Count[17]~3COUT1_78\) $ ((((!\nq~0_combout\)) # (!Count(18)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[18]~5\ = CARRY((Count(18) & (\nq~0_combout\ & !\Count[17]~3\)))
-- \Count[18]~5COUT1_79\ = CARRY((Count(18) & (\nq~0_combout\ & !\Count[17]~3COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(18),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[15]~51\,
	cin0 => \Count[17]~3\,
	cin1 => \Count[17]~3COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(18),
	cout0 => \Count[18]~5\,
	cout1 => \Count[18]~5COUT1_79\);

-- Location: LC_X9_Y5_N3
\Count[19]\ : maxv_lcell
-- Equation(s):
-- Count(19) = DFFEAS((!\Count[15]~51\ & \Count[18]~5\) # (\Count[15]~51\ & \Count[18]~5COUT1_79\) $ (((Count(19) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[19]~7\ = CARRY(((!\Count[18]~5\) # (!\nq~0_combout\)) # (!Count(19)))
-- \Count[19]~7COUT1_80\ = CARRY(((!\Count[18]~5COUT1_79\) # (!\nq~0_combout\)) # (!Count(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(19),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[15]~51\,
	cin0 => \Count[18]~5\,
	cin1 => \Count[18]~5COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(19),
	cout0 => \Count[19]~7\,
	cout1 => \Count[19]~7COUT1_80\);

-- Location: LC_X9_Y5_N4
\Count[20]\ : maxv_lcell
-- Equation(s):
-- Count(20) = DFFEAS((!\Count[15]~51\ & \Count[19]~7\) # (\Count[15]~51\ & \Count[19]~7COUT1_80\) $ ((((!\nq~0_combout\)) # (!Count(20)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[20]~9\ = CARRY((Count(20) & (\nq~0_combout\ & !\Count[19]~7COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(20),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[15]~51\,
	cin0 => \Count[19]~7\,
	cin1 => \Count[19]~7COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(20),
	cout => \Count[20]~9\);

-- Location: LC_X9_Y5_N5
\Count[21]\ : maxv_lcell
-- Equation(s):
-- Count(21) = DFFEAS(\Count[20]~9\ $ (((Count(21) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[21]~11\ = CARRY(((!\Count[20]~9\) # (!\nq~0_combout\)) # (!Count(21)))
-- \Count[21]~11COUT1_81\ = CARRY(((!\Count[20]~9\) # (!\nq~0_combout\)) # (!Count(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(21),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[20]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(21),
	cout0 => \Count[21]~11\,
	cout1 => \Count[21]~11COUT1_81\);

-- Location: LC_X9_Y5_N6
\Count[22]\ : maxv_lcell
-- Equation(s):
-- Count(22) = DFFEAS((!\Count[20]~9\ & \Count[21]~11\) # (\Count[20]~9\ & \Count[21]~11COUT1_81\) $ ((((!\nq~0_combout\)) # (!Count(22)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[22]~13\ = CARRY((Count(22) & (\nq~0_combout\ & !\Count[21]~11\)))
-- \Count[22]~13COUT1_82\ = CARRY((Count(22) & (\nq~0_combout\ & !\Count[21]~11COUT1_81\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(22),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[20]~9\,
	cin0 => \Count[21]~11\,
	cin1 => \Count[21]~11COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(22),
	cout0 => \Count[22]~13\,
	cout1 => \Count[22]~13COUT1_82\);

-- Location: LC_X9_Y5_N7
\Count[23]\ : maxv_lcell
-- Equation(s):
-- Count(23) = DFFEAS((!\Count[20]~9\ & \Count[22]~13\) # (\Count[20]~9\ & \Count[22]~13COUT1_82\) $ (((\nq~0_combout\ & (Count(23))))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[23]~15\ = CARRY(((!\Count[22]~13\) # (!Count(23))) # (!\nq~0_combout\))
-- \Count[23]~15COUT1_83\ = CARRY(((!\Count[22]~13COUT1_82\) # (!Count(23))) # (!\nq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \nq~0_combout\,
	datab => Count(23),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[20]~9\,
	cin0 => \Count[22]~13\,
	cin1 => \Count[22]~13COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(23),
	cout0 => \Count[23]~15\,
	cout1 => \Count[23]~15COUT1_83\);

-- Location: LC_X9_Y5_N8
\Count[24]\ : maxv_lcell
-- Equation(s):
-- Count(24) = DFFEAS((!\Count[20]~9\ & \Count[23]~15\) # (\Count[20]~9\ & \Count[23]~15COUT1_83\) $ ((((!\nq~0_combout\)) # (!Count(24)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[24]~17\ = CARRY((Count(24) & (\nq~0_combout\ & !\Count[23]~15\)))
-- \Count[24]~17COUT1_84\ = CARRY((Count(24) & (\nq~0_combout\ & !\Count[23]~15COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(24),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[20]~9\,
	cin0 => \Count[23]~15\,
	cin1 => \Count[23]~15COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(24),
	cout0 => \Count[24]~17\,
	cout1 => \Count[24]~17COUT1_84\);

-- Location: LC_X9_Y5_N9
\Count[25]\ : maxv_lcell
-- Equation(s):
-- Count(25) = DFFEAS((!\Count[20]~9\ & \Count[24]~17\) # (\Count[20]~9\ & \Count[24]~17COUT1_84\) $ (((\nq~0_combout\ & (Count(25))))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[25]~19\ = CARRY(((!\Count[24]~17COUT1_84\) # (!Count(25))) # (!\nq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \nq~0_combout\,
	datab => Count(25),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[20]~9\,
	cin0 => \Count[24]~17\,
	cin1 => \Count[24]~17COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(25),
	cout => \Count[25]~19\);

-- Location: LC_X10_Y5_N0
\Count[26]\ : maxv_lcell
-- Equation(s):
-- Count(26) = DFFEAS(\Count[25]~19\ $ ((((!\nq~0_combout\)) # (!Count(26)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[26]~21\ = CARRY((Count(26) & (\nq~0_combout\ & !\Count[25]~19\)))
-- \Count[26]~21COUT1_85\ = CARRY((Count(26) & (\nq~0_combout\ & !\Count[25]~19\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(26),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[25]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(26),
	cout0 => \Count[26]~21\,
	cout1 => \Count[26]~21COUT1_85\);

-- Location: LC_X10_Y5_N1
\Count[27]\ : maxv_lcell
-- Equation(s):
-- Count(27) = DFFEAS((!\Count[25]~19\ & \Count[26]~21\) # (\Count[25]~19\ & \Count[26]~21COUT1_85\) $ (((\nq~0_combout\ & (Count(27))))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[27]~23\ = CARRY(((!\Count[26]~21\) # (!Count(27))) # (!\nq~0_combout\))
-- \Count[27]~23COUT1_86\ = CARRY(((!\Count[26]~21COUT1_85\) # (!Count(27))) # (!\nq~0_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \nq~0_combout\,
	datab => Count(27),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[25]~19\,
	cin0 => \Count[26]~21\,
	cin1 => \Count[26]~21COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(27),
	cout0 => \Count[27]~23\,
	cout1 => \Count[27]~23COUT1_86\);

-- Location: LC_X10_Y5_N2
\Count[28]\ : maxv_lcell
-- Equation(s):
-- Count(28) = DFFEAS((!\Count[25]~19\ & \Count[27]~23\) # (\Count[25]~19\ & \Count[27]~23COUT1_86\) $ ((((!\nq~0_combout\)) # (!Count(28)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[28]~25\ = CARRY((Count(28) & (\nq~0_combout\ & !\Count[27]~23\)))
-- \Count[28]~25COUT1_87\ = CARRY((Count(28) & (\nq~0_combout\ & !\Count[27]~23COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(28),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[25]~19\,
	cin0 => \Count[27]~23\,
	cin1 => \Count[27]~23COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(28),
	cout0 => \Count[28]~25\,
	cout1 => \Count[28]~25COUT1_87\);

-- Location: LC_X10_Y5_N3
\Count[29]\ : maxv_lcell
-- Equation(s):
-- Count(29) = DFFEAS((!\Count[25]~19\ & \Count[28]~25\) # (\Count[25]~19\ & \Count[28]~25COUT1_87\) $ (((Count(29) & (\nq~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[29]~27\ = CARRY(((!\Count[28]~25\) # (!\nq~0_combout\)) # (!Count(29)))
-- \Count[29]~27COUT1_88\ = CARRY(((!\Count[28]~25COUT1_87\) # (!\nq~0_combout\)) # (!Count(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(29),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[25]~19\,
	cin0 => \Count[28]~25\,
	cin1 => \Count[28]~25COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(29),
	cout0 => \Count[29]~27\,
	cout1 => \Count[29]~27COUT1_88\);

-- Location: LC_X10_Y5_N4
\Count[30]\ : maxv_lcell
-- Equation(s):
-- Count(30) = DFFEAS((!\Count[25]~19\ & \Count[29]~27\) # (\Count[25]~19\ & \Count[29]~27COUT1_88\) $ ((((!\nq~0_combout\)) # (!Count(30)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )
-- \Count[30]~29\ = CARRY((Count(30) & (\nq~0_combout\ & !\Count[29]~27COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(30),
	datab => \nq~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[25]~19\,
	cin0 => \Count[29]~27\,
	cin1 => \Count[29]~27COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(30),
	cout => \Count[30]~29\);

-- Location: LC_X10_Y5_N5
\Count[31]\ : maxv_lcell
-- Equation(s):
-- Count(31) = DFFEAS(Count(31) $ ((((\Count[30]~29\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(31),
	aclr => GND,
	sclr => \reset~combout\,
	cin => \Count[30]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(31));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INTR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INTR,
	combout => \INTR~combout\);

-- Location: LC_X11_Y7_N0
\coun1|Count[0]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(0) = DFFEAS((((\INTR~combout\) # (!\coun1|Count\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \coun1|Count\(0),
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(0));

-- Location: LC_X12_Y5_N4
\coun1|Add0~189\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~189_cout\ = CARRY(((!\coun1|Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~187\,
	cout => \coun1|Add0~189_cout\);

-- Location: LC_X12_Y5_N5
\coun1|Add0~1\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~1_combout\ = (\coun1|Count\(1) $ ((\coun1|Add0~189_cout\)))
-- \coun1|Add0~3\ = CARRY(((!\coun1|Add0~189_cout\) # (!\coun1|Count\(1))))
-- \coun1|Add0~3COUT1_193\ = CARRY(((!\coun1|Add0~189_cout\) # (!\coun1|Count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(1),
	cin => \coun1|Add0~189_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~1_combout\,
	cout0 => \coun1|Add0~3\,
	cout1 => \coun1|Add0~3COUT1_193\);

-- Location: LC_X12_Y5_N2
\coun1|Count[1]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(1) = DFFEAS((!\INTR~combout\ & (((\coun1|Add0~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \INTR~combout\,
	datac => \coun1|Add0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(1));

-- Location: LC_X12_Y5_N6
\coun1|Add0~7\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~7_combout\ = (\coun1|Count\(2) $ ((!(!\coun1|Add0~189_cout\ & \coun1|Add0~3\) # (\coun1|Add0~189_cout\ & \coun1|Add0~3COUT1_193\))))
-- \coun1|Add0~9\ = CARRY(((\coun1|Count\(2) & !\coun1|Add0~3\)))
-- \coun1|Add0~9COUT1_194\ = CARRY(((\coun1|Count\(2) & !\coun1|Add0~3COUT1_193\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(2),
	cin => \coun1|Add0~189_cout\,
	cin0 => \coun1|Add0~3\,
	cin1 => \coun1|Add0~3COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~7_combout\,
	cout0 => \coun1|Add0~9\,
	cout1 => \coun1|Add0~9COUT1_194\);

-- Location: LC_X12_Y5_N0
\coun1|Count[2]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(2) = DFFEAS((!\INTR~combout\ & (((\coun1|Add0~7_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \INTR~combout\,
	datac => \coun1|Add0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(2));

-- Location: LC_X12_Y5_N7
\coun1|Add0~13\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~13_combout\ = \coun1|Count\(3) $ (((((!\coun1|Add0~189_cout\ & \coun1|Add0~9\) # (\coun1|Add0~189_cout\ & \coun1|Add0~9COUT1_194\)))))
-- \coun1|Add0~15\ = CARRY(((!\coun1|Add0~9\)) # (!\coun1|Count\(3)))
-- \coun1|Add0~15COUT1_195\ = CARRY(((!\coun1|Add0~9COUT1_194\)) # (!\coun1|Count\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|Count\(3),
	cin => \coun1|Add0~189_cout\,
	cin0 => \coun1|Add0~9\,
	cin1 => \coun1|Add0~9COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~13_combout\,
	cout0 => \coun1|Add0~15\,
	cout1 => \coun1|Add0~15COUT1_195\);

-- Location: LC_X12_Y5_N3
\coun1|Count[3]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(3) = DFFEAS((!\INTR~combout\ & (((\coun1|Add0~13_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \INTR~combout\,
	datac => \coun1|Add0~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(3));

-- Location: LC_X12_Y5_N8
\coun1|Add0~19\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~19_combout\ = (\coun1|Count\(4) $ ((!(!\coun1|Add0~189_cout\ & \coun1|Add0~15\) # (\coun1|Add0~189_cout\ & \coun1|Add0~15COUT1_195\))))
-- \coun1|Add0~21\ = CARRY(((\coun1|Count\(4) & !\coun1|Add0~15\)))
-- \coun1|Add0~21COUT1_196\ = CARRY(((\coun1|Count\(4) & !\coun1|Add0~15COUT1_195\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(4),
	cin => \coun1|Add0~189_cout\,
	cin0 => \coun1|Add0~15\,
	cin1 => \coun1|Add0~15COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~19_combout\,
	cout0 => \coun1|Add0~21\,
	cout1 => \coun1|Add0~21COUT1_196\);

-- Location: LC_X12_Y5_N1
\coun1|Count[4]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(4) = DFFEAS((((!\INTR~combout\ & \coun1|Add0~19_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \INTR~combout\,
	datad => \coun1|Add0~19_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(4));

-- Location: LC_X12_Y5_N9
\coun1|Add0~115\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~115_combout\ = \coun1|Count\(5) $ (((((!\coun1|Add0~189_cout\ & \coun1|Add0~21\) # (\coun1|Add0~189_cout\ & \coun1|Add0~21COUT1_196\)))))
-- \coun1|Add0~117\ = CARRY(((!\coun1|Add0~21COUT1_196\)) # (!\coun1|Count\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|Count\(5),
	cin => \coun1|Add0~189_cout\,
	cin0 => \coun1|Add0~21\,
	cin1 => \coun1|Add0~21COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~115_combout\,
	cout => \coun1|Add0~117\);

-- Location: LC_X11_Y5_N1
\coun1|Count[5]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(5) = DFFEAS((((\coun1|Add0~115_combout\ & !\INTR~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \coun1|Add0~115_combout\,
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(5));

-- Location: LC_X13_Y5_N0
\coun1|Add0~109\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~109_combout\ = (\coun1|Count\(6) $ ((!\coun1|Add0~117\)))
-- \coun1|Add0~111\ = CARRY(((\coun1|Count\(6) & !\coun1|Add0~117\)))
-- \coun1|Add0~111COUT1_197\ = CARRY(((\coun1|Count\(6) & !\coun1|Add0~117\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(6),
	cin => \coun1|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~109_combout\,
	cout0 => \coun1|Add0~111\,
	cout1 => \coun1|Add0~111COUT1_197\);

-- Location: LC_X13_Y4_N7
\coun1|Count[6]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(6) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~109_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~109_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(6));

-- Location: LC_X13_Y5_N1
\coun1|Add0~103\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~103_combout\ = \coun1|Count\(7) $ (((((!\coun1|Add0~117\ & \coun1|Add0~111\) # (\coun1|Add0~117\ & \coun1|Add0~111COUT1_197\)))))
-- \coun1|Add0~105\ = CARRY(((!\coun1|Add0~111\)) # (!\coun1|Count\(7)))
-- \coun1|Add0~105COUT1_198\ = CARRY(((!\coun1|Add0~111COUT1_197\)) # (!\coun1|Count\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|Count\(7),
	cin => \coun1|Add0~117\,
	cin0 => \coun1|Add0~111\,
	cin1 => \coun1|Add0~111COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~103_combout\,
	cout0 => \coun1|Add0~105\,
	cout1 => \coun1|Add0~105COUT1_198\);

-- Location: LC_X13_Y4_N4
\coun1|Count[7]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(7) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~103_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~103_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(7));

-- Location: LC_X13_Y5_N2
\coun1|Add0~97\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~97_combout\ = (\coun1|Count\(8) $ ((!(!\coun1|Add0~117\ & \coun1|Add0~105\) # (\coun1|Add0~117\ & \coun1|Add0~105COUT1_198\))))
-- \coun1|Add0~99\ = CARRY(((\coun1|Count\(8) & !\coun1|Add0~105\)))
-- \coun1|Add0~99COUT1_199\ = CARRY(((\coun1|Count\(8) & !\coun1|Add0~105COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(8),
	cin => \coun1|Add0~117\,
	cin0 => \coun1|Add0~105\,
	cin1 => \coun1|Add0~105COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~97_combout\,
	cout0 => \coun1|Add0~99\,
	cout1 => \coun1|Add0~99COUT1_199\);

-- Location: LC_X11_Y5_N4
\coun1|Count[8]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(8) = DFFEAS((((\coun1|Add0~97_combout\ & !\INTR~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \coun1|Add0~97_combout\,
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(8));

-- Location: LC_X13_Y5_N3
\coun1|Add0~91\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~91_combout\ = (\coun1|Count\(9) $ (((!\coun1|Add0~117\ & \coun1|Add0~99\) # (\coun1|Add0~117\ & \coun1|Add0~99COUT1_199\))))
-- \coun1|Add0~93\ = CARRY(((!\coun1|Add0~99\) # (!\coun1|Count\(9))))
-- \coun1|Add0~93COUT1_200\ = CARRY(((!\coun1|Add0~99COUT1_199\) # (!\coun1|Count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(9),
	cin => \coun1|Add0~117\,
	cin0 => \coun1|Add0~99\,
	cin1 => \coun1|Add0~99COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~91_combout\,
	cout0 => \coun1|Add0~93\,
	cout1 => \coun1|Add0~93COUT1_200\);

-- Location: LC_X13_Y4_N5
\coun1|Count[9]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(9) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~91_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~91_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(9));

-- Location: LC_X13_Y5_N4
\coun1|Add0~85\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~85_combout\ = (\coun1|Count\(10) $ ((!(!\coun1|Add0~117\ & \coun1|Add0~93\) # (\coun1|Add0~117\ & \coun1|Add0~93COUT1_200\))))
-- \coun1|Add0~87\ = CARRY(((\coun1|Count\(10) & !\coun1|Add0~93COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(10),
	cin => \coun1|Add0~117\,
	cin0 => \coun1|Add0~93\,
	cin1 => \coun1|Add0~93COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~85_combout\,
	cout => \coun1|Add0~87\);

-- Location: LC_X13_Y4_N2
\coun1|Count[10]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(10) = DFFEAS((((\coun1|Add0~85_combout\ & !\INTR~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \coun1|Add0~85_combout\,
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(10));

-- Location: LC_X12_Y4_N5
\coun1|timer[10]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(10), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(10),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(10));

-- Location: LC_X13_Y5_N5
\coun1|Add0~79\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~79_combout\ = \coun1|Count\(11) $ ((((\coun1|Add0~87\))))
-- \coun1|Add0~81\ = CARRY(((!\coun1|Add0~87\)) # (!\coun1|Count\(11)))
-- \coun1|Add0~81COUT1_201\ = CARRY(((!\coun1|Add0~87\)) # (!\coun1|Count\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|Count\(11),
	cin => \coun1|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~79_combout\,
	cout0 => \coun1|Add0~81\,
	cout1 => \coun1|Add0~81COUT1_201\);

-- Location: LC_X13_Y4_N1
\coun1|Count[11]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(11) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~79_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~79_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(11));

-- Location: LC_X12_Y4_N7
\coun1|timer[11]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(11), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(11),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(11));

-- Location: LC_X13_Y5_N6
\coun1|Add0~73\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~73_combout\ = (\coun1|Count\(12) $ ((!(!\coun1|Add0~87\ & \coun1|Add0~81\) # (\coun1|Add0~87\ & \coun1|Add0~81COUT1_201\))))
-- \coun1|Add0~75\ = CARRY(((\coun1|Count\(12) & !\coun1|Add0~81\)))
-- \coun1|Add0~75COUT1_202\ = CARRY(((\coun1|Count\(12) & !\coun1|Add0~81COUT1_201\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(12),
	cin => \coun1|Add0~87\,
	cin0 => \coun1|Add0~81\,
	cin1 => \coun1|Add0~81COUT1_201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~73_combout\,
	cout0 => \coun1|Add0~75\,
	cout1 => \coun1|Add0~75COUT1_202\);

-- Location: LC_X13_Y4_N9
\coun1|Count[12]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(12) = DFFEAS(((!\INTR~combout\ & (\coun1|Add0~73_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datac => \coun1|Add0~73_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(12));

-- Location: LC_X12_Y4_N8
\coun1|timer[9]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(9), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(9),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(9));

-- Location: LC_X12_Y4_N6
\coun1|timer[12]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~7\ = (!\coun1|timer\(10) & (!\coun1|timer\(11) & (!B1_timer[12] & !\coun1|timer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(10),
	datab => \coun1|timer\(11),
	datac => \coun1|Count\(12),
	datad => \coun1|timer\(9),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~7\,
	regout => \coun1|timer\(12));

-- Location: LC_X13_Y5_N7
\coun1|Add0~67\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~67_combout\ = (\coun1|Count\(13) $ (((!\coun1|Add0~87\ & \coun1|Add0~75\) # (\coun1|Add0~87\ & \coun1|Add0~75COUT1_202\))))
-- \coun1|Add0~69\ = CARRY(((!\coun1|Add0~75\) # (!\coun1|Count\(13))))
-- \coun1|Add0~69COUT1_203\ = CARRY(((!\coun1|Add0~75COUT1_202\) # (!\coun1|Count\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(13),
	cin => \coun1|Add0~87\,
	cin0 => \coun1|Add0~75\,
	cin1 => \coun1|Add0~75COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~67_combout\,
	cout0 => \coun1|Add0~69\,
	cout1 => \coun1|Add0~69COUT1_203\);

-- Location: LC_X13_Y4_N3
\coun1|Count[13]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(13) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~67_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~67_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(13));

-- Location: LC_X13_Y5_N8
\coun1|Add0~61\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~61_combout\ = \coun1|Count\(14) $ ((((!(!\coun1|Add0~87\ & \coun1|Add0~69\) # (\coun1|Add0~87\ & \coun1|Add0~69COUT1_203\)))))
-- \coun1|Add0~63\ = CARRY((\coun1|Count\(14) & ((!\coun1|Add0~69\))))
-- \coun1|Add0~63COUT1_204\ = CARRY((\coun1|Count\(14) & ((!\coun1|Add0~69COUT1_203\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|Count\(14),
	cin => \coun1|Add0~87\,
	cin0 => \coun1|Add0~69\,
	cin1 => \coun1|Add0~69COUT1_203\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~61_combout\,
	cout0 => \coun1|Add0~63\,
	cout1 => \coun1|Add0~63COUT1_204\);

-- Location: LC_X13_Y4_N8
\coun1|Count[14]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(14) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~61_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~61_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(14));

-- Location: LC_X12_Y4_N4
\coun1|timer[14]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(14) = DFFEAS((((\coun1|Count\(14)))), GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \coun1|Count\(14),
	aclr => GND,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(14));

-- Location: LC_X12_Y4_N0
\coun1|timer[13]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(13), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(13),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(13));

-- Location: LC_X13_Y5_N9
\coun1|Add0~55\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~55_combout\ = (\coun1|Count\(15) $ (((!\coun1|Add0~87\ & \coun1|Add0~63\) # (\coun1|Add0~87\ & \coun1|Add0~63COUT1_204\))))
-- \coun1|Add0~57\ = CARRY(((!\coun1|Add0~63COUT1_204\) # (!\coun1|Count\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(15),
	cin => \coun1|Add0~87\,
	cin0 => \coun1|Add0~63\,
	cin1 => \coun1|Add0~63COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~55_combout\,
	cout => \coun1|Add0~57\);

-- Location: LC_X13_Y4_N0
\coun1|Count[15]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(15) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~55_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(15));

-- Location: LC_X14_Y5_N0
\coun1|Add0~49\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~49_combout\ = (\coun1|Count\(16) $ ((!\coun1|Add0~57\)))
-- \coun1|Add0~51\ = CARRY(((\coun1|Count\(16) & !\coun1|Add0~57\)))
-- \coun1|Add0~51COUT1_205\ = CARRY(((\coun1|Count\(16) & !\coun1|Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(16),
	cin => \coun1|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~49_combout\,
	cout0 => \coun1|Add0~51\,
	cout1 => \coun1|Add0~51COUT1_205\);

-- Location: LC_X13_Y4_N6
\coun1|Count[16]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(16) = DFFEAS((((\coun1|Add0~49_combout\ & !\INTR~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \coun1|Add0~49_combout\,
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(16));

-- Location: LC_X12_Y4_N3
\coun1|timer[15]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(15), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(15),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(15));

-- Location: LC_X12_Y4_N9
\coun1|timer[16]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~6\ = (!\coun1|timer\(14) & (!\coun1|timer\(13) & (!B1_timer[16] & !\coun1|timer\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(14),
	datab => \coun1|timer\(13),
	datac => \coun1|Count\(16),
	datad => \coun1|timer\(15),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~6\,
	regout => \coun1|timer\(16));

-- Location: LC_X14_Y5_N1
\coun1|Add0~43\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~43_combout\ = (\coun1|Count\(17) $ (((!\coun1|Add0~57\ & \coun1|Add0~51\) # (\coun1|Add0~57\ & \coun1|Add0~51COUT1_205\))))
-- \coun1|Add0~45\ = CARRY(((!\coun1|Add0~51\) # (!\coun1|Count\(17))))
-- \coun1|Add0~45COUT1_206\ = CARRY(((!\coun1|Add0~51COUT1_205\) # (!\coun1|Count\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(17),
	cin => \coun1|Add0~57\,
	cin0 => \coun1|Add0~51\,
	cin1 => \coun1|Add0~51COUT1_205\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~43_combout\,
	cout0 => \coun1|Add0~45\,
	cout1 => \coun1|Add0~45COUT1_206\);

-- Location: LC_X11_Y5_N9
\coun1|Count[17]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(17) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~43_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~43_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(17));

-- Location: LC_X11_Y5_N5
\coun1|timer[17]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(17) = DFFEAS((((\coun1|Count\(17)))), GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \coun1|Count\(17),
	aclr => GND,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(17));

-- Location: LC_X14_Y5_N2
\coun1|Add0~37\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~37_combout\ = (\coun1|Count\(18) $ ((!(!\coun1|Add0~57\ & \coun1|Add0~45\) # (\coun1|Add0~57\ & \coun1|Add0~45COUT1_206\))))
-- \coun1|Add0~39\ = CARRY(((\coun1|Count\(18) & !\coun1|Add0~45\)))
-- \coun1|Add0~39COUT1_207\ = CARRY(((\coun1|Count\(18) & !\coun1|Add0~45COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(18),
	cin => \coun1|Add0~57\,
	cin0 => \coun1|Add0~45\,
	cin1 => \coun1|Add0~45COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~37_combout\,
	cout0 => \coun1|Add0~39\,
	cout1 => \coun1|Add0~39COUT1_207\);

-- Location: LC_X11_Y5_N0
\coun1|Count[18]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(18) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~37_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~37_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(18));

-- Location: LC_X14_Y5_N3
\coun1|Add0~31\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~31_combout\ = (\coun1|Count\(19) $ (((!\coun1|Add0~57\ & \coun1|Add0~39\) # (\coun1|Add0~57\ & \coun1|Add0~39COUT1_207\))))
-- \coun1|Add0~33\ = CARRY(((!\coun1|Add0~39\) # (!\coun1|Count\(19))))
-- \coun1|Add0~33COUT1_208\ = CARRY(((!\coun1|Add0~39COUT1_207\) # (!\coun1|Count\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(19),
	cin => \coun1|Add0~57\,
	cin0 => \coun1|Add0~39\,
	cin1 => \coun1|Add0~39COUT1_207\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~31_combout\,
	cout0 => \coun1|Add0~33\,
	cout1 => \coun1|Add0~33COUT1_208\);

-- Location: LC_X11_Y5_N8
\coun1|Count[19]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(19) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~31_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~31_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(19));

-- Location: LC_X11_Y5_N2
\coun1|timer[19]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(19) = DFFEAS((((\coun1|Count\(19)))), GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \coun1|Count\(19),
	aclr => GND,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(19));

-- Location: LC_X14_Y5_N4
\coun1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~25_combout\ = (\coun1|Count\(20) $ ((!(!\coun1|Add0~57\ & \coun1|Add0~33\) # (\coun1|Add0~57\ & \coun1|Add0~33COUT1_208\))))
-- \coun1|Add0~27\ = CARRY(((\coun1|Count\(20) & !\coun1|Add0~33COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(20),
	cin => \coun1|Add0~57\,
	cin0 => \coun1|Add0~33\,
	cin1 => \coun1|Add0~33COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~25_combout\,
	cout => \coun1|Add0~27\);

-- Location: LC_X11_Y5_N7
\coun1|Count[20]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(20) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~25_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(20));

-- Location: LC_X11_Y5_N3
\coun1|timer[18]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(18), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(18),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(18));

-- Location: LC_X11_Y5_N6
\coun1|timer[20]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~5\ = (!\coun1|timer\(17) & (!\coun1|timer\(19) & (!B1_timer[20] & !\coun1|timer\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(17),
	datab => \coun1|timer\(19),
	datac => \coun1|Count\(20),
	datad => \coun1|timer\(18),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~5\,
	regout => \coun1|timer\(20));

-- Location: LC_X11_Y4_N6
\coun1|timer[5]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(5) = DFFEAS((((\coun1|Count\(5)))), GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \coun1|Count\(5),
	aclr => GND,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(5));

-- Location: LC_X11_Y4_N0
\coun1|timer[6]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(6), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(6),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(6));

-- Location: LC_X11_Y4_N2
\coun1|timer[7]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(7) = DFFEAS((((\coun1|Count\(7)))), GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \coun1|Count\(7),
	aclr => GND,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(7));

-- Location: LC_X11_Y4_N1
\coun1|timer[8]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~8\ = (!\coun1|timer\(5) & (!\coun1|timer\(6) & (!B1_timer[8] & !\coun1|timer\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(5),
	datab => \coun1|timer\(6),
	datac => \coun1|Count\(8),
	datad => \coun1|timer\(7),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~8\,
	regout => \coun1|timer\(8));

-- Location: LC_X11_Y4_N7
\LessThan3~9\ : maxv_lcell
-- Equation(s):
-- \LessThan3~9_combout\ = (\LessThan3~7\ & (\LessThan3~6\ & (\LessThan3~5\ & \LessThan3~8\)))

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
	dataa => \LessThan3~7\,
	datab => \LessThan3~6\,
	datac => \LessThan3~5\,
	datad => \LessThan3~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~9_combout\);

-- Location: LC_X14_Y5_N5
\coun1|Add0~121\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~121_combout\ = \coun1|Count\(21) $ ((((\coun1|Add0~27\))))
-- \coun1|Add0~123\ = CARRY(((!\coun1|Add0~27\)) # (!\coun1|Count\(21)))
-- \coun1|Add0~123COUT1_209\ = CARRY(((!\coun1|Add0~27\)) # (!\coun1|Count\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|Count\(21),
	cin => \coun1|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~121_combout\,
	cout0 => \coun1|Add0~123\,
	cout1 => \coun1|Add0~123COUT1_209\);

-- Location: LC_X15_Y6_N9
\coun1|Count[21]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(21) = DFFEAS((((!\INTR~combout\ & \coun1|Add0~121_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \INTR~combout\,
	datad => \coun1|Add0~121_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(21));

-- Location: LC_X14_Y5_N6
\coun1|Add0~127\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~127_combout\ = (\coun1|Count\(22) $ ((!(!\coun1|Add0~27\ & \coun1|Add0~123\) # (\coun1|Add0~27\ & \coun1|Add0~123COUT1_209\))))
-- \coun1|Add0~129\ = CARRY(((\coun1|Count\(22) & !\coun1|Add0~123\)))
-- \coun1|Add0~129COUT1_210\ = CARRY(((\coun1|Count\(22) & !\coun1|Add0~123COUT1_209\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(22),
	cin => \coun1|Add0~27\,
	cin0 => \coun1|Add0~123\,
	cin1 => \coun1|Add0~123COUT1_209\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~127_combout\,
	cout0 => \coun1|Add0~129\,
	cout1 => \coun1|Add0~129COUT1_210\);

-- Location: LC_X15_Y7_N9
\coun1|Count[22]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(22) = DFFEAS((((\coun1|Add0~127_combout\ & !\INTR~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \coun1|Add0~127_combout\,
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(22));

-- Location: LC_X14_Y5_N7
\coun1|Add0~133\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~133_combout\ = \coun1|Count\(23) $ (((((!\coun1|Add0~27\ & \coun1|Add0~129\) # (\coun1|Add0~27\ & \coun1|Add0~129COUT1_210\)))))
-- \coun1|Add0~135\ = CARRY(((!\coun1|Add0~129\)) # (!\coun1|Count\(23)))
-- \coun1|Add0~135COUT1_211\ = CARRY(((!\coun1|Add0~129COUT1_210\)) # (!\coun1|Count\(23)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|Count\(23),
	cin => \coun1|Add0~27\,
	cin0 => \coun1|Add0~129\,
	cin1 => \coun1|Add0~129COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~133_combout\,
	cout0 => \coun1|Add0~135\,
	cout1 => \coun1|Add0~135COUT1_211\);

-- Location: LC_X15_Y6_N2
\coun1|Count[23]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(23) = DFFEAS((((!\INTR~combout\ & \coun1|Add0~133_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \INTR~combout\,
	datad => \coun1|Add0~133_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(23));

-- Location: LC_X14_Y5_N8
\coun1|Add0~139\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~139_combout\ = (\coun1|Count\(24) $ ((!(!\coun1|Add0~27\ & \coun1|Add0~135\) # (\coun1|Add0~27\ & \coun1|Add0~135COUT1_211\))))
-- \coun1|Add0~141\ = CARRY(((\coun1|Count\(24) & !\coun1|Add0~135\)))
-- \coun1|Add0~141COUT1_212\ = CARRY(((\coun1|Count\(24) & !\coun1|Add0~135COUT1_211\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(24),
	cin => \coun1|Add0~27\,
	cin0 => \coun1|Add0~135\,
	cin1 => \coun1|Add0~135COUT1_211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~139_combout\,
	cout0 => \coun1|Add0~141\,
	cout1 => \coun1|Add0~141COUT1_212\);

-- Location: LC_X14_Y7_N1
\coun1|Count[24]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(24) = DFFEAS((((!\INTR~combout\ & \coun1|Add0~139_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \INTR~combout\,
	datad => \coun1|Add0~139_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(24));

-- Location: LC_X14_Y5_N9
\coun1|Add0~145\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~145_combout\ = (\coun1|Count\(25) $ (((!\coun1|Add0~27\ & \coun1|Add0~141\) # (\coun1|Add0~27\ & \coun1|Add0~141COUT1_212\))))
-- \coun1|Add0~147\ = CARRY(((!\coun1|Add0~141COUT1_212\) # (!\coun1|Count\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(25),
	cin => \coun1|Add0~27\,
	cin0 => \coun1|Add0~141\,
	cin1 => \coun1|Add0~141COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~145_combout\,
	cout => \coun1|Add0~147\);

-- Location: LC_X14_Y7_N6
\coun1|Count[25]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(25) = DFFEAS((((!\INTR~combout\ & \coun1|Add0~145_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \INTR~combout\,
	datad => \coun1|Add0~145_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(25));

-- Location: LC_X15_Y5_N0
\coun1|Add0~151\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~151_combout\ = \coun1|Count\(26) $ ((((!\coun1|Add0~147\))))
-- \coun1|Add0~153\ = CARRY((\coun1|Count\(26) & ((!\coun1|Add0~147\))))
-- \coun1|Add0~153COUT1_213\ = CARRY((\coun1|Count\(26) & ((!\coun1|Add0~147\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|Count\(26),
	cin => \coun1|Add0~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~151_combout\,
	cout0 => \coun1|Add0~153\,
	cout1 => \coun1|Add0~153COUT1_213\);

-- Location: LC_X15_Y5_N8
\coun1|Count[26]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(26) = DFFEAS(((!\INTR~combout\ & (\coun1|Add0~151_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datac => \coun1|Add0~151_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(26));

-- Location: LC_X15_Y5_N1
\coun1|Add0~157\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~157_combout\ = (\coun1|Count\(27) $ (((!\coun1|Add0~147\ & \coun1|Add0~153\) # (\coun1|Add0~147\ & \coun1|Add0~153COUT1_213\))))
-- \coun1|Add0~159\ = CARRY(((!\coun1|Add0~153\) # (!\coun1|Count\(27))))
-- \coun1|Add0~159COUT1_214\ = CARRY(((!\coun1|Add0~153COUT1_213\) # (!\coun1|Count\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(27),
	cin => \coun1|Add0~147\,
	cin0 => \coun1|Add0~153\,
	cin1 => \coun1|Add0~153COUT1_213\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~157_combout\,
	cout0 => \coun1|Add0~159\,
	cout1 => \coun1|Add0~159COUT1_214\);

-- Location: LC_X15_Y5_N9
\coun1|Count[27]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(27) = DFFEAS(((!\INTR~combout\ & ((\coun1|Add0~157_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \INTR~combout\,
	datad => \coun1|Add0~157_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(27));

-- Location: LC_X15_Y5_N2
\coun1|Add0~163\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~163_combout\ = (\coun1|Count\(28) $ ((!(!\coun1|Add0~147\ & \coun1|Add0~159\) # (\coun1|Add0~147\ & \coun1|Add0~159COUT1_214\))))
-- \coun1|Add0~165\ = CARRY(((\coun1|Count\(28) & !\coun1|Add0~159\)))
-- \coun1|Add0~165COUT1_215\ = CARRY(((\coun1|Count\(28) & !\coun1|Add0~159COUT1_214\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(28),
	cin => \coun1|Add0~147\,
	cin0 => \coun1|Add0~159\,
	cin1 => \coun1|Add0~159COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~163_combout\,
	cout0 => \coun1|Add0~165\,
	cout1 => \coun1|Add0~165COUT1_215\);

-- Location: LC_X15_Y7_N3
\coun1|Count[28]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(28) = DFFEAS((((\coun1|Add0~163_combout\ & !\INTR~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \coun1|Add0~163_combout\,
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(28));

-- Location: LC_X15_Y5_N3
\coun1|Add0~169\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~169_combout\ = (\coun1|Count\(29) $ (((!\coun1|Add0~147\ & \coun1|Add0~165\) # (\coun1|Add0~147\ & \coun1|Add0~165COUT1_215\))))
-- \coun1|Add0~171\ = CARRY(((!\coun1|Add0~165\) # (!\coun1|Count\(29))))
-- \coun1|Add0~171COUT1_216\ = CARRY(((!\coun1|Add0~165COUT1_215\) # (!\coun1|Count\(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(29),
	cin => \coun1|Add0~147\,
	cin0 => \coun1|Add0~165\,
	cin1 => \coun1|Add0~165COUT1_215\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~169_combout\,
	cout0 => \coun1|Add0~171\,
	cout1 => \coun1|Add0~171COUT1_216\);

-- Location: LC_X15_Y7_N2
\coun1|Count[29]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(29) = DFFEAS((((\coun1|Add0~169_combout\ & !\INTR~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \coun1|Add0~169_combout\,
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(29));

-- Location: LC_X15_Y5_N4
\coun1|Add0~175\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~175_combout\ = (\coun1|Count\(30) $ ((!(!\coun1|Add0~147\ & \coun1|Add0~171\) # (\coun1|Add0~147\ & \coun1|Add0~171COUT1_216\))))
-- \coun1|Add0~177\ = CARRY(((\coun1|Count\(30) & !\coun1|Add0~171COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \coun1|Count\(30),
	cin => \coun1|Add0~147\,
	cin0 => \coun1|Add0~171\,
	cin1 => \coun1|Add0~171COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~175_combout\,
	cout => \coun1|Add0~177\);

-- Location: LC_X15_Y5_N7
\coun1|Count[30]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(30) = DFFEAS((((\coun1|Add0~175_combout\ & !\INTR~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \coun1|Add0~175_combout\,
	datad => \INTR~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(30));

-- Location: LC_X15_Y6_N8
\coun1|timer[30]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(30) = DFFEAS((((\coun1|Count\(30)))), GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \coun1|Count\(30),
	aclr => GND,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(30));

-- Location: LC_X15_Y6_N4
\coun1|timer[26]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(26) = DFFEAS((((\coun1|Count\(26)))), GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \coun1|Count\(26),
	aclr => GND,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(26));

-- Location: LC_X15_Y6_N1
\coun1|timer[28]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(28) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(28), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(28),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(28));

-- Location: LC_X15_Y6_N3
\coun1|timer[27]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(27), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(27),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(27));

-- Location: LC_X15_Y6_N0
\coun1|timer[25]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~11\ = (!\coun1|timer\(26) & (!\coun1|timer\(28) & (!B1_timer[25] & !\coun1|timer\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(26),
	datab => \coun1|timer\(28),
	datac => \coun1|Count\(25),
	datad => \coun1|timer\(27),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~11\,
	regout => \coun1|timer\(25));

-- Location: LC_X15_Y6_N5
\coun1|timer[22]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(22), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(22),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(22));

-- Location: LC_X14_Y6_N4
\coun1|timer[23]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(23), , , VCC)

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
	clk => \clk~combout\,
	datac => \coun1|Count\(23),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(23));

-- Location: LC_X14_Y6_N2
\coun1|timer[24]\ : maxv_lcell
-- Equation(s):
-- \coun1|timer\(24) = DFFEAS((((\coun1|Count\(24)))), GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \coun1|Count\(24),
	aclr => GND,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|timer\(24));

-- Location: LC_X15_Y6_N6
\coun1|timer[21]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~10\ = (!\coun1|timer\(22) & (!\coun1|timer\(23) & (!B1_timer[21] & !\coun1|timer\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(22),
	datab => \coun1|timer\(23),
	datac => \coun1|Count\(21),
	datad => \coun1|timer\(24),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~10\,
	regout => \coun1|timer\(21));

-- Location: LC_X15_Y6_N7
\coun1|timer[29]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~12\ = (!\coun1|timer\(30) & (\LessThan3~11\ & (!B1_timer[29] & \LessThan3~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(30),
	datab => \LessThan3~11\,
	datac => \coun1|Count\(29),
	datad => \LessThan3~10\,
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~12\,
	regout => \coun1|timer\(29));

-- Location: LC_X15_Y5_N5
\coun1|Add0~181\ : maxv_lcell
-- Equation(s):
-- \coun1|Add0~181_combout\ = ((\coun1|Add0~177\ $ (!\coun1|Count\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \coun1|Count\(31),
	cin => \coun1|Add0~177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \coun1|Add0~181_combout\);

-- Location: LC_X15_Y5_N6
\coun1|Count[31]\ : maxv_lcell
-- Equation(s):
-- \coun1|Count\(31) = DFFEAS(((\INTR~combout\) # ((!\coun1|Add0~181_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \INTR~combout\,
	datad => \coun1|Add0~181_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \coun1|Count\(31));

-- Location: LC_X10_Y6_N5
\coun1|timer[0]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~4\ = (((B1_timer[0])) # (!\coun1|timer\(1)))
-- \coun1|timer\(0) = DFFEAS(\LessThan3~4\, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f3",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \coun1|timer\(1),
	datac => \coun1|Count\(0),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~4\,
	regout => \coun1|timer\(0));

-- Location: LC_X11_Y4_N8
\coun1|timer[4]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~13\ = ((\LessThan3~12\ & (!B1_timer[4] & \LessThan3~9_combout\)))
-- \coun1|timer\(4) = DFFEAS(\LessThan3~13\, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \LessThan3~12\,
	datac => \coun1|Count\(4),
	datad => \LessThan3~9_combout\,
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~13\,
	regout => \coun1|timer\(4));

-- Location: LC_X11_Y4_N9
\coun1|timer[3]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~14\ = (((!B1_timer[3] & !\coun1|timer\(2))))
-- \coun1|timer\(3) = DFFEAS(\LessThan3~14\, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \coun1|Count\(3),
	datad => \coun1|timer\(2),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~14\,
	regout => \coun1|timer\(3));

-- Location: LC_X10_Y6_N2
\coun1|timer[2]\ : maxv_lcell
-- Equation(s):
-- \LessThan5~0\ = ((!\coun1|timer\(3) & ((\LessThan3~4\) # (!B1_timer[2])))) # (!\coun1|timer\(4))
-- \coun1|timer\(2) = DFFEAS(\LessThan5~0\, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33bf",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan3~4\,
	datab => \coun1|timer\(4),
	datac => \coun1|Count\(2),
	datad => \coun1|timer\(3),
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~0\,
	regout => \coun1|timer\(2));

-- Location: LC_X11_Y4_N3
\coun1|timer[1]\ : maxv_lcell
-- Equation(s):
-- \LessThan3~16\ = (\LessThan3~13\ & (\LessThan3~14\ & ((\coun1|timer\(0)) # (!B1_timer[1]))))
-- \coun1|timer\(1) = DFFEAS(\LessThan3~16\, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(0),
	datab => \LessThan3~13\,
	datac => \coun1|Count\(1),
	datad => \LessThan3~14\,
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~16\,
	regout => \coun1|timer\(1));

-- Location: LC_X10_Y6_N3
\coun1|timer[31]\ : maxv_lcell
-- Equation(s):
-- \LessThan5~1\ = ((\LessThan3~9_combout\ & (\LessThan3~12\ & \LessThan5~0\))) # (!B1_timer[31])
-- \coun1|timer\(31) = DFFEAS(\LessThan5~1\, GLOBAL(\clk~combout\), VCC, , !\INTR~combout\, \coun1|Count\(31), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f0f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan3~9_combout\,
	datab => \LessThan3~12\,
	datac => \coun1|Count\(31),
	datad => \LessThan5~0\,
	aclr => GND,
	sload => VCC,
	ena => \ALT_INV_INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~1\,
	regout => \coun1|timer\(31));

-- Location: LC_X10_Y5_N7
\LessThan7~3\ : maxv_lcell
-- Equation(s):
-- \LessThan7~3_combout\ = ((!Count(28) & (!Count(30) & !Count(29))))

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
	datab => Count(28),
	datac => Count(30),
	datad => Count(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~3_combout\);

-- Location: LC_X5_Y5_N2
\LessThan7~1\ : maxv_lcell
-- Equation(s):
-- \LessThan7~1_combout\ = (!Count(20) & (!Count(22) & (!Count(23) & !Count(21))))

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
	dataa => Count(20),
	datab => Count(22),
	datac => Count(23),
	datad => Count(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~1_combout\);

-- Location: LC_X10_Y5_N9
\LessThan7~2\ : maxv_lcell
-- Equation(s):
-- \LessThan7~2_combout\ = (!Count(24) & (!Count(26) & (!Count(25) & !Count(27))))

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
	dataa => Count(24),
	datab => Count(26),
	datac => Count(25),
	datad => Count(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~2_combout\);

-- Location: LC_X6_Y5_N9
\LessThan7~0\ : maxv_lcell
-- Equation(s):
-- \LessThan7~0_combout\ = (!Count(19) & (!Count(18) & (!Count(16) & !Count(17))))

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
	dataa => Count(19),
	datab => Count(18),
	datac => Count(16),
	datad => Count(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~0_combout\);

-- Location: LC_X6_Y5_N0
\LessThan7~4\ : maxv_lcell
-- Equation(s):
-- \LessThan7~4_combout\ = (\LessThan7~3_combout\ & (\LessThan7~1_combout\ & (\LessThan7~2_combout\ & \LessThan7~0_combout\)))

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
	dataa => \LessThan7~3_combout\,
	datab => \LessThan7~1_combout\,
	datac => \LessThan7~2_combout\,
	datad => \LessThan7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~4_combout\);

-- Location: LC_X6_Y5_N3
\LessThan2~2\ : maxv_lcell
-- Equation(s):
-- \LessThan2~2_combout\ = (\LessThan2~1_combout\ & (\LessThan7~4_combout\ & ((!Count(3)) # (!Count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(2),
	datab => \LessThan2~1_combout\,
	datac => Count(3),
	datad => \LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~2_combout\);

-- Location: LC_X7_Y5_N1
\LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (!Count(1) & (((!Count(0) & !Count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(1),
	datac => Count(0),
	datad => Count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X7_Y5_N2
\LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan7~4_combout\ & (\LessThan2~1_combout\ & ((\LessThan1~0_combout\) # (!Count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~4_combout\,
	datab => \LessThan2~1_combout\,
	datac => Count(3),
	datad => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~1_combout\);

-- Location: LC_X4_Y5_N3
\Selector5~0\ : maxv_lcell
-- Equation(s):
-- \Selector5~0_combout\ = ((\fsm_state.wrt~regout\ & ((Count(31)) # (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(31),
	datac => \fsm_state.wrt~regout\,
	datad => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~0_combout\);

-- Location: LC_X4_Y5_N4
\fsm_state.wrt\ : maxv_lcell
-- Equation(s):
-- \fsm_state.wrt~regout\ = DFFEAS((\Selector5~0_combout\) # ((\fsm_state.css~regout\ & (!Count(31) & !\LessThan0~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.css~regout\,
	datab => Count(31),
	datac => \LessThan0~2_combout\,
	datad => \Selector5~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.wrt~regout\);

-- Location: LC_X7_Y4_N5
\Selector1~0\ : maxv_lcell
-- Equation(s):
-- \Selector1~0_combout\ = (\fsm_state.css2~regout\ & (((Count(31)) # (\LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state.css2~regout\,
	datac => Count(31),
	datad => \LessThan2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0_combout\);

-- Location: LC_X7_Y4_N6
\fsm_state.css2\ : maxv_lcell
-- Equation(s):
-- \fsm_state.css2~regout\ = DFFEAS((\Selector1~0_combout\) # ((!Count(31) & (\fsm_state.wrt~regout\ & !\LessThan1~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(31),
	datab => \fsm_state.wrt~regout\,
	datac => \LessThan1~1_combout\,
	datad => \Selector1~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.css2~regout\);

-- Location: LC_X7_Y4_N8
\Selector12~2\ : maxv_lcell
-- Equation(s):
-- \Selector12~2_combout\ = (((\fsm_state.css3~regout\ & \INTR~combout\)))

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
	datac => \fsm_state.css3~regout\,
	datad => \INTR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~2_combout\);

-- Location: LC_X7_Y4_N0
\fsm_state.css3\ : maxv_lcell
-- Equation(s):
-- \fsm_state.css3~regout\ = DFFEAS((\Selector12~2_combout\) # ((!Count(31) & (!\LessThan2~2_combout\ & \fsm_state.css2~regout\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => Count(31),
	datab => \LessThan2~2_combout\,
	datac => \fsm_state.css2~regout\,
	datad => \Selector12~2_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.css3~regout\);

-- Location: LC_X10_Y4_N7
\LessThan3~15\ : maxv_lcell
-- Equation(s):
-- \LessThan3~15_combout\ = ((\LessThan3~4\ & (\LessThan3~13\ & \LessThan3~14\))) # (!\coun1|timer\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~4\,
	datab => \LessThan3~13\,
	datac => \LessThan3~14\,
	datad => \coun1|timer\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~15_combout\);

-- Location: LC_X9_Y4_N2
\fsm_state.css4\ : maxv_lcell
-- Equation(s):
-- \fsm_state.css4~regout\ = DFFEAS((\INTR~combout\ & (\fsm_state.css4~regout\ & ((\LessThan3~15_combout\)))) # (!\INTR~combout\ & ((\fsm_state.css3~regout\) # ((\fsm_state.css4~regout\ & \LessThan3~15_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \INTR~combout\,
	datab => \fsm_state.css4~regout\,
	datac => \fsm_state.css3~regout\,
	datad => \LessThan3~15_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.css4~regout\);

-- Location: LC_X10_Y4_N8
\Selector6~0\ : maxv_lcell
-- Equation(s):
-- \Selector6~0_combout\ = ((\fsm_state.red~regout\ & ((\LessThan3~13\) # (!\coun1|timer\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_state.red~regout\,
	datac => \LessThan3~13\,
	datad => \coun1|timer\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X10_Y4_N0
\fsm_state.red\ : maxv_lcell
-- Equation(s):
-- \fsm_state.red~regout\ = DFFEAS((\Selector6~0_combout\) # ((\coun1|timer\(31) & (\fsm_state.css4~regout\ & !\LessThan3~16\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \coun1|timer\(31),
	datab => \fsm_state.css4~regout\,
	datac => \LessThan3~16\,
	datad => \Selector6~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.red~regout\);

-- Location: LC_X12_Y3_N0
\t8[0]~0\ : maxv_lcell
-- Equation(s):
-- \t8[0]~0_combout\ = (!\INTR~combout\ & (\LessThan5~1\ & (\fsm_state.css5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTR~combout\,
	datab => \LessThan5~1\,
	datac => \fsm_state.css5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t8[0]~0_combout\);

-- Location: LC_X12_Y3_N7
\fsm_state.css5\ : maxv_lcell
-- Equation(s):
-- \fsm_state.css5~regout\ = DFFEAS((\t8[0]~0_combout\) # ((\fsm_state.red~regout\ & (\coun1|timer\(31) & !\LessThan3~13\))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \fsm_state.red~regout\,
	datab => \coun1|timer\(31),
	datac => \t8[0]~0_combout\,
	datad => \LessThan3~13\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.css5~regout\);

-- Location: LC_X6_Y5_N5
\LessThan7~6\ : maxv_lcell
-- Equation(s):
-- \LessThan7~6_combout\ = ((!Count(4) & (!Count(5) & !Count(7))))

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
	datab => Count(4),
	datac => Count(5),
	datad => Count(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~6_combout\);

-- Location: LC_X6_Y5_N8
\LessThan7~7\ : maxv_lcell
-- Equation(s):
-- \LessThan7~7_combout\ = (((!Count(6) & !Count(7))) # (!Count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(6),
	datac => Count(9),
	datad => Count(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~7_combout\);

-- Location: LC_X6_Y5_N4
\LessThan7~8\ : maxv_lcell
-- Equation(s):
-- \LessThan7~8_combout\ = (\LessThan7~5_combout\ & ((\LessThan7~6_combout\) # ((\LessThan7~7_combout\) # (!Count(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~6_combout\,
	datab => Count(8),
	datac => \LessThan7~5_combout\,
	datad => \LessThan7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~8_combout\);

-- Location: LC_X6_Y5_N1
\LessThan7~9\ : maxv_lcell
-- Equation(s):
-- \LessThan7~9_combout\ = (\LessThan7~4_combout\ & (((\LessThan7~8_combout\) # (!Count(15))) # (!Count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(14),
	datab => Count(15),
	datac => \LessThan7~8_combout\,
	datad => \LessThan7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~9_combout\);

-- Location: LC_X10_Y4_N9
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = ((\fsm_state.stay~regout\ & ((Count(31)) # (\LessThan7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(31),
	datac => \fsm_state.stay~regout\,
	datad => \LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X10_Y4_N3
\fsm_state.stay\ : maxv_lcell
-- Equation(s):
-- \fsm_state.stay~regout\ = DFFEAS((\Selector7~0_combout\) # ((\fsm_state.css5~regout\ & ((\INTR~combout\) # (!\LessThan5~1\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \INTR~combout\,
	datab => \fsm_state.css5~regout\,
	datac => \LessThan5~1\,
	datad => \Selector7~0_combout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.stay~regout\);

-- Location: LC_X6_Y5_N2
\nq~0\ : maxv_lcell
-- Equation(s):
-- \nq~0_combout\ = ((Count(31)) # ((\LessThan7~9_combout\) # (!\fsm_state.stay~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => Count(31),
	datac => \fsm_state.stay~regout\,
	datad => \LessThan7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nq~0_combout\);

-- Location: LC_X6_Y5_N6
\LessThan7~5\ : maxv_lcell
-- Equation(s):
-- \LessThan7~5_combout\ = (!Count(11) & (!Count(13) & (!Count(10) & !Count(12))))

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
	dataa => Count(11),
	datab => Count(13),
	datac => Count(10),
	datad => Count(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~5_combout\);

-- Location: LC_X5_Y5_N6
\LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \LessThan2~0_combout\ = (!Count(15) & (!Count(9) & (!Count(14) & !Count(8))))

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
	dataa => Count(15),
	datab => Count(9),
	datac => Count(14),
	datad => Count(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~0_combout\);

-- Location: LC_X6_Y5_N7
\LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \LessThan2~1_combout\ = (\LessThan7~5_combout\ & (\LessThan2~0_combout\ & (\LessThan7~6_combout\ & !Count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~5_combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan7~6_combout\,
	datad => Count(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~1_combout\);

-- Location: LC_X5_Y5_N9
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (!Count(3) & (!Count(2) & ((!Count(1)) # (!Count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Count(0),
	datab => Count(3),
	datac => Count(2),
	datad => Count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X5_Y5_N3
\LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan2~1_combout\ & (((\LessThan7~4_combout\ & \LessThan0~0_combout\))))

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
	dataa => \LessThan2~1_combout\,
	datac => \LessThan7~4_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X10_Y4_N6
\fsm_state.st\ : maxv_lcell
-- Equation(s):
-- \fsm_state.st~regout\ = DFFEAS((!\reset~combout\ & (((Count(31)) # (\LessThan7~9_combout\)) # (!\fsm_state.stay~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \reset~combout\,
	datab => \fsm_state.stay~regout\,
	datac => Count(31),
	datad => \LessThan7~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.st~regout\);

-- Location: LC_X5_Y5_N5
\fsm_state.css\ : maxv_lcell
-- Equation(s):
-- \fsm_state.css~regout\ = DFFEAS(((\fsm_state.css~regout\ & ((\LessThan0~2_combout\) # (Count(31))))) # (!\fsm_state.st~regout\), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \LessThan0~2_combout\,
	datab => Count(31),
	datac => \fsm_state.css~regout\,
	datad => \fsm_state.st~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state.css~regout\);

-- Location: LC_X5_Y5_N7
\LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (!Count(31) & (((!\LessThan0~0_combout\) # (!\LessThan7~4_combout\)) # (!\LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => Count(31),
	datac => \LessThan7~4_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X10_Y4_N5
\Selector13~0\ : maxv_lcell
-- Equation(s):
-- \Selector13~0_combout\ = (!\fsm_state.stay~regout\ & (!\fsm_state.red~regout\ & ((!\fsm_state.css4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state.stay~regout\,
	datab => \fsm_state.red~regout\,
	datad => \fsm_state.css4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector13~0_combout\);

-- Location: LC_X5_Y5_N4
\Selector13~1\ : maxv_lcell
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\ & (!\t8[0]~0_combout\ & ((!\LessThan0~1_combout\) # (!\fsm_state.css~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state.css~regout\,
	datab => \LessThan0~1_combout\,
	datac => \Selector13~0_combout\,
	datad => \t8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector13~1_combout\);

-- Location: LC_X7_Y4_N3
\Selector12~0\ : maxv_lcell
-- Equation(s):
-- \Selector12~0_combout\ = ((\fsm_state.css5~regout\) # ((\INTR~combout\ & \fsm_state.css3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTR~combout\,
	datac => \fsm_state.css3~regout\,
	datad => \fsm_state.css5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~0_combout\);

-- Location: LC_X5_Y5_N0
\Selector12~1\ : maxv_lcell
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\) # ((\fsm_state.css2~regout\ & (!Count(31) & !\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state.css2~regout\,
	datab => Count(31),
	datac => \LessThan2~2_combout\,
	datad => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector12~1_combout\);

-- Location: LC_X5_Y5_N1
\CS$latch\ : maxv_lcell
-- Equation(s):
-- \CS$latch~combout\ = ((\Selector13~1_combout\ & ((\Selector12~1_combout\))) # (!\Selector13~1_combout\ & (\CS$latch~combout\)))

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
	datab => \CS$latch~combout\,
	datac => \Selector13~1_combout\,
	datad => \Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CS$latch~combout\);

-- Location: LC_X10_Y4_N2
\Selector9~0\ : maxv_lcell
-- Equation(s):
-- \Selector9~0_combout\ = ((!\LessThan3~13\ & (\fsm_state.red~regout\ & \coun1|timer\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LessThan3~13\,
	datac => \fsm_state.red~regout\,
	datad => \coun1|timer\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~0_combout\);

-- Location: LC_X10_Y4_N4
\Selector9~1\ : maxv_lcell
-- Equation(s):
-- \Selector9~1_combout\ = ((\Selector9~0_combout\) # ((!\LessThan3~15_combout\ & \fsm_state.css4~regout\))) # (!\fsm_state.st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~15_combout\,
	datab => \fsm_state.css4~regout\,
	datac => \fsm_state.st~regout\,
	datad => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~1_combout\);

-- Location: LC_X9_Y4_N7
\RD$latch\ : maxv_lcell
-- Equation(s):
-- \RD$latch~combout\ = ((\Selector9~1_combout\ & ((!\fsm_state.css4~regout\))) # (!\Selector9~1_combout\ & (\RD$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~1_combout\,
	datac => \RD$latch~combout\,
	datad => \fsm_state.css4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RD$latch~combout\);

-- Location: LC_X5_Y5_N8
\Selector11~0\ : maxv_lcell
-- Equation(s):
-- \Selector11~0_combout\ = (\fsm_state.css~regout\ & (((\LessThan0~1_combout\)))) # (!\fsm_state.css~regout\ & (((\fsm_state.wrt~regout\)) # (!\fsm_state.st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd0d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state.st~regout\,
	datab => \fsm_state.wrt~regout\,
	datac => \fsm_state.css~regout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector11~0_combout\);

-- Location: LC_X7_Y5_N3
\Selector10~0\ : maxv_lcell
-- Equation(s):
-- \Selector10~0_combout\ = ((\fsm_state.wrt~regout\ & (!Count(31) & !\LessThan1~1_combout\))) # (!\fsm_state.st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f2f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state.wrt~regout\,
	datab => Count(31),
	datac => \fsm_state.st~regout\,
	datad => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector10~0_combout\);

-- Location: LC_X7_Y5_N0
\WR$latch\ : maxv_lcell
-- Equation(s):
-- \WR$latch~combout\ = ((\Selector11~0_combout\ & ((\Selector10~0_combout\))) # (!\Selector11~0_combout\ & (\WR$latch~combout\)))

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
	datab => \WR$latch~combout\,
	datac => \Selector11~0_combout\,
	datad => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WR$latch~combout\);

-- Location: LC_X12_Y3_N9
\t1[0]~0\ : maxv_lcell
-- Equation(s):
-- \t1[0]~0_combout\ = (\fsm_state.css5~regout\ & ((\INTR~combout\) # ((!\LessThan5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTR~combout\,
	datab => \LessThan5~1\,
	datac => \fsm_state.css5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1[0]~0_combout\);

-- Location: LC_X11_Y4_N4
\LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \LessThan6~0_combout\ = (!\coun1|timer\(3) & (((!\coun1|timer\(1) & \coun1|timer\(0))) # (!\coun1|timer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|timer\(1),
	datab => \coun1|timer\(3),
	datac => \coun1|timer\(0),
	datad => \coun1|timer\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~0_combout\);

-- Location: LC_X11_Y4_N5
\t8[0]~1\ : maxv_lcell
-- Equation(s):
-- \t8[0]~1_combout\ = (\LessThan3~9_combout\ & (\LessThan3~12\ & ((\LessThan6~0_combout\) # (!\coun1|timer\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coun1|timer\(4),
	datab => \LessThan3~9_combout\,
	datac => \LessThan6~0_combout\,
	datad => \LessThan3~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t8[0]~1_combout\);

-- Location: LC_X12_Y3_N1
\t8[0]~2\ : maxv_lcell
-- Equation(s):
-- \t8[0]~2_combout\ = ((\t8[0]~0_combout\ & ((\t8[0]~1_combout\) # (!\coun1|timer\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t8[0]~1_combout\,
	datab => \coun1|timer\(31),
	datad => \t8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t8[0]~2_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_b_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_b_out(3),
	combout => \ADC_b_out~combout\(3));

-- Location: LC_X10_Y6_N6
\t1[0]~1\ : maxv_lcell
-- Equation(s):
-- \t1[0]~1_combout\ = (!\reset~combout\ & (\fsm_state.css5~regout\ & ((\INTR~combout\) # (!\LessThan5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \INTR~combout\,
	datac => \fsm_state.css5~regout\,
	datad => \LessThan5~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1[0]~1_combout\);

-- Location: LC_X10_Y9_N9
\t7[3]\ : maxv_lcell
-- Equation(s):
-- t8(3) = ((GLOBAL(\t8[0]~2_combout\) & (\ADC_b_out~combout\(3))) # (!GLOBAL(\t8[0]~2_combout\) & ((t8(3)))))
-- t7(3) = DFFEAS(t8(3), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t8[0]~2_combout\,
	datac => \ADC_b_out~combout\(3),
	datad => t8(3),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => t8(3),
	regout => t7(3));

-- Location: LC_X9_Y7_N2
\t6[3]\ : maxv_lcell
-- Equation(s):
-- t6(3) = DFFEAS((((t7(3)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t7(3),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t6(3));

-- Location: LC_X9_Y7_N8
\t5[3]\ : maxv_lcell
-- Equation(s):
-- t5(3) = DFFEAS((((t6(3)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t6(3),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t5(3));

-- Location: LC_X14_Y6_N1
\t4[3]\ : maxv_lcell
-- Equation(s):
-- t4(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t5(3), , , VCC)

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
	clk => \clk~combout\,
	datac => t5(3),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t4(3));

-- Location: LC_X14_Y6_N5
\t3[3]\ : maxv_lcell
-- Equation(s):
-- t3(3) = DFFEAS((((t4(3)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t4(3),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t3(3));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_b_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_b_out(2),
	combout => \ADC_b_out~combout\(2));

-- Location: LC_X10_Y7_N2
\t7[2]\ : maxv_lcell
-- Equation(s):
-- t8(2) = ((GLOBAL(\t8[0]~2_combout\) & (\ADC_b_out~combout\(2))) # (!GLOBAL(\t8[0]~2_combout\) & ((t8(2)))))
-- t7(2) = DFFEAS(t8(2), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t8[0]~2_combout\,
	datac => \ADC_b_out~combout\(2),
	datad => t8(2),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => t8(2),
	regout => t7(2));

-- Location: LC_X8_Y8_N9
\t6[2]\ : maxv_lcell
-- Equation(s):
-- t6(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t7(2), , , VCC)

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
	clk => \clk~combout\,
	datac => t7(2),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t6(2));

-- Location: LC_X8_Y8_N2
\t5[2]\ : maxv_lcell
-- Equation(s):
-- t5(2) = DFFEAS((((t6(2)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t6(2),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t5(2));

-- Location: LC_X9_Y6_N6
\t4[2]\ : maxv_lcell
-- Equation(s):
-- t4(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t5(2), , , VCC)

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
	clk => \clk~combout\,
	datac => t5(2),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t4(2));

-- Location: LC_X9_Y6_N9
\t3[2]\ : maxv_lcell
-- Equation(s):
-- t3(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t4(2), , , VCC)

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
	clk => \clk~combout\,
	datac => t4(2),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t3(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_b_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_b_out(1),
	combout => \ADC_b_out~combout\(1));

-- Location: LC_X11_Y8_N9
\t7[1]\ : maxv_lcell
-- Equation(s):
-- t8(1) = (GLOBAL(\t8[0]~2_combout\) & (\ADC_b_out~combout\(1))) # (!GLOBAL(\t8[0]~2_combout\) & (((t8(1)))))
-- t7(1) = DFFEAS(t8(1), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ADC_b_out~combout\(1),
	datab => \t8[0]~2_combout\,
	datad => t8(1),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => t8(1),
	regout => t7(1));

-- Location: LC_X8_Y8_N5
\t6[1]\ : maxv_lcell
-- Equation(s):
-- t6(1) = DFFEAS((((t7(1)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t7(1),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t6(1));

-- Location: LC_X8_Y8_N4
\t5[1]\ : maxv_lcell
-- Equation(s):
-- t5(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t6(1), , , VCC)

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
	clk => \clk~combout\,
	datac => t6(1),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t5(1));

-- Location: LC_X14_Y6_N7
\t4[1]\ : maxv_lcell
-- Equation(s):
-- t4(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t5(1), , , VCC)

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
	clk => \clk~combout\,
	datac => t5(1),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t4(1));

-- Location: LC_X9_Y6_N4
\t3[1]\ : maxv_lcell
-- Equation(s):
-- t3(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t4(1), , , VCC)

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
	clk => \clk~combout\,
	datac => t4(1),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t3(1));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_b_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_b_out(0),
	combout => \ADC_b_out~combout\(0));

-- Location: LC_X10_Y7_N0
\t7[0]\ : maxv_lcell
-- Equation(s):
-- t8(0) = ((GLOBAL(\t8[0]~2_combout\) & (\ADC_b_out~combout\(0))) # (!GLOBAL(\t8[0]~2_combout\) & ((t8(0)))))
-- t7(0) = DFFEAS(t8(0), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ADC_b_out~combout\(0),
	datac => t8(0),
	datad => \t8[0]~2_combout\,
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => t8(0),
	regout => t7(0));

-- Location: LC_X9_Y8_N9
\t6[0]\ : maxv_lcell
-- Equation(s):
-- t6(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t7(0), , , VCC)

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
	clk => \clk~combout\,
	datac => t7(0),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t6(0));

-- Location: LC_X8_Y8_N1
\t5[0]\ : maxv_lcell
-- Equation(s):
-- t5(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t6(0), , , VCC)

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
	clk => \clk~combout\,
	datac => t6(0),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t5(0));

-- Location: LC_X13_Y6_N9
\t4[0]\ : maxv_lcell
-- Equation(s):
-- t4(0) = DFFEAS((((t5(0)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t5(0),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t4(0));

-- Location: LC_X14_Y6_N0
\t3[0]\ : maxv_lcell
-- Equation(s):
-- t3(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t4(0), , , VCC)

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
	clk => \clk~combout\,
	datac => t4(0),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t3(0));

-- Location: LC_X13_Y6_N0
\Add1~40\ : maxv_lcell
-- Equation(s):
-- \Add1~40_combout\ = t3(0) $ ((t4(0)))
-- \Add1~42\ = CARRY((t3(0) & (t4(0))))
-- \Add1~42COUT1_46\ = CARRY((t3(0) & (t4(0))))

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
	dataa => t3(0),
	datab => t4(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_46\);

-- Location: LC_X13_Y6_N1
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = t4(1) $ (t3(1) $ ((\Add1~42\)))
-- \Add1~37\ = CARRY((t4(1) & (!t3(1) & !\Add1~42\)) # (!t4(1) & ((!\Add1~42\) # (!t3(1)))))
-- \Add1~37COUT1_47\ = CARRY((t4(1) & (!t3(1) & !\Add1~42COUT1_46\)) # (!t4(1) & ((!\Add1~42COUT1_46\) # (!t3(1)))))

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
	dataa => t4(1),
	datab => t3(1),
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_47\);

-- Location: LC_X13_Y6_N2
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = t3(2) $ (t4(2) $ ((!\Add1~37\)))
-- \Add1~32\ = CARRY((t3(2) & ((t4(2)) # (!\Add1~37\))) # (!t3(2) & (t4(2) & !\Add1~37\)))
-- \Add1~32COUT1_48\ = CARRY((t3(2) & ((t4(2)) # (!\Add1~37COUT1_47\))) # (!t3(2) & (t4(2) & !\Add1~37COUT1_47\)))

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
	dataa => t3(2),
	datab => t4(2),
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_48\);

-- Location: LC_X13_Y6_N3
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = t4(3) $ (t3(3) $ ((\Add1~32\)))
-- \Add1~2\ = CARRY((t4(3) & (!t3(3) & !\Add1~32\)) # (!t4(3) & ((!\Add1~32\) # (!t3(3)))))
-- \Add1~2COUT1_49\ = CARRY((t4(3) & (!t3(3) & !\Add1~32COUT1_48\)) # (!t4(3) & ((!\Add1~32COUT1_48\) # (!t3(3)))))

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
	dataa => t4(3),
	datab => t3(3),
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_49\);

-- Location: LC_X10_Y6_N4
\t2[3]\ : maxv_lcell
-- Equation(s):
-- t2(3) = DFFEAS((((t3(3)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t3(3),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t2(3));

-- Location: LC_X10_Y6_N1
\t1[3]\ : maxv_lcell
-- Equation(s):
-- t1(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t2(3), , , VCC)

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
	clk => \clk~combout\,
	datac => t2(3),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t1(3));

-- Location: LC_X10_Y6_N9
\t2[2]\ : maxv_lcell
-- Equation(s):
-- t2(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t3(2), , , VCC)

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
	clk => \clk~combout\,
	datac => t3(2),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t2(2));

-- Location: LC_X9_Y6_N7
\t1[2]\ : maxv_lcell
-- Equation(s):
-- t1(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t2(2), , , VCC)

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
	clk => \clk~combout\,
	datac => t2(2),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t1(2));

-- Location: LC_X10_Y6_N7
\t2[1]\ : maxv_lcell
-- Equation(s):
-- t2(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t3(1), , , VCC)

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
	clk => \clk~combout\,
	datac => t3(1),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t2(1));

-- Location: LC_X10_Y6_N8
\t1[1]\ : maxv_lcell
-- Equation(s):
-- t1(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t2(1), , , VCC)

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
	clk => \clk~combout\,
	datac => t2(1),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t1(1));

-- Location: LC_X10_Y6_N0
\t2[0]\ : maxv_lcell
-- Equation(s):
-- t2(0) = DFFEAS((((t3(0)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t3(0),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t2(0));

-- Location: LC_X11_Y6_N9
\t1[0]\ : maxv_lcell
-- Equation(s):
-- t1(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t2(0), , , VCC)

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
	clk => \clk~combout\,
	datac => t2(0),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t1(0));

-- Location: LC_X11_Y6_N0
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = t2(0) $ ((t1(0)))
-- \Add0~42\ = CARRY((t2(0) & (t1(0))))
-- \Add0~42COUT1_46\ = CARRY((t2(0) & (t1(0))))

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
	dataa => t2(0),
	datab => t1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_46\);

-- Location: LC_X11_Y6_N1
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = t1(1) $ (t2(1) $ ((\Add0~42\)))
-- \Add0~37\ = CARRY((t1(1) & (!t2(1) & !\Add0~42\)) # (!t1(1) & ((!\Add0~42\) # (!t2(1)))))
-- \Add0~37COUT1_47\ = CARRY((t1(1) & (!t2(1) & !\Add0~42COUT1_46\)) # (!t1(1) & ((!\Add0~42COUT1_46\) # (!t2(1)))))

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
	dataa => t1(1),
	datab => t2(1),
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_47\);

-- Location: LC_X11_Y6_N2
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = t2(2) $ (t1(2) $ ((!\Add0~37\)))
-- \Add0~32\ = CARRY((t2(2) & ((t1(2)) # (!\Add0~37\))) # (!t2(2) & (t1(2) & !\Add0~37\)))
-- \Add0~32COUT1_48\ = CARRY((t2(2) & ((t1(2)) # (!\Add0~37COUT1_47\))) # (!t2(2) & (t1(2) & !\Add0~37COUT1_47\)))

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
	dataa => t2(2),
	datab => t1(2),
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_48\);

-- Location: LC_X11_Y6_N3
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = t1(3) $ (t2(3) $ ((\Add0~32\)))
-- \Add0~2\ = CARRY((t1(3) & (!t2(3) & !\Add0~32\)) # (!t1(3) & ((!\Add0~32\) # (!t2(3)))))
-- \Add0~2COUT1_49\ = CARRY((t1(3) & (!t2(3) & !\Add0~32COUT1_48\)) # (!t1(3) & ((!\Add0~32COUT1_48\) # (!t2(3)))))

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
	dataa => t1(3),
	datab => t2(3),
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_49\);

-- Location: LC_X12_Y6_N0
\Add2~45\ : maxv_lcell
-- Equation(s):
-- \Add2~45_combout\ = \Add1~40_combout\ $ ((\Add0~40_combout\))
-- \Add2~47\ = CARRY((\Add1~40_combout\ & (\Add0~40_combout\)))
-- \Add2~47COUT1_51\ = CARRY((\Add1~40_combout\ & (\Add0~40_combout\)))

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
	dataa => \Add1~40_combout\,
	datab => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~45_combout\,
	cout0 => \Add2~47\,
	cout1 => \Add2~47COUT1_51\);

-- Location: LC_X12_Y6_N1
\Add2~40\ : maxv_lcell
-- Equation(s):
-- \Add2~40_combout\ = \Add0~35_combout\ $ (\Add1~35_combout\ $ ((\Add2~47\)))
-- \Add2~42\ = CARRY((\Add0~35_combout\ & (!\Add1~35_combout\ & !\Add2~47\)) # (!\Add0~35_combout\ & ((!\Add2~47\) # (!\Add1~35_combout\))))
-- \Add2~42COUT1_52\ = CARRY((\Add0~35_combout\ & (!\Add1~35_combout\ & !\Add2~47COUT1_51\)) # (!\Add0~35_combout\ & ((!\Add2~47COUT1_51\) # (!\Add1~35_combout\))))

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
	dataa => \Add0~35_combout\,
	datab => \Add1~35_combout\,
	cin0 => \Add2~47\,
	cin1 => \Add2~47COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\,
	cout0 => \Add2~42\,
	cout1 => \Add2~42COUT1_52\);

-- Location: LC_X12_Y6_N2
\Add2~35\ : maxv_lcell
-- Equation(s):
-- \Add2~35_combout\ = \Add0~30_combout\ $ (\Add1~30_combout\ $ ((!\Add2~42\)))
-- \Add2~37\ = CARRY((\Add0~30_combout\ & ((\Add1~30_combout\) # (!\Add2~42\))) # (!\Add0~30_combout\ & (\Add1~30_combout\ & !\Add2~42\)))
-- \Add2~37COUT1_53\ = CARRY((\Add0~30_combout\ & ((\Add1~30_combout\) # (!\Add2~42COUT1_52\))) # (!\Add0~30_combout\ & (\Add1~30_combout\ & !\Add2~42COUT1_52\)))

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
	dataa => \Add0~30_combout\,
	datab => \Add1~30_combout\,
	cin0 => \Add2~42\,
	cin1 => \Add2~42COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\,
	cout0 => \Add2~37\,
	cout1 => \Add2~37COUT1_53\);

-- Location: LC_X12_Y6_N3
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = \Add1~0_combout\ $ (\Add0~0_combout\ $ ((\Add2~37\)))
-- \Add2~2\ = CARRY((\Add1~0_combout\ & (!\Add0~0_combout\ & !\Add2~37\)) # (!\Add1~0_combout\ & ((!\Add2~37\) # (!\Add0~0_combout\))))
-- \Add2~2COUT1_54\ = CARRY((\Add1~0_combout\ & (!\Add0~0_combout\ & !\Add2~37COUT1_53\)) # (!\Add1~0_combout\ & ((!\Add2~37COUT1_53\) # (!\Add0~0_combout\))))

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
	dataa => \Add1~0_combout\,
	datab => \Add0~0_combout\,
	cin0 => \Add2~37\,
	cin1 => \Add2~37COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_54\);

-- Location: LC_X11_Y8_N0
\Add5~40\ : maxv_lcell
-- Equation(s):
-- \Add5~40_combout\ = t7(0) $ ((t8(0)))
-- \Add5~42\ = CARRY((t7(0) & (t8(0))))
-- \Add5~42COUT1_46\ = CARRY((t7(0) & (t8(0))))

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
	dataa => t7(0),
	datab => t8(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~40_combout\,
	cout0 => \Add5~42\,
	cout1 => \Add5~42COUT1_46\);

-- Location: LC_X11_Y8_N1
\Add5~35\ : maxv_lcell
-- Equation(s):
-- \Add5~35_combout\ = t7(1) $ (t8(1) $ ((\Add5~42\)))
-- \Add5~37\ = CARRY((t7(1) & (!t8(1) & !\Add5~42\)) # (!t7(1) & ((!\Add5~42\) # (!t8(1)))))
-- \Add5~37COUT1_47\ = CARRY((t7(1) & (!t8(1) & !\Add5~42COUT1_46\)) # (!t7(1) & ((!\Add5~42COUT1_46\) # (!t8(1)))))

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
	dataa => t7(1),
	datab => t8(1),
	cin0 => \Add5~42\,
	cin1 => \Add5~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~35_combout\,
	cout0 => \Add5~37\,
	cout1 => \Add5~37COUT1_47\);

-- Location: LC_X11_Y8_N2
\Add5~30\ : maxv_lcell
-- Equation(s):
-- \Add5~30_combout\ = t7(2) $ (t8(2) $ ((!\Add5~37\)))
-- \Add5~32\ = CARRY((t7(2) & ((t8(2)) # (!\Add5~37\))) # (!t7(2) & (t8(2) & !\Add5~37\)))
-- \Add5~32COUT1_48\ = CARRY((t7(2) & ((t8(2)) # (!\Add5~37COUT1_47\))) # (!t7(2) & (t8(2) & !\Add5~37COUT1_47\)))

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
	dataa => t7(2),
	datab => t8(2),
	cin0 => \Add5~37\,
	cin1 => \Add5~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~30_combout\,
	cout0 => \Add5~32\,
	cout1 => \Add5~32COUT1_48\);

-- Location: LC_X11_Y8_N3
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = t7(3) $ (t8(3) $ ((\Add5~32\)))
-- \Add5~2\ = CARRY((t7(3) & (!t8(3) & !\Add5~32\)) # (!t7(3) & ((!\Add5~32\) # (!t8(3)))))
-- \Add5~2COUT1_49\ = CARRY((t7(3) & (!t8(3) & !\Add5~32COUT1_48\)) # (!t7(3) & ((!\Add5~32COUT1_48\) # (!t8(3)))))

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
	dataa => t7(3),
	datab => t8(3),
	cin0 => \Add5~32\,
	cin1 => \Add5~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\,
	cout0 => \Add5~2\,
	cout1 => \Add5~2COUT1_49\);

-- Location: LC_X9_Y8_N0
\Add3~40\ : maxv_lcell
-- Equation(s):
-- \Add3~40_combout\ = t5(0) $ ((t6(0)))
-- \Add3~42\ = CARRY((t5(0) & (t6(0))))
-- \Add3~42COUT1_46\ = CARRY((t5(0) & (t6(0))))

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
	dataa => t5(0),
	datab => t6(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~40_combout\,
	cout0 => \Add3~42\,
	cout1 => \Add3~42COUT1_46\);

-- Location: LC_X9_Y8_N1
\Add3~35\ : maxv_lcell
-- Equation(s):
-- \Add3~35_combout\ = t6(1) $ (t5(1) $ ((\Add3~42\)))
-- \Add3~37\ = CARRY((t6(1) & (!t5(1) & !\Add3~42\)) # (!t6(1) & ((!\Add3~42\) # (!t5(1)))))
-- \Add3~37COUT1_47\ = CARRY((t6(1) & (!t5(1) & !\Add3~42COUT1_46\)) # (!t6(1) & ((!\Add3~42COUT1_46\) # (!t5(1)))))

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
	dataa => t6(1),
	datab => t5(1),
	cin0 => \Add3~42\,
	cin1 => \Add3~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35_combout\,
	cout0 => \Add3~37\,
	cout1 => \Add3~37COUT1_47\);

-- Location: LC_X9_Y8_N2
\Add3~30\ : maxv_lcell
-- Equation(s):
-- \Add3~30_combout\ = t6(2) $ (t5(2) $ ((!\Add3~37\)))
-- \Add3~32\ = CARRY((t6(2) & ((t5(2)) # (!\Add3~37\))) # (!t6(2) & (t5(2) & !\Add3~37\)))
-- \Add3~32COUT1_48\ = CARRY((t6(2) & ((t5(2)) # (!\Add3~37COUT1_47\))) # (!t6(2) & (t5(2) & !\Add3~37COUT1_47\)))

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
	dataa => t6(2),
	datab => t5(2),
	cin0 => \Add3~37\,
	cin1 => \Add3~37COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout0 => \Add3~32\,
	cout1 => \Add3~32COUT1_48\);

-- Location: LC_X9_Y8_N3
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = t6(3) $ (t5(3) $ ((\Add3~32\)))
-- \Add3~2\ = CARRY((t6(3) & (!t5(3) & !\Add3~32\)) # (!t6(3) & ((!\Add3~32\) # (!t5(3)))))
-- \Add3~2COUT1_49\ = CARRY((t6(3) & (!t5(3) & !\Add3~32COUT1_48\)) # (!t6(3) & ((!\Add3~32COUT1_48\) # (!t5(3)))))

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
	dataa => t6(3),
	datab => t5(3),
	cin0 => \Add3~32\,
	cin1 => \Add3~32COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\,
	cout0 => \Add3~2\,
	cout1 => \Add3~2COUT1_49\);

-- Location: LC_X10_Y8_N0
\Add4~45\ : maxv_lcell
-- Equation(s):
-- \Add4~45_combout\ = \Add5~40_combout\ $ ((\Add3~40_combout\))
-- \Add4~47\ = CARRY((\Add5~40_combout\ & (\Add3~40_combout\)))
-- \Add4~47COUT1_51\ = CARRY((\Add5~40_combout\ & (\Add3~40_combout\)))

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
	dataa => \Add5~40_combout\,
	datab => \Add3~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~45_combout\,
	cout0 => \Add4~47\,
	cout1 => \Add4~47COUT1_51\);

-- Location: LC_X10_Y8_N1
\Add4~40\ : maxv_lcell
-- Equation(s):
-- \Add4~40_combout\ = \Add5~35_combout\ $ (\Add3~35_combout\ $ ((\Add4~47\)))
-- \Add4~42\ = CARRY((\Add5~35_combout\ & (!\Add3~35_combout\ & !\Add4~47\)) # (!\Add5~35_combout\ & ((!\Add4~47\) # (!\Add3~35_combout\))))
-- \Add4~42COUT1_52\ = CARRY((\Add5~35_combout\ & (!\Add3~35_combout\ & !\Add4~47COUT1_51\)) # (!\Add5~35_combout\ & ((!\Add4~47COUT1_51\) # (!\Add3~35_combout\))))

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
	dataa => \Add5~35_combout\,
	datab => \Add3~35_combout\,
	cin0 => \Add4~47\,
	cin1 => \Add4~47COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~40_combout\,
	cout0 => \Add4~42\,
	cout1 => \Add4~42COUT1_52\);

-- Location: LC_X10_Y8_N2
\Add4~35\ : maxv_lcell
-- Equation(s):
-- \Add4~35_combout\ = \Add3~30_combout\ $ (\Add5~30_combout\ $ ((!\Add4~42\)))
-- \Add4~37\ = CARRY((\Add3~30_combout\ & ((\Add5~30_combout\) # (!\Add4~42\))) # (!\Add3~30_combout\ & (\Add5~30_combout\ & !\Add4~42\)))
-- \Add4~37COUT1_53\ = CARRY((\Add3~30_combout\ & ((\Add5~30_combout\) # (!\Add4~42COUT1_52\))) # (!\Add3~30_combout\ & (\Add5~30_combout\ & !\Add4~42COUT1_52\)))

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
	dataa => \Add3~30_combout\,
	datab => \Add5~30_combout\,
	cin0 => \Add4~42\,
	cin1 => \Add4~42COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~35_combout\,
	cout0 => \Add4~37\,
	cout1 => \Add4~37COUT1_53\);

-- Location: LC_X10_Y8_N3
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = \Add5~0_combout\ $ (\Add3~0_combout\ $ ((\Add4~37\)))
-- \Add4~2\ = CARRY((\Add5~0_combout\ & (!\Add3~0_combout\ & !\Add4~37\)) # (!\Add5~0_combout\ & ((!\Add4~37\) # (!\Add3~0_combout\))))
-- \Add4~2COUT1_54\ = CARRY((\Add5~0_combout\ & (!\Add3~0_combout\ & !\Add4~37COUT1_53\)) # (!\Add5~0_combout\ & ((!\Add4~37COUT1_53\) # (!\Add3~0_combout\))))

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
	dataa => \Add5~0_combout\,
	datab => \Add3~0_combout\,
	cin0 => \Add4~37\,
	cin1 => \Add4~37COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\,
	cout0 => \Add4~2\,
	cout1 => \Add4~2COUT1_54\);

-- Location: LC_X12_Y8_N5
\Add6~52\ : maxv_lcell
-- Equation(s):
-- \Add6~52_cout0\ = CARRY((\Add2~45_combout\ & (\Add4~45_combout\)))
-- \Add6~52COUT1_56\ = CARRY((\Add2~45_combout\ & (\Add4~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~45_combout\,
	datab => \Add4~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~50\,
	cout0 => \Add6~52_cout0\,
	cout1 => \Add6~52COUT1_56\);

-- Location: LC_X12_Y8_N6
\Add6~47\ : maxv_lcell
-- Equation(s):
-- \Add6~47_cout0\ = CARRY((\Add2~40_combout\ & (!\Add4~40_combout\ & !\Add6~52_cout0\)) # (!\Add2~40_combout\ & ((!\Add6~52_cout0\) # (!\Add4~40_combout\))))
-- \Add6~47COUT1_57\ = CARRY((\Add2~40_combout\ & (!\Add4~40_combout\ & !\Add6~52COUT1_56\)) # (!\Add2~40_combout\ & ((!\Add6~52COUT1_56\) # (!\Add4~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff17",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~40_combout\,
	datab => \Add4~40_combout\,
	cin0 => \Add6~52_cout0\,
	cin1 => \Add6~52COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~45\,
	cout0 => \Add6~47_cout0\,
	cout1 => \Add6~47COUT1_57\);

-- Location: LC_X12_Y8_N7
\Add6~42\ : maxv_lcell
-- Equation(s):
-- \Add6~42_cout0\ = CARRY((\Add2~35_combout\ & ((\Add4~35_combout\) # (!\Add6~47_cout0\))) # (!\Add2~35_combout\ & (\Add4~35_combout\ & !\Add6~47_cout0\)))
-- \Add6~42COUT1_58\ = CARRY((\Add2~35_combout\ & ((\Add4~35_combout\) # (!\Add6~47COUT1_57\))) # (!\Add2~35_combout\ & (\Add4~35_combout\ & !\Add6~47COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff8e",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~35_combout\,
	datab => \Add4~35_combout\,
	cin0 => \Add6~47_cout0\,
	cin1 => \Add6~47COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~40\,
	cout0 => \Add6~42_cout0\,
	cout1 => \Add6~42COUT1_58\);

-- Location: LC_X12_Y8_N8
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = \Add2~0_combout\ $ (\Add4~0_combout\ $ ((\Add6~42_cout0\)))
-- \Add6~2\ = CARRY((\Add2~0_combout\ & (!\Add4~0_combout\ & !\Add6~42_cout0\)) # (!\Add2~0_combout\ & ((!\Add6~42_cout0\) # (!\Add4~0_combout\))))
-- \Add6~2COUT1_59\ = CARRY((\Add2~0_combout\ & (!\Add4~0_combout\ & !\Add6~42COUT1_58\)) # (!\Add2~0_combout\ & ((!\Add6~42COUT1_58\) # (!\Add4~0_combout\))))

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
	dataa => \Add2~0_combout\,
	datab => \Add4~0_combout\,
	cin0 => \Add6~42_cout0\,
	cin1 => \Add6~42COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\,
	cout0 => \Add6~2\,
	cout1 => \Add6~2COUT1_59\);

-- Location: LC_X12_Y8_N3
\dac_prev[0]\ : maxv_lcell
-- Equation(s):
-- dac_prev(0) = ((GLOBAL(\t1[0]~0_combout\) & ((\Add6~0_combout\))) # (!GLOBAL(\t1[0]~0_combout\) & (dac_prev(0))))

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
	dataa => dac_prev(0),
	datac => \t1[0]~0_combout\,
	datad => \Add6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dac_prev(0));

-- Location: LC_X12_Y8_N4
\dac_in[0]$latch\ : maxv_lcell
-- Equation(s):
-- \dac_in[0]$latch~combout\ = ((GLOBAL(\fsm_state.st~regout\) & (\dac_in[0]$latch~combout\)) # (!GLOBAL(\fsm_state.st~regout\) & ((dac_prev(0)))))

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
	datab => \fsm_state.st~regout\,
	datac => \dac_in[0]$latch~combout\,
	datad => dac_prev(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dac_in[0]$latch~combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_b_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_b_out(4),
	combout => \ADC_b_out~combout\(4));

-- Location: LC_X10_Y7_N7
\t7[4]\ : maxv_lcell
-- Equation(s):
-- t8(4) = ((GLOBAL(\t8[0]~2_combout\) & (\ADC_b_out~combout\(4))) # (!GLOBAL(\t8[0]~2_combout\) & ((t8(4)))))
-- t7(4) = DFFEAS(t8(4), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ADC_b_out~combout\(4),
	datac => t8(4),
	datad => \t8[0]~2_combout\,
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => t8(4),
	regout => t7(4));

-- Location: LC_X10_Y7_N5
\t6[4]\ : maxv_lcell
-- Equation(s):
-- t6(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t7(4), , , VCC)

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
	clk => \clk~combout\,
	datac => t7(4),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t6(4));

-- Location: LC_X9_Y6_N2
\t5[4]\ : maxv_lcell
-- Equation(s):
-- t5(4) = DFFEAS((((t6(4)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t6(4),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t5(4));

-- Location: LC_X9_Y8_N4
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = t5(4) $ (t6(4) $ ((!\Add3~2\)))
-- \Add3~7\ = CARRY((t5(4) & ((t6(4)) # (!\Add3~2COUT1_49\))) # (!t5(4) & (t6(4) & !\Add3~2COUT1_49\)))

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
	dataa => t5(4),
	datab => t6(4),
	cin0 => \Add3~2\,
	cin1 => \Add3~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout => \Add3~7\);

-- Location: LC_X11_Y8_N4
\Add5~5\ : maxv_lcell
-- Equation(s):
-- \Add5~5_combout\ = t7(4) $ (t8(4) $ ((!\Add5~2\)))
-- \Add5~7\ = CARRY((t7(4) & ((t8(4)) # (!\Add5~2COUT1_49\))) # (!t7(4) & (t8(4) & !\Add5~2COUT1_49\)))

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
	dataa => t7(4),
	datab => t8(4),
	cin0 => \Add5~2\,
	cin1 => \Add5~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~5_combout\,
	cout => \Add5~7\);

-- Location: LC_X10_Y8_N4
\Add4~5\ : maxv_lcell
-- Equation(s):
-- \Add4~5_combout\ = \Add3~5_combout\ $ (\Add5~5_combout\ $ ((!\Add4~2\)))
-- \Add4~7\ = CARRY((\Add3~5_combout\ & ((\Add5~5_combout\) # (!\Add4~2COUT1_54\))) # (!\Add3~5_combout\ & (\Add5~5_combout\ & !\Add4~2COUT1_54\)))

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
	dataa => \Add3~5_combout\,
	datab => \Add5~5_combout\,
	cin0 => \Add4~2\,
	cin1 => \Add4~2COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~5_combout\,
	cout => \Add4~7\);

-- Location: LC_X9_Y6_N3
\t4[4]\ : maxv_lcell
-- Equation(s):
-- t4(4) = DFFEAS((((t5(4)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t5(4),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t4(4));

-- Location: LC_X9_Y6_N5
\t3[4]\ : maxv_lcell
-- Equation(s):
-- t3(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t4(4), , , VCC)

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
	clk => \clk~combout\,
	datac => t4(4),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t3(4));

-- Location: LC_X10_Y7_N6
\t2[4]\ : maxv_lcell
-- Equation(s):
-- t2(4) = DFFEAS((((t3(4)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t3(4),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t2(4));

-- Location: LC_X11_Y7_N2
\t1[4]\ : maxv_lcell
-- Equation(s):
-- t1(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t2(4), , , VCC)

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
	clk => \clk~combout\,
	datac => t2(4),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t1(4));

-- Location: LC_X11_Y6_N4
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = t1(4) $ (t2(4) $ ((!\Add0~2\)))
-- \Add0~7\ = CARRY((t1(4) & ((t2(4)) # (!\Add0~2COUT1_49\))) # (!t1(4) & (t2(4) & !\Add0~2COUT1_49\)))

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
	dataa => t1(4),
	datab => t2(4),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X13_Y6_N4
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = t3(4) $ (t4(4) $ ((!\Add1~2\)))
-- \Add1~7\ = CARRY((t3(4) & ((t4(4)) # (!\Add1~2COUT1_49\))) # (!t3(4) & (t4(4) & !\Add1~2COUT1_49\)))

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
	dataa => t3(4),
	datab => t4(4),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout => \Add1~7\);

-- Location: LC_X12_Y6_N4
\Add2~5\ : maxv_lcell
-- Equation(s):
-- \Add2~5_combout\ = \Add0~5_combout\ $ (\Add1~5_combout\ $ ((!\Add2~2\)))
-- \Add2~7\ = CARRY((\Add0~5_combout\ & ((\Add1~5_combout\) # (!\Add2~2COUT1_54\))) # (!\Add0~5_combout\ & (\Add1~5_combout\ & !\Add2~2COUT1_54\)))

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
	dataa => \Add0~5_combout\,
	datab => \Add1~5_combout\,
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout => \Add2~7\);

-- Location: LC_X12_Y8_N9
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = \Add4~5_combout\ $ (\Add2~5_combout\ $ ((!\Add6~2\)))
-- \Add6~7\ = CARRY((\Add4~5_combout\ & ((\Add2~5_combout\) # (!\Add6~2COUT1_59\))) # (!\Add4~5_combout\ & (\Add2~5_combout\ & !\Add6~2COUT1_59\)))

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
	dataa => \Add4~5_combout\,
	datab => \Add2~5_combout\,
	cin0 => \Add6~2\,
	cin1 => \Add6~2COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\,
	cout => \Add6~7\);

-- Location: LC_X12_Y8_N1
\dac_prev[1]\ : maxv_lcell
-- Equation(s):
-- dac_prev(1) = ((GLOBAL(\t1[0]~0_combout\) & ((\Add6~5_combout\))) # (!GLOBAL(\t1[0]~0_combout\) & (dac_prev(1))))

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
	datab => dac_prev(1),
	datac => \t1[0]~0_combout\,
	datad => \Add6~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dac_prev(1));

-- Location: LC_X12_Y8_N0
\dac_in[1]$latch\ : maxv_lcell
-- Equation(s):
-- \dac_in[1]$latch~combout\ = ((GLOBAL(\fsm_state.st~regout\) & (\dac_in[1]$latch~combout\)) # (!GLOBAL(\fsm_state.st~regout\) & ((dac_prev(1)))))

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
	datab => \fsm_state.st~regout\,
	datac => \dac_in[1]$latch~combout\,
	datad => dac_prev(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dac_in[1]$latch~combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_b_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_b_out(5),
	combout => \ADC_b_out~combout\(5));

-- Location: LC_X10_Y7_N1
\t7[5]\ : maxv_lcell
-- Equation(s):
-- t8(5) = ((GLOBAL(\t8[0]~2_combout\) & (\ADC_b_out~combout\(5))) # (!GLOBAL(\t8[0]~2_combout\) & ((t8(5)))))
-- t7(5) = DFFEAS(t8(5), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t8[0]~2_combout\,
	datac => \ADC_b_out~combout\(5),
	datad => t8(5),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => t8(5),
	regout => t7(5));

-- Location: LC_X10_Y7_N8
\t6[5]\ : maxv_lcell
-- Equation(s):
-- t6(5) = DFFEAS((((t7(5)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t7(5),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t6(5));

-- Location: LC_X10_Y7_N9
\t5[5]\ : maxv_lcell
-- Equation(s):
-- t5(5) = DFFEAS((((t6(5)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t6(5),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t5(5));

-- Location: LC_X9_Y8_N5
\Add3~10\ : maxv_lcell
-- Equation(s):
-- \Add3~10_combout\ = t6(5) $ (t5(5) $ ((\Add3~7\)))
-- \Add3~12\ = CARRY((t6(5) & (!t5(5) & !\Add3~7\)) # (!t6(5) & ((!\Add3~7\) # (!t5(5)))))
-- \Add3~12COUT1_50\ = CARRY((t6(5) & (!t5(5) & !\Add3~7\)) # (!t6(5) & ((!\Add3~7\) # (!t5(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t6(5),
	datab => t5(5),
	cin => \Add3~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_50\);

-- Location: LC_X11_Y8_N5
\Add5~10\ : maxv_lcell
-- Equation(s):
-- \Add5~10_combout\ = t7(5) $ (t8(5) $ ((\Add5~7\)))
-- \Add5~12\ = CARRY((t7(5) & (!t8(5) & !\Add5~7\)) # (!t7(5) & ((!\Add5~7\) # (!t8(5)))))
-- \Add5~12COUT1_50\ = CARRY((t7(5) & (!t8(5) & !\Add5~7\)) # (!t7(5) & ((!\Add5~7\) # (!t8(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t7(5),
	datab => t8(5),
	cin => \Add5~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~10_combout\,
	cout0 => \Add5~12\,
	cout1 => \Add5~12COUT1_50\);

-- Location: LC_X10_Y8_N5
\Add4~10\ : maxv_lcell
-- Equation(s):
-- \Add4~10_combout\ = \Add3~10_combout\ $ (\Add5~10_combout\ $ ((\Add4~7\)))
-- \Add4~12\ = CARRY((\Add3~10_combout\ & (!\Add5~10_combout\ & !\Add4~7\)) # (!\Add3~10_combout\ & ((!\Add4~7\) # (!\Add5~10_combout\))))
-- \Add4~12COUT1_55\ = CARRY((\Add3~10_combout\ & (!\Add5~10_combout\ & !\Add4~7\)) # (!\Add3~10_combout\ & ((!\Add4~7\) # (!\Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Add5~10_combout\,
	cin => \Add4~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~10_combout\,
	cout0 => \Add4~12\,
	cout1 => \Add4~12COUT1_55\);

-- Location: LC_X14_Y6_N3
\t4[5]\ : maxv_lcell
-- Equation(s):
-- t4(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t5(5), , , VCC)

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
	clk => \clk~combout\,
	datac => t5(5),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t4(5));

-- Location: LC_X14_Y6_N9
\t3[5]\ : maxv_lcell
-- Equation(s):
-- t3(5) = DFFEAS((((t4(5)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t4(5),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t3(5));

-- Location: LC_X9_Y6_N8
\t2[5]\ : maxv_lcell
-- Equation(s):
-- t2(5) = DFFEAS((((t3(5)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t3(5),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t2(5));

-- Location: LC_X9_Y6_N0
\t1[5]\ : maxv_lcell
-- Equation(s):
-- t1(5) = DFFEAS((((t2(5)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t2(5),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t1(5));

-- Location: LC_X11_Y6_N5
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = t2(5) $ (t1(5) $ ((\Add0~7\)))
-- \Add0~12\ = CARRY((t2(5) & (!t1(5) & !\Add0~7\)) # (!t2(5) & ((!\Add0~7\) # (!t1(5)))))
-- \Add0~12COUT1_50\ = CARRY((t2(5) & (!t1(5) & !\Add0~7\)) # (!t2(5) & ((!\Add0~7\) # (!t1(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t2(5),
	datab => t1(5),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_50\);

-- Location: LC_X13_Y6_N5
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = t4(5) $ (t3(5) $ ((\Add1~7\)))
-- \Add1~12\ = CARRY((t4(5) & (!t3(5) & !\Add1~7\)) # (!t4(5) & ((!\Add1~7\) # (!t3(5)))))
-- \Add1~12COUT1_50\ = CARRY((t4(5) & (!t3(5) & !\Add1~7\)) # (!t4(5) & ((!\Add1~7\) # (!t3(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t4(5),
	datab => t3(5),
	cin => \Add1~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_50\);

-- Location: LC_X12_Y6_N5
\Add2~10\ : maxv_lcell
-- Equation(s):
-- \Add2~10_combout\ = \Add0~10_combout\ $ (\Add1~10_combout\ $ ((\Add2~7\)))
-- \Add2~12\ = CARRY((\Add0~10_combout\ & (!\Add1~10_combout\ & !\Add2~7\)) # (!\Add0~10_combout\ & ((!\Add2~7\) # (!\Add1~10_combout\))))
-- \Add2~12COUT1_55\ = CARRY((\Add0~10_combout\ & (!\Add1~10_combout\ & !\Add2~7\)) # (!\Add0~10_combout\ & ((!\Add2~7\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add1~10_combout\,
	cin => \Add2~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_55\);

-- Location: LC_X13_Y8_N0
\Add6~10\ : maxv_lcell
-- Equation(s):
-- \Add6~10_combout\ = \Add4~10_combout\ $ (\Add2~10_combout\ $ ((\Add6~7\)))
-- \Add6~12\ = CARRY((\Add4~10_combout\ & (!\Add2~10_combout\ & !\Add6~7\)) # (!\Add4~10_combout\ & ((!\Add6~7\) # (!\Add2~10_combout\))))
-- \Add6~12COUT1_60\ = CARRY((\Add4~10_combout\ & (!\Add2~10_combout\ & !\Add6~7\)) # (!\Add4~10_combout\ & ((!\Add6~7\) # (!\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \Add2~10_combout\,
	cin => \Add6~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_60\);

-- Location: LC_X14_Y8_N4
\dac_prev[2]\ : maxv_lcell
-- Equation(s):
-- dac_prev(2) = (GLOBAL(\t1[0]~0_combout\) & (((\Add6~10_combout\)))) # (!GLOBAL(\t1[0]~0_combout\) & (((dac_prev(2)))))

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
	dataa => \t1[0]~0_combout\,
	datac => dac_prev(2),
	datad => \Add6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dac_prev(2));

-- Location: LC_X14_Y8_N5
\dac_in[2]$latch\ : maxv_lcell
-- Equation(s):
-- \dac_in[2]$latch~combout\ = ((GLOBAL(\fsm_state.st~regout\) & (\dac_in[2]$latch~combout\)) # (!GLOBAL(\fsm_state.st~regout\) & ((dac_prev(2)))))

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
	datab => \fsm_state.st~regout\,
	datac => \dac_in[2]$latch~combout\,
	datad => dac_prev(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dac_in[2]$latch~combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_b_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_b_out(6),
	combout => \ADC_b_out~combout\(6));

-- Location: LC_X11_Y7_N9
\t7[6]\ : maxv_lcell
-- Equation(s):
-- t8(6) = ((GLOBAL(\t8[0]~2_combout\) & (\ADC_b_out~combout\(6))) # (!GLOBAL(\t8[0]~2_combout\) & ((t8(6)))))
-- t7(6) = DFFEAS(t8(6), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t8[0]~2_combout\,
	datac => \ADC_b_out~combout\(6),
	datad => t8(6),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => t8(6),
	regout => t7(6));

-- Location: LC_X9_Y7_N0
\t6[6]\ : maxv_lcell
-- Equation(s):
-- t6(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t7(6), , , VCC)

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
	clk => \clk~combout\,
	datac => t7(6),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t6(6));

-- Location: LC_X9_Y7_N5
\t5[6]\ : maxv_lcell
-- Equation(s):
-- t5(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t6(6), , , VCC)

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
	clk => \clk~combout\,
	datac => t6(6),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t5(6));

-- Location: LC_X9_Y6_N1
\t4[6]\ : maxv_lcell
-- Equation(s):
-- t4(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t5(6), , , VCC)

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
	clk => \clk~combout\,
	datac => t5(6),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t4(6));

-- Location: LC_X13_Y7_N5
\t3[6]\ : maxv_lcell
-- Equation(s):
-- t3(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t4(6), , , VCC)

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
	clk => \clk~combout\,
	datac => t4(6),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t3(6));

-- Location: LC_X13_Y6_N6
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = t3(6) $ (t4(6) $ ((!(!\Add1~7\ & \Add1~12\) # (\Add1~7\ & \Add1~12COUT1_50\))))
-- \Add1~17\ = CARRY((t3(6) & ((t4(6)) # (!\Add1~12\))) # (!t3(6) & (t4(6) & !\Add1~12\)))
-- \Add1~17COUT1_51\ = CARRY((t3(6) & ((t4(6)) # (!\Add1~12COUT1_50\))) # (!t3(6) & (t4(6) & !\Add1~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t3(6),
	datab => t4(6),
	cin => \Add1~7\,
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_51\);

-- Location: LC_X11_Y7_N8
\t2[6]\ : maxv_lcell
-- Equation(s):
-- t2(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t3(6), , , VCC)

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
	clk => \clk~combout\,
	datac => t3(6),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t2(6));

-- Location: LC_X11_Y7_N3
\t1[6]\ : maxv_lcell
-- Equation(s):
-- t1(6) = DFFEAS((((t2(6)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t2(6),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t1(6));

-- Location: LC_X11_Y6_N6
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = t1(6) $ (t2(6) $ ((!(!\Add0~7\ & \Add0~12\) # (\Add0~7\ & \Add0~12COUT1_50\))))
-- \Add0~17\ = CARRY((t1(6) & ((t2(6)) # (!\Add0~12\))) # (!t1(6) & (t2(6) & !\Add0~12\)))
-- \Add0~17COUT1_51\ = CARRY((t1(6) & ((t2(6)) # (!\Add0~12COUT1_50\))) # (!t1(6) & (t2(6) & !\Add0~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t1(6),
	datab => t2(6),
	cin => \Add0~7\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_51\);

-- Location: LC_X12_Y6_N6
\Add2~15\ : maxv_lcell
-- Equation(s):
-- \Add2~15_combout\ = \Add1~15_combout\ $ (\Add0~15_combout\ $ ((!(!\Add2~7\ & \Add2~12\) # (\Add2~7\ & \Add2~12COUT1_55\))))
-- \Add2~17\ = CARRY((\Add1~15_combout\ & ((\Add0~15_combout\) # (!\Add2~12\))) # (!\Add1~15_combout\ & (\Add0~15_combout\ & !\Add2~12\)))
-- \Add2~17COUT1_56\ = CARRY((\Add1~15_combout\ & ((\Add0~15_combout\) # (!\Add2~12COUT1_55\))) # (!\Add1~15_combout\ & (\Add0~15_combout\ & !\Add2~12COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datab => \Add0~15_combout\,
	cin => \Add2~7\,
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout0 => \Add2~17\,
	cout1 => \Add2~17COUT1_56\);

-- Location: LC_X11_Y8_N6
\Add5~15\ : maxv_lcell
-- Equation(s):
-- \Add5~15_combout\ = t8(6) $ (t7(6) $ ((!(!\Add5~7\ & \Add5~12\) # (\Add5~7\ & \Add5~12COUT1_50\))))
-- \Add5~17\ = CARRY((t8(6) & ((t7(6)) # (!\Add5~12\))) # (!t8(6) & (t7(6) & !\Add5~12\)))
-- \Add5~17COUT1_51\ = CARRY((t8(6) & ((t7(6)) # (!\Add5~12COUT1_50\))) # (!t8(6) & (t7(6) & !\Add5~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t8(6),
	datab => t7(6),
	cin => \Add5~7\,
	cin0 => \Add5~12\,
	cin1 => \Add5~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~15_combout\,
	cout0 => \Add5~17\,
	cout1 => \Add5~17COUT1_51\);

-- Location: LC_X9_Y8_N6
\Add3~15\ : maxv_lcell
-- Equation(s):
-- \Add3~15_combout\ = t6(6) $ (t5(6) $ ((!(!\Add3~7\ & \Add3~12\) # (\Add3~7\ & \Add3~12COUT1_50\))))
-- \Add3~17\ = CARRY((t6(6) & ((t5(6)) # (!\Add3~12\))) # (!t6(6) & (t5(6) & !\Add3~12\)))
-- \Add3~17COUT1_51\ = CARRY((t6(6) & ((t5(6)) # (!\Add3~12COUT1_50\))) # (!t6(6) & (t5(6) & !\Add3~12COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t6(6),
	datab => t5(6),
	cin => \Add3~7\,
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\,
	cout0 => \Add3~17\,
	cout1 => \Add3~17COUT1_51\);

-- Location: LC_X10_Y8_N6
\Add4~15\ : maxv_lcell
-- Equation(s):
-- \Add4~15_combout\ = \Add5~15_combout\ $ (\Add3~15_combout\ $ ((!(!\Add4~7\ & \Add4~12\) # (\Add4~7\ & \Add4~12COUT1_55\))))
-- \Add4~17\ = CARRY((\Add5~15_combout\ & ((\Add3~15_combout\) # (!\Add4~12\))) # (!\Add5~15_combout\ & (\Add3~15_combout\ & !\Add4~12\)))
-- \Add4~17COUT1_56\ = CARRY((\Add5~15_combout\ & ((\Add3~15_combout\) # (!\Add4~12COUT1_55\))) # (!\Add5~15_combout\ & (\Add3~15_combout\ & !\Add4~12COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~15_combout\,
	datab => \Add3~15_combout\,
	cin => \Add4~7\,
	cin0 => \Add4~12\,
	cin1 => \Add4~12COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~15_combout\,
	cout0 => \Add4~17\,
	cout1 => \Add4~17COUT1_56\);

-- Location: LC_X13_Y8_N1
\Add6~15\ : maxv_lcell
-- Equation(s):
-- \Add6~15_combout\ = \Add2~15_combout\ $ (\Add4~15_combout\ $ ((!(!\Add6~7\ & \Add6~12\) # (\Add6~7\ & \Add6~12COUT1_60\))))
-- \Add6~17\ = CARRY((\Add2~15_combout\ & ((\Add4~15_combout\) # (!\Add6~12\))) # (!\Add2~15_combout\ & (\Add4~15_combout\ & !\Add6~12\)))
-- \Add6~17COUT1_61\ = CARRY((\Add2~15_combout\ & ((\Add4~15_combout\) # (!\Add6~12COUT1_60\))) # (!\Add2~15_combout\ & (\Add4~15_combout\ & !\Add6~12COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~15_combout\,
	datab => \Add4~15_combout\,
	cin => \Add6~7\,
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\,
	cout0 => \Add6~17\,
	cout1 => \Add6~17COUT1_61\);

-- Location: LC_X13_Y8_N9
\dac_prev[3]\ : maxv_lcell
-- Equation(s):
-- dac_prev(3) = ((GLOBAL(\t1[0]~0_combout\) & ((\Add6~15_combout\))) # (!GLOBAL(\t1[0]~0_combout\) & (dac_prev(3))))

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
	datab => dac_prev(3),
	datac => \t1[0]~0_combout\,
	datad => \Add6~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dac_prev(3));

-- Location: LC_X14_Y8_N1
\dac_in[3]$latch\ : maxv_lcell
-- Equation(s):
-- \dac_in[3]$latch~combout\ = ((GLOBAL(\fsm_state.st~regout\) & (\dac_in[3]$latch~combout\)) # (!GLOBAL(\fsm_state.st~regout\) & ((dac_prev(3)))))

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
	datab => \fsm_state.st~regout\,
	datac => \dac_in[3]$latch~combout\,
	datad => dac_prev(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dac_in[3]$latch~combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADC_b_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ADC_b_out(7),
	combout => \ADC_b_out~combout\(7));

-- Location: LC_X10_Y7_N3
\t7[7]\ : maxv_lcell
-- Equation(s):
-- t8(7) = ((GLOBAL(\t8[0]~2_combout\) & (\ADC_b_out~combout\(7))) # (!GLOBAL(\t8[0]~2_combout\) & ((t8(7)))))
-- t7(7) = DFFEAS(t8(7), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t8[0]~2_combout\,
	datac => \ADC_b_out~combout\(7),
	datad => t8(7),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => t8(7),
	regout => t7(7));

-- Location: LC_X10_Y7_N4
\t6[7]\ : maxv_lcell
-- Equation(s):
-- t6(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t7(7), , , VCC)

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
	clk => \clk~combout\,
	datac => t7(7),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t6(7));

-- Location: LC_X10_Y9_N8
\t5[7]\ : maxv_lcell
-- Equation(s):
-- t5(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t6(7), , , VCC)

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
	clk => \clk~combout\,
	datac => t6(7),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t5(7));

-- Location: LC_X14_Y6_N6
\t4[7]\ : maxv_lcell
-- Equation(s):
-- t4(7) = DFFEAS((((t5(7)))), GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datad => t5(7),
	aclr => GND,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t4(7));

-- Location: LC_X14_Y6_N8
\t3[7]\ : maxv_lcell
-- Equation(s):
-- t3(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t4(7), , , VCC)

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
	clk => \clk~combout\,
	datac => t4(7),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t3(7));

-- Location: LC_X13_Y6_N7
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = t4(7) $ (t3(7) $ (((!\Add1~7\ & \Add1~17\) # (\Add1~7\ & \Add1~17COUT1_51\))))
-- \Add1~22\ = CARRY((t4(7) & (!t3(7) & !\Add1~17\)) # (!t4(7) & ((!\Add1~17\) # (!t3(7)))))
-- \Add1~22COUT1_52\ = CARRY((t4(7) & (!t3(7) & !\Add1~17COUT1_51\)) # (!t4(7) & ((!\Add1~17COUT1_51\) # (!t3(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t4(7),
	datab => t3(7),
	cin => \Add1~7\,
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_52\);

-- Location: LC_X11_Y7_N7
\t2[7]\ : maxv_lcell
-- Equation(s):
-- t2(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t3(7), , , VCC)

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
	clk => \clk~combout\,
	datac => t3(7),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t2(7));

-- Location: LC_X11_Y7_N6
\t1[7]\ : maxv_lcell
-- Equation(s):
-- t1(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \t1[0]~1_combout\, t2(7), , , VCC)

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
	clk => \clk~combout\,
	datac => t2(7),
	aclr => GND,
	sload => VCC,
	ena => \t1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => t1(7));

-- Location: LC_X11_Y6_N7
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = t2(7) $ (t1(7) $ (((!\Add0~7\ & \Add0~17\) # (\Add0~7\ & \Add0~17COUT1_51\))))
-- \Add0~22\ = CARRY((t2(7) & (!t1(7) & !\Add0~17\)) # (!t2(7) & ((!\Add0~17\) # (!t1(7)))))
-- \Add0~22COUT1_52\ = CARRY((t2(7) & (!t1(7) & !\Add0~17COUT1_51\)) # (!t2(7) & ((!\Add0~17COUT1_51\) # (!t1(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t2(7),
	datab => t1(7),
	cin => \Add0~7\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_52\);

-- Location: LC_X12_Y6_N7
\Add2~20\ : maxv_lcell
-- Equation(s):
-- \Add2~20_combout\ = \Add1~20_combout\ $ (\Add0~20_combout\ $ (((!\Add2~7\ & \Add2~17\) # (\Add2~7\ & \Add2~17COUT1_56\))))
-- \Add2~22\ = CARRY((\Add1~20_combout\ & (!\Add0~20_combout\ & !\Add2~17\)) # (!\Add1~20_combout\ & ((!\Add2~17\) # (!\Add0~20_combout\))))
-- \Add2~22COUT1_57\ = CARRY((\Add1~20_combout\ & (!\Add0~20_combout\ & !\Add2~17COUT1_56\)) # (!\Add1~20_combout\ & ((!\Add2~17COUT1_56\) # (!\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \Add0~20_combout\,
	cin => \Add2~7\,
	cin0 => \Add2~17\,
	cin1 => \Add2~17COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_57\);

-- Location: LC_X11_Y8_N7
\Add5~20\ : maxv_lcell
-- Equation(s):
-- \Add5~20_combout\ = t8(7) $ (t7(7) $ (((!\Add5~7\ & \Add5~17\) # (\Add5~7\ & \Add5~17COUT1_51\))))
-- \Add5~22\ = CARRY((t8(7) & (!t7(7) & !\Add5~17\)) # (!t8(7) & ((!\Add5~17\) # (!t7(7)))))
-- \Add5~22COUT1_52\ = CARRY((t8(7) & (!t7(7) & !\Add5~17COUT1_51\)) # (!t8(7) & ((!\Add5~17COUT1_51\) # (!t7(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t8(7),
	datab => t7(7),
	cin => \Add5~7\,
	cin0 => \Add5~17\,
	cin1 => \Add5~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~20_combout\,
	cout0 => \Add5~22\,
	cout1 => \Add5~22COUT1_52\);

-- Location: LC_X9_Y8_N7
\Add3~20\ : maxv_lcell
-- Equation(s):
-- \Add3~20_combout\ = t5(7) $ (t6(7) $ (((!\Add3~7\ & \Add3~17\) # (\Add3~7\ & \Add3~17COUT1_51\))))
-- \Add3~22\ = CARRY((t5(7) & (!t6(7) & !\Add3~17\)) # (!t5(7) & ((!\Add3~17\) # (!t6(7)))))
-- \Add3~22COUT1_52\ = CARRY((t5(7) & (!t6(7) & !\Add3~17COUT1_51\)) # (!t5(7) & ((!\Add3~17COUT1_51\) # (!t6(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => t5(7),
	datab => t6(7),
	cin => \Add3~7\,
	cin0 => \Add3~17\,
	cin1 => \Add3~17COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\,
	cout0 => \Add3~22\,
	cout1 => \Add3~22COUT1_52\);

-- Location: LC_X10_Y8_N7
\Add4~20\ : maxv_lcell
-- Equation(s):
-- \Add4~20_combout\ = \Add5~20_combout\ $ (\Add3~20_combout\ $ (((!\Add4~7\ & \Add4~17\) # (\Add4~7\ & \Add4~17COUT1_56\))))
-- \Add4~22\ = CARRY((\Add5~20_combout\ & (!\Add3~20_combout\ & !\Add4~17\)) # (!\Add5~20_combout\ & ((!\Add4~17\) # (!\Add3~20_combout\))))
-- \Add4~22COUT1_57\ = CARRY((\Add5~20_combout\ & (!\Add3~20_combout\ & !\Add4~17COUT1_56\)) # (!\Add5~20_combout\ & ((!\Add4~17COUT1_56\) # (!\Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~20_combout\,
	datab => \Add3~20_combout\,
	cin => \Add4~7\,
	cin0 => \Add4~17\,
	cin1 => \Add4~17COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~20_combout\,
	cout0 => \Add4~22\,
	cout1 => \Add4~22COUT1_57\);

-- Location: LC_X13_Y8_N2
\Add6~20\ : maxv_lcell
-- Equation(s):
-- \Add6~20_combout\ = \Add2~20_combout\ $ (\Add4~20_combout\ $ (((!\Add6~7\ & \Add6~17\) # (\Add6~7\ & \Add6~17COUT1_61\))))
-- \Add6~22\ = CARRY((\Add2~20_combout\ & (!\Add4~20_combout\ & !\Add6~17\)) # (!\Add2~20_combout\ & ((!\Add6~17\) # (!\Add4~20_combout\))))
-- \Add6~22COUT1_62\ = CARRY((\Add2~20_combout\ & (!\Add4~20_combout\ & !\Add6~17COUT1_61\)) # (!\Add2~20_combout\ & ((!\Add6~17COUT1_61\) # (!\Add4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add4~20_combout\,
	cin => \Add6~7\,
	cin0 => \Add6~17\,
	cin1 => \Add6~17COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\,
	cout0 => \Add6~22\,
	cout1 => \Add6~22COUT1_62\);

-- Location: LC_X14_Y8_N3
\dac_prev[4]\ : maxv_lcell
-- Equation(s):
-- dac_prev(4) = (GLOBAL(\t1[0]~0_combout\) & (((\Add6~20_combout\)))) # (!GLOBAL(\t1[0]~0_combout\) & (((dac_prev(4)))))

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
	dataa => \t1[0]~0_combout\,
	datac => dac_prev(4),
	datad => \Add6~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dac_prev(4));

-- Location: LC_X14_Y8_N0
\dac_in[4]$latch\ : maxv_lcell
-- Equation(s):
-- \dac_in[4]$latch~combout\ = ((GLOBAL(\fsm_state.st~regout\) & (\dac_in[4]$latch~combout\)) # (!GLOBAL(\fsm_state.st~regout\) & ((dac_prev(4)))))

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
	datab => \fsm_state.st~regout\,
	datac => \dac_in[4]$latch~combout\,
	datad => dac_prev(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dac_in[4]$latch~combout\);

-- Location: LC_X9_Y8_N8
\Add3~25\ : maxv_lcell
-- Equation(s):
-- \Add3~25_combout\ = (((!(!\Add3~7\ & \Add3~22\) # (\Add3~7\ & \Add3~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~7\,
	cin0 => \Add3~22\,
	cin1 => \Add3~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25_combout\);

-- Location: LC_X11_Y8_N8
\Add5~25\ : maxv_lcell
-- Equation(s):
-- \Add5~25_combout\ = (((!(!\Add5~7\ & \Add5~22\) # (\Add5~7\ & \Add5~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add5~7\,
	cin0 => \Add5~22\,
	cin1 => \Add5~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~25_combout\);

-- Location: LC_X10_Y8_N8
\Add4~25\ : maxv_lcell
-- Equation(s):
-- \Add4~25_combout\ = \Add3~25_combout\ $ (\Add5~25_combout\ $ ((!(!\Add4~7\ & \Add4~22\) # (\Add4~7\ & \Add4~22COUT1_57\))))
-- \Add4~27\ = CARRY((\Add3~25_combout\ & ((\Add5~25_combout\) # (!\Add4~22\))) # (!\Add3~25_combout\ & (\Add5~25_combout\ & !\Add4~22\)))
-- \Add4~27COUT1_58\ = CARRY((\Add3~25_combout\ & ((\Add5~25_combout\) # (!\Add4~22COUT1_57\))) # (!\Add3~25_combout\ & (\Add5~25_combout\ & !\Add4~22COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~25_combout\,
	datab => \Add5~25_combout\,
	cin => \Add4~7\,
	cin0 => \Add4~22\,
	cin1 => \Add4~22COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout0 => \Add4~27\,
	cout1 => \Add4~27COUT1_58\);

-- Location: LC_X11_Y6_N8
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (((!(!\Add0~7\ & \Add0~22\) # (\Add0~7\ & \Add0~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~7\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\);

-- Location: LC_X13_Y6_N8
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = (((!(!\Add1~7\ & \Add1~22\) # (\Add1~7\ & \Add1~22COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add1~7\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\);

-- Location: LC_X12_Y6_N8
\Add2~25\ : maxv_lcell
-- Equation(s):
-- \Add2~25_combout\ = \Add0~25_combout\ $ (\Add1~25_combout\ $ ((!(!\Add2~7\ & \Add2~22\) # (\Add2~7\ & \Add2~22COUT1_57\))))
-- \Add2~27\ = CARRY((\Add0~25_combout\ & ((\Add1~25_combout\) # (!\Add2~22\))) # (!\Add0~25_combout\ & (\Add1~25_combout\ & !\Add2~22\)))
-- \Add2~27COUT1_58\ = CARRY((\Add0~25_combout\ & ((\Add1~25_combout\) # (!\Add2~22COUT1_57\))) # (!\Add0~25_combout\ & (\Add1~25_combout\ & !\Add2~22COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \Add1~25_combout\,
	cin => \Add2~7\,
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout0 => \Add2~27\,
	cout1 => \Add2~27COUT1_58\);

-- Location: LC_X13_Y8_N3
\Add6~25\ : maxv_lcell
-- Equation(s):
-- \Add6~25_combout\ = \Add4~25_combout\ $ (\Add2~25_combout\ $ ((!(!\Add6~7\ & \Add6~22\) # (\Add6~7\ & \Add6~22COUT1_62\))))
-- \Add6~27\ = CARRY((\Add4~25_combout\ & ((\Add2~25_combout\) # (!\Add6~22\))) # (!\Add4~25_combout\ & (\Add2~25_combout\ & !\Add6~22\)))
-- \Add6~27COUT1_63\ = CARRY((\Add4~25_combout\ & ((\Add2~25_combout\) # (!\Add6~22COUT1_62\))) # (!\Add4~25_combout\ & (\Add2~25_combout\ & !\Add6~22COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~25_combout\,
	datab => \Add2~25_combout\,
	cin => \Add6~7\,
	cin0 => \Add6~22\,
	cin1 => \Add6~22COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~25_combout\,
	cout0 => \Add6~27\,
	cout1 => \Add6~27COUT1_63\);

-- Location: LC_X13_Y8_N7
\dac_prev[5]\ : maxv_lcell
-- Equation(s):
-- dac_prev(5) = ((GLOBAL(\t1[0]~0_combout\) & ((\Add6~25_combout\))) # (!GLOBAL(\t1[0]~0_combout\) & (dac_prev(5))))

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
	datab => dac_prev(5),
	datac => \t1[0]~0_combout\,
	datad => \Add6~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dac_prev(5));

-- Location: LC_X14_Y8_N7
\dac_in[5]$latch\ : maxv_lcell
-- Equation(s):
-- \dac_in[5]$latch~combout\ = ((GLOBAL(\fsm_state.st~regout\) & (\dac_in[5]$latch~combout\)) # (!GLOBAL(\fsm_state.st~regout\) & ((dac_prev(5)))))

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
	datab => \fsm_state.st~regout\,
	datac => \dac_in[5]$latch~combout\,
	datad => dac_prev(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dac_in[5]$latch~combout\);

-- Location: LC_X12_Y6_N9
\Add2~30\ : maxv_lcell
-- Equation(s):
-- \Add2~30_combout\ = ((((!\Add2~7\ & \Add2~27\) # (\Add2~7\ & \Add2~27COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add2~7\,
	cin0 => \Add2~27\,
	cin1 => \Add2~27COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\);

-- Location: LC_X10_Y8_N9
\Add4~30\ : maxv_lcell
-- Equation(s):
-- \Add4~30_combout\ = ((((!\Add4~7\ & \Add4~27\) # (\Add4~7\ & \Add4~27COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add4~7\,
	cin0 => \Add4~27\,
	cin1 => \Add4~27COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\);

-- Location: LC_X13_Y8_N4
\Add6~30\ : maxv_lcell
-- Equation(s):
-- \Add6~30_combout\ = \Add2~30_combout\ $ (\Add4~30_combout\ $ (((!\Add6~7\ & \Add6~27\) # (\Add6~7\ & \Add6~27COUT1_63\))))
-- \Add6~32\ = CARRY((\Add2~30_combout\ & (!\Add4~30_combout\ & !\Add6~27COUT1_63\)) # (!\Add2~30_combout\ & ((!\Add6~27COUT1_63\) # (!\Add4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \Add4~30_combout\,
	cin => \Add6~7\,
	cin0 => \Add6~27\,
	cin1 => \Add6~27COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\,
	cout => \Add6~32\);

-- Location: LC_X13_Y8_N8
\dac_prev[6]\ : maxv_lcell
-- Equation(s):
-- dac_prev(6) = ((GLOBAL(\t1[0]~0_combout\) & ((\Add6~30_combout\))) # (!GLOBAL(\t1[0]~0_combout\) & (dac_prev(6))))

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
	dataa => dac_prev(6),
	datac => \t1[0]~0_combout\,
	datad => \Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dac_prev(6));

-- Location: LC_X14_Y8_N6
\dac_in[6]$latch\ : maxv_lcell
-- Equation(s):
-- \dac_in[6]$latch~combout\ = (GLOBAL(\fsm_state.st~regout\) & (\dac_in[6]$latch~combout\)) # (!GLOBAL(\fsm_state.st~regout\) & (((dac_prev(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dac_in[6]$latch~combout\,
	datab => \fsm_state.st~regout\,
	datad => dac_prev(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dac_in[6]$latch~combout\);

-- Location: LC_X13_Y8_N5
\Add6~35\ : maxv_lcell
-- Equation(s):
-- \Add6~35_combout\ = (((!\Add6~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add6~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35_combout\);

-- Location: LC_X13_Y8_N6
\dac_prev[7]\ : maxv_lcell
-- Equation(s):
-- dac_prev(7) = (GLOBAL(\t1[0]~0_combout\) & (((\Add6~35_combout\)))) # (!GLOBAL(\t1[0]~0_combout\) & (((dac_prev(7)))))

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
	dataa => \t1[0]~0_combout\,
	datac => dac_prev(7),
	datad => \Add6~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dac_prev(7));

-- Location: LC_X14_Y8_N2
\dac_in[7]$latch\ : maxv_lcell
-- Equation(s):
-- \dac_in[7]$latch~combout\ = ((GLOBAL(\fsm_state.st~regout\) & (\dac_in[7]$latch~combout\)) # (!GLOBAL(\fsm_state.st~regout\) & ((dac_prev(7)))))

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
	datab => \dac_in[7]$latch~combout\,
	datac => dac_prev(7),
	datad => \fsm_state.st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dac_in[7]$latch~combout\);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CS$latch~combout\,
	oe => VCC,
	padio => ww_CS);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RD$latch~combout\,
	oe => VCC,
	padio => ww_RD);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\WR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WR$latch~combout\,
	oe => VCC,
	padio => ww_WR);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dac_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac_in[0]$latch~combout\,
	oe => VCC,
	padio => ww_dac_in(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dac_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac_in[1]$latch~combout\,
	oe => VCC,
	padio => ww_dac_in(1));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dac_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac_in[2]$latch~combout\,
	oe => VCC,
	padio => ww_dac_in(2));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dac_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac_in[3]$latch~combout\,
	oe => VCC,
	padio => ww_dac_in(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dac_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac_in[4]$latch~combout\,
	oe => VCC,
	padio => ww_dac_in(4));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dac_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac_in[5]$latch~combout\,
	oe => VCC,
	padio => ww_dac_in(5));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dac_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac_in[6]$latch~combout\,
	oe => VCC,
	padio => ww_dac_in(6));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dac_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dac_in[7]$latch~combout\,
	oe => VCC,
	padio => ww_dac_in(7));
END structure;


