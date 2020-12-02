-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/02/2020 12:17:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC_Checker
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC_Checker_vhd_vec_tst IS
END CRC_Checker_vhd_vec_tst;
ARCHITECTURE CRC_Checker_arch OF CRC_Checker_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL check_error : STD_LOGIC;
SIGNAL fcs : STD_LOGIC_VECTOR(23 DOWNTO 0);
COMPONENT CRC_Checker
	PORT (
	check_error : OUT STD_LOGIC;
	fcs : IN STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CRC_Checker
	PORT MAP (
-- list connections between master ports and signals
	check_error => check_error,
	fcs => fcs
	);
-- fcs[23]
t_prcs_fcs_23: PROCESS
BEGIN
	fcs(23) <= '0';
WAIT;
END PROCESS t_prcs_fcs_23;
-- fcs[22]
t_prcs_fcs_22: PROCESS
BEGIN
	fcs(22) <= '1';
WAIT;
END PROCESS t_prcs_fcs_22;
-- fcs[21]
t_prcs_fcs_21: PROCESS
BEGIN
	fcs(21) <= '0';
WAIT;
END PROCESS t_prcs_fcs_21;
-- fcs[20]
t_prcs_fcs_20: PROCESS
BEGIN
	fcs(20) <= '1';
WAIT;
END PROCESS t_prcs_fcs_20;
-- fcs[19]
t_prcs_fcs_19: PROCESS
BEGIN
	fcs(19) <= '0';
WAIT;
END PROCESS t_prcs_fcs_19;
-- fcs[18]
t_prcs_fcs_18: PROCESS
BEGIN
	fcs(18) <= '1';
WAIT;
END PROCESS t_prcs_fcs_18;
-- fcs[17]
t_prcs_fcs_17: PROCESS
BEGIN
	fcs(17) <= '0';
WAIT;
END PROCESS t_prcs_fcs_17;
-- fcs[16]
t_prcs_fcs_16: PROCESS
BEGIN
	fcs(16) <= '1';
WAIT;
END PROCESS t_prcs_fcs_16;
-- fcs[15]
t_prcs_fcs_15: PROCESS
BEGIN
	fcs(15) <= '0';
WAIT;
END PROCESS t_prcs_fcs_15;
-- fcs[14]
t_prcs_fcs_14: PROCESS
BEGIN
	fcs(14) <= '1';
WAIT;
END PROCESS t_prcs_fcs_14;
-- fcs[13]
t_prcs_fcs_13: PROCESS
BEGIN
	fcs(13) <= '0';
WAIT;
END PROCESS t_prcs_fcs_13;
-- fcs[12]
t_prcs_fcs_12: PROCESS
BEGIN
	fcs(12) <= '1';
WAIT;
END PROCESS t_prcs_fcs_12;
-- fcs[11]
t_prcs_fcs_11: PROCESS
BEGIN
	fcs(11) <= '0';
WAIT;
END PROCESS t_prcs_fcs_11;
-- fcs[10]
t_prcs_fcs_10: PROCESS
BEGIN
	fcs(10) <= '1';
WAIT;
END PROCESS t_prcs_fcs_10;
-- fcs[9]
t_prcs_fcs_9: PROCESS
BEGIN
	fcs(9) <= '0';
WAIT;
END PROCESS t_prcs_fcs_9;
-- fcs[8]
t_prcs_fcs_8: PROCESS
BEGIN
	fcs(8) <= '1';
WAIT;
END PROCESS t_prcs_fcs_8;
-- fcs[7]
t_prcs_fcs_7: PROCESS
BEGIN
	fcs(7) <= '0';
WAIT;
END PROCESS t_prcs_fcs_7;
-- fcs[6]
t_prcs_fcs_6: PROCESS
BEGIN
	fcs(6) <= '1';
WAIT;
END PROCESS t_prcs_fcs_6;
-- fcs[5]
t_prcs_fcs_5: PROCESS
BEGIN
	fcs(5) <= '0';
WAIT;
END PROCESS t_prcs_fcs_5;
-- fcs[4]
t_prcs_fcs_4: PROCESS
BEGIN
	fcs(4) <= '1';
WAIT;
END PROCESS t_prcs_fcs_4;
-- fcs[3]
t_prcs_fcs_3: PROCESS
BEGIN
	fcs(3) <= '0';
WAIT;
END PROCESS t_prcs_fcs_3;
-- fcs[2]
t_prcs_fcs_2: PROCESS
BEGIN
	fcs(2) <= '1';
WAIT;
END PROCESS t_prcs_fcs_2;
-- fcs[1]
t_prcs_fcs_1: PROCESS
BEGIN
	fcs(1) <= '1';
WAIT;
END PROCESS t_prcs_fcs_1;
-- fcs[0]
t_prcs_fcs_0: PROCESS
BEGIN
	fcs(0) <= '1';
WAIT;
END PROCESS t_prcs_fcs_0;
END CRC_Checker_arch;
