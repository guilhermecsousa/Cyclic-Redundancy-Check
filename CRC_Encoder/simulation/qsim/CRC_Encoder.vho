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

-- DATE "12/02/2020 18:39:26"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CRC_Encoder IS
    PORT (
	m : IN std_logic_vector(15 DOWNTO 0);
	fcs : OUT std_logic_vector(23 DOWNTO 0)
	);
END CRC_Encoder;

-- Design Ports Information
-- fcs[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[6]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[8]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[9]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[10]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[11]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[12]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[13]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[14]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[15]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[16]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[17]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[18]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[19]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[20]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[21]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[22]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[23]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[8]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[9]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[5]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[10]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[15]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[11]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[12]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[6]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[13]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[14]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_fcs : std_logic_vector(23 DOWNTO 0);
SIGNAL \fcs[0]~output_o\ : std_logic;
SIGNAL \fcs[1]~output_o\ : std_logic;
SIGNAL \fcs[2]~output_o\ : std_logic;
SIGNAL \fcs[3]~output_o\ : std_logic;
SIGNAL \fcs[4]~output_o\ : std_logic;
SIGNAL \fcs[5]~output_o\ : std_logic;
SIGNAL \fcs[6]~output_o\ : std_logic;
SIGNAL \fcs[7]~output_o\ : std_logic;
SIGNAL \fcs[8]~output_o\ : std_logic;
SIGNAL \fcs[9]~output_o\ : std_logic;
SIGNAL \fcs[10]~output_o\ : std_logic;
SIGNAL \fcs[11]~output_o\ : std_logic;
SIGNAL \fcs[12]~output_o\ : std_logic;
SIGNAL \fcs[13]~output_o\ : std_logic;
SIGNAL \fcs[14]~output_o\ : std_logic;
SIGNAL \fcs[15]~output_o\ : std_logic;
SIGNAL \fcs[16]~output_o\ : std_logic;
SIGNAL \fcs[17]~output_o\ : std_logic;
SIGNAL \fcs[18]~output_o\ : std_logic;
SIGNAL \fcs[19]~output_o\ : std_logic;
SIGNAL \fcs[20]~output_o\ : std_logic;
SIGNAL \fcs[21]~output_o\ : std_logic;
SIGNAL \fcs[22]~output_o\ : std_logic;
SIGNAL \fcs[23]~output_o\ : std_logic;
SIGNAL \m[10]~input_o\ : std_logic;
SIGNAL \m[7]~input_o\ : std_logic;
SIGNAL \m[8]~input_o\ : std_logic;
SIGNAL \m[5]~input_o\ : std_logic;
SIGNAL \m[9]~input_o\ : std_logic;
SIGNAL \c0c|output~0_combout\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \m[15]~input_o\ : std_logic;
SIGNAL \m[12]~input_o\ : std_logic;
SIGNAL \m[11]~input_o\ : std_logic;
SIGNAL \c0c|output~1_combout\ : std_logic;
SIGNAL \m[3]~input_o\ : std_logic;
SIGNAL \c0c|output~2_combout\ : std_logic;
SIGNAL \m[13]~input_o\ : std_logic;
SIGNAL \m[6]~input_o\ : std_logic;
SIGNAL \m[4]~input_o\ : std_logic;
SIGNAL \g14|output~0_combout\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \g13|output~0_combout\ : std_logic;
SIGNAL \c1b|output~0_combout\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[14]~input_o\ : std_logic;
SIGNAL \g15|output~0_combout\ : std_logic;
SIGNAL \c2c|output~0_combout\ : std_logic;
SIGNAL \c2c|output~1_combout\ : std_logic;
SIGNAL \g16|output~0_combout\ : std_logic;
SIGNAL \c3b|output~0_combout\ : std_logic;
SIGNAL \c4b|output~0_combout\ : std_logic;
SIGNAL \c5b|output~0_combout\ : std_logic;
SIGNAL \c6c|output~0_combout\ : std_logic;
SIGNAL \c6c|output~1_combout\ : std_logic;
SIGNAL \c7d|output~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_m <= m;
fcs <= ww_fcs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N16
\fcs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c0c|output~2_combout\,
	devoe => ww_devoe,
	o => \fcs[0]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\fcs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c1b|output~0_combout\,
	devoe => ww_devoe,
	o => \fcs[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\fcs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2c|output~1_combout\,
	devoe => ww_devoe,
	o => \fcs[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\fcs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3b|output~0_combout\,
	devoe => ww_devoe,
	o => \fcs[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\fcs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4b|output~0_combout\,
	devoe => ww_devoe,
	o => \fcs[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\fcs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c5b|output~0_combout\,
	devoe => ww_devoe,
	o => \fcs[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\fcs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c6c|output~1_combout\,
	devoe => ww_devoe,
	o => \fcs[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\fcs[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c7d|output~0_combout\,
	devoe => ww_devoe,
	o => \fcs[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\fcs[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[0]~input_o\,
	devoe => ww_devoe,
	o => \fcs[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\fcs[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[1]~input_o\,
	devoe => ww_devoe,
	o => \fcs[9]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\fcs[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[2]~input_o\,
	devoe => ww_devoe,
	o => \fcs[10]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\fcs[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[3]~input_o\,
	devoe => ww_devoe,
	o => \fcs[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\fcs[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[4]~input_o\,
	devoe => ww_devoe,
	o => \fcs[12]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\fcs[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[5]~input_o\,
	devoe => ww_devoe,
	o => \fcs[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\fcs[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[6]~input_o\,
	devoe => ww_devoe,
	o => \fcs[14]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\fcs[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[7]~input_o\,
	devoe => ww_devoe,
	o => \fcs[15]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\fcs[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[8]~input_o\,
	devoe => ww_devoe,
	o => \fcs[16]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\fcs[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[9]~input_o\,
	devoe => ww_devoe,
	o => \fcs[17]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\fcs[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[10]~input_o\,
	devoe => ww_devoe,
	o => \fcs[18]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\fcs[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[11]~input_o\,
	devoe => ww_devoe,
	o => \fcs[19]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\fcs[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[12]~input_o\,
	devoe => ww_devoe,
	o => \fcs[20]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\fcs[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[13]~input_o\,
	devoe => ww_devoe,
	o => \fcs[21]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\fcs[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[14]~input_o\,
	devoe => ww_devoe,
	o => \fcs[22]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\fcs[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m[15]~input_o\,
	devoe => ww_devoe,
	o => \fcs[23]~output_o\);

-- Location: IOIBUF_X3_Y0_N1
\m[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(10),
	o => \m[10]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\m[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(7),
	o => \m[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\m[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(8),
	o => \m[8]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\m[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(5),
	o => \m[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\m[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(9),
	o => \m[9]~input_o\);

-- Location: LCCOMB_X16_Y4_N0
\c0c|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0c|output~0_combout\ = \m[7]~input_o\ $ (\m[8]~input_o\ $ (\m[5]~input_o\ $ (\m[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[7]~input_o\,
	datab => \m[8]~input_o\,
	datac => \m[5]~input_o\,
	datad => \m[9]~input_o\,
	combout => \c0c|output~0_combout\);

-- Location: IOIBUF_X16_Y24_N8
\m[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\m[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(15),
	o => \m[15]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\m[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(12),
	o => \m[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\m[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(11),
	o => \m[11]~input_o\);

-- Location: LCCOMB_X16_Y4_N26
\c0c|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0c|output~1_combout\ = \m[0]~input_o\ $ (\m[15]~input_o\ $ (\m[12]~input_o\ $ (\m[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[15]~input_o\,
	datac => \m[12]~input_o\,
	datad => \m[11]~input_o\,
	combout => \c0c|output~1_combout\);

-- Location: IOIBUF_X16_Y24_N1
\m[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(3),
	o => \m[3]~input_o\);

-- Location: LCCOMB_X16_Y4_N20
\c0c|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c0c|output~2_combout\ = \m[10]~input_o\ $ (\c0c|output~0_combout\ $ (\c0c|output~1_combout\ $ (\m[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[10]~input_o\,
	datab => \c0c|output~0_combout\,
	datac => \c0c|output~1_combout\,
	datad => \m[3]~input_o\,
	combout => \c0c|output~2_combout\);

-- Location: IOIBUF_X0_Y11_N22
\m[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(13),
	o => \m[13]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\m[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(6),
	o => \m[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\m[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(4),
	o => \m[4]~input_o\);

-- Location: LCCOMB_X16_Y4_N14
\g14|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g14|output~0_combout\ = \m[6]~input_o\ $ (\m[5]~input_o\ $ (\m[7]~input_o\ $ (\m[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[6]~input_o\,
	datab => \m[5]~input_o\,
	datac => \m[7]~input_o\,
	datad => \m[4]~input_o\,
	combout => \g14|output~0_combout\);

-- Location: IOIBUF_X30_Y0_N8
\m[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: LCCOMB_X16_Y4_N24
\g13|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g13|output~0_combout\ = \m[0]~input_o\ $ (\m[3]~input_o\ $ (\m[15]~input_o\ $ (\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[3]~input_o\,
	datac => \m[15]~input_o\,
	datad => \m[1]~input_o\,
	combout => \g13|output~0_combout\);

-- Location: LCCOMB_X16_Y4_N2
\c1b|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1b|output~0_combout\ = \m[13]~input_o\ $ (\g14|output~0_combout\ $ (\g13|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[13]~input_o\,
	datac => \g14|output~0_combout\,
	datad => \g13|output~0_combout\,
	combout => \c1b|output~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\m[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\m[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(14),
	o => \m[14]~input_o\);

-- Location: LCCOMB_X16_Y4_N12
\g15|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g15|output~0_combout\ = \m[10]~input_o\ $ (\m[2]~input_o\ $ (\m[14]~input_o\ $ (\m[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[10]~input_o\,
	datab => \m[2]~input_o\,
	datac => \m[14]~input_o\,
	datad => \m[9]~input_o\,
	combout => \g15|output~0_combout\);

-- Location: LCCOMB_X16_Y4_N22
\c2c|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2c|output~0_combout\ = \g15|output~0_combout\ $ (\m[4]~input_o\ $ (\m[6]~input_o\ $ (\m[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g15|output~0_combout\,
	datab => \m[4]~input_o\,
	datac => \m[6]~input_o\,
	datad => \m[11]~input_o\,
	combout => \c2c|output~0_combout\);

-- Location: LCCOMB_X16_Y4_N8
\c2c|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2c|output~1_combout\ = \c2c|output~0_combout\ $ (\m[12]~input_o\ $ (\g13|output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2c|output~0_combout\,
	datac => \m[12]~input_o\,
	datad => \g13|output~0_combout\,
	combout => \c2c|output~1_combout\);

-- Location: LCCOMB_X16_Y4_N10
\g16|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \g16|output~0_combout\ = \m[0]~input_o\ $ (\m[8]~input_o\ $ (\m[2]~input_o\ $ (\m[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[0]~input_o\,
	datab => \m[8]~input_o\,
	datac => \m[2]~input_o\,
	datad => \m[9]~input_o\,
	combout => \g16|output~0_combout\);

-- Location: LCCOMB_X16_Y4_N28
\c3b|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c3b|output~0_combout\ = \g16|output~0_combout\ $ (\m[13]~input_o\ $ (\m[4]~input_o\ $ (\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g16|output~0_combout\,
	datab => \m[13]~input_o\,
	datac => \m[4]~input_o\,
	datad => \m[1]~input_o\,
	combout => \c3b|output~0_combout\);

-- Location: LCCOMB_X16_Y4_N6
\c4b|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c4b|output~0_combout\ = \g15|output~0_combout\ $ (\m[3]~input_o\ $ (\m[5]~input_o\ $ (\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g15|output~0_combout\,
	datab => \m[3]~input_o\,
	datac => \m[5]~input_o\,
	datad => \m[1]~input_o\,
	combout => \c4b|output~0_combout\);

-- Location: LCCOMB_X16_Y4_N16
\c5b|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c5b|output~0_combout\ = \g16|output~0_combout\ $ (\g14|output~0_combout\ $ (\m[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g16|output~0_combout\,
	datab => \g14|output~0_combout\,
	datac => \m[12]~input_o\,
	combout => \c5b|output~0_combout\);

-- Location: LCCOMB_X16_Y4_N18
\c6c|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6c|output~0_combout\ = \m[13]~input_o\ $ (\m[6]~input_o\ $ (\m[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m[13]~input_o\,
	datac => \m[6]~input_o\,
	datad => \m[1]~input_o\,
	combout => \c6c|output~0_combout\);

-- Location: LCCOMB_X16_Y4_N4
\c6c|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6c|output~1_combout\ = \m[10]~input_o\ $ (\c6c|output~0_combout\ $ (\c0c|output~0_combout\ $ (\m[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[10]~input_o\,
	datab => \c6c|output~0_combout\,
	datac => \c0c|output~0_combout\,
	datad => \m[3]~input_o\,
	combout => \c6c|output~1_combout\);

-- Location: LCCOMB_X16_Y4_N30
\c7d|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c7d|output~0_combout\ = \c2c|output~0_combout\ $ (\m[8]~input_o\ $ (\m[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2c|output~0_combout\,
	datab => \m[8]~input_o\,
	datac => \m[7]~input_o\,
	combout => \c7d|output~0_combout\);

ww_fcs(0) <= \fcs[0]~output_o\;

ww_fcs(1) <= \fcs[1]~output_o\;

ww_fcs(2) <= \fcs[2]~output_o\;

ww_fcs(3) <= \fcs[3]~output_o\;

ww_fcs(4) <= \fcs[4]~output_o\;

ww_fcs(5) <= \fcs[5]~output_o\;

ww_fcs(6) <= \fcs[6]~output_o\;

ww_fcs(7) <= \fcs[7]~output_o\;

ww_fcs(8) <= \fcs[8]~output_o\;

ww_fcs(9) <= \fcs[9]~output_o\;

ww_fcs(10) <= \fcs[10]~output_o\;

ww_fcs(11) <= \fcs[11]~output_o\;

ww_fcs(12) <= \fcs[12]~output_o\;

ww_fcs(13) <= \fcs[13]~output_o\;

ww_fcs(14) <= \fcs[14]~output_o\;

ww_fcs(15) <= \fcs[15]~output_o\;

ww_fcs(16) <= \fcs[16]~output_o\;

ww_fcs(17) <= \fcs[17]~output_o\;

ww_fcs(18) <= \fcs[18]~output_o\;

ww_fcs(19) <= \fcs[19]~output_o\;

ww_fcs(20) <= \fcs[20]~output_o\;

ww_fcs(21) <= \fcs[21]~output_o\;

ww_fcs(22) <= \fcs[22]~output_o\;

ww_fcs(23) <= \fcs[23]~output_o\;
END structure;


