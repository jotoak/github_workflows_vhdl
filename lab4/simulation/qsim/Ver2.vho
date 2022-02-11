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

-- DATE "01/27/2022 21:16:53"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mul IS
    PORT (
	DVO : OUT std_logic;
	DVI : IN std_logic;
	CLK : IN std_logic;
	RESET_N : IN std_logic;
	MTOR : IN std_logic_vector(15 DOWNTO 0);
	COUNT : OUT std_logic_vector(3 DOWNTO 0);
	RESULT_A : OUT std_logic_vector(15 DOWNTO 0);
	ENMUL : IN std_logic;
	SOUND : IN std_logic;
	MAND : IN std_logic_vector(15 DOWNTO 0);
	RESULT_B : OUT std_logic_vector(15 DOWNTO 0)
	);
END mul;

-- Design Ports Information
-- DVO	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUNT[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[15]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[14]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[13]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[11]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[7]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[6]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[15]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[14]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[13]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[12]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[11]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[10]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[9]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[6]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[5]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[15]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENMUL	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOUND	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[13]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[12]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[11]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[9]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[7]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[5]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[4]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[2]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAND[0]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_N	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[0]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DVI	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[8]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[10]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[11]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[12]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[13]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MTOR[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mul IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DVO : std_logic;
SIGNAL ww_DVI : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET_N : std_logic;
SIGNAL ww_MTOR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_COUNT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RESULT_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ENMUL : std_logic;
SIGNAL ww_SOUND : std_logic;
SIGNAL ww_MAND : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESULT_B : std_logic_vector(15 DOWNTO 0);
SIGNAL \RESET_N~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DVO~output_o\ : std_logic;
SIGNAL \COUNT[3]~output_o\ : std_logic;
SIGNAL \COUNT[2]~output_o\ : std_logic;
SIGNAL \COUNT[1]~output_o\ : std_logic;
SIGNAL \COUNT[0]~output_o\ : std_logic;
SIGNAL \RESULT_A[15]~output_o\ : std_logic;
SIGNAL \RESULT_A[14]~output_o\ : std_logic;
SIGNAL \RESULT_A[13]~output_o\ : std_logic;
SIGNAL \RESULT_A[12]~output_o\ : std_logic;
SIGNAL \RESULT_A[11]~output_o\ : std_logic;
SIGNAL \RESULT_A[10]~output_o\ : std_logic;
SIGNAL \RESULT_A[9]~output_o\ : std_logic;
SIGNAL \RESULT_A[8]~output_o\ : std_logic;
SIGNAL \RESULT_A[7]~output_o\ : std_logic;
SIGNAL \RESULT_A[6]~output_o\ : std_logic;
SIGNAL \RESULT_A[5]~output_o\ : std_logic;
SIGNAL \RESULT_A[4]~output_o\ : std_logic;
SIGNAL \RESULT_A[3]~output_o\ : std_logic;
SIGNAL \RESULT_A[2]~output_o\ : std_logic;
SIGNAL \RESULT_A[1]~output_o\ : std_logic;
SIGNAL \RESULT_A[0]~output_o\ : std_logic;
SIGNAL \RESULT_B[15]~output_o\ : std_logic;
SIGNAL \RESULT_B[14]~output_o\ : std_logic;
SIGNAL \RESULT_B[13]~output_o\ : std_logic;
SIGNAL \RESULT_B[12]~output_o\ : std_logic;
SIGNAL \RESULT_B[11]~output_o\ : std_logic;
SIGNAL \RESULT_B[10]~output_o\ : std_logic;
SIGNAL \RESULT_B[9]~output_o\ : std_logic;
SIGNAL \RESULT_B[8]~output_o\ : std_logic;
SIGNAL \RESULT_B[7]~output_o\ : std_logic;
SIGNAL \RESULT_B[6]~output_o\ : std_logic;
SIGNAL \RESULT_B[5]~output_o\ : std_logic;
SIGNAL \RESULT_B[4]~output_o\ : std_logic;
SIGNAL \RESULT_B[3]~output_o\ : std_logic;
SIGNAL \RESULT_B[2]~output_o\ : std_logic;
SIGNAL \RESULT_B[1]~output_o\ : std_logic;
SIGNAL \RESULT_B[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \RESET_N~input_o\ : std_logic;
SIGNAL \DVI~input_o\ : std_logic;
SIGNAL \inst5|inst3|inst12~feeder_combout\ : std_logic;
SIGNAL \RESET_N~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst3|inst12~q\ : std_logic;
SIGNAL \inst5|inst3|inst9~q\ : std_logic;
SIGNAL \inst5|inst3|inst~combout\ : std_logic;
SIGNAL \inst5|inst3|inst5~q\ : std_logic;
SIGNAL \inst5|inst5|state~0_combout\ : std_logic;
SIGNAL \inst5|inst5|state~q\ : std_logic;
SIGNAL \inst5|inst1|inst2~combout\ : std_logic;
SIGNAL \inst5|inst5|DEC~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst5|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst3|inst11~q\ : std_logic;
SIGNAL \inst5|inst3|inst3~0_combout\ : std_logic;
SIGNAL \inst5|inst3|inst15~combout\ : std_logic;
SIGNAL \inst5|inst3|inst3~q\ : std_logic;
SIGNAL \inst5|inst3|inst13~feeder_combout\ : std_logic;
SIGNAL \inst5|inst3|inst13~q\ : std_logic;
SIGNAL \SOUND~input_o\ : std_logic;
SIGNAL \ENMUL~input_o\ : std_logic;
SIGNAL \MTOR[1]~input_o\ : std_logic;
SIGNAL \MTOR[3]~input_o\ : std_logic;
SIGNAL \MTOR[4]~input_o\ : std_logic;
SIGNAL \MTOR[5]~input_o\ : std_logic;
SIGNAL \MTOR[6]~input_o\ : std_logic;
SIGNAL \MTOR[7]~input_o\ : std_logic;
SIGNAL \MTOR[8]~input_o\ : std_logic;
SIGNAL \MTOR[9]~input_o\ : std_logic;
SIGNAL \MTOR[10]~input_o\ : std_logic;
SIGNAL \MTOR[11]~input_o\ : std_logic;
SIGNAL \MTOR[12]~input_o\ : std_logic;
SIGNAL \MTOR[13]~input_o\ : std_logic;
SIGNAL \MTOR[14]~input_o\ : std_logic;
SIGNAL \MTOR[15]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~15_combout\ : std_logic;
SIGNAL \inst5|inst|inst1~combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~14_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~13_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~12_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~11_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~10_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~9_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~8_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~7_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~6_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~5_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~4_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~3_combout\ : std_logic;
SIGNAL \MTOR[2]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~2_combout\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~1_combout\ : std_logic;
SIGNAL \MTOR[0]~input_o\ : std_logic;
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|_~0_combout\ : std_logic;
SIGNAL \MAND[14]~input_o\ : std_logic;
SIGNAL \MAND[13]~input_o\ : std_logic;
SIGNAL \MAND[11]~input_o\ : std_logic;
SIGNAL \MAND[10]~input_o\ : std_logic;
SIGNAL \MAND[7]~input_o\ : std_logic;
SIGNAL \MAND[5]~input_o\ : std_logic;
SIGNAL \MAND[4]~input_o\ : std_logic;
SIGNAL \MAND[3]~input_o\ : std_logic;
SIGNAL \MAND[1]~input_o\ : std_logic;
SIGNAL \MAND[0]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~15_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~14_combout\ : std_logic;
SIGNAL \MAND[2]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~13_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~12_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~11_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~10_combout\ : std_logic;
SIGNAL \MAND[6]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~9_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~8_combout\ : std_logic;
SIGNAL \MAND[8]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~7_combout\ : std_logic;
SIGNAL \MAND[9]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~6_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~5_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~4_combout\ : std_logic;
SIGNAL \MAND[12]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~3_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~2_combout\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~1_combout\ : std_logic;
SIGNAL \MAND[15]~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|_~0_combout\ : std_logic;
SIGNAL \inst5|inst5|TWOC~0_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[0]~33_cout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[0]~34_combout\ : std_logic;
SIGNAL \inst5|inst5|LOAD_DO~0_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[0]~35\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[1]~36_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[1]~37\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[2]~38_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[2]~39\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[3]~40_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[3]~41\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[4]~42_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[4]~43\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[5]~44_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[5]~45\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[6]~46_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[6]~47\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[7]~48_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[7]~49\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[8]~50_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[8]~51\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[9]~52_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[9]~53\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[10]~54_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[10]~55\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[11]~56_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[11]~57\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[12]~58_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[12]~59\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[13]~60_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[13]~61\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[14]~62_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[14]~63\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[15]~64_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~15_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~14_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~13_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~12_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~11_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~10_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~9_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~8_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~7_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~6_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~5_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~4_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~3_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~2_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~1_combout\ : std_logic;
SIGNAL \inst|inst|inst|lpm_shiftreg_component|_~0_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[15]~65\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[16]~66_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[16]~67\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[17]~68_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[17]~69\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[18]~70_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[18]~71\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[19]~72_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[19]~73\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[20]~74_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[20]~75\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[21]~76_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[21]~77\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[22]~78_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[22]~79\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[23]~80_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[23]~81\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[24]~82_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[24]~83\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[25]~84_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[25]~85\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[26]~86_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[26]~87\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[27]~88_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[27]~89\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[28]~90_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[28]~91\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[29]~92_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[29]~93\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[30]~94_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[30]~95\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs[31]~96_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[15]~1_combout\ : std_logic;
SIGNAL \inst|inst7|inst24|inst9|inst4[0]~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst24|inst9|inst4[0]~1_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ : std_logic;
SIGNAL \inst|inst7|inst24|inst|inst[0]~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst24|inst|inst[0]~1_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[14]~3_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[14]~4_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[13]~5_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[13]~6_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[12]~7_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[12]~8_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[11]~9_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[11]~10_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[10]~11_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[10]~12_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[9]~13_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[9]~14_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[8]~15_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[8]~16_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[7]~17_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[7]~18_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[6]~19_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[6]~20_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[5]~21_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[5]~22_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[4]~23_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[4]~24_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[3]~25_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[3]~26_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[2]~27_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[2]~28_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[1]~29_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[1]~30_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[0]~31_combout\ : std_logic;
SIGNAL \inst|inst7|inst1|$00000|auto_generated|result_node[0]~32_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst|inst7|inst|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst|inst4|lpm_ff_component|dffs\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst|inst1|lpm_shiftreg_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst7|inst24|inst11\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|inst|lpm_shiftreg_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|inst7|inst24|inst10\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst5|inst|inst|lpm_shiftreg_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst3|ALT_INV_inst15~combout\ : std_logic;
SIGNAL \ALT_INV_RESET_N~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DVO <= ww_DVO;
ww_DVI <= DVI;
ww_CLK <= CLK;
ww_RESET_N <= RESET_N;
ww_MTOR <= MTOR;
COUNT <= ww_COUNT;
RESULT_A <= ww_RESULT_A;
ww_ENMUL <= ENMUL;
ww_SOUND <= SOUND;
ww_MAND <= MAND;
RESULT_B <= ww_RESULT_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET_N~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET_N~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst5|inst1|ALT_INV_inst2~combout\ <= NOT \inst5|inst1|inst2~combout\;
\inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\(0) <= NOT \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0);
\inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\(1) <= NOT \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1);
\inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\(2) <= NOT \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2);
\inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\(3) <= NOT \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3);
\inst5|inst3|ALT_INV_inst15~combout\ <= NOT \inst5|inst3|inst15~combout\;
\ALT_INV_RESET_N~input_o\ <= NOT \RESET_N~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N9
\DVO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst3|inst13~q\,
	devoe => ww_devoe,
	o => \DVO~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\COUNT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \COUNT[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\COUNT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \COUNT[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\COUNT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \COUNT[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\COUNT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst|lpm_counter_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \COUNT[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\RESULT_A[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[15]~1_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[15]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\RESULT_A[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~4_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[14]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\RESULT_A[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[13]~6_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[13]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\RESULT_A[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[12]~8_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[12]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\RESULT_A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[11]~10_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[11]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\RESULT_A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[10]~12_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[10]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\RESULT_A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[9]~14_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[9]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\RESULT_A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[8]~16_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[8]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\RESULT_A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[7]~18_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[7]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\RESULT_A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[6]~20_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[6]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\RESULT_A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[5]~22_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\RESULT_A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[4]~24_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[4]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\RESULT_A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[3]~26_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\RESULT_A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[2]~28_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\RESULT_A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[1]~30_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\RESULT_A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst1|$00000|auto_generated|result_node[0]~32_combout\,
	devoe => ww_devoe,
	o => \RESULT_A[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\RESULT_B[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[15]~0_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[15]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\RESULT_B[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[14]~1_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[14]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\RESULT_B[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[13]~2_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[13]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\RESULT_B[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[12]~3_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[12]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\RESULT_B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[11]~4_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[11]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\RESULT_B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[10]~5_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\RESULT_B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[9]~6_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\RESULT_B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[8]~7_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[8]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\RESULT_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[7]~8_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[7]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\RESULT_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[6]~9_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\RESULT_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[5]~10_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[5]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\RESULT_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[4]~11_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\RESULT_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[3]~12_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[3]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\RESULT_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[2]~13_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[2]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\RESULT_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[1]~14_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\RESULT_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7|inst|$00000|auto_generated|result_node[0]~15_combout\,
	devoe => ww_devoe,
	o => \RESULT_B[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X81_Y68_N14
\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X0_Y36_N15
\RESET_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_N,
	o => \RESET_N~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\DVI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DVI,
	o => \DVI~input_o\);

-- Location: LCCOMB_X81_Y69_N30
\inst5|inst3|inst12~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst12~feeder_combout\ = \DVI~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DVI~input_o\,
	combout => \inst5|inst3|inst12~feeder_combout\);

-- Location: CLKCTRL_G4
\RESET_N~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET_N~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET_N~inputclkctrl_outclk\);

-- Location: FF_X81_Y69_N31
\inst5|inst3|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst3|inst12~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|inst12~q\);

-- Location: FF_X81_Y69_N13
\inst5|inst3|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst3|inst12~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|inst9~q\);

-- Location: LCCOMB_X81_Y68_N12
\inst5|inst3|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst~combout\ = (\inst5|inst3|inst12~q\ & !\inst5|inst3|inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst3|inst12~q\,
	datad => \inst5|inst3|inst9~q\,
	combout => \inst5|inst3|inst~combout\);

-- Location: FF_X82_Y68_N21
\inst5|inst3|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst3|inst~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|inst5~q\);

-- Location: LCCOMB_X82_Y68_N20
\inst5|inst5|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst5|state~0_combout\ = (\inst5|inst5|state~q\ & (!\inst5|inst2|inst~0_combout\)) # (!\inst5|inst5|state~q\ & ((\inst5|inst3|inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst2|inst~0_combout\,
	datac => \inst5|inst3|inst5~q\,
	datad => \inst5|inst5|state~q\,
	combout => \inst5|inst5|state~0_combout\);

-- Location: FF_X83_Y68_N5
\inst5|inst5|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst5|state~0_combout\,
	sclr => \ALT_INV_RESET_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst5|state~q\);

-- Location: LCCOMB_X83_Y68_N2
\inst5|inst1|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst2~combout\ = ((!\inst5|inst5|state~q\ & \inst5|inst3|inst5~q\)) # (!\RESET_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET_N~input_o\,
	datac => \inst5|inst5|state~q\,
	datad => \inst5|inst3|inst5~q\,
	combout => \inst5|inst1|inst2~combout\);

-- Location: LCCOMB_X81_Y68_N28
\inst5|inst5|DEC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst5|DEC~0_combout\ = (!\inst5|inst2|inst~0_combout\ & \inst5|inst5|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|inst~0_combout\,
	datac => \inst5|inst5|state~q\,
	combout => \inst5|inst5|DEC~0_combout\);

-- Location: FF_X81_Y68_N15
\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|DEC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X81_Y68_N16
\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X81_Y68_N17
\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|DEC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X81_Y68_N18
\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X81_Y68_N19
\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|DEC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X81_Y68_N20
\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ $ (\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	cin => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X81_Y68_N21
\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|DEC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X82_Y68_N18
\inst5|inst2|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst2|inst~0_combout\ = (\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2) & 
-- (\inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1) & \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datac => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => \inst5|inst1|inst|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst2|inst~0_combout\);

-- Location: FF_X82_Y68_N19
\inst5|inst3|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst2|inst~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|inst11~q\);

-- Location: LCCOMB_X81_Y69_N12
\inst5|inst3|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst3~0_combout\ = (\inst5|inst3|inst3~q\) # ((!\inst5|inst3|inst11~q\ & \inst5|inst2|inst~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst3~q\,
	datab => \inst5|inst3|inst11~q\,
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst5|inst3|inst3~0_combout\);

-- Location: LCCOMB_X81_Y69_N14
\inst5|inst3|inst15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst15~combout\ = ((\inst5|inst3|inst12~q\ & !\inst5|inst3|inst9~q\)) # (!\RESET_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \RESET_N~input_o\,
	datad => \inst5|inst3|inst9~q\,
	combout => \inst5|inst3|inst15~combout\);

-- Location: FF_X81_Y69_N15
\inst5|inst3|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst3|inst3~0_combout\,
	clrn => \inst5|inst3|ALT_INV_inst15~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|inst3~q\);

-- Location: LCCOMB_X74_Y69_N8
\inst5|inst3|inst13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst3|inst13~feeder_combout\ = \inst5|inst3|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst3|inst3~q\,
	combout => \inst5|inst3|inst13~feeder_combout\);

