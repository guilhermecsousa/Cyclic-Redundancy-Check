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

-- DATE "11/30/2020 20:57:33"

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

ENTITY 	CRC_Encoder IS
    PORT (
	m : IN std_logic_vector(15 DOWNTO 0);
	crc : OUT std_logic_vector(23 DOWNTO 0);
	cc : OUT std_logic_vector(7 DOWNTO 0)
	);
END CRC_Encoder;

ARCHITECTURE structure OF CRC_Encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_crc : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_cc : std_logic_vector(7 DOWNTO 0);
SIGNAL \crc[0]~output_o\ : std_logic;
SIGNAL \crc[1]~output_o\ : std_logic;
SIGNAL \crc[2]~output_o\ : std_logic;
SIGNAL \crc[3]~output_o\ : std_logic;
SIGNAL \crc[4]~output_o\ : std_logic;
SIGNAL \crc[5]~output_o\ : std_logic;
SIGNAL \crc[6]~output_o\ : std_logic;
SIGNAL \crc[7]~output_o\ : std_logic;
SIGNAL \crc[8]~output_o\ : std_logic;
SIGNAL \crc[9]~output_o\ : std_logic;
SIGNAL \crc[10]~output_o\ : std_logic;
SIGNAL \crc[11]~output_o\ : std_logic;
SIGNAL \crc[12]~output_o\ : std_logic;
SIGNAL \crc[13]~output_o\ : std_logic;
SIGNAL \crc[14]~output_o\ : std_logic;
SIGNAL \crc[15]~output_o\ : std_logic;
SIGNAL \crc[16]~output_o\ : std_logic;
SIGNAL \crc[17]~output_o\ : std_logic;
SIGNAL \crc[18]~output_o\ : std_logic;
SIGNAL \crc[19]~output_o\ : std_logic;
SIGNAL \crc[20]~output_o\ : std_logic;
SIGNAL \crc[21]~output_o\ : std_logic;
SIGNAL \crc[22]~output_o\ : std_logic;
SIGNAL \crc[23]~output_o\ : std_logic;
SIGNAL \cc[0]~output_o\ : std_logic;
SIGNAL \cc[1]~output_o\ : std_logic;
SIGNAL \cc[2]~output_o\ : std_logic;
SIGNAL \cc[3]~output_o\ : std_logic;
SIGNAL \cc[4]~output_o\ : std_logic;
SIGNAL \cc[5]~output_o\ : std_logic;
SIGNAL \cc[6]~output_o\ : std_logic;
SIGNAL \cc[7]~output_o\ : std_logic;
SIGNAL \m[8]~input_o\ : std_logic;
SIGNAL \m[9]~input_o\ : std_logic;
SIGNAL \m[5]~input_o\ : std_logic;
SIGNAL \m[7]~input_o\ : std_logic;
SIGNAL \x0c|output~0_combout\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \m[10]~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \m[15]~input_o\ : std_logic;
SIGNAL \m[11]~input_o\ : std_logic;
SIGNAL \m[12]~input_o\ : std_logic;
SIGNAL \x0c|output~1_combout\ : std_logic;
SIGNAL \x0c|output~2_combout\ : std_logic;
SIGNAL \m[4]~input_o\ : std_logic;
SIGNAL \m[6]~input_o\ : std_logic;
SIGNAL \g14|output~0_combout\ : std_logic;
SIGNAL \m[13]~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \g13|output~0_combout\ : std_logic;
SIGNAL \x1b|output~0_combout\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[14]~input_o\ : std_logic;
SIGNAL \g15|output~0_combout\ : std_logic;
SIGNAL \x2c|output~0_combout\ : std_logic;
SIGNAL \x2c|output~1_combout\ : std_logic;
SIGNAL \g16|output~0_combout\ : std_logic;
SIGNAL \x3b|output~0_combout\ : std_logic;
SIGNAL \x4b|output~0_combout\ : std_logic;
SIGNAL \x5b|output~0_combout\ : std_logic;
SIGNAL \x6c|output~0_combout\ : std_logic;
SIGNAL \x6c|output~1_combout\ : std_logic;
SIGNAL \x7d|output~0_combout\ : std_logic;

