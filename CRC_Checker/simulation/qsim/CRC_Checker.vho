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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/02/2020 12:17:43"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC_Checker IS
    PORT (
	fcs : IN std_logic_vector(23 DOWNTO 0);
	check_error : OUT std_logic
	);
END CRC_Checker;

ARCHITECTURE structure OF CRC_Checker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fcs : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_check_error : std_logic;
SIGNAL \check_error~output_o\ : std_logic;
SIGNAL \fcs[12]~input_o\ : std_logic;
SIGNAL \fcs[10]~input_o\ : std_logic;
SIGNAL \fcs[17]~input_o\ : std_logic;
SIGNAL \fcs[18]~input_o\ : std_logic;
SIGNAL \fcs[22]~input_o\ : std_logic;
SIGNAL \encoder|g15|output~0_combout\ : std_logic;
SIGNAL \fcs[23]~input_o\ : std_logic;
SIGNAL \fcs[9]~input_o\ : std_logic;
SIGNAL \fcs[14]~input_o\ : std_logic;
SIGNAL \fcs[20]~input_o\ : std_logic;
SIGNAL \error2|output~0_combout\ : std_logic;
SIGNAL \fcs[8]~input_o\ : std_logic;
SIGNAL \fcs[11]~input_o\ : std_logic;
SIGNAL \fcs[2]~input_o\ : std_logic;
SIGNAL \fcs[19]~input_o\ : std_logic;
SIGNAL \error2|output~1_combout\ : std_logic;
SIGNAL \error2|output~2_combout\ : std_logic;
SIGNAL \fcs[16]~input_o\ : std_logic;
SIGNAL \fcs[13]~input_o\ : std_logic;
SIGNAL \fcs[15]~input_o\ : std_logic;
SIGNAL \error6|output~0_combout\ : std_logic;
SIGNAL \error6|output~1_combout\ : std_logic;
SIGNAL \fcs[0]~input_o\ : std_logic;
SIGNAL \error0|output~0_combout\ : std_logic;
SIGNAL \check_error~0_combout\ : std_logic;
SIGNAL \fcs[7]~input_o\ : std_logic;
SIGNAL \error7|output~0_combout\ : std_logic;
SIGNAL \error7|output~1_combout\ : std_logic;
SIGNAL \fcs[4]~input_o\ : std_logic;
SIGNAL \error4|output~0_combout\ : std_logic;
SIGNAL \check_error~1_combout\ : std_logic;
SIGNAL \fcs[21]~input_o\ : std_logic;
SIGNAL \fcs[6]~input_o\ : std_logic;
SIGNAL \error6|output~2_combout\ : std_logic;
SIGNAL \check_error~2_combout\ : std_logic;
SIGNAL \error2|output~3_combout\ : std_logic;
SIGNAL \fcs[1]~input_o\ : std_logic;
SIGNAL \error1|output~0_combout\ : std_logic;
SIGNAL \error1|output~1_combout\ : std_logic;
SIGNAL \error5|output~0_combout\ : std_logic;
SIGNAL \fcs[5]~input_o\ : std_logic;
SIGNAL \error5|output~1_combout\ : std_logic;
SIGNAL \encoder|g16|output~0_combout\ : std_logic;
SIGNAL \fcs[3]~input_o\ : std_logic;
SIGNAL \error3|output~0_combout\ : std_logic;
SIGNAL \check_error~3_combout\ : std_logic;
SIGNAL \check_error~4_combout\ : std_logic;

BEGIN

ww_fcs <= fcs;
check_error <= ww_check_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\check_error~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \check_error~4_combout\,
	devoe => ww_devoe,
	o => \check_error~output_o\);

\fcs[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(12),
	o => \fcs[12]~input_o\);

\fcs[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(10),
	o => \fcs[10]~input_o\);

\fcs[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(17),
	o => \fcs[17]~input_o\);

\fcs[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(18),
	o => \fcs[18]~input_o\);

\fcs[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(22),
	o => \fcs[22]~input_o\);