-- Location: FF_X74_Y69_N9
\inst5|inst3|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst3|inst13~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|inst13~q\);

-- Location: IOIBUF_X85_Y73_N1
\SOUND~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SOUND,
	o => \SOUND~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\ENMUL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENMUL,
	o => \ENMUL~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\MTOR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(1),
	o => \MTOR[1]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\MTOR[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(3),
	o => \MTOR[3]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\MTOR[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(4),
	o => \MTOR[4]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\MTOR[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(5),
	o => \MTOR[5]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\MTOR[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(6),
	o => \MTOR[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\MTOR[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(7),
	o => \MTOR[7]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\MTOR[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(8),
	o => \MTOR[8]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\MTOR[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(9),
	o => \MTOR[9]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\MTOR[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(10),
	o => \MTOR[10]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\MTOR[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(11),
	o => \MTOR[11]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\MTOR[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(12),
	o => \MTOR[12]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\MTOR[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(13),
	o => \MTOR[13]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\MTOR[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(14),
	o => \MTOR[14]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\MTOR[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(15),
	o => \MTOR[15]~input_o\);

-- Location: LCCOMB_X82_Y69_N24
\inst5|inst|inst|lpm_shiftreg_component|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~15_combout\ = (!\inst5|inst3|inst9~q\ & (\inst5|inst3|inst12~q\ & \MTOR[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datac => \inst5|inst3|inst12~q\,
	datad => \MTOR[15]~input_o\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~15_combout\);

-- Location: LCCOMB_X81_Y69_N16
\inst5|inst|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1~combout\ = (\inst5|inst5|state~q\ & (((\inst5|inst3|inst12~q\ & !\inst5|inst3|inst9~q\)) # (!\inst5|inst2|inst~0_combout\))) # (!\inst5|inst5|state~q\ & (\inst5|inst3|inst12~q\ & (!\inst5|inst3|inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst5|inst3|inst12~q\,
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst5|inst|inst1~combout\);

-- Location: FF_X82_Y69_N25
\inst5|inst|inst|lpm_shiftreg_component|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~15_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(15));

-- Location: LCCOMB_X82_Y69_N18
\inst5|inst|inst|lpm_shiftreg_component|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~14_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(15)))) # (!\inst5|inst3|inst9~q\ & (\MTOR[14]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[14]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(15),
	datac => \inst5|inst3|inst12~q\,
	datad => \inst5|inst3|inst9~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~14_combout\);

-- Location: FF_X82_Y69_N19
\inst5|inst|inst|lpm_shiftreg_component|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~14_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(14));

-- Location: LCCOMB_X82_Y69_N0
\inst5|inst|inst|lpm_shiftreg_component|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~13_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(14)))) # (!\inst5|inst3|inst9~q\ & (\MTOR[13]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[13]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(14),
	datac => \inst5|inst3|inst12~q\,
	datad => \inst5|inst3|inst9~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~13_combout\);

-- Location: FF_X82_Y69_N1
\inst5|inst|inst|lpm_shiftreg_component|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~13_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(13));

-- Location: LCCOMB_X81_Y69_N10
\inst5|inst|inst|lpm_shiftreg_component|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~12_combout\ = (\inst5|inst3|inst9~q\ & (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(13))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MTOR[12]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[12]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(13),
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~12_combout\);

-- Location: FF_X81_Y69_N11
\inst5|inst|inst|lpm_shiftreg_component|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~12_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(12));

-- Location: LCCOMB_X81_Y69_N26
\inst5|inst|inst|lpm_shiftreg_component|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~11_combout\ = (\inst5|inst3|inst9~q\ & (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(12))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MTOR[11]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[11]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(12),
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~11_combout\);

-- Location: FF_X81_Y69_N27
\inst5|inst|inst|lpm_shiftreg_component|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~11_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(11));

-- Location: LCCOMB_X81_Y69_N4
\inst5|inst|inst|lpm_shiftreg_component|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~10_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(11)))) # (!\inst5|inst3|inst9~q\ & (\MTOR[10]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[10]~input_o\,
	datab => \inst5|inst3|inst12~q\,
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(11),
	datad => \inst5|inst3|inst9~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~10_combout\);

-- Location: FF_X81_Y69_N5
\inst5|inst|inst|lpm_shiftreg_component|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~10_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(10));

-- Location: LCCOMB_X81_Y69_N28
\inst5|inst|inst|lpm_shiftreg_component|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~9_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(10)))) # (!\inst5|inst3|inst9~q\ & (\MTOR[9]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[9]~input_o\,
	datab => \inst5|inst3|inst12~q\,
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst|inst|lpm_shiftreg_component|dffs\(10),
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~9_combout\);

-- Location: FF_X81_Y69_N29
\inst5|inst|inst|lpm_shiftreg_component|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~9_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(9));

-- Location: LCCOMB_X81_Y69_N2
\inst5|inst|inst|lpm_shiftreg_component|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~8_combout\ = (\inst5|inst3|inst9~q\ & (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(9))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MTOR[8]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[8]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(9),
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~8_combout\);

-- Location: FF_X81_Y69_N3
\inst5|inst|inst|lpm_shiftreg_component|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~8_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(8));

-- Location: LCCOMB_X81_Y69_N0
\inst5|inst|inst|lpm_shiftreg_component|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~7_combout\ = (\inst5|inst3|inst9~q\ & (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(8))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MTOR[7]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[7]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(8),
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~7_combout\);

-- Location: FF_X81_Y69_N1
\inst5|inst|inst|lpm_shiftreg_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~7_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(7));

-- Location: LCCOMB_X81_Y69_N20
\inst5|inst|inst|lpm_shiftreg_component|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~6_combout\ = (\inst5|inst3|inst9~q\ & (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(7))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MTOR[6]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[6]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(7),
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~6_combout\);

-- Location: FF_X81_Y69_N21
\inst5|inst|inst|lpm_shiftreg_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~6_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(6));

-- Location: LCCOMB_X81_Y69_N6
\inst5|inst|inst|lpm_shiftreg_component|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~5_combout\ = (\inst5|inst3|inst9~q\ & (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(6))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MTOR[5]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[5]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(6),
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~5_combout\);

-- Location: FF_X81_Y69_N7
\inst5|inst|inst|lpm_shiftreg_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~5_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(5));

-- Location: LCCOMB_X81_Y69_N18
\inst5|inst|inst|lpm_shiftreg_component|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~4_combout\ = (\inst5|inst3|inst9~q\ & (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(5))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MTOR[4]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[4]~input_o\,
	datab => \inst5|inst3|inst9~q\,
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(5),
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~4_combout\);

-- Location: FF_X81_Y69_N19
\inst5|inst|inst|lpm_shiftreg_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~4_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(4));

-- Location: LCCOMB_X81_Y69_N22
\inst5|inst|inst|lpm_shiftreg_component|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~3_combout\ = (\inst5|inst3|inst9~q\ & (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(4))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MTOR[3]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[3]~input_o\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(4),
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~3_combout\);

-- Location: FF_X81_Y69_N23
\inst5|inst|inst|lpm_shiftreg_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~3_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(3));

-- Location: IOIBUF_X74_Y73_N22
\MTOR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(2),
	o => \MTOR[2]~input_o\);

-- Location: LCCOMB_X81_Y69_N8
\inst5|inst|inst|lpm_shiftreg_component|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~2_combout\ = (\inst5|inst3|inst9~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(3))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & ((\MTOR[2]~input_o\))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst5|inst|inst|lpm_shiftreg_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(3),
	datab => \MTOR[2]~input_o\,
	datac => \inst5|inst3|inst9~q\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~2_combout\);

-- Location: FF_X81_Y69_N9
\inst5|inst|inst|lpm_shiftreg_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~2_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(2));

-- Location: LCCOMB_X81_Y69_N24
\inst5|inst|inst|lpm_shiftreg_component|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~1_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst5|inst|inst|lpm_shiftreg_component|dffs\(2)))) # (!\inst5|inst3|inst9~q\ & (\MTOR[1]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MTOR[1]~input_o\,
	datab => \inst5|inst3|inst12~q\,
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(2),
	datad => \inst5|inst3|inst9~q\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~1_combout\);

-- Location: FF_X81_Y69_N25
\inst5|inst|inst|lpm_shiftreg_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst|lpm_shiftreg_component|_~1_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(1));

-- Location: IOIBUF_X115_Y68_N15
\MTOR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MTOR(0),
	o => \MTOR[0]~input_o\);

-- Location: LCCOMB_X81_Y68_N4
\inst5|inst|inst|lpm_shiftreg_component|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst|lpm_shiftreg_component|_~0_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(1))) # (!\inst5|inst3|inst9~q\ & ((\MTOR[0]~input_o\))))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst5|inst3|inst9~q\,
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(1),
	datad => \MTOR[0]~input_o\,
	combout => \inst5|inst|inst|lpm_shiftreg_component|_~0_combout\);

-- Location: FF_X82_Y68_N27
\inst5|inst|inst|lpm_shiftreg_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst|inst|lpm_shiftreg_component|_~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0));

-- Location: IOIBUF_X60_Y73_N1
\MAND[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(14),
	o => \MAND[14]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\MAND[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(13),
	o => \MAND[13]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\MAND[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(11),
	o => \MAND[11]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\MAND[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(10),
	o => \MAND[10]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\MAND[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(7),
	o => \MAND[7]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\MAND[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(5),
	o => \MAND[5]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\MAND[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(4),
	o => \MAND[4]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\MAND[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(3),
	o => \MAND[3]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\MAND[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(1),
	o => \MAND[1]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\MAND[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(0),
	o => \MAND[0]~input_o\);

-- Location: LCCOMB_X84_Y68_N0
\inst|inst|inst1|lpm_shiftreg_component|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~15_combout\ = (!\inst5|inst3|inst9~q\ & (\MAND[0]~input_o\ & \inst5|inst3|inst12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datac => \MAND[0]~input_o\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~15_combout\);

-- Location: FF_X84_Y68_N1
\inst|inst|inst1|lpm_shiftreg_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~15_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(0));

-- Location: LCCOMB_X84_Y68_N22
\inst|inst|inst1|lpm_shiftreg_component|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~14_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(0)))) # (!\inst5|inst3|inst9~q\ & (\MAND[1]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst5|inst3|inst9~q\,
	datac => \MAND[1]~input_o\,
	datad => \inst|inst|inst1|lpm_shiftreg_component|dffs\(0),
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~14_combout\);

-- Location: FF_X84_Y68_N23
\inst|inst|inst1|lpm_shiftreg_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~14_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(1));

-- Location: IOIBUF_X109_Y73_N8
\MAND[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(2),
	o => \MAND[2]~input_o\);

-- Location: LCCOMB_X84_Y68_N28
\inst|inst|inst1|lpm_shiftreg_component|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~13_combout\ = (\inst5|inst3|inst9~q\ & (\inst|inst|inst1|lpm_shiftreg_component|dffs\(1))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & ((\MAND[2]~input_o\))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst1|lpm_shiftreg_component|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst1|lpm_shiftreg_component|dffs\(1),
	datab => \inst5|inst3|inst9~q\,
	datac => \MAND[2]~input_o\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~13_combout\);

-- Location: FF_X84_Y68_N29
\inst|inst|inst1|lpm_shiftreg_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~13_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(2));

-- Location: LCCOMB_X84_Y68_N30
\inst|inst|inst1|lpm_shiftreg_component|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~12_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(2)))) # (!\inst5|inst3|inst9~q\ & (\MAND[3]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst5|inst3|inst9~q\,
	datac => \MAND[3]~input_o\,
	datad => \inst|inst|inst1|lpm_shiftreg_component|dffs\(2),
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~12_combout\);

-- Location: FF_X84_Y68_N31
\inst|inst|inst1|lpm_shiftreg_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~12_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(3));

-- Location: LCCOMB_X84_Y68_N8
\inst|inst|inst1|lpm_shiftreg_component|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~11_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(3)))) # (!\inst5|inst3|inst9~q\ & (\MAND[4]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst5|inst3|inst9~q\,
	datac => \MAND[4]~input_o\,
	datad => \inst|inst|inst1|lpm_shiftreg_component|dffs\(3),
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~11_combout\);

-- Location: FF_X84_Y68_N9
\inst|inst|inst1|lpm_shiftreg_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~11_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(4));

-- Location: LCCOMB_X84_Y68_N18
\inst|inst|inst1|lpm_shiftreg_component|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~10_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(4)))) # (!\inst5|inst3|inst9~q\ & (\MAND[5]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst5|inst3|inst9~q\,
	datac => \MAND[5]~input_o\,
	datad => \inst|inst|inst1|lpm_shiftreg_component|dffs\(4),
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~10_combout\);

-- Location: FF_X84_Y68_N19
\inst|inst|inst1|lpm_shiftreg_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~10_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(5));

-- Location: IOIBUF_X94_Y73_N8
\MAND[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(6),
	o => \MAND[6]~input_o\);

-- Location: LCCOMB_X84_Y68_N24
\inst|inst|inst1|lpm_shiftreg_component|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~9_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & (\inst|inst|inst1|lpm_shiftreg_component|dffs\(5))) # (!\inst5|inst3|inst9~q\ & ((\MAND[6]~input_o\))))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst1|lpm_shiftreg_component|dffs\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(5),
	datac => \inst5|inst3|inst9~q\,
	datad => \MAND[6]~input_o\,
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~9_combout\);

-- Location: FF_X84_Y68_N25
\inst|inst|inst1|lpm_shiftreg_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~9_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(6));

-- Location: LCCOMB_X84_Y68_N26
\inst|inst|inst1|lpm_shiftreg_component|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~8_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(6)))) # (!\inst5|inst3|inst9~q\ & (\MAND[7]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \MAND[7]~input_o\,
	datac => \inst5|inst3|inst9~q\,
	datad => \inst|inst|inst1|lpm_shiftreg_component|dffs\(6),
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~8_combout\);