BEGIN

ww_m <= m;
crc <= ww_crc;
cc <= ww_cc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\crc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x0c|output~2_combout\,
	devoe => ww_devoe,
	o => \crc[0]~output_o\);

\crc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x1b|output~0_combout\,
	devoe => ww_devoe,
	o => \crc[1]~output_o\);

\crc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x2c|output~1_combout\,
	devoe => ww_devoe,
	o => \crc[2]~output_o\);

\crc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x3b|output~0_combout\,
	devoe => ww_devoe,
	o => \crc[3]~output_o\);

\crc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x4b|output~0_combout\,
	devoe => ww_devoe,
	o => \crc[4]~output_o\);

\crc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x5b|output~0_combout\,
	devoe => ww_devoe,
	o => \crc[5]~output_o\);

\crc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x6c|output~1_combout\,
	devoe => ww_devoe,
	o => \crc[6]~output_o\);

\crc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x7d|output~0_combout\,
	devoe => ww_devoe,
	o => \crc[7]~output_o\);

\crc[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[0]~input_o\,
	devoe => ww_devoe,
	o => \crc[8]~output_o\);

\crc[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[1]~input_o\,
	devoe => ww_devoe,
	o => \crc[9]~output_o\);

\crc[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[2]~input_o\,
	devoe => ww_devoe,
	o => \crc[10]~output_o\);

\crc[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[3]~input_o\,
	devoe => ww_devoe,
	o => \crc[11]~output_o\);

\crc[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[4]~input_o\,
	devoe => ww_devoe,
	o => \crc[12]~output_o\);

\crc[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[5]~input_o\,
	devoe => ww_devoe,
	o => \crc[13]~output_o\);

\crc[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[6]~input_o\,
	devoe => ww_devoe,
	o => \crc[14]~output_o\);

\crc[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[7]~input_o\,
	devoe => ww_devoe,
	o => \crc[15]~output_o\);

\crc[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[8]~input_o\,
	devoe => ww_devoe,
	o => \crc[16]~output_o\);

\crc[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[9]~input_o\,
	devoe => ww_devoe,
	o => \crc[17]~output_o\);

\crc[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[10]~input_o\,
	devoe => ww_devoe,
	o => \crc[18]~output_o\);

\crc[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[11]~input_o\,
	devoe => ww_devoe,
	o => \crc[19]~output_o\);

\crc[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[12]~input_o\,
	devoe => ww_devoe,
	o => \crc[20]~output_o\);

\crc[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[13]~input_o\,
	devoe => ww_devoe,
	o => \crc[21]~output_o\);

\crc[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[14]~input_o\,
	devoe => ww_devoe,
	o => \crc[22]~output_o\);

\crc[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[15]~input_o\,
	devoe => ww_devoe,
	o => \crc[23]~output_o\);

\cc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x0c|output~2_combout\,
	devoe => ww_devoe,
	o => \cc[0]~output_o\);

\cc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x1b|output~0_combout\,
	devoe => ww_devoe,
	o => \cc[1]~output_o\);

\cc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x2c|output~1_combout\,
	devoe => ww_devoe,
	o => \cc[2]~output_o\);

\cc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x3b|output~0_combout\,
	devoe => ww_devoe,
	o => \cc[3]~output_o\);

\cc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x4b|output~0_combout\,
	devoe => ww_devoe,
	o => \cc[4]~output_o\);

\cc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x5b|output~0_combout\,
	devoe => ww_devoe,
	o => \cc[5]~output_o\);

\cc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x6c|output~1_combout\,
	devoe => ww_devoe,
	o => \cc[6]~output_o\);

\cc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x7d|output~0_combout\,
	devoe => ww_devoe,
	o => \cc[7]~output_o\);

