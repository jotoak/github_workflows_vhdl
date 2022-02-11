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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/27/2022 21:16:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mul
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mul_vhd_vec_tst IS
END mul_vhd_vec_tst;
ARCHITECTURE mul_arch OF mul_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL COUNT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DVI : STD_LOGIC;
SIGNAL DVO : STD_LOGIC;
SIGNAL ENMUL : STD_LOGIC;
SIGNAL MAND : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MTOR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RESET_N : STD_LOGIC;
SIGNAL RESULT_A : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RESULT_B : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SOUND : STD_LOGIC;
COMPONENT mul
	PORT (
	CLK : IN STD_LOGIC;
	COUNT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DVI : IN STD_LOGIC;
	DVO : OUT STD_LOGIC;
	ENMUL : IN STD_LOGIC;
	MAND : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	MTOR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	RESET_N : IN STD_LOGIC;
	RESULT_A : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RESULT_B : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	SOUND : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mul
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	COUNT => COUNT,
	DVI => DVI,
	DVO => DVO,
	ENMUL => ENMUL,
	MAND => MAND,
	MTOR => MTOR,
	RESET_N => RESET_N,
	RESULT_A => RESULT_A,
	RESULT_B => RESULT_B,
	SOUND => SOUND
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- DVI
t_prcs_DVI: PROCESS
BEGIN
	DVI <= '1';
	WAIT FOR 800000 ps;
	DVI <= '0';
	WAIT FOR 700000 ps;
	DVI <= '1';
	WAIT FOR 300000 ps;
	DVI <= '0';
	WAIT FOR 1000000 ps;
	DVI <= '1';
	WAIT FOR 500000 ps;
	DVI <= '0';
	WAIT FOR 1000000 ps;
	DVI <= '1';
	WAIT FOR 500000 ps;
	DVI <= '0';
WAIT;
END PROCESS t_prcs_DVI;

-- ENMUL
t_prcs_ENMUL: PROCESS
BEGIN
	ENMUL <= '1';
	WAIT FOR 1000000 ps;
	ENMUL <= '0';
	WAIT FOR 500000 ps;
	ENMUL <= '1';
	WAIT FOR 900000 ps;
	ENMUL <= '0';
	WAIT FOR 400000 ps;
	ENMUL <= '1';
	WAIT FOR 1000000 ps;
	ENMUL <= '0';
	WAIT FOR 500000 ps;
	ENMUL <= '1';
	WAIT FOR 500000 ps;
	ENMUL <= '0';
WAIT;
END PROCESS t_prcs_ENMUL;
-- MAND[15]
t_prcs_MAND_15: PROCESS
BEGIN
	MAND(15) <= '1';
	WAIT FOR 3500000 ps;
	MAND(15) <= '0';
WAIT;
END PROCESS t_prcs_MAND_15;
-- MAND[14]
t_prcs_MAND_14: PROCESS
BEGIN
	MAND(14) <= '1';
	WAIT FOR 3500000 ps;
	MAND(14) <= '0';
WAIT;
END PROCESS t_prcs_MAND_14;
-- MAND[13]
t_prcs_MAND_13: PROCESS
BEGIN
	MAND(13) <= '1';
	WAIT FOR 3500000 ps;
	MAND(13) <= '0';
WAIT;
END PROCESS t_prcs_MAND_13;
-- MAND[12]
t_prcs_MAND_12: PROCESS
BEGIN
	MAND(12) <= '1';
	WAIT FOR 3500000 ps;
	MAND(12) <= '0';
WAIT;
END PROCESS t_prcs_MAND_12;
-- MAND[11]
t_prcs_MAND_11: PROCESS
BEGIN
	MAND(11) <= '1';
	WAIT FOR 3500000 ps;
	MAND(11) <= '0';
WAIT;
END PROCESS t_prcs_MAND_11;
-- MAND[10]
t_prcs_MAND_10: PROCESS
BEGIN
	MAND(10) <= '1';
	WAIT FOR 3500000 ps;
	MAND(10) <= '0';
WAIT;
END PROCESS t_prcs_MAND_10;
-- MAND[9]
t_prcs_MAND_9: PROCESS
BEGIN
	MAND(9) <= '1';
	WAIT FOR 3500000 ps;
	MAND(9) <= '0';
WAIT;
END PROCESS t_prcs_MAND_9;
-- MAND[8]
t_prcs_MAND_8: PROCESS
BEGIN
	MAND(8) <= '1';
	WAIT FOR 3500000 ps;
	MAND(8) <= '0';
WAIT;
END PROCESS t_prcs_MAND_8;
-- MAND[7]
t_prcs_MAND_7: PROCESS
BEGIN
	MAND(7) <= '1';
	WAIT FOR 3500000 ps;
	MAND(7) <= '0';
WAIT;
END PROCESS t_prcs_MAND_7;
-- MAND[6]
t_prcs_MAND_6: PROCESS
BEGIN
	MAND(6) <= '1';
	WAIT FOR 3500000 ps;
	MAND(6) <= '0';
WAIT;
END PROCESS t_prcs_MAND_6;
-- MAND[5]
t_prcs_MAND_5: PROCESS
BEGIN
	MAND(5) <= '1';
	WAIT FOR 3500000 ps;
	MAND(5) <= '0';
WAIT;
END PROCESS t_prcs_MAND_5;
-- MAND[4]
t_prcs_MAND_4: PROCESS
BEGIN
	MAND(4) <= '1';
	WAIT FOR 3500000 ps;
	MAND(4) <= '0';
WAIT;
END PROCESS t_prcs_MAND_4;
-- MAND[3]
t_prcs_MAND_3: PROCESS
BEGIN
	MAND(3) <= '1';
	WAIT FOR 2600000 ps;
	MAND(3) <= '0';
	WAIT FOR 1700000 ps;
	MAND(3) <= '1';
	WAIT FOR 500000 ps;
	MAND(3) <= '0';
WAIT;
END PROCESS t_prcs_MAND_3;
-- MAND[2]
t_prcs_MAND_2: PROCESS
BEGIN
	MAND(2) <= '1';
	WAIT FOR 3500000 ps;
	MAND(2) <= '0';
WAIT;
END PROCESS t_prcs_MAND_2;
-- MAND[1]
t_prcs_MAND_1: PROCESS
BEGIN
	MAND(1) <= '0';
	WAIT FOR 1400000 ps;
	MAND(1) <= '1';
WAIT;
END PROCESS t_prcs_MAND_1;
-- MAND[0]
t_prcs_MAND_0: PROCESS
BEGIN
	MAND(0) <= '1';
	WAIT FOR 2600000 ps;
	MAND(0) <= '0';
	WAIT FOR 900000 ps;
	MAND(0) <= '1';
	WAIT FOR 800000 ps;
	MAND(0) <= '0';
	WAIT FOR 500000 ps;
	MAND(0) <= '1';
WAIT;
END PROCESS t_prcs_MAND_0;
-- MTOR[15]
t_prcs_MTOR_15: PROCESS
BEGIN
	MTOR(15) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(15) <= '1';
	WAIT FOR 800000 ps;
	MTOR(15) <= '0';
	WAIT FOR 500000 ps;
	MTOR(15) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(15) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_15;
-- MTOR[14]
t_prcs_MTOR_14: PROCESS
BEGIN
	MTOR(14) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(14) <= '1';
	WAIT FOR 800000 ps;
	MTOR(14) <= '0';
	WAIT FOR 500000 ps;
	MTOR(14) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(14) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_14;
-- MTOR[13]
t_prcs_MTOR_13: PROCESS
BEGIN
	MTOR(13) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(13) <= '1';
	WAIT FOR 800000 ps;
	MTOR(13) <= '0';
	WAIT FOR 500000 ps;
	MTOR(13) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(13) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_13;
-- MTOR[12]
t_prcs_MTOR_12: PROCESS
BEGIN
	MTOR(12) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(12) <= '1';
	WAIT FOR 800000 ps;
	MTOR(12) <= '0';
	WAIT FOR 500000 ps;
	MTOR(12) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(12) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_12;
-- MTOR[11]
t_prcs_MTOR_11: PROCESS
BEGIN
	MTOR(11) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(11) <= '1';
	WAIT FOR 800000 ps;
	MTOR(11) <= '0';
	WAIT FOR 500000 ps;
	MTOR(11) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(11) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_11;
-- MTOR[10]
t_prcs_MTOR_10: PROCESS
BEGIN
	MTOR(10) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(10) <= '1';
	WAIT FOR 800000 ps;
	MTOR(10) <= '0';
	WAIT FOR 500000 ps;
	MTOR(10) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(10) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_10;
-- MTOR[9]
t_prcs_MTOR_9: PROCESS
BEGIN
	MTOR(9) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(9) <= '1';
	WAIT FOR 800000 ps;
	MTOR(9) <= '0';
	WAIT FOR 500000 ps;
	MTOR(9) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(9) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_9;
-- MTOR[8]
t_prcs_MTOR_8: PROCESS
BEGIN
	MTOR(8) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(8) <= '1';
	WAIT FOR 800000 ps;
	MTOR(8) <= '0';
	WAIT FOR 500000 ps;
	MTOR(8) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(8) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_8;
-- MTOR[7]
t_prcs_MTOR_7: PROCESS
BEGIN
	MTOR(7) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(7) <= '1';
	WAIT FOR 800000 ps;
	MTOR(7) <= '0';
	WAIT FOR 500000 ps;
	MTOR(7) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(7) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_7;
-- MTOR[6]
t_prcs_MTOR_6: PROCESS
BEGIN
	MTOR(6) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(6) <= '1';
	WAIT FOR 800000 ps;
	MTOR(6) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_6;
-- MTOR[5]
t_prcs_MTOR_5: PROCESS
BEGIN
	MTOR(5) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(5) <= '1';
	WAIT FOR 800000 ps;
	MTOR(5) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_5;
-- MTOR[4]
t_prcs_MTOR_4: PROCESS
BEGIN
	MTOR(4) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(4) <= '1';
	WAIT FOR 800000 ps;
	MTOR(4) <= '0';
	WAIT FOR 500000 ps;
	MTOR(4) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(4) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_4;
-- MTOR[3]
t_prcs_MTOR_3: PROCESS
BEGIN
	MTOR(3) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(3) <= '1';
	WAIT FOR 800000 ps;
	MTOR(3) <= '0';
	WAIT FOR 500000 ps;
	MTOR(3) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(3) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_3;
-- MTOR[2]
t_prcs_MTOR_2: PROCESS
BEGIN
	MTOR(2) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(2) <= '1';
	WAIT FOR 800000 ps;
	MTOR(2) <= '0';
	WAIT FOR 500000 ps;
	MTOR(2) <= '1';
	WAIT FOR 1200000 ps;
	MTOR(2) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_2;
-- MTOR[1]
t_prcs_MTOR_1: PROCESS
BEGIN
	MTOR(1) <= '1';
	WAIT FOR 2700000 ps;
	MTOR(1) <= '0';
	WAIT FOR 1200000 ps;
	MTOR(1) <= '1';
WAIT;
END PROCESS t_prcs_MTOR_1;
-- MTOR[0]
t_prcs_MTOR_0: PROCESS
BEGIN
	MTOR(0) <= '0';
	WAIT FOR 1400000 ps;
	MTOR(0) <= '1';
	WAIT FOR 800000 ps;
	MTOR(0) <= '0';
WAIT;
END PROCESS t_prcs_MTOR_0;

-- SOUND
t_prcs_SOUND: PROCESS
BEGIN
	SOUND <= '0';
WAIT;
END PROCESS t_prcs_SOUND;
END mul_arch;