-- Location: FF_X82_Y68_N17
\inst|inst|inst1|lpm_shiftreg_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|inst1|lpm_shiftreg_component|_~8_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(7));

-- Location: IOIBUF_X58_Y73_N22
\MAND[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(8),
	o => \MAND[8]~input_o\);

-- Location: LCCOMB_X82_Y68_N28
\inst|inst|inst1|lpm_shiftreg_component|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~7_combout\ = (\inst5|inst3|inst9~q\ & (\inst|inst|inst1|lpm_shiftreg_component|dffs\(7))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & ((\MAND[8]~input_o\))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst1|lpm_shiftreg_component|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(7),
	datac => \MAND[8]~input_o\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~7_combout\);

-- Location: FF_X82_Y68_N29
\inst|inst|inst1|lpm_shiftreg_component|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~7_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(8));

-- Location: IOIBUF_X102_Y73_N1
\MAND[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(9),
	o => \MAND[9]~input_o\);

-- Location: LCCOMB_X82_Y68_N24
\inst|inst|inst1|lpm_shiftreg_component|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~6_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & (\inst|inst|inst1|lpm_shiftreg_component|dffs\(8))) # (!\inst5|inst3|inst9~q\ & ((\MAND[9]~input_o\))))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst1|lpm_shiftreg_component|dffs\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(8),
	datac => \inst5|inst3|inst9~q\,
	datad => \MAND[9]~input_o\,
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~6_combout\);

-- Location: FF_X82_Y68_N25
\inst|inst|inst1|lpm_shiftreg_component|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~6_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(9));

-- Location: LCCOMB_X81_Y68_N6
\inst|inst|inst1|lpm_shiftreg_component|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~5_combout\ = (\inst5|inst3|inst9~q\ & (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(9))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MAND[10]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[10]~input_o\,
	datab => \inst5|inst3|inst9~q\,
	datac => \inst5|inst3|inst12~q\,
	datad => \inst|inst|inst1|lpm_shiftreg_component|dffs\(9),
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~5_combout\);

-- Location: FF_X82_Y68_N1
\inst|inst|inst1|lpm_shiftreg_component|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|inst1|lpm_shiftreg_component|_~5_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(10));

-- Location: LCCOMB_X82_Y68_N0
\inst|inst|inst1|lpm_shiftreg_component|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~4_combout\ = (\inst5|inst3|inst9~q\ & (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(10))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MAND[11]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datab => \MAND[11]~input_o\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(10),
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~4_combout\);

-- Location: FF_X82_Y68_N11
\inst|inst|inst1|lpm_shiftreg_component|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|inst1|lpm_shiftreg_component|_~4_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(11));

-- Location: IOIBUF_X105_Y73_N1
\MAND[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(12),
	o => \MAND[12]~input_o\);

-- Location: LCCOMB_X81_Y68_N30
\inst|inst|inst1|lpm_shiftreg_component|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~3_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & (\inst|inst|inst1|lpm_shiftreg_component|dffs\(11))) # (!\inst5|inst3|inst9~q\ & ((\MAND[12]~input_o\))))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst5|inst3|inst9~q\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(11),
	datad => \MAND[12]~input_o\,
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~3_combout\);

-- Location: FF_X81_Y68_N31
\inst|inst|inst1|lpm_shiftreg_component|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst1|lpm_shiftreg_component|_~3_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(12));

-- Location: LCCOMB_X81_Y68_N24
\inst|inst|inst1|lpm_shiftreg_component|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~2_combout\ = (\inst5|inst3|inst9~q\ & (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(12))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MAND[13]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[13]~input_o\,
	datab => \inst5|inst3|inst9~q\,
	datac => \inst5|inst3|inst12~q\,
	datad => \inst|inst|inst1|lpm_shiftreg_component|dffs\(12),
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~2_combout\);

-- Location: FF_X82_Y68_N23
\inst|inst|inst1|lpm_shiftreg_component|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|inst1|lpm_shiftreg_component|_~2_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(13));

-- Location: LCCOMB_X81_Y68_N22
\inst|inst|inst1|lpm_shiftreg_component|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~1_combout\ = (\inst5|inst3|inst9~q\ & (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(13))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MAND[14]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[14]~input_o\,
	datab => \inst5|inst3|inst9~q\,
	datac => \inst5|inst3|inst12~q\,
	datad => \inst|inst|inst1|lpm_shiftreg_component|dffs\(13),
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~1_combout\);

-- Location: FF_X82_Y68_N13
\inst|inst|inst1|lpm_shiftreg_component|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|inst1|lpm_shiftreg_component|_~1_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(14));

-- Location: IOIBUF_X115_Y37_N8
\MAND[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAND(15),
	o => \MAND[15]~input_o\);

-- Location: LCCOMB_X81_Y68_N26
\inst|inst|inst1|lpm_shiftreg_component|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|lpm_shiftreg_component|_~0_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & (\inst|inst|inst1|lpm_shiftreg_component|dffs\(14))) # (!\inst5|inst3|inst9~q\ & ((\MAND[15]~input_o\))))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst5|inst3|inst9~q\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(14),
	datad => \MAND[15]~input_o\,
	combout => \inst|inst|inst1|lpm_shiftreg_component|_~0_combout\);

-- Location: FF_X82_Y68_N5
\inst|inst|inst1|lpm_shiftreg_component|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|inst1|lpm_shiftreg_component|_~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst1|lpm_shiftreg_component|dffs\(15));

-- Location: LCCOMB_X82_Y68_N4
\inst|inst2[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(15) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(15) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst2|inst~0_combout\ & \inst5|inst5|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst2|inst~0_combout\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(15),
	datad => \inst5|inst5|state~q\,
	combout => \inst|inst2\(15));

-- Location: LCCOMB_X82_Y68_N12
\inst|inst2[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(14) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(14) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst2|inst~0_combout\ & \inst5|inst5|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst2|inst~0_combout\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(14),
	datad => \inst5|inst5|state~q\,
	combout => \inst|inst2\(14));

-- Location: LCCOMB_X82_Y68_N22
\inst|inst2[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(13) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(13) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst2|inst~0_combout\ & \inst5|inst5|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst2|inst~0_combout\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(13),
	datad => \inst5|inst5|state~q\,
	combout => \inst|inst2\(13));

-- Location: LCCOMB_X82_Y68_N8
\inst|inst2[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(12) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(12) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(12),
	datac => \inst5|inst5|state~q\,
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(12));

-- Location: LCCOMB_X82_Y68_N10
\inst|inst2[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(11) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(11) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(11),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(11));

-- Location: LCCOMB_X82_Y68_N30
\inst|inst2[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(10) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(10) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(10),
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(10));

-- Location: LCCOMB_X82_Y68_N2
\inst|inst2[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(9) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(9) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(9),
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(9));

-- Location: LCCOMB_X82_Y68_N14
\inst|inst2[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(8) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(8) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(8),
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(8));

-- Location: LCCOMB_X82_Y68_N16
\inst|inst2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(7) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(7) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(7),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(7));

-- Location: LCCOMB_X83_Y68_N0
\inst|inst2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(6) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(6) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(6),
	datac => \inst5|inst5|state~q\,
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(6));

-- Location: LCCOMB_X83_Y68_N4
\inst|inst2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(5) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(5) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(5),
	datac => \inst5|inst5|state~q\,
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(5));

-- Location: LCCOMB_X83_Y68_N14
\inst|inst2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(4) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(4) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(4),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(4));

-- Location: LCCOMB_X83_Y68_N12
\inst|inst2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(3) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(3) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(3),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(3));

-- Location: LCCOMB_X83_Y68_N10
\inst|inst2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(2) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(2) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(2),
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(2));

-- Location: LCCOMB_X83_Y68_N8
\inst|inst2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(1) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(1) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst|inst|inst1|lpm_shiftreg_component|dffs\(1),
	datac => \inst5|inst5|state~q\,
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(1));

-- Location: LCCOMB_X83_Y68_N6
\inst|inst2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(0) = \inst|inst|inst1|lpm_shiftreg_component|dffs\(0) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(0));

-- Location: LCCOMB_X82_Y68_N6
\inst5|inst5|TWOC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst5|TWOC~0_combout\ = (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst5|inst5|TWOC~0_combout\);