\m[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(8),
	o => \m[8]~input_o\);

\m[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(9),
	o => \m[9]~input_o\);

\m[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(5),
	o => \m[5]~input_o\);

\m[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(7),
	o => \m[7]~input_o\);

\x0c|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x0c|output~0_combout\ = \m[8]~input_o\ $ (\m[9]~input_o\ $ (\m[5]~input_o\ $ (\m[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[8]~input_o\,
	datab => \m[9]~input_o\,
	datac => \m[5]~input_o\,
	datad => \m[7]~input_o\,
	combout => \x0c|output~0_combout\);

\m[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

\m[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(10),
	o => \m[10]~input_o\);

\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

\m[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(15),
	o => \m[15]~input_o\);

\m[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(11),
	o => \m[11]~input_o\);

\m[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(12),
	o => \m[12]~input_o\);

\x0c|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x0c|output~1_combout\ = \m[0]~input_o\ $ (\m[15]~input_o\ $ (\m[11]~input_o\ $ (\m[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[15]~input_o\,
	datac => \m[11]~input_o\,
	datad => \m[12]~input_o\,
	combout => \x0c|output~1_combout\);

\x0c|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \x0c|output~2_combout\ = \x0c|output~0_combout\ $ (\m[3]~input_o\ $ (\m[10]~input_o\ $ (\x0c|output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0c|output~0_combout\,
	datab => \m[3]~input_o\,
	datac => \m[10]~input_o\,
	datad => \x0c|output~1_combout\,
	combout => \x0c|output~2_combout\);

\m[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(4),
	o => \m[4]~input_o\);

\m[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(6),
	o => \m[6]~input_o\);

\g14|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g14|output~0_combout\ = \m[5]~input_o\ $ (\m[7]~input_o\ $ (\m[4]~input_o\ $ (\m[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datab => \m[7]~input_o\,
	datac => \m[4]~input_o\,
	datad => \m[6]~input_o\,
	combout => \g14|output~0_combout\);

\m[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(13),
	o => \m[13]~input_o\);

\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

\g13|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g13|output~0_combout\ = \m[3]~input_o\ $ (\m[0]~input_o\ $ (\m[15]~input_o\ $ (\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[3]~input_o\,
	datab => \m[0]~input_o\,
	datac => \m[15]~input_o\,
	datad => \m[1]~input_o\,
	combout => \g13|output~0_combout\);

\x1b|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x1b|output~0_combout\ = \g14|output~0_combout\ $ (\m[13]~input_o\ $ (\g13|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g14|output~0_combout\,
	datab => \m[13]~input_o\,
	datac => \g13|output~0_combout\,
	combout => \x1b|output~0_combout\);

\m[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

\m[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(14),
	o => \m[14]~input_o\);

\g15|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g15|output~0_combout\ = \m[9]~input_o\ $ (\m[10]~input_o\ $ (\m[2]~input_o\ $ (\m[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[9]~input_o\,
	datab => \m[10]~input_o\,
	datac => \m[2]~input_o\,
	datad => \m[14]~input_o\,
	combout => \g15|output~0_combout\);

\x2c|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x2c|output~0_combout\ = \m[11]~input_o\ $ (\m[4]~input_o\ $ (\m[6]~input_o\ $ (\g15|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[11]~input_o\,
	datab => \m[4]~input_o\,
	datac => \m[6]~input_o\,
	datad => \g15|output~0_combout\,
	combout => \x2c|output~0_combout\);

\x2c|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x2c|output~1_combout\ = \m[12]~input_o\ $ (\g13|output~0_combout\ $ (\x2c|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[12]~input_o\,
	datab => \g13|output~0_combout\,
	datac => \x2c|output~0_combout\,
	combout => \x2c|output~1_combout\);

\g16|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g16|output~0_combout\ = \m[8]~input_o\ $ (\m[9]~input_o\ $ (\m[0]~input_o\ $ (\m[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[8]~input_o\,
	datab => \m[9]~input_o\,
	datac => \m[0]~input_o\,
	datad => \m[2]~input_o\,
	combout => \g16|output~0_combout\);

\x3b|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x3b|output~0_combout\ = \m[4]~input_o\ $ (\m[13]~input_o\ $ (\m[1]~input_o\ $ (\g16|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[4]~input_o\,
	datab => \m[13]~input_o\,
	datac => \m[1]~input_o\,
	datad => \g16|output~0_combout\,
	combout => \x3b|output~0_combout\);

\x4b|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x4b|output~0_combout\ = \m[5]~input_o\ $ (\m[3]~input_o\ $ (\m[1]~input_o\ $ (\g15|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[5]~input_o\,
	datab => \m[3]~input_o\,
	datac => \m[1]~input_o\,
	datad => \g15|output~0_combout\,
	combout => \x4b|output~0_combout\);

\x5b|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x5b|output~0_combout\ = \m[12]~input_o\ $ (\g14|output~0_combout\ $ (\g16|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[12]~input_o\,
	datab => \g14|output~0_combout\,
	datac => \g16|output~0_combout\,
	combout => \x5b|output~0_combout\);

\x6c|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x6c|output~0_combout\ = \m[6]~input_o\ $ (\m[13]~input_o\ $ (\m[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[6]~input_o\,
	datab => \m[13]~input_o\,
	datac => \m[1]~input_o\,
	combout => \x6c|output~0_combout\);

\x6c|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \x6c|output~1_combout\ = \x0c|output~0_combout\ $ (\m[3]~input_o\ $ (\m[10]~input_o\ $ (\x6c|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x0c|output~0_combout\,
	datab => \m[3]~input_o\,
	datac => \m[10]~input_o\,
	datad => \x6c|output~0_combout\,
	combout => \x6c|output~1_combout\);

\x7d|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x7d|output~0_combout\ = \m[8]~input_o\ $ (\m[7]~input_o\ $ (\x2c|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[8]~input_o\,
	datab => \m[7]~input_o\,
	datac => \x2c|output~0_combout\,
	combout => \x7d|output~0_combout\);

ww_crc(0) <= \crc[0]~output_o\;

ww_crc(1) <= \crc[1]~output_o\;

ww_crc(2) <= \crc[2]~output_o\;

ww_crc(3) <= \crc[3]~output_o\;

ww_crc(4) <= \crc[4]~output_o\;

ww_crc(5) <= \crc[5]~output_o\;

ww_crc(6) <= \crc[6]~output_o\;

ww_crc(7) <= \crc[7]~output_o\;

ww_crc(8) <= \crc[8]~output_o\;

ww_crc(9) <= \crc[9]~output_o\;

ww_crc(10) <= \crc[10]~output_o\;

ww_crc(11) <= \crc[11]~output_o\;

ww_crc(12) <= \crc[12]~output_o\;

ww_crc(13) <= \crc[13]~output_o\;

ww_crc(14) <= \crc[14]~output_o\;

ww_crc(15) <= \crc[15]~output_o\;

ww_crc(16) <= \crc[16]~output_o\;

ww_crc(17) <= \crc[17]~output_o\;

ww_crc(18) <= \crc[18]~output_o\;

ww_crc(19) <= \crc[19]~output_o\;

ww_crc(20) <= \crc[20]~output_o\;

ww_crc(21) <= \crc[21]~output_o\;

ww_crc(22) <= \crc[22]~output_o\;

ww_crc(23) <= \crc[23]~output_o\;

ww_cc(0) <= \cc[0]~output_o\;

ww_cc(1) <= \cc[1]~output_o\;

ww_cc(2) <= \cc[2]~output_o\;

ww_cc(3) <= \cc[3]~output_o\;

ww_cc(4) <= \cc[4]~output_o\;

ww_cc(5) <= \cc[5]~output_o\;

ww_cc(6) <= \cc[6]~output_o\;

ww_cc(7) <= \cc[7]~output_o\;
END structure;