\encoder|g15|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|g15|output~0_combout\ = \fcs[10]~input_o\ $ (\fcs[17]~input_o\ $ (\fcs[18]~input_o\ $ (\fcs[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[10]~input_o\,
	datab => \fcs[17]~input_o\,
	datac => \fcs[18]~input_o\,
	datad => \fcs[22]~input_o\,
	combout => \encoder|g15|output~0_combout\);

\fcs[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(23),
	o => \fcs[23]~input_o\);

\fcs[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(9),
	o => \fcs[9]~input_o\);

\fcs[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(14),
	o => \fcs[14]~input_o\);

\fcs[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(20),
	o => \fcs[20]~input_o\);

\error2|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error2|output~0_combout\ = \fcs[23]~input_o\ $ (\fcs[9]~input_o\ $ (\fcs[14]~input_o\ $ (\fcs[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[23]~input_o\,
	datab => \fcs[9]~input_o\,
	datac => \fcs[14]~input_o\,
	datad => \fcs[20]~input_o\,
	combout => \error2|output~0_combout\);

\fcs[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(8),
	o => \fcs[8]~input_o\);

\fcs[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(11),
	o => \fcs[11]~input_o\);

\fcs[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(2),
	o => \fcs[2]~input_o\);

\fcs[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(19),
	o => \fcs[19]~input_o\);

\error2|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error2|output~1_combout\ = \fcs[8]~input_o\ $ (\fcs[11]~input_o\ $ (\fcs[2]~input_o\ $ (\fcs[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[8]~input_o\,
	datab => \fcs[11]~input_o\,
	datac => \fcs[2]~input_o\,
	datad => \fcs[19]~input_o\,
	combout => \error2|output~1_combout\);

\error2|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \error2|output~2_combout\ = \fcs[12]~input_o\ $ (\encoder|g15|output~0_combout\ $ (\error2|output~0_combout\ $ (\error2|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[12]~input_o\,
	datab => \encoder|g15|output~0_combout\,
	datac => \error2|output~0_combout\,
	datad => \error2|output~1_combout\,
	combout => \error2|output~2_combout\);

\fcs[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(16),
	o => \fcs[16]~input_o\);

\fcs[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(13),
	o => \fcs[13]~input_o\);

\fcs[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(15),
	o => \fcs[15]~input_o\);

\error6|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error6|output~0_combout\ = \fcs[17]~input_o\ $ (\fcs[16]~input_o\ $ (\fcs[13]~input_o\ $ (\fcs[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[17]~input_o\,
	datab => \fcs[16]~input_o\,
	datac => \fcs[13]~input_o\,
	datad => \fcs[15]~input_o\,
	combout => \error6|output~0_combout\);

\error6|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error6|output~1_combout\ = \fcs[11]~input_o\ $ (\fcs[18]~input_o\ $ (\error6|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[11]~input_o\,
	datab => \fcs[18]~input_o\,
	datac => \error6|output~0_combout\,
	combout => \error6|output~1_combout\);

\fcs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(0),
	o => \fcs[0]~input_o\);

\error0|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error0|output~0_combout\ = \fcs[8]~input_o\ $ (\fcs[23]~input_o\ $ (\fcs[19]~input_o\ $ (\fcs[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[8]~input_o\,
	datab => \fcs[23]~input_o\,
	datac => \fcs[19]~input_o\,
	datad => \fcs[20]~input_o\,
	combout => \error0|output~0_combout\);

\check_error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~0_combout\ = (\error2|output~2_combout\) # (\error6|output~1_combout\ $ (\fcs[0]~input_o\ $ (\error0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error2|output~2_combout\,
	datab => \error6|output~1_combout\,
	datac => \fcs[0]~input_o\,
	datad => \error0|output~0_combout\,
	combout => \check_error~0_combout\);

\fcs[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(7),
	o => \fcs[7]~input_o\);

\error7|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error7|output~0_combout\ = \fcs[12]~input_o\ $ (\fcs[14]~input_o\ $ (\fcs[15]~input_o\ $ (\fcs[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[12]~input_o\,
	datab => \fcs[14]~input_o\,
	datac => \fcs[15]~input_o\,
	datad => \fcs[7]~input_o\,
	combout => \error7|output~0_combout\);

\error7|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error7|output~1_combout\ = \fcs[19]~input_o\ $ (\fcs[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fcs[19]~input_o\,
	datad => \fcs[16]~input_o\,
	combout => \error7|output~1_combout\);

\fcs[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(4),
	o => \fcs[4]~input_o\);

\error4|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error4|output~0_combout\ = \fcs[9]~input_o\ $ (\fcs[11]~input_o\ $ (\fcs[13]~input_o\ $ (\fcs[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[9]~input_o\,
	datab => \fcs[11]~input_o\,
	datac => \fcs[13]~input_o\,
	datad => \fcs[4]~input_o\,
	combout => \error4|output~0_combout\);

\check_error~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~1_combout\ = (\encoder|g15|output~0_combout\ & ((\error7|output~0_combout\ $ (!\error7|output~1_combout\)) # (!\error4|output~0_combout\))) # (!\encoder|g15|output~0_combout\ & ((\error4|output~0_combout\) # (\error7|output~0_combout\ $ 
-- (\error7|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error7|output~0_combout\,
	datab => \error7|output~1_combout\,
	datac => \encoder|g15|output~0_combout\,
	datad => \error4|output~0_combout\,
	combout => \check_error~1_combout\);

\fcs[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(21),
	o => \fcs[21]~input_o\);

\fcs[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(6),
	o => \fcs[6]~input_o\);

\error6|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \error6|output~2_combout\ = \fcs[9]~input_o\ $ (\fcs[14]~input_o\ $ (\fcs[21]~input_o\ $ (\fcs[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[9]~input_o\,
	datab => \fcs[14]~input_o\,
	datac => \fcs[21]~input_o\,
	datad => \fcs[6]~input_o\,
	combout => \error6|output~2_combout\);

\check_error~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~2_combout\ = (\check_error~1_combout\) # (\error6|output~1_combout\ $ (\error6|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \check_error~1_combout\,
	datac => \error6|output~1_combout\,
	datad => \error6|output~2_combout\,
	combout => \check_error~2_combout\);

\error2|output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \error2|output~3_combout\ = \fcs[9]~input_o\ $ (\fcs[11]~input_o\ $ (\fcs[12]~input_o\ $ (\fcs[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[9]~input_o\,
	datab => \fcs[11]~input_o\,
	datac => \fcs[12]~input_o\,
	datad => \fcs[14]~input_o\,
	combout => \error2|output~3_combout\);

\fcs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(1),
	o => \fcs[1]~input_o\);

\error1|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error1|output~0_combout\ = \fcs[13]~input_o\ $ (\fcs[15]~input_o\ $ (\fcs[21]~input_o\ $ (\fcs[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[13]~input_o\,
	datab => \fcs[15]~input_o\,
	datac => \fcs[21]~input_o\,
	datad => \fcs[1]~input_o\,
	combout => \error1|output~0_combout\);

\error1|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error1|output~1_combout\ = \fcs[8]~input_o\ $ (\fcs[23]~input_o\ $ (\error2|output~3_combout\ $ (\error1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[8]~input_o\,
	datab => \fcs[23]~input_o\,
	datac => \error2|output~3_combout\,
	datad => \error1|output~0_combout\,
	combout => \error1|output~1_combout\);

\error5|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error5|output~0_combout\ = \fcs[12]~input_o\ $ (\fcs[14]~input_o\ $ (\fcs[13]~input_o\ $ (\fcs[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[12]~input_o\,
	datab => \fcs[14]~input_o\,
	datac => \fcs[13]~input_o\,
	datad => \fcs[15]~input_o\,
	combout => \error5|output~0_combout\);

\fcs[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(5),
	o => \fcs[5]~input_o\);

\error5|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error5|output~1_combout\ = \fcs[20]~input_o\ $ (\fcs[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fcs[20]~input_o\,
	datad => \fcs[5]~input_o\,
	combout => \error5|output~1_combout\);

\encoder|g16|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|g16|output~0_combout\ = \fcs[8]~input_o\ $ (\fcs[10]~input_o\ $ (\fcs[17]~input_o\ $ (\fcs[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[8]~input_o\,
	datab => \fcs[10]~input_o\,
	datac => \fcs[17]~input_o\,
	datad => \fcs[16]~input_o\,
	combout => \encoder|g16|output~0_combout\);

\fcs[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(3),
	o => \fcs[3]~input_o\);

\error3|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error3|output~0_combout\ = \fcs[9]~input_o\ $ (\fcs[12]~input_o\ $ (\fcs[21]~input_o\ $ (\fcs[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[9]~input_o\,
	datab => \fcs[12]~input_o\,
	datac => \fcs[21]~input_o\,
	datad => \fcs[3]~input_o\,
	combout => \error3|output~0_combout\);

\check_error~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~3_combout\ = (\encoder|g16|output~0_combout\ & ((\error5|output~0_combout\ $ (!\error5|output~1_combout\)) # (!\error3|output~0_combout\))) # (!\encoder|g16|output~0_combout\ & ((\error3|output~0_combout\) # (\error5|output~0_combout\ $ 
-- (\error5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error5|output~0_combout\,
	datab => \error5|output~1_combout\,
	datac => \encoder|g16|output~0_combout\,
	datad => \error3|output~0_combout\,
	combout => \check_error~3_combout\);

\check_error~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~4_combout\ = (\check_error~0_combout\) # ((\check_error~2_combout\) # ((\error1|output~1_combout\) # (\check_error~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \check_error~0_combout\,
	datab => \check_error~2_combout\,
	datac => \error1|output~1_combout\,
	datad => \check_error~3_combout\,
	combout => \check_error~4_combout\);

ww_check_error <= \check_error~output_o\;
END structure;