-- Location: LCCOMB_X83_Y68_N16
\inst|inst4|lpm_ff_component|dffs[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[0]~33_cout\ = CARRY((\inst5|inst5|state~q\ & \inst5|inst5|TWOC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst5|inst5|TWOC~0_combout\,
	datad => VCC,
	cout => \inst|inst4|lpm_ff_component|dffs[0]~33_cout\);

-- Location: LCCOMB_X83_Y68_N18
\inst|inst4|lpm_ff_component|dffs[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[0]~34_combout\ = (\inst|inst2\(0) & ((\inst|inst4|lpm_ff_component|dffs\(0) & (\inst|inst4|lpm_ff_component|dffs[0]~33_cout\ & VCC)) # (!\inst|inst4|lpm_ff_component|dffs\(0) & 
-- (!\inst|inst4|lpm_ff_component|dffs[0]~33_cout\)))) # (!\inst|inst2\(0) & ((\inst|inst4|lpm_ff_component|dffs\(0) & (!\inst|inst4|lpm_ff_component|dffs[0]~33_cout\)) # (!\inst|inst4|lpm_ff_component|dffs\(0) & 
-- ((\inst|inst4|lpm_ff_component|dffs[0]~33_cout\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[0]~35\ = CARRY((\inst|inst2\(0) & (!\inst|inst4|lpm_ff_component|dffs\(0) & !\inst|inst4|lpm_ff_component|dffs[0]~33_cout\)) # (!\inst|inst2\(0) & ((!\inst|inst4|lpm_ff_component|dffs[0]~33_cout\) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(0),
	datab => \inst|inst4|lpm_ff_component|dffs\(0),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[0]~33_cout\,
	combout => \inst|inst4|lpm_ff_component|dffs[0]~34_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[0]~35\);

-- Location: LCCOMB_X83_Y66_N18
\inst5|inst5|LOAD_DO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst5|LOAD_DO~0_combout\ = (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst5|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst5|state~q\,
	combout => \inst5|inst5|LOAD_DO~0_combout\);

-- Location: FF_X83_Y68_N19
\inst|inst4|lpm_ff_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[0]~34_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X83_Y68_N20
\inst|inst4|lpm_ff_component|dffs[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[1]~36_combout\ = ((\inst|inst4|lpm_ff_component|dffs\(1) $ (\inst|inst2\(1) $ (!\inst|inst4|lpm_ff_component|dffs[0]~35\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[1]~37\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(1) & ((\inst|inst2\(1)) # (!\inst|inst4|lpm_ff_component|dffs[0]~35\))) # (!\inst|inst4|lpm_ff_component|dffs\(1) & (\inst|inst2\(1) & 
-- !\inst|inst4|lpm_ff_component|dffs[0]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(1),
	datab => \inst|inst2\(1),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[0]~35\,
	combout => \inst|inst4|lpm_ff_component|dffs[1]~36_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[1]~37\);

-- Location: FF_X83_Y68_N21
\inst|inst4|lpm_ff_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[1]~36_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X83_Y68_N22
\inst|inst4|lpm_ff_component|dffs[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[2]~38_combout\ = (\inst|inst2\(2) & ((\inst|inst4|lpm_ff_component|dffs\(2) & (\inst|inst4|lpm_ff_component|dffs[1]~37\ & VCC)) # (!\inst|inst4|lpm_ff_component|dffs\(2) & (!\inst|inst4|lpm_ff_component|dffs[1]~37\)))) # 
-- (!\inst|inst2\(2) & ((\inst|inst4|lpm_ff_component|dffs\(2) & (!\inst|inst4|lpm_ff_component|dffs[1]~37\)) # (!\inst|inst4|lpm_ff_component|dffs\(2) & ((\inst|inst4|lpm_ff_component|dffs[1]~37\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[2]~39\ = CARRY((\inst|inst2\(2) & (!\inst|inst4|lpm_ff_component|dffs\(2) & !\inst|inst4|lpm_ff_component|dffs[1]~37\)) # (!\inst|inst2\(2) & ((!\inst|inst4|lpm_ff_component|dffs[1]~37\) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(2),
	datab => \inst|inst4|lpm_ff_component|dffs\(2),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[1]~37\,
	combout => \inst|inst4|lpm_ff_component|dffs[2]~38_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[2]~39\);

-- Location: FF_X83_Y68_N23
\inst|inst4|lpm_ff_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[2]~38_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X83_Y68_N24
\inst|inst4|lpm_ff_component|dffs[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[3]~40_combout\ = ((\inst|inst2\(3) $ (\inst|inst4|lpm_ff_component|dffs\(3) $ (!\inst|inst4|lpm_ff_component|dffs[2]~39\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[3]~41\ = CARRY((\inst|inst2\(3) & ((\inst|inst4|lpm_ff_component|dffs\(3)) # (!\inst|inst4|lpm_ff_component|dffs[2]~39\))) # (!\inst|inst2\(3) & (\inst|inst4|lpm_ff_component|dffs\(3) & 
-- !\inst|inst4|lpm_ff_component|dffs[2]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(3),
	datab => \inst|inst4|lpm_ff_component|dffs\(3),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[2]~39\,
	combout => \inst|inst4|lpm_ff_component|dffs[3]~40_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[3]~41\);

-- Location: FF_X83_Y68_N25
\inst|inst4|lpm_ff_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[3]~40_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X83_Y68_N26
\inst|inst4|lpm_ff_component|dffs[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[4]~42_combout\ = (\inst|inst4|lpm_ff_component|dffs\(4) & ((\inst|inst2\(4) & (\inst|inst4|lpm_ff_component|dffs[3]~41\ & VCC)) # (!\inst|inst2\(4) & (!\inst|inst4|lpm_ff_component|dffs[3]~41\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(4) & ((\inst|inst2\(4) & (!\inst|inst4|lpm_ff_component|dffs[3]~41\)) # (!\inst|inst2\(4) & ((\inst|inst4|lpm_ff_component|dffs[3]~41\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[4]~43\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(4) & (!\inst|inst2\(4) & !\inst|inst4|lpm_ff_component|dffs[3]~41\)) # (!\inst|inst4|lpm_ff_component|dffs\(4) & ((!\inst|inst4|lpm_ff_component|dffs[3]~41\) # 
-- (!\inst|inst2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(4),
	datab => \inst|inst2\(4),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[3]~41\,
	combout => \inst|inst4|lpm_ff_component|dffs[4]~42_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[4]~43\);

-- Location: FF_X83_Y68_N27
\inst|inst4|lpm_ff_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[4]~42_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X83_Y68_N28
\inst|inst4|lpm_ff_component|dffs[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[5]~44_combout\ = ((\inst|inst4|lpm_ff_component|dffs\(5) $ (\inst|inst2\(5) $ (!\inst|inst4|lpm_ff_component|dffs[4]~43\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[5]~45\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(5) & ((\inst|inst2\(5)) # (!\inst|inst4|lpm_ff_component|dffs[4]~43\))) # (!\inst|inst4|lpm_ff_component|dffs\(5) & (\inst|inst2\(5) & 
-- !\inst|inst4|lpm_ff_component|dffs[4]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(5),
	datab => \inst|inst2\(5),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[4]~43\,
	combout => \inst|inst4|lpm_ff_component|dffs[5]~44_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[5]~45\);

-- Location: FF_X83_Y68_N29
\inst|inst4|lpm_ff_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[5]~44_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X83_Y68_N30
\inst|inst4|lpm_ff_component|dffs[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[6]~46_combout\ = (\inst|inst4|lpm_ff_component|dffs\(6) & ((\inst|inst2\(6) & (\inst|inst4|lpm_ff_component|dffs[5]~45\ & VCC)) # (!\inst|inst2\(6) & (!\inst|inst4|lpm_ff_component|dffs[5]~45\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(6) & ((\inst|inst2\(6) & (!\inst|inst4|lpm_ff_component|dffs[5]~45\)) # (!\inst|inst2\(6) & ((\inst|inst4|lpm_ff_component|dffs[5]~45\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[6]~47\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(6) & (!\inst|inst2\(6) & !\inst|inst4|lpm_ff_component|dffs[5]~45\)) # (!\inst|inst4|lpm_ff_component|dffs\(6) & ((!\inst|inst4|lpm_ff_component|dffs[5]~45\) # 
-- (!\inst|inst2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(6),
	datab => \inst|inst2\(6),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[5]~45\,
	combout => \inst|inst4|lpm_ff_component|dffs[6]~46_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[6]~47\);

-- Location: FF_X83_Y68_N31
\inst|inst4|lpm_ff_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[6]~46_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X83_Y67_N0
\inst|inst4|lpm_ff_component|dffs[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[7]~48_combout\ = ((\inst|inst4|lpm_ff_component|dffs\(7) $ (\inst|inst2\(7) $ (!\inst|inst4|lpm_ff_component|dffs[6]~47\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[7]~49\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(7) & ((\inst|inst2\(7)) # (!\inst|inst4|lpm_ff_component|dffs[6]~47\))) # (!\inst|inst4|lpm_ff_component|dffs\(7) & (\inst|inst2\(7) & 
-- !\inst|inst4|lpm_ff_component|dffs[6]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(7),
	datab => \inst|inst2\(7),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[6]~47\,
	combout => \inst|inst4|lpm_ff_component|dffs[7]~48_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[7]~49\);

-- Location: FF_X83_Y67_N1
\inst|inst4|lpm_ff_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[7]~48_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X83_Y67_N2
\inst|inst4|lpm_ff_component|dffs[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[8]~50_combout\ = (\inst|inst2\(8) & ((\inst|inst4|lpm_ff_component|dffs\(8) & (\inst|inst4|lpm_ff_component|dffs[7]~49\ & VCC)) # (!\inst|inst4|lpm_ff_component|dffs\(8) & (!\inst|inst4|lpm_ff_component|dffs[7]~49\)))) # 
-- (!\inst|inst2\(8) & ((\inst|inst4|lpm_ff_component|dffs\(8) & (!\inst|inst4|lpm_ff_component|dffs[7]~49\)) # (!\inst|inst4|lpm_ff_component|dffs\(8) & ((\inst|inst4|lpm_ff_component|dffs[7]~49\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[8]~51\ = CARRY((\inst|inst2\(8) & (!\inst|inst4|lpm_ff_component|dffs\(8) & !\inst|inst4|lpm_ff_component|dffs[7]~49\)) # (!\inst|inst2\(8) & ((!\inst|inst4|lpm_ff_component|dffs[7]~49\) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(8),
	datab => \inst|inst4|lpm_ff_component|dffs\(8),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[7]~49\,
	combout => \inst|inst4|lpm_ff_component|dffs[8]~50_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[8]~51\);

-- Location: FF_X83_Y67_N3
\inst|inst4|lpm_ff_component|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[8]~50_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X83_Y67_N4
\inst|inst4|lpm_ff_component|dffs[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[9]~52_combout\ = ((\inst|inst2\(9) $ (\inst|inst4|lpm_ff_component|dffs\(9) $ (!\inst|inst4|lpm_ff_component|dffs[8]~51\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[9]~53\ = CARRY((\inst|inst2\(9) & ((\inst|inst4|lpm_ff_component|dffs\(9)) # (!\inst|inst4|lpm_ff_component|dffs[8]~51\))) # (!\inst|inst2\(9) & (\inst|inst4|lpm_ff_component|dffs\(9) & 
-- !\inst|inst4|lpm_ff_component|dffs[8]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(9),
	datab => \inst|inst4|lpm_ff_component|dffs\(9),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[8]~51\,
	combout => \inst|inst4|lpm_ff_component|dffs[9]~52_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[9]~53\);

-- Location: FF_X83_Y67_N5
\inst|inst4|lpm_ff_component|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[9]~52_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X83_Y67_N6
\inst|inst4|lpm_ff_component|dffs[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[10]~54_combout\ = (\inst|inst4|lpm_ff_component|dffs\(10) & ((\inst|inst2\(10) & (\inst|inst4|lpm_ff_component|dffs[9]~53\ & VCC)) # (!\inst|inst2\(10) & (!\inst|inst4|lpm_ff_component|dffs[9]~53\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(10) & ((\inst|inst2\(10) & (!\inst|inst4|lpm_ff_component|dffs[9]~53\)) # (!\inst|inst2\(10) & ((\inst|inst4|lpm_ff_component|dffs[9]~53\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[10]~55\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(10) & (!\inst|inst2\(10) & !\inst|inst4|lpm_ff_component|dffs[9]~53\)) # (!\inst|inst4|lpm_ff_component|dffs\(10) & ((!\inst|inst4|lpm_ff_component|dffs[9]~53\) # 
-- (!\inst|inst2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(10),
	datab => \inst|inst2\(10),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[9]~53\,
	combout => \inst|inst4|lpm_ff_component|dffs[10]~54_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[10]~55\);

-- Location: FF_X83_Y67_N7
\inst|inst4|lpm_ff_component|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[10]~54_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X83_Y67_N8
\inst|inst4|lpm_ff_component|dffs[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[11]~56_combout\ = ((\inst|inst2\(11) $ (\inst|inst4|lpm_ff_component|dffs\(11) $ (!\inst|inst4|lpm_ff_component|dffs[10]~55\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[11]~57\ = CARRY((\inst|inst2\(11) & ((\inst|inst4|lpm_ff_component|dffs\(11)) # (!\inst|inst4|lpm_ff_component|dffs[10]~55\))) # (!\inst|inst2\(11) & (\inst|inst4|lpm_ff_component|dffs\(11) & 
-- !\inst|inst4|lpm_ff_component|dffs[10]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(11),
	datab => \inst|inst4|lpm_ff_component|dffs\(11),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[10]~55\,
	combout => \inst|inst4|lpm_ff_component|dffs[11]~56_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[11]~57\);

-- Location: FF_X83_Y67_N9
\inst|inst4|lpm_ff_component|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[11]~56_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X83_Y67_N10
\inst|inst4|lpm_ff_component|dffs[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[12]~58_combout\ = (\inst|inst4|lpm_ff_component|dffs\(12) & ((\inst|inst2\(12) & (\inst|inst4|lpm_ff_component|dffs[11]~57\ & VCC)) # (!\inst|inst2\(12) & (!\inst|inst4|lpm_ff_component|dffs[11]~57\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(12) & ((\inst|inst2\(12) & (!\inst|inst4|lpm_ff_component|dffs[11]~57\)) # (!\inst|inst2\(12) & ((\inst|inst4|lpm_ff_component|dffs[11]~57\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[12]~59\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(12) & (!\inst|inst2\(12) & !\inst|inst4|lpm_ff_component|dffs[11]~57\)) # (!\inst|inst4|lpm_ff_component|dffs\(12) & ((!\inst|inst4|lpm_ff_component|dffs[11]~57\) # 
-- (!\inst|inst2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(12),
	datab => \inst|inst2\(12),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[11]~57\,
	combout => \inst|inst4|lpm_ff_component|dffs[12]~58_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[12]~59\);

-- Location: FF_X83_Y67_N11
\inst|inst4|lpm_ff_component|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[12]~58_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X83_Y67_N12
\inst|inst4|lpm_ff_component|dffs[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[13]~60_combout\ = ((\inst|inst4|lpm_ff_component|dffs\(13) $ (\inst|inst2\(13) $ (!\inst|inst4|lpm_ff_component|dffs[12]~59\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[13]~61\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(13) & ((\inst|inst2\(13)) # (!\inst|inst4|lpm_ff_component|dffs[12]~59\))) # (!\inst|inst4|lpm_ff_component|dffs\(13) & (\inst|inst2\(13) & 
-- !\inst|inst4|lpm_ff_component|dffs[12]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(13),
	datab => \inst|inst2\(13),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[12]~59\,
	combout => \inst|inst4|lpm_ff_component|dffs[13]~60_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[13]~61\);

-- Location: FF_X83_Y67_N13
\inst|inst4|lpm_ff_component|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[13]~60_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X83_Y67_N14
\inst|inst4|lpm_ff_component|dffs[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[14]~62_combout\ = (\inst|inst2\(14) & ((\inst|inst4|lpm_ff_component|dffs\(14) & (\inst|inst4|lpm_ff_component|dffs[13]~61\ & VCC)) # (!\inst|inst4|lpm_ff_component|dffs\(14) & 
-- (!\inst|inst4|lpm_ff_component|dffs[13]~61\)))) # (!\inst|inst2\(14) & ((\inst|inst4|lpm_ff_component|dffs\(14) & (!\inst|inst4|lpm_ff_component|dffs[13]~61\)) # (!\inst|inst4|lpm_ff_component|dffs\(14) & ((\inst|inst4|lpm_ff_component|dffs[13]~61\) # 
-- (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[14]~63\ = CARRY((\inst|inst2\(14) & (!\inst|inst4|lpm_ff_component|dffs\(14) & !\inst|inst4|lpm_ff_component|dffs[13]~61\)) # (!\inst|inst2\(14) & ((!\inst|inst4|lpm_ff_component|dffs[13]~61\) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(14),
	datab => \inst|inst4|lpm_ff_component|dffs\(14),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[13]~61\,
	combout => \inst|inst4|lpm_ff_component|dffs[14]~62_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[14]~63\);

-- Location: FF_X83_Y67_N15
\inst|inst4|lpm_ff_component|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[14]~62_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X83_Y67_N16
\inst|inst4|lpm_ff_component|dffs[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[15]~64_combout\ = ((\inst|inst2\(15) $ (\inst|inst4|lpm_ff_component|dffs\(15) $ (!\inst|inst4|lpm_ff_component|dffs[14]~63\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[15]~65\ = CARRY((\inst|inst2\(15) & ((\inst|inst4|lpm_ff_component|dffs\(15)) # (!\inst|inst4|lpm_ff_component|dffs[14]~63\))) # (!\inst|inst2\(15) & (\inst|inst4|lpm_ff_component|dffs\(15) & 
-- !\inst|inst4|lpm_ff_component|dffs[14]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(15),
	datab => \inst|inst4|lpm_ff_component|dffs\(15),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[14]~63\,
	combout => \inst|inst4|lpm_ff_component|dffs[15]~64_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[15]~65\);

-- Location: FF_X83_Y67_N17
\inst|inst4|lpm_ff_component|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[15]~64_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X84_Y67_N24
\inst|inst7|inst1|$00000|auto_generated|result_node[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[15]~0_combout\ = (!\SOUND~input_o\ & ((\ENMUL~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(15))) # (!\ENMUL~input_o\ & ((\MAND[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datab => \ENMUL~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(15),
	datad => \MAND[15]~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X81_Y68_N8
\inst|inst|inst|lpm_shiftreg_component|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~15_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst1|lpm_shiftreg_component|dffs\(15)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst1|lpm_shiftreg_component|dffs\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \MAND[15]~input_o\,
	datac => \inst|inst|inst1|lpm_shiftreg_component|dffs\(15),
	datad => \inst5|inst3|inst9~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~15_combout\);

-- Location: FF_X82_Y68_N7
\inst|inst|inst|lpm_shiftreg_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|lpm_shiftreg_component|_~15_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(0));

-- Location: LCCOMB_X81_Y67_N6
\inst|inst|inst|lpm_shiftreg_component|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~14_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & (\inst|inst|inst|lpm_shiftreg_component|dffs\(0))) # (!\inst5|inst3|inst9~q\ & ((\MAND[15]~input_o\))))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \inst5|inst3|inst9~q\,
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \MAND[15]~input_o\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~14_combout\);

-- Location: FF_X81_Y67_N7
\inst|inst|inst|lpm_shiftreg_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~14_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(1));

-- Location: LCCOMB_X81_Y67_N16
\inst|inst|inst|lpm_shiftreg_component|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~13_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst|lpm_shiftreg_component|dffs\(1)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \MAND[15]~input_o\,
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(1),
	datad => \inst5|inst3|inst9~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~13_combout\);

-- Location: FF_X82_Y67_N21
\inst|inst|inst|lpm_shiftreg_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|inst|lpm_shiftreg_component|_~13_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(2));

-- Location: LCCOMB_X82_Y67_N0
\inst|inst|inst|lpm_shiftreg_component|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~12_combout\ = (\inst5|inst3|inst9~q\ & (\inst|inst|inst|lpm_shiftreg_component|dffs\(2))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & ((\MAND[15]~input_o\))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst|lpm_shiftreg_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datab => \inst|inst|inst|lpm_shiftreg_component|dffs\(2),
	datac => \MAND[15]~input_o\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~12_combout\);

-- Location: FF_X82_Y67_N1
\inst|inst|inst|lpm_shiftreg_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~12_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(3));

-- Location: LCCOMB_X82_Y67_N16
\inst|inst|inst|lpm_shiftreg_component|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~11_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst|lpm_shiftreg_component|dffs\(3)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[15]~input_o\,
	datab => \inst5|inst3|inst12~q\,
	datac => \inst5|inst3|inst9~q\,
	datad => \inst|inst|inst|lpm_shiftreg_component|dffs\(3),
	combout => \inst|inst|inst|lpm_shiftreg_component|_~11_combout\);

-- Location: FF_X82_Y67_N17
\inst|inst|inst|lpm_shiftreg_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~11_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(4));

-- Location: LCCOMB_X81_Y67_N24
\inst|inst|inst|lpm_shiftreg_component|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~10_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst|lpm_shiftreg_component|dffs\(4)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \MAND[15]~input_o\,
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(4),
	datad => \inst5|inst3|inst9~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~10_combout\);

-- Location: FF_X81_Y67_N25
\inst|inst|inst|lpm_shiftreg_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~10_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(5));

-- Location: LCCOMB_X82_Y67_N26
\inst|inst|inst|lpm_shiftreg_component|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~9_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst|lpm_shiftreg_component|dffs\(5)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[15]~input_o\,
	datab => \inst5|inst3|inst12~q\,
	datac => \inst5|inst3|inst9~q\,
	datad => \inst|inst|inst|lpm_shiftreg_component|dffs\(5),
	combout => \inst|inst|inst|lpm_shiftreg_component|_~9_combout\);

-- Location: FF_X82_Y67_N27
\inst|inst|inst|lpm_shiftreg_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~9_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(6));

-- Location: LCCOMB_X82_Y67_N12
\inst|inst|inst|lpm_shiftreg_component|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~8_combout\ = (\inst5|inst3|inst9~q\ & (\inst|inst|inst|lpm_shiftreg_component|dffs\(6))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & ((\MAND[15]~input_o\))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst|lpm_shiftreg_component|dffs\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|lpm_shiftreg_component|dffs\(6),
	datab => \inst5|inst3|inst9~q\,
	datac => \MAND[15]~input_o\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~8_combout\);

-- Location: FF_X82_Y67_N13
\inst|inst|inst|lpm_shiftreg_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~8_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(7));

-- Location: LCCOMB_X82_Y67_N6
\inst|inst|inst|lpm_shiftreg_component|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~7_combout\ = (\inst5|inst3|inst9~q\ & (\inst|inst|inst|lpm_shiftreg_component|dffs\(7))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & ((\MAND[15]~input_o\))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst|lpm_shiftreg_component|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datab => \inst|inst|inst|lpm_shiftreg_component|dffs\(7),
	datac => \MAND[15]~input_o\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~7_combout\);

-- Location: FF_X82_Y67_N7
\inst|inst|inst|lpm_shiftreg_component|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~7_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(8));

-- Location: LCCOMB_X82_Y67_N4
\inst|inst|inst|lpm_shiftreg_component|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~6_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst|lpm_shiftreg_component|dffs\(8)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[15]~input_o\,
	datab => \inst5|inst3|inst12~q\,
	datac => \inst5|inst3|inst9~q\,
	datad => \inst|inst|inst|lpm_shiftreg_component|dffs\(8),
	combout => \inst|inst|inst|lpm_shiftreg_component|_~6_combout\);

-- Location: FF_X82_Y67_N5
\inst|inst|inst|lpm_shiftreg_component|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~6_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(9));

-- Location: LCCOMB_X82_Y67_N30
\inst|inst|inst|lpm_shiftreg_component|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~5_combout\ = (\inst5|inst3|inst9~q\ & (\inst|inst|inst|lpm_shiftreg_component|dffs\(9))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & ((\MAND[15]~input_o\))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst|lpm_shiftreg_component|dffs\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datab => \inst|inst|inst|lpm_shiftreg_component|dffs\(9),
	datac => \MAND[15]~input_o\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~5_combout\);

-- Location: FF_X82_Y67_N31
\inst|inst|inst|lpm_shiftreg_component|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~5_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(10));

-- Location: LCCOMB_X82_Y67_N28
\inst|inst|inst|lpm_shiftreg_component|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~4_combout\ = (\inst5|inst3|inst9~q\ & (\inst|inst|inst|lpm_shiftreg_component|dffs\(10))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & ((\MAND[15]~input_o\))) # (!\inst5|inst3|inst12~q\ & 
-- (\inst|inst|inst|lpm_shiftreg_component|dffs\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datab => \inst|inst|inst|lpm_shiftreg_component|dffs\(10),
	datac => \MAND[15]~input_o\,
	datad => \inst5|inst3|inst12~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~4_combout\);

-- Location: FF_X82_Y67_N29
\inst|inst|inst|lpm_shiftreg_component|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~4_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(11));

-- Location: LCCOMB_X82_Y67_N18
\inst|inst|inst|lpm_shiftreg_component|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~3_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst|lpm_shiftreg_component|dffs\(11)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[15]~input_o\,
	datab => \inst5|inst3|inst12~q\,
	datac => \inst5|inst3|inst9~q\,
	datad => \inst|inst|inst|lpm_shiftreg_component|dffs\(11),
	combout => \inst|inst|inst|lpm_shiftreg_component|_~3_combout\);

-- Location: FF_X82_Y67_N19
\inst|inst|inst|lpm_shiftreg_component|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~3_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(12));

-- Location: LCCOMB_X82_Y67_N8
\inst|inst|inst|lpm_shiftreg_component|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~2_combout\ = (\inst5|inst3|inst9~q\ & (((\inst|inst|inst|lpm_shiftreg_component|dffs\(12))))) # (!\inst5|inst3|inst9~q\ & ((\inst5|inst3|inst12~q\ & (\MAND[15]~input_o\)) # (!\inst5|inst3|inst12~q\ & 
-- ((\inst|inst|inst|lpm_shiftreg_component|dffs\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst9~q\,
	datab => \inst5|inst3|inst12~q\,
	datac => \MAND[15]~input_o\,
	datad => \inst|inst|inst|lpm_shiftreg_component|dffs\(12),
	combout => \inst|inst|inst|lpm_shiftreg_component|_~2_combout\);

-- Location: FF_X82_Y67_N9
\inst|inst|inst|lpm_shiftreg_component|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~2_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(13));

-- Location: LCCOMB_X81_Y67_N30
\inst|inst|inst|lpm_shiftreg_component|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~1_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst|lpm_shiftreg_component|dffs\(13)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \MAND[15]~input_o\,
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(13),
	datad => \inst5|inst3|inst9~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~1_combout\);

-- Location: FF_X81_Y67_N31
\inst|inst|inst|lpm_shiftreg_component|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~1_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(14));

-- Location: LCCOMB_X81_Y67_N28
\inst|inst|inst|lpm_shiftreg_component|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|lpm_shiftreg_component|_~0_combout\ = (\inst5|inst3|inst12~q\ & ((\inst5|inst3|inst9~q\ & ((\inst|inst|inst|lpm_shiftreg_component|dffs\(14)))) # (!\inst5|inst3|inst9~q\ & (\MAND[15]~input_o\)))) # (!\inst5|inst3|inst12~q\ & 
-- (((\inst|inst|inst|lpm_shiftreg_component|dffs\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|inst12~q\,
	datab => \MAND[15]~input_o\,
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(14),
	datad => \inst5|inst3|inst9~q\,
	combout => \inst|inst|inst|lpm_shiftreg_component|_~0_combout\);

-- Location: FF_X81_Y67_N29
\inst|inst|inst|lpm_shiftreg_component|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst|inst|lpm_shiftreg_component|_~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|inst|lpm_shiftreg_component|dffs\(15));

-- Location: LCCOMB_X82_Y66_N24
\inst|inst2[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(31) = \inst|inst|inst|lpm_shiftreg_component|dffs\(15) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(15),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(31));

-- Location: LCCOMB_X82_Y66_N14
\inst|inst2[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(30) = \inst|inst|inst|lpm_shiftreg_component|dffs\(14) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(14),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(30));

-- Location: LCCOMB_X82_Y66_N20
\inst|inst2[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(29) = \inst|inst|inst|lpm_shiftreg_component|dffs\(13) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(13),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(29));

-- Location: LCCOMB_X83_Y66_N20
\inst|inst2[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(28) = \inst|inst|inst|lpm_shiftreg_component|dffs\(12) $ (((\inst5|inst2|inst~0_combout\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst5|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|lpm_shiftreg_component|dffs\(12),
	datab => \inst5|inst2|inst~0_combout\,
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst5|state~q\,
	combout => \inst|inst2\(28));

-- Location: LCCOMB_X83_Y66_N22
\inst|inst2[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(27) = \inst|inst|inst|lpm_shiftreg_component|dffs\(11) $ (((\inst5|inst2|inst~0_combout\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst5|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|lpm_shiftreg_component|dffs\(11),
	datab => \inst5|inst2|inst~0_combout\,
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst5|state~q\,
	combout => \inst|inst2\(27));

-- Location: LCCOMB_X83_Y66_N24
\inst|inst2[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(26) = \inst|inst|inst|lpm_shiftreg_component|dffs\(10) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(10),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(26));

-- Location: LCCOMB_X83_Y66_N26
\inst|inst2[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(25) = \inst|inst|inst|lpm_shiftreg_component|dffs\(9) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst|inst|inst|lpm_shiftreg_component|dffs\(9),
	datac => \inst5|inst5|state~q\,
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(25));

-- Location: LCCOMB_X83_Y66_N28
\inst|inst2[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(24) = \inst|inst|inst|lpm_shiftreg_component|dffs\(8) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|lpm_shiftreg_component|dffs\(8),
	datab => \inst5|inst5|state~q\,
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(24));

-- Location: LCCOMB_X83_Y66_N30
\inst|inst2[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(23) = \inst|inst|inst|lpm_shiftreg_component|dffs\(7) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(7),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(23));

-- Location: LCCOMB_X82_Y67_N24
\inst|inst2[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(22) = \inst|inst|inst|lpm_shiftreg_component|dffs\(6) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst2|inst~0_combout\ & \inst5|inst5|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|lpm_shiftreg_component|dffs\(6),
	datab => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datac => \inst5|inst2|inst~0_combout\,
	datad => \inst5|inst5|state~q\,
	combout => \inst|inst2\(22));

-- Location: LCCOMB_X82_Y67_N10
\inst|inst2[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(21) = \inst|inst|inst|lpm_shiftreg_component|dffs\(5) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst5|inst2|inst~0_combout\,
	datad => \inst|inst|inst|lpm_shiftreg_component|dffs\(5),
	combout => \inst|inst2\(21));

-- Location: LCCOMB_X82_Y67_N22
\inst|inst2[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(20) = \inst|inst|inst|lpm_shiftreg_component|dffs\(4) $ (((\inst5|inst5|state~q\ & (\inst5|inst2|inst~0_combout\ & \inst5|inst|inst|lpm_shiftreg_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|state~q\,
	datab => \inst|inst|inst|lpm_shiftreg_component|dffs\(4),
	datac => \inst5|inst2|inst~0_combout\,
	datad => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	combout => \inst|inst2\(20));

-- Location: LCCOMB_X82_Y67_N14
\inst|inst2[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(19) = \inst|inst|inst|lpm_shiftreg_component|dffs\(3) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst2|inst~0_combout\ & \inst5|inst5|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst|inst|inst|lpm_shiftreg_component|dffs\(3),
	datac => \inst5|inst2|inst~0_combout\,
	datad => \inst5|inst5|state~q\,
	combout => \inst|inst2\(19));

-- Location: LCCOMB_X82_Y67_N20
\inst|inst2[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(18) = \inst|inst|inst|lpm_shiftreg_component|dffs\(2) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst5|state~q\ & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst|inst|inst|lpm_shiftreg_component|dffs\(2),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(18));

-- Location: LCCOMB_X82_Y67_N2
\inst|inst2[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(17) = \inst|inst|inst|lpm_shiftreg_component|dffs\(1) $ (((\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & (\inst5|inst2|inst~0_combout\ & \inst5|inst5|state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst|inst|inst|lpm_shiftreg_component|dffs\(1),
	datac => \inst5|inst2|inst~0_combout\,
	datad => \inst5|inst5|state~q\,
	combout => \inst|inst2\(17));

-- Location: LCCOMB_X82_Y68_N26
\inst|inst2[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2\(16) = \inst|inst|inst|lpm_shiftreg_component|dffs\(0) $ (((\inst5|inst5|state~q\ & (\inst5|inst|inst|lpm_shiftreg_component|dffs\(0) & \inst5|inst2|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|lpm_shiftreg_component|dffs\(0),
	datab => \inst5|inst5|state~q\,
	datac => \inst5|inst|inst|lpm_shiftreg_component|dffs\(0),
	datad => \inst5|inst2|inst~0_combout\,
	combout => \inst|inst2\(16));

-- Location: LCCOMB_X83_Y67_N18
\inst|inst4|lpm_ff_component|dffs[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[16]~66_combout\ = (\inst|inst2\(16) & ((\inst|inst4|lpm_ff_component|dffs\(16) & (\inst|inst4|lpm_ff_component|dffs[15]~65\ & VCC)) # (!\inst|inst4|lpm_ff_component|dffs\(16) & 
-- (!\inst|inst4|lpm_ff_component|dffs[15]~65\)))) # (!\inst|inst2\(16) & ((\inst|inst4|lpm_ff_component|dffs\(16) & (!\inst|inst4|lpm_ff_component|dffs[15]~65\)) # (!\inst|inst4|lpm_ff_component|dffs\(16) & ((\inst|inst4|lpm_ff_component|dffs[15]~65\) # 
-- (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[16]~67\ = CARRY((\inst|inst2\(16) & (!\inst|inst4|lpm_ff_component|dffs\(16) & !\inst|inst4|lpm_ff_component|dffs[15]~65\)) # (!\inst|inst2\(16) & ((!\inst|inst4|lpm_ff_component|dffs[15]~65\) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(16),
	datab => \inst|inst4|lpm_ff_component|dffs\(16),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[15]~65\,
	combout => \inst|inst4|lpm_ff_component|dffs[16]~66_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[16]~67\);

-- Location: FF_X83_Y67_N19
\inst|inst4|lpm_ff_component|dffs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[16]~66_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(16));

-- Location: LCCOMB_X83_Y67_N20
\inst|inst4|lpm_ff_component|dffs[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[17]~68_combout\ = ((\inst|inst2\(17) $ (\inst|inst4|lpm_ff_component|dffs\(17) $ (!\inst|inst4|lpm_ff_component|dffs[16]~67\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[17]~69\ = CARRY((\inst|inst2\(17) & ((\inst|inst4|lpm_ff_component|dffs\(17)) # (!\inst|inst4|lpm_ff_component|dffs[16]~67\))) # (!\inst|inst2\(17) & (\inst|inst4|lpm_ff_component|dffs\(17) & 
-- !\inst|inst4|lpm_ff_component|dffs[16]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(17),
	datab => \inst|inst4|lpm_ff_component|dffs\(17),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[16]~67\,
	combout => \inst|inst4|lpm_ff_component|dffs[17]~68_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[17]~69\);

-- Location: FF_X83_Y67_N21
\inst|inst4|lpm_ff_component|dffs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[17]~68_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(17));

-- Location: LCCOMB_X83_Y67_N22
\inst|inst4|lpm_ff_component|dffs[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[18]~70_combout\ = (\inst|inst4|lpm_ff_component|dffs\(18) & ((\inst|inst2\(18) & (\inst|inst4|lpm_ff_component|dffs[17]~69\ & VCC)) # (!\inst|inst2\(18) & (!\inst|inst4|lpm_ff_component|dffs[17]~69\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(18) & ((\inst|inst2\(18) & (!\inst|inst4|lpm_ff_component|dffs[17]~69\)) # (!\inst|inst2\(18) & ((\inst|inst4|lpm_ff_component|dffs[17]~69\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[18]~71\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(18) & (!\inst|inst2\(18) & !\inst|inst4|lpm_ff_component|dffs[17]~69\)) # (!\inst|inst4|lpm_ff_component|dffs\(18) & ((!\inst|inst4|lpm_ff_component|dffs[17]~69\) # 
-- (!\inst|inst2\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(18),
	datab => \inst|inst2\(18),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[17]~69\,
	combout => \inst|inst4|lpm_ff_component|dffs[18]~70_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[18]~71\);

-- Location: FF_X83_Y67_N23
\inst|inst4|lpm_ff_component|dffs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[18]~70_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(18));

-- Location: LCCOMB_X83_Y67_N24
\inst|inst4|lpm_ff_component|dffs[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[19]~72_combout\ = ((\inst|inst2\(19) $ (\inst|inst4|lpm_ff_component|dffs\(19) $ (!\inst|inst4|lpm_ff_component|dffs[18]~71\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[19]~73\ = CARRY((\inst|inst2\(19) & ((\inst|inst4|lpm_ff_component|dffs\(19)) # (!\inst|inst4|lpm_ff_component|dffs[18]~71\))) # (!\inst|inst2\(19) & (\inst|inst4|lpm_ff_component|dffs\(19) & 
-- !\inst|inst4|lpm_ff_component|dffs[18]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(19),
	datab => \inst|inst4|lpm_ff_component|dffs\(19),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[18]~71\,
	combout => \inst|inst4|lpm_ff_component|dffs[19]~72_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[19]~73\);

-- Location: FF_X83_Y67_N25
\inst|inst4|lpm_ff_component|dffs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[19]~72_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(19));

-- Location: LCCOMB_X83_Y67_N26
\inst|inst4|lpm_ff_component|dffs[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[20]~74_combout\ = (\inst|inst4|lpm_ff_component|dffs\(20) & ((\inst|inst2\(20) & (\inst|inst4|lpm_ff_component|dffs[19]~73\ & VCC)) # (!\inst|inst2\(20) & (!\inst|inst4|lpm_ff_component|dffs[19]~73\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(20) & ((\inst|inst2\(20) & (!\inst|inst4|lpm_ff_component|dffs[19]~73\)) # (!\inst|inst2\(20) & ((\inst|inst4|lpm_ff_component|dffs[19]~73\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[20]~75\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(20) & (!\inst|inst2\(20) & !\inst|inst4|lpm_ff_component|dffs[19]~73\)) # (!\inst|inst4|lpm_ff_component|dffs\(20) & ((!\inst|inst4|lpm_ff_component|dffs[19]~73\) # 
-- (!\inst|inst2\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(20),
	datab => \inst|inst2\(20),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[19]~73\,
	combout => \inst|inst4|lpm_ff_component|dffs[20]~74_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[20]~75\);

-- Location: FF_X83_Y67_N27
\inst|inst4|lpm_ff_component|dffs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[20]~74_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(20));

-- Location: LCCOMB_X83_Y67_N28
\inst|inst4|lpm_ff_component|dffs[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[21]~76_combout\ = ((\inst|inst2\(21) $ (\inst|inst4|lpm_ff_component|dffs\(21) $ (!\inst|inst4|lpm_ff_component|dffs[20]~75\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[21]~77\ = CARRY((\inst|inst2\(21) & ((\inst|inst4|lpm_ff_component|dffs\(21)) # (!\inst|inst4|lpm_ff_component|dffs[20]~75\))) # (!\inst|inst2\(21) & (\inst|inst4|lpm_ff_component|dffs\(21) & 
-- !\inst|inst4|lpm_ff_component|dffs[20]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(21),
	datab => \inst|inst4|lpm_ff_component|dffs\(21),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[20]~75\,
	combout => \inst|inst4|lpm_ff_component|dffs[21]~76_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[21]~77\);

-- Location: FF_X83_Y67_N29
\inst|inst4|lpm_ff_component|dffs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[21]~76_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(21));

-- Location: LCCOMB_X83_Y67_N30
\inst|inst4|lpm_ff_component|dffs[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[22]~78_combout\ = (\inst|inst4|lpm_ff_component|dffs\(22) & ((\inst|inst2\(22) & (\inst|inst4|lpm_ff_component|dffs[21]~77\ & VCC)) # (!\inst|inst2\(22) & (!\inst|inst4|lpm_ff_component|dffs[21]~77\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(22) & ((\inst|inst2\(22) & (!\inst|inst4|lpm_ff_component|dffs[21]~77\)) # (!\inst|inst2\(22) & ((\inst|inst4|lpm_ff_component|dffs[21]~77\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[22]~79\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(22) & (!\inst|inst2\(22) & !\inst|inst4|lpm_ff_component|dffs[21]~77\)) # (!\inst|inst4|lpm_ff_component|dffs\(22) & ((!\inst|inst4|lpm_ff_component|dffs[21]~77\) # 
-- (!\inst|inst2\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(22),
	datab => \inst|inst2\(22),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[21]~77\,
	combout => \inst|inst4|lpm_ff_component|dffs[22]~78_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[22]~79\);

-- Location: FF_X83_Y67_N31
\inst|inst4|lpm_ff_component|dffs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[22]~78_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(22));

-- Location: LCCOMB_X83_Y66_N0
\inst|inst4|lpm_ff_component|dffs[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[23]~80_combout\ = ((\inst|inst2\(23) $ (\inst|inst4|lpm_ff_component|dffs\(23) $ (!\inst|inst4|lpm_ff_component|dffs[22]~79\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[23]~81\ = CARRY((\inst|inst2\(23) & ((\inst|inst4|lpm_ff_component|dffs\(23)) # (!\inst|inst4|lpm_ff_component|dffs[22]~79\))) # (!\inst|inst2\(23) & (\inst|inst4|lpm_ff_component|dffs\(23) & 
-- !\inst|inst4|lpm_ff_component|dffs[22]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(23),
	datab => \inst|inst4|lpm_ff_component|dffs\(23),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[22]~79\,
	combout => \inst|inst4|lpm_ff_component|dffs[23]~80_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[23]~81\);

-- Location: FF_X83_Y66_N1
\inst|inst4|lpm_ff_component|dffs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[23]~80_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(23));

-- Location: LCCOMB_X83_Y66_N2
\inst|inst4|lpm_ff_component|dffs[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[24]~82_combout\ = (\inst|inst4|lpm_ff_component|dffs\(24) & ((\inst|inst2\(24) & (\inst|inst4|lpm_ff_component|dffs[23]~81\ & VCC)) # (!\inst|inst2\(24) & (!\inst|inst4|lpm_ff_component|dffs[23]~81\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(24) & ((\inst|inst2\(24) & (!\inst|inst4|lpm_ff_component|dffs[23]~81\)) # (!\inst|inst2\(24) & ((\inst|inst4|lpm_ff_component|dffs[23]~81\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[24]~83\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(24) & (!\inst|inst2\(24) & !\inst|inst4|lpm_ff_component|dffs[23]~81\)) # (!\inst|inst4|lpm_ff_component|dffs\(24) & ((!\inst|inst4|lpm_ff_component|dffs[23]~81\) # 
-- (!\inst|inst2\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(24),
	datab => \inst|inst2\(24),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[23]~81\,
	combout => \inst|inst4|lpm_ff_component|dffs[24]~82_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[24]~83\);

-- Location: FF_X83_Y66_N3
\inst|inst4|lpm_ff_component|dffs[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[24]~82_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(24));

-- Location: LCCOMB_X83_Y66_N4
\inst|inst4|lpm_ff_component|dffs[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[25]~84_combout\ = ((\inst|inst2\(25) $ (\inst|inst4|lpm_ff_component|dffs\(25) $ (!\inst|inst4|lpm_ff_component|dffs[24]~83\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[25]~85\ = CARRY((\inst|inst2\(25) & ((\inst|inst4|lpm_ff_component|dffs\(25)) # (!\inst|inst4|lpm_ff_component|dffs[24]~83\))) # (!\inst|inst2\(25) & (\inst|inst4|lpm_ff_component|dffs\(25) & 
-- !\inst|inst4|lpm_ff_component|dffs[24]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(25),
	datab => \inst|inst4|lpm_ff_component|dffs\(25),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[24]~83\,
	combout => \inst|inst4|lpm_ff_component|dffs[25]~84_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[25]~85\);

-- Location: FF_X83_Y66_N5
\inst|inst4|lpm_ff_component|dffs[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[25]~84_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(25));

-- Location: LCCOMB_X83_Y66_N6
\inst|inst4|lpm_ff_component|dffs[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[26]~86_combout\ = (\inst|inst4|lpm_ff_component|dffs\(26) & ((\inst|inst2\(26) & (\inst|inst4|lpm_ff_component|dffs[25]~85\ & VCC)) # (!\inst|inst2\(26) & (!\inst|inst4|lpm_ff_component|dffs[25]~85\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(26) & ((\inst|inst2\(26) & (!\inst|inst4|lpm_ff_component|dffs[25]~85\)) # (!\inst|inst2\(26) & ((\inst|inst4|lpm_ff_component|dffs[25]~85\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[26]~87\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(26) & (!\inst|inst2\(26) & !\inst|inst4|lpm_ff_component|dffs[25]~85\)) # (!\inst|inst4|lpm_ff_component|dffs\(26) & ((!\inst|inst4|lpm_ff_component|dffs[25]~85\) # 
-- (!\inst|inst2\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(26),
	datab => \inst|inst2\(26),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[25]~85\,
	combout => \inst|inst4|lpm_ff_component|dffs[26]~86_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[26]~87\);

-- Location: FF_X83_Y66_N7
\inst|inst4|lpm_ff_component|dffs[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[26]~86_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(26));

-- Location: LCCOMB_X83_Y66_N8
\inst|inst4|lpm_ff_component|dffs[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[27]~88_combout\ = ((\inst|inst2\(27) $ (\inst|inst4|lpm_ff_component|dffs\(27) $ (!\inst|inst4|lpm_ff_component|dffs[26]~87\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[27]~89\ = CARRY((\inst|inst2\(27) & ((\inst|inst4|lpm_ff_component|dffs\(27)) # (!\inst|inst4|lpm_ff_component|dffs[26]~87\))) # (!\inst|inst2\(27) & (\inst|inst4|lpm_ff_component|dffs\(27) & 
-- !\inst|inst4|lpm_ff_component|dffs[26]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(27),
	datab => \inst|inst4|lpm_ff_component|dffs\(27),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[26]~87\,
	combout => \inst|inst4|lpm_ff_component|dffs[27]~88_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[27]~89\);

-- Location: FF_X83_Y66_N9
\inst|inst4|lpm_ff_component|dffs[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[27]~88_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(27));

-- Location: LCCOMB_X83_Y66_N10
\inst|inst4|lpm_ff_component|dffs[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[28]~90_combout\ = (\inst|inst4|lpm_ff_component|dffs\(28) & ((\inst|inst2\(28) & (\inst|inst4|lpm_ff_component|dffs[27]~89\ & VCC)) # (!\inst|inst2\(28) & (!\inst|inst4|lpm_ff_component|dffs[27]~89\)))) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(28) & ((\inst|inst2\(28) & (!\inst|inst4|lpm_ff_component|dffs[27]~89\)) # (!\inst|inst2\(28) & ((\inst|inst4|lpm_ff_component|dffs[27]~89\) # (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[28]~91\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(28) & (!\inst|inst2\(28) & !\inst|inst4|lpm_ff_component|dffs[27]~89\)) # (!\inst|inst4|lpm_ff_component|dffs\(28) & ((!\inst|inst4|lpm_ff_component|dffs[27]~89\) # 
-- (!\inst|inst2\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(28),
	datab => \inst|inst2\(28),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[27]~89\,
	combout => \inst|inst4|lpm_ff_component|dffs[28]~90_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[28]~91\);

-- Location: FF_X83_Y66_N11
\inst|inst4|lpm_ff_component|dffs[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[28]~90_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(28));

-- Location: LCCOMB_X83_Y66_N12
\inst|inst4|lpm_ff_component|dffs[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[29]~92_combout\ = ((\inst|inst4|lpm_ff_component|dffs\(29) $ (\inst|inst2\(29) $ (!\inst|inst4|lpm_ff_component|dffs[28]~91\)))) # (GND)
-- \inst|inst4|lpm_ff_component|dffs[29]~93\ = CARRY((\inst|inst4|lpm_ff_component|dffs\(29) & ((\inst|inst2\(29)) # (!\inst|inst4|lpm_ff_component|dffs[28]~91\))) # (!\inst|inst4|lpm_ff_component|dffs\(29) & (\inst|inst2\(29) & 
-- !\inst|inst4|lpm_ff_component|dffs[28]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(29),
	datab => \inst|inst2\(29),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[28]~91\,
	combout => \inst|inst4|lpm_ff_component|dffs[29]~92_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[29]~93\);

-- Location: FF_X83_Y66_N13
\inst|inst4|lpm_ff_component|dffs[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[29]~92_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(29));

-- Location: LCCOMB_X83_Y66_N14
\inst|inst4|lpm_ff_component|dffs[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[30]~94_combout\ = (\inst|inst2\(30) & ((\inst|inst4|lpm_ff_component|dffs\(30) & (\inst|inst4|lpm_ff_component|dffs[29]~93\ & VCC)) # (!\inst|inst4|lpm_ff_component|dffs\(30) & 
-- (!\inst|inst4|lpm_ff_component|dffs[29]~93\)))) # (!\inst|inst2\(30) & ((\inst|inst4|lpm_ff_component|dffs\(30) & (!\inst|inst4|lpm_ff_component|dffs[29]~93\)) # (!\inst|inst4|lpm_ff_component|dffs\(30) & ((\inst|inst4|lpm_ff_component|dffs[29]~93\) # 
-- (GND)))))
-- \inst|inst4|lpm_ff_component|dffs[30]~95\ = CARRY((\inst|inst2\(30) & (!\inst|inst4|lpm_ff_component|dffs\(30) & !\inst|inst4|lpm_ff_component|dffs[29]~93\)) # (!\inst|inst2\(30) & ((!\inst|inst4|lpm_ff_component|dffs[29]~93\) # 
-- (!\inst|inst4|lpm_ff_component|dffs\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2\(30),
	datab => \inst|inst4|lpm_ff_component|dffs\(30),
	datad => VCC,
	cin => \inst|inst4|lpm_ff_component|dffs[29]~93\,
	combout => \inst|inst4|lpm_ff_component|dffs[30]~94_combout\,
	cout => \inst|inst4|lpm_ff_component|dffs[30]~95\);

-- Location: FF_X83_Y66_N15
\inst|inst4|lpm_ff_component|dffs[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[30]~94_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(30));

-- Location: LCCOMB_X83_Y66_N16
\inst|inst4|lpm_ff_component|dffs[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|lpm_ff_component|dffs[31]~96_combout\ = \inst|inst4|lpm_ff_component|dffs\(31) $ (\inst|inst4|lpm_ff_component|dffs[30]~95\ $ (!\inst|inst2\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst4|lpm_ff_component|dffs\(31),
	datad => \inst|inst2\(31),
	cin => \inst|inst4|lpm_ff_component|dffs[30]~95\,
	combout => \inst|inst4|lpm_ff_component|dffs[31]~96_combout\);

-- Location: FF_X83_Y66_N17
\inst|inst4|lpm_ff_component|dffs[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst4|lpm_ff_component|dffs[31]~96_combout\,
	clrn => \inst5|inst1|ALT_INV_inst2~combout\,
	ena => \inst5|inst5|LOAD_DO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4|lpm_ff_component|dffs\(31));

-- Location: LCCOMB_X84_Y69_N24
\inst|inst7|inst1|$00000|auto_generated|result_node[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[15]~1_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[15]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(31) & \SOUND~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[15]~0_combout\,
	datab => \inst|inst4|lpm_ff_component|dffs\(31),
	datad => \SOUND~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[15]~1_combout\);

-- Location: LCCOMB_X84_Y69_N4
\inst|inst7|inst24|inst9|inst4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst9|inst4[0]~0_combout\ = (\inst|inst4|lpm_ff_component|dffs\(23) & (\inst|inst4|lpm_ff_component|dffs\(24) & (\inst|inst4|lpm_ff_component|dffs\(26) & \inst|inst4|lpm_ff_component|dffs\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(23),
	datab => \inst|inst4|lpm_ff_component|dffs\(24),
	datac => \inst|inst4|lpm_ff_component|dffs\(26),
	datad => \inst|inst4|lpm_ff_component|dffs\(25),
	combout => \inst|inst7|inst24|inst9|inst4[0]~0_combout\);

-- Location: LCCOMB_X85_Y69_N10
\inst|inst7|inst24|inst9|inst4[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst9|inst4[0]~1_combout\ = (\inst|inst4|lpm_ff_component|dffs\(29) & (\inst|inst4|lpm_ff_component|dffs\(30) & (\inst|inst4|lpm_ff_component|dffs\(28) & \inst|inst4|lpm_ff_component|dffs\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(29),
	datab => \inst|inst4|lpm_ff_component|dffs\(30),
	datac => \inst|inst4|lpm_ff_component|dffs\(28),
	datad => \inst|inst4|lpm_ff_component|dffs\(27),
	combout => \inst|inst7|inst24|inst9|inst4[0]~1_combout\);

-- Location: LCCOMB_X85_Y69_N12
\inst|inst7|inst24|inst10[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(22) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst4|lpm_ff_component|dffs\(22) & \inst|inst7|inst24|inst9|inst4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(22),
	datad => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	combout => \inst|inst7|inst24|inst10\(22));

-- Location: LCCOMB_X84_Y67_N10
\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ = (\SOUND~input_o\ & ((\inst|inst4|lpm_ff_component|dffs\(31)))) # (!\SOUND~input_o\ & (\ENMUL~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datab => \ENMUL~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(31),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\);

-- Location: LCCOMB_X84_Y69_N10
\inst|inst7|inst24|inst|inst[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst|inst[0]~0_combout\ = (\inst|inst4|lpm_ff_component|dffs\(23)) # ((\inst|inst4|lpm_ff_component|dffs\(24)) # ((\inst|inst4|lpm_ff_component|dffs\(26)) # (\inst|inst4|lpm_ff_component|dffs\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(23),
	datab => \inst|inst4|lpm_ff_component|dffs\(24),
	datac => \inst|inst4|lpm_ff_component|dffs\(26),
	datad => \inst|inst4|lpm_ff_component|dffs\(25),
	combout => \inst|inst7|inst24|inst|inst[0]~0_combout\);

-- Location: LCCOMB_X85_Y69_N0
\inst|inst7|inst24|inst|inst[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst|inst[0]~1_combout\ = (\inst|inst4|lpm_ff_component|dffs\(29)) # ((\inst|inst4|lpm_ff_component|dffs\(30)) # ((\inst|inst4|lpm_ff_component|dffs\(28)) # (\inst|inst4|lpm_ff_component|dffs\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(29),
	datab => \inst|inst4|lpm_ff_component|dffs\(30),
	datac => \inst|inst4|lpm_ff_component|dffs\(28),
	datad => \inst|inst4|lpm_ff_component|dffs\(27),
	combout => \inst|inst7|inst24|inst|inst[0]~1_combout\);

-- Location: LCCOMB_X85_Y69_N6
\inst|inst7|inst24|inst11[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(22) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(22)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(22),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(22));

-- Location: LCCOMB_X85_Y69_N20
\inst|inst7|inst1|$00000|auto_generated|result_node[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[14]~3_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (((\SOUND~input_o\)))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- (\inst|inst7|inst24|inst11\(22))) # (!\SOUND~input_o\ & ((\MAND[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst11\(22),
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datac => \SOUND~input_o\,
	datad => \MAND[14]~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~3_combout\);

-- Location: LCCOMB_X85_Y69_N30
\inst|inst7|inst1|$00000|auto_generated|result_node[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[14]~4_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~3_combout\ & (\inst|inst7|inst24|inst10\(22))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~3_combout\ & ((\inst|inst4|lpm_ff_component|dffs\(14)))))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & 
-- (((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst10\(22),
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(14),
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~3_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~4_combout\);

-- Location: LCCOMB_X84_Y67_N4
\inst|inst7|inst24|inst10[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(21) = (\inst|inst4|lpm_ff_component|dffs\(21) & (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & \inst|inst7|inst24|inst9|inst4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(21),
	datab => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	combout => \inst|inst7|inst24|inst10\(21));

-- Location: LCCOMB_X84_Y67_N28
\inst|inst7|inst24|inst11[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(21) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(21)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(21),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(21));

-- Location: LCCOMB_X84_Y67_N22
\inst|inst7|inst1|$00000|auto_generated|result_node[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[13]~5_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (((\SOUND~input_o\)))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- (\inst|inst7|inst24|inst11\(21))) # (!\SOUND~input_o\ & ((\MAND[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \inst|inst7|inst24|inst11\(21),
	datac => \MAND[13]~input_o\,
	datad => \SOUND~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[13]~5_combout\);

-- Location: LCCOMB_X84_Y67_N18
\inst|inst7|inst1|$00000|auto_generated|result_node[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[13]~6_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[13]~5_combout\ & (((\inst|inst7|inst24|inst10\(21)) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[13]~5_combout\ & (\inst|inst4|lpm_ff_component|dffs\(13) & ((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(13),
	datab => \inst|inst7|inst24|inst10\(21),
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[13]~5_combout\,
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[13]~6_combout\);

-- Location: LCCOMB_X85_Y70_N4
\inst|inst7|inst24|inst11[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(20) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(20)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(20),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(20));

-- Location: LCCOMB_X85_Y70_N18
\inst|inst7|inst1|$00000|auto_generated|result_node[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[12]~7_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (\SOUND~input_o\)) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- (\inst|inst7|inst24|inst11\(20))) # (!\SOUND~input_o\ & ((\MAND[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \SOUND~input_o\,
	datac => \inst|inst7|inst24|inst11\(20),
	datad => \MAND[12]~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[12]~7_combout\);

-- Location: LCCOMB_X85_Y70_N24
\inst|inst7|inst24|inst10[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(20) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst7|inst24|inst9|inst4[0]~1_combout\ & \inst|inst4|lpm_ff_component|dffs\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datab => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(20),
	combout => \inst|inst7|inst24|inst10\(20));

-- Location: LCCOMB_X85_Y70_N14
\inst|inst7|inst1|$00000|auto_generated|result_node[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[12]~8_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\inst|inst7|inst1|$00000|auto_generated|result_node[12]~7_combout\ & (\inst|inst7|inst24|inst10\(20))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[12]~7_combout\ & ((\inst|inst4|lpm_ff_component|dffs\(12)))))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & 
-- (\inst|inst7|inst1|$00000|auto_generated|result_node[12]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[12]~7_combout\,
	datac => \inst|inst7|inst24|inst10\(20),
	datad => \inst|inst4|lpm_ff_component|dffs\(12),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[12]~8_combout\);

-- Location: LCCOMB_X83_Y70_N12
\inst|inst7|inst24|inst10[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(19) = (\inst|inst7|inst24|inst9|inst4[0]~1_combout\ & (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & \inst|inst4|lpm_ff_component|dffs\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	datab => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(19),
	combout => \inst|inst7|inst24|inst10\(19));

-- Location: LCCOMB_X83_Y70_N28
\inst|inst7|inst24|inst11[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(19) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(19)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datab => \inst|inst4|lpm_ff_component|dffs\(19),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(19));

-- Location: LCCOMB_X83_Y70_N18
\inst|inst7|inst1|$00000|auto_generated|result_node[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[11]~9_combout\ = (\SOUND~input_o\ & (((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\) # (\inst|inst7|inst24|inst11\(19))))) # (!\SOUND~input_o\ & (\MAND[11]~input_o\ & 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datab => \MAND[11]~input_o\,
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datad => \inst|inst7|inst24|inst11\(19),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[11]~9_combout\);

-- Location: LCCOMB_X83_Y70_N26
\inst|inst7|inst1|$00000|auto_generated|result_node[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[11]~10_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\inst|inst7|inst1|$00000|auto_generated|result_node[11]~9_combout\ & (\inst|inst7|inst24|inst10\(19))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[11]~9_combout\ & ((\inst|inst4|lpm_ff_component|dffs\(11)))))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & 
-- (((\inst|inst7|inst1|$00000|auto_generated|result_node[11]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst10\(19),
	datab => \inst|inst4|lpm_ff_component|dffs\(11),
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[11]~9_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[11]~10_combout\);

-- Location: LCCOMB_X84_Y69_N2
\inst|inst7|inst24|inst11[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(18) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(18)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datab => \inst|inst4|lpm_ff_component|dffs\(18),
	datac => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(18));

-- Location: LCCOMB_X84_Y69_N28
\inst|inst7|inst1|$00000|auto_generated|result_node[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[10]~11_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (((\SOUND~input_o\)))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- ((\inst|inst7|inst24|inst11\(18)))) # (!\SOUND~input_o\ & (\MAND[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[10]~input_o\,
	datab => \inst|inst7|inst24|inst11\(18),
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datad => \SOUND~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[10]~11_combout\);

-- Location: LCCOMB_X84_Y69_N18
\inst|inst7|inst24|inst10[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(18) = (\inst|inst7|inst24|inst9|inst4[0]~1_combout\ & (\inst|inst4|lpm_ff_component|dffs\(18) & \inst|inst7|inst24|inst9|inst4[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	datab => \inst|inst4|lpm_ff_component|dffs\(18),
	datac => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	combout => \inst|inst7|inst24|inst10\(18));

-- Location: LCCOMB_X84_Y69_N12
\inst|inst7|inst1|$00000|auto_generated|result_node[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[10]~12_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[10]~11_combout\ & (((\inst|inst7|inst24|inst10\(18)) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[10]~11_combout\ & (\inst|inst4|lpm_ff_component|dffs\(10) & (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(10),
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[10]~11_combout\,
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datad => \inst|inst7|inst24|inst10\(18),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[10]~12_combout\);

-- Location: LCCOMB_X85_Y70_N16
\inst|inst7|inst24|inst10[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(17) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst7|inst24|inst9|inst4[0]~1_combout\ & \inst|inst4|lpm_ff_component|dffs\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datab => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(17),
	combout => \inst|inst7|inst24|inst10\(17));

-- Location: LCCOMB_X85_Y70_N12
\inst|inst7|inst24|inst11[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(17) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(17)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(17),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(17));

-- Location: LCCOMB_X85_Y70_N26
\inst|inst7|inst1|$00000|auto_generated|result_node[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[9]~13_combout\ = (\SOUND~input_o\ & ((\inst|inst7|inst24|inst11\(17)) # ((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # (!\SOUND~input_o\ & (((\MAND[9]~input_o\ & 
-- !\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst11\(17),
	datab => \MAND[9]~input_o\,
	datac => \SOUND~input_o\,
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[9]~13_combout\);

-- Location: LCCOMB_X85_Y70_N10
\inst|inst7|inst1|$00000|auto_generated|result_node[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[9]~14_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\inst|inst7|inst1|$00000|auto_generated|result_node[9]~13_combout\ & (\inst|inst7|inst24|inst10\(17))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[9]~13_combout\ & ((\inst|inst4|lpm_ff_component|dffs\(9)))))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & 
-- (((\inst|inst7|inst1|$00000|auto_generated|result_node[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \inst|inst7|inst24|inst10\(17),
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[9]~13_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(9),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[9]~14_combout\);

-- Location: LCCOMB_X83_Y69_N20
\inst|inst7|inst24|inst11[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(16) = (\inst|inst7|inst24|inst|inst[0]~1_combout\) # ((\inst|inst7|inst24|inst|inst[0]~0_combout\) # (\inst|inst4|lpm_ff_component|dffs\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	datab => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(16),
	combout => \inst|inst7|inst24|inst11\(16));

-- Location: LCCOMB_X83_Y69_N26
\inst|inst7|inst1|$00000|auto_generated|result_node[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[8]~15_combout\ = (\SOUND~input_o\ & (((\inst|inst7|inst24|inst11\(16)) # (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # (!\SOUND~input_o\ & (\MAND[8]~input_o\ & 
-- ((!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[8]~input_o\,
	datab => \inst|inst7|inst24|inst11\(16),
	datac => \SOUND~input_o\,
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[8]~15_combout\);

-- Location: LCCOMB_X83_Y69_N4
\inst|inst7|inst24|inst10[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(16) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst7|inst24|inst9|inst4[0]~1_combout\ & \inst|inst4|lpm_ff_component|dffs\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(16),
	combout => \inst|inst7|inst24|inst10\(16));

-- Location: LCCOMB_X83_Y69_N22
\inst|inst7|inst1|$00000|auto_generated|result_node[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[8]~16_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[8]~15_combout\ & (((\inst|inst7|inst24|inst10\(16)) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[8]~15_combout\ & (\inst|inst4|lpm_ff_component|dffs\(8) & ((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[8]~15_combout\,
	datab => \inst|inst4|lpm_ff_component|dffs\(8),
	datac => \inst|inst7|inst24|inst10\(16),
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[8]~16_combout\);

-- Location: LCCOMB_X84_Y67_N0
\inst|inst7|inst24|inst11[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(15) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(15)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(15),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(15));

-- Location: LCCOMB_X84_Y67_N26
\inst|inst7|inst1|$00000|auto_generated|result_node[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[7]~17_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (((\SOUND~input_o\)))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- (\inst|inst7|inst24|inst11\(15))) # (!\SOUND~input_o\ & ((\MAND[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \inst|inst7|inst24|inst11\(15),
	datac => \MAND[7]~input_o\,
	datad => \SOUND~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[7]~17_combout\);

-- Location: LCCOMB_X84_Y67_N16
\inst|inst7|inst24|inst10[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(15) = (\inst|inst4|lpm_ff_component|dffs\(15) & (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & \inst|inst7|inst24|inst9|inst4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(15),
	datab => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	combout => \inst|inst7|inst24|inst10\(15));

-- Location: LCCOMB_X84_Y67_N30
\inst|inst7|inst1|$00000|auto_generated|result_node[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[7]~18_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[7]~17_combout\ & ((\inst|inst7|inst24|inst10\(15)) # ((!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[7]~17_combout\ & (((\inst|inst4|lpm_ff_component|dffs\(7) & \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[7]~17_combout\,
	datab => \inst|inst7|inst24|inst10\(15),
	datac => \inst|inst4|lpm_ff_component|dffs\(7),
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[7]~18_combout\);

-- Location: LCCOMB_X85_Y69_N28
\inst|inst7|inst24|inst11[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(14) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(14)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(14),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(14));

-- Location: LCCOMB_X85_Y69_N26
\inst|inst7|inst1|$00000|auto_generated|result_node[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[6]~19_combout\ = (\SOUND~input_o\ & ((\inst|inst7|inst24|inst11\(14)) # ((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # (!\SOUND~input_o\ & 
-- (((!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & \MAND[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datab => \inst|inst7|inst24|inst11\(14),
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datad => \MAND[6]~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[6]~19_combout\);

-- Location: LCCOMB_X85_Y69_N24
\inst|inst7|inst24|inst10[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(14) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst4|lpm_ff_component|dffs\(14) & \inst|inst7|inst24|inst9|inst4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(14),
	datad => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	combout => \inst|inst7|inst24|inst10\(14));

-- Location: LCCOMB_X85_Y69_N22
\inst|inst7|inst1|$00000|auto_generated|result_node[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[6]~20_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[6]~19_combout\ & (((\inst|inst7|inst24|inst10\(14))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[6]~19_combout\ & (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (\inst|inst4|lpm_ff_component|dffs\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[6]~19_combout\,
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(6),
	datad => \inst|inst7|inst24|inst10\(14),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[6]~20_combout\);

-- Location: LCCOMB_X84_Y67_N12
\inst|inst7|inst24|inst10[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(13) = (\inst|inst4|lpm_ff_component|dffs\(13) & (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & \inst|inst7|inst24|inst9|inst4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(13),
	datab => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	combout => \inst|inst7|inst24|inst10\(13));

-- Location: LCCOMB_X84_Y67_N8
\inst|inst7|inst24|inst11[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(13) = (\inst|inst4|lpm_ff_component|dffs\(13)) # ((\inst|inst7|inst24|inst|inst[0]~0_combout\) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(13),
	datac => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(13));

-- Location: LCCOMB_X84_Y67_N14
\inst|inst7|inst1|$00000|auto_generated|result_node[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[5]~21_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (((\SOUND~input_o\)))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- ((\inst|inst7|inst24|inst11\(13)))) # (!\SOUND~input_o\ & (\MAND[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \MAND[5]~input_o\,
	datac => \inst|inst7|inst24|inst11\(13),
	datad => \SOUND~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[5]~21_combout\);

-- Location: LCCOMB_X84_Y67_N2
\inst|inst7|inst1|$00000|auto_generated|result_node[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[5]~22_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[5]~21_combout\ & ((\inst|inst7|inst24|inst10\(13)) # ((!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[5]~21_combout\ & (((\inst|inst4|lpm_ff_component|dffs\(5) & \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst10\(13),
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[5]~21_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(5),
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[5]~22_combout\);

-- Location: LCCOMB_X85_Y70_N20
\inst|inst7|inst24|inst10[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(12) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst7|inst24|inst9|inst4[0]~1_combout\ & \inst|inst4|lpm_ff_component|dffs\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datab => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(12),
	combout => \inst|inst7|inst24|inst10\(12));

-- Location: LCCOMB_X85_Y70_N8
\inst|inst7|inst24|inst11[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(12) = (\inst|inst4|lpm_ff_component|dffs\(12)) # ((\inst|inst7|inst24|inst|inst[0]~0_combout\) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(12),
	datab => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(12));

-- Location: LCCOMB_X85_Y70_N6
\inst|inst7|inst1|$00000|auto_generated|result_node[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[4]~23_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (\SOUND~input_o\)) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- (\inst|inst7|inst24|inst11\(12))) # (!\SOUND~input_o\ & ((\MAND[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \SOUND~input_o\,
	datac => \inst|inst7|inst24|inst11\(12),
	datad => \MAND[4]~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[4]~23_combout\);

-- Location: LCCOMB_X85_Y70_N2
\inst|inst7|inst1|$00000|auto_generated|result_node[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[4]~24_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\inst|inst7|inst1|$00000|auto_generated|result_node[4]~23_combout\ & (\inst|inst7|inst24|inst10\(12))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[4]~23_combout\ & ((\inst|inst4|lpm_ff_component|dffs\(4)))))) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & 
-- (((\inst|inst7|inst1|$00000|auto_generated|result_node[4]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \inst|inst7|inst24|inst10\(12),
	datac => \inst|inst4|lpm_ff_component|dffs\(4),
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[4]~23_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[4]~24_combout\);

-- Location: LCCOMB_X83_Y70_N4
\inst|inst7|inst24|inst11[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(11) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(11)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(11),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(11));

-- Location: LCCOMB_X83_Y70_N14
\inst|inst7|inst1|$00000|auto_generated|result_node[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[3]~25_combout\ = (\SOUND~input_o\ & ((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\) # ((\inst|inst7|inst24|inst11\(11))))) # (!\SOUND~input_o\ & 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\MAND[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datac => \inst|inst7|inst24|inst11\(11),
	datad => \MAND[3]~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[3]~25_combout\);

-- Location: LCCOMB_X83_Y70_N0
\inst|inst7|inst24|inst10[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(11) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst4|lpm_ff_component|dffs\(11) & \inst|inst7|inst24|inst9|inst4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(11),
	datad => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	combout => \inst|inst7|inst24|inst10\(11));

-- Location: LCCOMB_X83_Y70_N2
\inst|inst7|inst1|$00000|auto_generated|result_node[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[3]~26_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[3]~25_combout\ & (((\inst|inst7|inst24|inst10\(11)) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[3]~25_combout\ & (\inst|inst4|lpm_ff_component|dffs\(3) & (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(3),
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[3]~25_combout\,
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datad => \inst|inst7|inst24|inst10\(11),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[3]~26_combout\);

-- Location: LCCOMB_X83_Y70_N16
\inst|inst7|inst24|inst11[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(10) = (\inst|inst7|inst24|inst|inst[0]~0_combout\) # ((\inst|inst4|lpm_ff_component|dffs\(10)) # (\inst|inst7|inst24|inst|inst[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(10),
	datad => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	combout => \inst|inst7|inst24|inst11\(10));

-- Location: LCCOMB_X83_Y70_N10
\inst|inst7|inst1|$00000|auto_generated|result_node[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[2]~27_combout\ = (\SOUND~input_o\ & ((\inst|inst7|inst24|inst11\(10)) # ((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # (!\SOUND~input_o\ & 
-- (((!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & \MAND[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datab => \inst|inst7|inst24|inst11\(10),
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datad => \MAND[2]~input_o\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[2]~27_combout\);

-- Location: LCCOMB_X83_Y70_N20
\inst|inst7|inst24|inst10[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(10) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst4|lpm_ff_component|dffs\(10) & \inst|inst7|inst24|inst9|inst4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(10),
	datad => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	combout => \inst|inst7|inst24|inst10\(10));

-- Location: LCCOMB_X83_Y70_N22
\inst|inst7|inst1|$00000|auto_generated|result_node[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[2]~28_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[2]~27_combout\ & ((\inst|inst7|inst24|inst10\(10)) # ((!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[2]~27_combout\ & (((\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & \inst|inst4|lpm_ff_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[2]~27_combout\,
	datab => \inst|inst7|inst24|inst10\(10),
	datac => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(2),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[2]~28_combout\);

-- Location: LCCOMB_X83_Y69_N16
\inst|inst7|inst24|inst11[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(9) = (\inst|inst7|inst24|inst|inst[0]~1_combout\) # ((\inst|inst7|inst24|inst|inst[0]~0_combout\) # (\inst|inst4|lpm_ff_component|dffs\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	datab => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(9),
	combout => \inst|inst7|inst24|inst11\(9));

-- Location: LCCOMB_X83_Y69_N10
\inst|inst7|inst1|$00000|auto_generated|result_node[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[1]~29_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (\SOUND~input_o\)) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- ((\inst|inst7|inst24|inst11\(9)))) # (!\SOUND~input_o\ & (\MAND[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \SOUND~input_o\,
	datac => \MAND[1]~input_o\,
	datad => \inst|inst7|inst24|inst11\(9),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[1]~29_combout\);

-- Location: LCCOMB_X83_Y69_N28
\inst|inst7|inst24|inst10[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(9) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst7|inst24|inst9|inst4[0]~1_combout\ & \inst|inst4|lpm_ff_component|dffs\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datac => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(9),
	combout => \inst|inst7|inst24|inst10\(9));

-- Location: LCCOMB_X83_Y69_N6
\inst|inst7|inst1|$00000|auto_generated|result_node[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[1]~30_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[1]~29_combout\ & ((\inst|inst7|inst24|inst10\(9)) # ((!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[1]~29_combout\ & (((\inst|inst4|lpm_ff_component|dffs\(1) & \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[1]~29_combout\,
	datab => \inst|inst7|inst24|inst10\(9),
	datac => \inst|inst4|lpm_ff_component|dffs\(1),
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[1]~30_combout\);

-- Location: LCCOMB_X83_Y69_N12
\inst|inst7|inst24|inst10[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst10\(8) = (\inst|inst7|inst24|inst9|inst4[0]~0_combout\ & (\inst|inst4|lpm_ff_component|dffs\(8) & \inst|inst7|inst24|inst9|inst4[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst9|inst4[0]~0_combout\,
	datab => \inst|inst4|lpm_ff_component|dffs\(8),
	datac => \inst|inst7|inst24|inst9|inst4[0]~1_combout\,
	combout => \inst|inst7|inst24|inst10\(8));

-- Location: LCCOMB_X83_Y69_N0
\inst|inst7|inst24|inst11[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst24|inst11\(8) = (\inst|inst7|inst24|inst|inst[0]~1_combout\) # ((\inst|inst7|inst24|inst|inst[0]~0_combout\) # (\inst|inst4|lpm_ff_component|dffs\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst|inst[0]~1_combout\,
	datab => \inst|inst7|inst24|inst|inst[0]~0_combout\,
	datad => \inst|inst4|lpm_ff_component|dffs\(8),
	combout => \inst|inst7|inst24|inst11\(8));

-- Location: LCCOMB_X83_Y69_N14
\inst|inst7|inst1|$00000|auto_generated|result_node[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[0]~31_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & (\SOUND~input_o\)) # (!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\ & ((\SOUND~input_o\ & 
-- ((\inst|inst7|inst24|inst11\(8)))) # (!\SOUND~input_o\ & (\MAND[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	datab => \SOUND~input_o\,
	datac => \MAND[0]~input_o\,
	datad => \inst|inst7|inst24|inst11\(8),
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[0]~31_combout\);

-- Location: LCCOMB_X83_Y69_N2
\inst|inst7|inst1|$00000|auto_generated|result_node[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst1|$00000|auto_generated|result_node[0]~32_combout\ = (\inst|inst7|inst1|$00000|auto_generated|result_node[0]~31_combout\ & ((\inst|inst7|inst24|inst10\(8)) # ((!\inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\)))) # 
-- (!\inst|inst7|inst1|$00000|auto_generated|result_node[0]~31_combout\ & (((\inst|inst4|lpm_ff_component|dffs\(0) & \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|inst24|inst10\(8),
	datab => \inst|inst7|inst1|$00000|auto_generated|result_node[0]~31_combout\,
	datac => \inst|inst4|lpm_ff_component|dffs\(0),
	datad => \inst|inst7|inst1|$00000|auto_generated|result_node[14]~2_combout\,
	combout => \inst|inst7|inst1|$00000|auto_generated|result_node[0]~32_combout\);

-- Location: LCCOMB_X84_Y67_N20
\inst|inst7|inst|$00000|auto_generated|result_node[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[15]~0_combout\ = (\SOUND~input_o\ & ((\MAND[15]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(31),
	datad => \MAND[15]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X85_Y69_N4
\inst|inst7|inst|$00000|auto_generated|result_node[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[14]~1_combout\ = (\SOUND~input_o\ & (\MAND[14]~input_o\)) # (!\SOUND~input_o\ & ((\inst|inst4|lpm_ff_component|dffs\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datab => \MAND[14]~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(30),
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X85_Y69_N18
\inst|inst7|inst|$00000|auto_generated|result_node[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[13]~2_combout\ = (\SOUND~input_o\ & ((\MAND[13]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(29),
	datad => \MAND[13]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X85_Y70_N0
\inst|inst7|inst|$00000|auto_generated|result_node[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[12]~3_combout\ = (\SOUND~input_o\ & ((\MAND[12]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(28),
	datad => \MAND[12]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X83_Y70_N8
\inst|inst7|inst|$00000|auto_generated|result_node[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[11]~4_combout\ = (\SOUND~input_o\ & ((\MAND[11]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(27),
	datab => \MAND[11]~input_o\,
	datad => \SOUND~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X84_Y69_N26
\inst|inst7|inst|$00000|auto_generated|result_node[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[10]~5_combout\ = (\SOUND~input_o\ & (\MAND[10]~input_o\)) # (!\SOUND~input_o\ & ((\inst|inst4|lpm_ff_component|dffs\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[10]~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(26),
	datad => \SOUND~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X84_Y69_N0
\inst|inst7|inst|$00000|auto_generated|result_node[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[9]~6_combout\ = (\SOUND~input_o\ & ((\MAND[9]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4|lpm_ff_component|dffs\(25),
	datab => \SOUND~input_o\,
	datad => \MAND[9]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X83_Y69_N24
\inst|inst7|inst|$00000|auto_generated|result_node[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[8]~7_combout\ = (\SOUND~input_o\ & (\MAND[8]~input_o\)) # (!\SOUND~input_o\ & ((\inst|inst4|lpm_ff_component|dffs\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MAND[8]~input_o\,
	datab => \inst|inst4|lpm_ff_component|dffs\(24),
	datac => \SOUND~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X84_Y69_N14
\inst|inst7|inst|$00000|auto_generated|result_node[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[7]~8_combout\ = (\SOUND~input_o\ & ((\MAND[7]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(23),
	datad => \MAND[7]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X85_Y69_N16
\inst|inst7|inst|$00000|auto_generated|result_node[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[6]~9_combout\ = (\SOUND~input_o\ & ((\MAND[6]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(22),
	datad => \MAND[6]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X84_Y67_N6
\inst|inst7|inst|$00000|auto_generated|result_node[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[5]~10_combout\ = (\SOUND~input_o\ & ((\MAND[5]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(21),
	datad => \MAND[5]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X85_Y70_N22
\inst|inst7|inst|$00000|auto_generated|result_node[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[4]~11_combout\ = (\SOUND~input_o\ & ((\MAND[4]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(20),
	datad => \MAND[4]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X83_Y70_N6
\inst|inst7|inst|$00000|auto_generated|result_node[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[3]~12_combout\ = (\SOUND~input_o\ & ((\MAND[3]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datab => \inst|inst4|lpm_ff_component|dffs\(19),
	datad => \MAND[3]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X83_Y70_N24
\inst|inst7|inst|$00000|auto_generated|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[2]~13_combout\ = (\SOUND~input_o\ & ((\MAND[2]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(18),
	datad => \MAND[2]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X85_Y70_N28
\inst|inst7|inst|$00000|auto_generated|result_node[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[1]~14_combout\ = (\SOUND~input_o\ & ((\MAND[1]~input_o\))) # (!\SOUND~input_o\ & (\inst|inst4|lpm_ff_component|dffs\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUND~input_o\,
	datac => \inst|inst4|lpm_ff_component|dffs\(17),
	datad => \MAND[1]~input_o\,
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X83_Y69_N18
\inst|inst7|inst|$00000|auto_generated|result_node[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|inst|$00000|auto_generated|result_node[0]~15_combout\ = (\SOUND~input_o\ & (\MAND[0]~input_o\)) # (!\SOUND~input_o\ & ((\inst|inst4|lpm_ff_component|dffs\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUND~input_o\,
	datac => \MAND[0]~input_o\,
	datad => \inst|inst4|lpm_ff_component|dffs\(16),
	combout => \inst|inst7|inst|$00000|auto_generated|result_node[0]~15_combout\);

ww_DVO <= \DVO~output_o\;

ww_COUNT(3) <= \COUNT[3]~output_o\;

ww_COUNT(2) <= \COUNT[2]~output_o\;

ww_COUNT(1) <= \COUNT[1]~output_o\;

ww_COUNT(0) <= \COUNT[0]~output_o\;

ww_RESULT_A(15) <= \RESULT_A[15]~output_o\;

ww_RESULT_A(14) <= \RESULT_A[14]~output_o\;

ww_RESULT_A(13) <= \RESULT_A[13]~output_o\;

ww_RESULT_A(12) <= \RESULT_A[12]~output_o\;

ww_RESULT_A(11) <= \RESULT_A[11]~output_o\;

ww_RESULT_A(10) <= \RESULT_A[10]~output_o\;

ww_RESULT_A(9) <= \RESULT_A[9]~output_o\;

ww_RESULT_A(8) <= \RESULT_A[8]~output_o\;

ww_RESULT_A(7) <= \RESULT_A[7]~output_o\;

ww_RESULT_A(6) <= \RESULT_A[6]~output_o\;

ww_RESULT_A(5) <= \RESULT_A[5]~output_o\;

ww_RESULT_A(4) <= \RESULT_A[4]~output_o\;

ww_RESULT_A(3) <= \RESULT_A[3]~output_o\;

ww_RESULT_A(2) <= \RESULT_A[2]~output_o\;

ww_RESULT_A(1) <= \RESULT_A[1]~output_o\;

ww_RESULT_A(0) <= \RESULT_A[0]~output_o\;

ww_RESULT_B(15) <= \RESULT_B[15]~output_o\;

ww_RESULT_B(14) <= \RESULT_B[14]~output_o\;

ww_RESULT_B(13) <= \RESULT_B[13]~output_o\;

ww_RESULT_B(12) <= \RESULT_B[12]~output_o\;

ww_RESULT_B(11) <= \RESULT_B[11]~output_o\;

ww_RESULT_B(10) <= \RESULT_B[10]~output_o\;

ww_RESULT_B(9) <= \RESULT_B[9]~output_o\;

ww_RESULT_B(8) <= \RESULT_B[8]~output_o\;

ww_RESULT_B(7) <= \RESULT_B[7]~output_o\;

ww_RESULT_B(6) <= \RESULT_B[6]~output_o\;

ww_RESULT_B(5) <= \RESULT_B[5]~output_o\;

ww_RESULT_B(4) <= \RESULT_B[4]~output_o\;

ww_RESULT_B(3) <= \RESULT_B[3]~output_o\;

ww_RESULT_B(2) <= \RESULT_B[2]~output_o\;

ww_RESULT_B(1) <= \RESULT_B[1]~output_o\;

ww_RESULT_B(0) <= \RESULT_B[0]~output_o\;
END structure;


