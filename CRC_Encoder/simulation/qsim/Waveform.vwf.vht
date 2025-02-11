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
-- Generated on "12/02/2020 15:57:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CRC_Encoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CRC_Encoder_vhd_vec_tst IS
END CRC_Encoder_vhd_vec_tst;
ARCHITECTURE CRC_Encoder_arch OF CRC_Encoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fcs : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL m : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT CRC_Encoder
	PORT (
	fcs : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
	m : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CRC_Encoder
	PORT MAP (
-- list connections between master ports and signals
	fcs => fcs,
	m => m
	);
-- m[15]
t_prcs_m_15: PROCESS
BEGIN
	m(15) <= '1';
WAIT;
END PROCESS t_prcs_m_15;
-- m[14]
t_prcs_m_14: PROCESS
BEGIN
	m(14) <= '0';
WAIT;
END PROCESS t_prcs_m_14;
-- m[13]
t_prcs_m_13: PROCESS
BEGIN
	m(13) <= '0';
WAIT;
END PROCESS t_prcs_m_13;
-- m[12]
t_prcs_m_12: PROCESS
BEGIN
	m(12) <= '1';
WAIT;
END PROCESS t_prcs_m_12;
-- m[11]
t_prcs_m_11: PROCESS
BEGIN
	m(11) <= '0';
WAIT;
END PROCESS t_prcs_m_11;
-- m[10]
t_prcs_m_10: PROCESS
BEGIN
	m(10) <= '0';
WAIT;
END PROCESS t_prcs_m_10;
-- m[9]
t_prcs_m_9: PROCESS
BEGIN
	m(9) <= '0';
WAIT;
END PROCESS t_prcs_m_9;
-- m[8]
t_prcs_m_8: PROCESS
BEGIN
	m(8) <= '0';
WAIT;
END PROCESS t_prcs_m_8;
-- m[7]
t_prcs_m_7: PROCESS
BEGIN
	m(7) <= '1';
WAIT;
END PROCESS t_prcs_m_7;
-- m[6]
t_prcs_m_6: PROCESS
BEGIN
	m(6) <= '1';
WAIT;
END PROCESS t_prcs_m_6;
-- m[5]
t_prcs_m_5: PROCESS
BEGIN
	m(5) <= '1';
WAIT;
END PROCESS t_prcs_m_5;
-- m[4]
t_prcs_m_4: PROCESS
BEGIN
	m(4) <= '1';
WAIT;
END PROCESS t_prcs_m_4;
-- m[3]
t_prcs_m_3: PROCESS
BEGIN
	m(3) <= '0';
WAIT;
END PROCESS t_prcs_m_3;
-- m[2]
t_prcs_m_2: PROCESS
BEGIN
	m(2) <= '1';
WAIT;
END PROCESS t_prcs_m_2;
-- m[1]
t_prcs_m_1: PROCESS
BEGIN
	m(1) <= '1';
WAIT;
END PROCESS t_prcs_m_1;
-- m[0]
t_prcs_m_0: PROCESS
BEGIN
	m(0) <= '0';
WAIT;
END PROCESS t_prcs_m_0;
END CRC_Encoder_arch;
