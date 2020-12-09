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

-- DATE "12/09/2020 00:57:59"

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

ENTITY 	CRC_Checker IS
    PORT (
	fcs : IN std_logic_vector(23 DOWNTO 0);
	check_error : OUT std_logic
	);
END CRC_Checker;

-- Design Ports Information
-- check_error	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[12]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[10]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[17]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[18]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[22]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[23]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[9]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[14]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[20]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[8]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[11]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[19]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[16]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[13]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[15]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[7]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[4]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[21]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[6]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[5]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \fcs[18]~input_o\ : std_logic;
SIGNAL \fcs[15]~input_o\ : std_logic;
SIGNAL \fcs[17]~input_o\ : std_logic;
SIGNAL \fcs[16]~input_o\ : std_logic;
SIGNAL \fcs[13]~input_o\ : std_logic;
SIGNAL \error6|output~0_combout\ : std_logic;
SIGNAL \fcs[11]~input_o\ : std_logic;
SIGNAL \error6|output~1_combout\ : std_logic;
SIGNAL \fcs[0]~input_o\ : std_logic;
SIGNAL \fcs[19]~input_o\ : std_logic;
SIGNAL \fcs[8]~input_o\ : std_logic;
SIGNAL \fcs[2]~input_o\ : std_logic;
SIGNAL \error2|output~1_combout\ : std_logic;
SIGNAL \fcs[10]~input_o\ : std_logic;
SIGNAL \fcs[22]~input_o\ : std_logic;
SIGNAL \encoder|g15|output~0_combout\ : std_logic;
SIGNAL \fcs[9]~input_o\ : std_logic;
SIGNAL \fcs[23]~input_o\ : std_logic;
SIGNAL \fcs[14]~input_o\ : std_logic;
SIGNAL \fcs[20]~input_o\ : std_logic;
SIGNAL \error2|output~0_combout\ : std_logic;
SIGNAL \fcs[12]~input_o\ : std_logic;
SIGNAL \error2|output~2_combout\ : std_logic;
SIGNAL \error0|output~0_combout\ : std_logic;
SIGNAL \check_error~0_combout\ : std_logic;
SIGNAL \error7|output~1_combout\ : std_logic;
SIGNAL \fcs[4]~input_o\ : std_logic;
SIGNAL \error4|output~0_combout\ : std_logic;
SIGNAL \fcs[7]~input_o\ : std_logic;
SIGNAL \error7|output~0_combout\ : std_logic;
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
SIGNAL \encoder|g16|output~0_combout\ : std_logic;
SIGNAL \fcs[3]~input_o\ : std_logic;
SIGNAL \error3|output~0_combout\ : std_logic;
SIGNAL \fcs[5]~input_o\ : std_logic;
SIGNAL \error5|output~1_combout\ : std_logic;
SIGNAL \check_error~3_combout\ : std_logic;
SIGNAL \check_error~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_fcs <= fcs;
check_error <= ww_check_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOIBUF_X28_Y0_N1
\fcs[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(18),
	o => \fcs[18]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\fcs[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(15),
	o => \fcs[15]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\fcs[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(17),
	o => \fcs[17]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\fcs[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(16),
	o => \fcs[16]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\fcs[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(13),
	o => \fcs[13]~input_o\);

-- Location: LCCOMB_X26_Y3_N16
\error6|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error6|output~0_combout\ = \fcs[15]~input_o\ $ (\fcs[17]~input_o\ $ (\fcs[16]~input_o\ $ (\fcs[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[15]~input_o\,
	datab => \fcs[17]~input_o\,
	datac => \fcs[16]~input_o\,
	datad => \fcs[13]~input_o\,
	combout => \error6|output~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\fcs[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(11),
	o => \fcs[11]~input_o\);

-- Location: LCCOMB_X26_Y3_N2
\error6|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error6|output~1_combout\ = \fcs[18]~input_o\ $ (\error6|output~0_combout\ $ (\fcs[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[18]~input_o\,
	datab => \error6|output~0_combout\,
	datac => \fcs[11]~input_o\,
	combout => \error6|output~1_combout\);

-- Location: IOIBUF_X18_Y0_N22
\fcs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(0),
	o => \fcs[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\fcs[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(19),
	o => \fcs[19]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\fcs[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(8),
	o => \fcs[8]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\fcs[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(2),
	o => \fcs[2]~input_o\);

-- Location: LCCOMB_X26_Y3_N4
\error2|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error2|output~1_combout\ = \fcs[11]~input_o\ $ (\fcs[19]~input_o\ $ (\fcs[8]~input_o\ $ (\fcs[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[11]~input_o\,
	datab => \fcs[19]~input_o\,
	datac => \fcs[8]~input_o\,
	datad => \fcs[2]~input_o\,
	combout => \error2|output~1_combout\);

-- Location: IOIBUF_X16_Y0_N8
\fcs[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(10),
	o => \fcs[10]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\fcs[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(22),
	o => \fcs[22]~input_o\);

-- Location: LCCOMB_X26_Y3_N24
\encoder|g15|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|g15|output~0_combout\ = \fcs[18]~input_o\ $ (\fcs[17]~input_o\ $ (\fcs[10]~input_o\ $ (\fcs[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[18]~input_o\,
	datab => \fcs[17]~input_o\,
	datac => \fcs[10]~input_o\,
	datad => \fcs[22]~input_o\,
	combout => \encoder|g15|output~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\fcs[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(9),
	o => \fcs[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\fcs[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(23),
	o => \fcs[23]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\fcs[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(14),
	o => \fcs[14]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\fcs[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(20),
	o => \fcs[20]~input_o\);

-- Location: LCCOMB_X26_Y3_N26
\error2|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error2|output~0_combout\ = \fcs[9]~input_o\ $ (\fcs[23]~input_o\ $ (\fcs[14]~input_o\ $ (\fcs[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[9]~input_o\,
	datab => \fcs[23]~input_o\,
	datac => \fcs[14]~input_o\,
	datad => \fcs[20]~input_o\,
	combout => \error2|output~0_combout\);

-- Location: IOIBUF_X34_Y3_N22
\fcs[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(12),
	o => \fcs[12]~input_o\);

-- Location: LCCOMB_X26_Y3_N30
\error2|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \error2|output~2_combout\ = \error2|output~1_combout\ $ (\encoder|g15|output~0_combout\ $ (\error2|output~0_combout\ $ (\fcs[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error2|output~1_combout\,
	datab => \encoder|g15|output~0_combout\,
	datac => \error2|output~0_combout\,
	datad => \fcs[12]~input_o\,
	combout => \error2|output~2_combout\);

-- Location: LCCOMB_X30_Y2_N24
\error0|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error0|output~0_combout\ = \fcs[19]~input_o\ $ (\fcs[8]~input_o\ $ (\fcs[23]~input_o\ $ (\fcs[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[19]~input_o\,
	datab => \fcs[8]~input_o\,
	datac => \fcs[23]~input_o\,
	datad => \fcs[20]~input_o\,
	combout => \error0|output~0_combout\);

-- Location: LCCOMB_X30_Y2_N10
\check_error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~0_combout\ = (\error2|output~2_combout\) # (\error6|output~1_combout\ $ (\fcs[0]~input_o\ $ (\error0|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error6|output~1_combout\,
	datab => \fcs[0]~input_o\,
	datac => \error2|output~2_combout\,
	datad => \error0|output~0_combout\,
	combout => \check_error~0_combout\);

-- Location: LCCOMB_X26_Y3_N22
\error7|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error7|output~1_combout\ = \fcs[16]~input_o\ $ (\fcs[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fcs[16]~input_o\,
	datad => \fcs[19]~input_o\,
	combout => \error7|output~1_combout\);

-- Location: IOIBUF_X34_Y9_N22
\fcs[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(4),
	o => \fcs[4]~input_o\);

-- Location: LCCOMB_X26_Y3_N0
\error4|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error4|output~0_combout\ = \fcs[11]~input_o\ $ (\fcs[13]~input_o\ $ (\fcs[9]~input_o\ $ (\fcs[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[11]~input_o\,
	datab => \fcs[13]~input_o\,
	datac => \fcs[9]~input_o\,
	datad => \fcs[4]~input_o\,
	combout => \error4|output~0_combout\);

-- Location: IOIBUF_X13_Y0_N1
\fcs[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(7),
	o => \fcs[7]~input_o\);

-- Location: LCCOMB_X26_Y3_N28
\error7|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error7|output~0_combout\ = \fcs[14]~input_o\ $ (\fcs[7]~input_o\ $ (\fcs[15]~input_o\ $ (\fcs[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[14]~input_o\,
	datab => \fcs[7]~input_o\,
	datac => \fcs[15]~input_o\,
	datad => \fcs[12]~input_o\,
	combout => \error7|output~0_combout\);

-- Location: LCCOMB_X26_Y3_N10
\check_error~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~1_combout\ = (\encoder|g15|output~0_combout\ & ((\error7|output~1_combout\ $ (!\error7|output~0_combout\)) # (!\error4|output~0_combout\))) # (!\encoder|g15|output~0_combout\ & ((\error4|output~0_combout\) # (\error7|output~1_combout\ $ 
-- (\error7|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error7|output~1_combout\,
	datab => \encoder|g15|output~0_combout\,
	datac => \error4|output~0_combout\,
	datad => \error7|output~0_combout\,
	combout => \check_error~1_combout\);

-- Location: IOIBUF_X34_Y4_N15
\fcs[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(21),
	o => \fcs[21]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\fcs[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(6),
	o => \fcs[6]~input_o\);

-- Location: LCCOMB_X26_Y3_N12
\error6|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \error6|output~2_combout\ = \fcs[14]~input_o\ $ (\fcs[21]~input_o\ $ (\fcs[9]~input_o\ $ (\fcs[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[14]~input_o\,
	datab => \fcs[21]~input_o\,
	datac => \fcs[9]~input_o\,
	datad => \fcs[6]~input_o\,
	combout => \error6|output~2_combout\);

-- Location: LCCOMB_X26_Y3_N6
\check_error~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~2_combout\ = (\check_error~1_combout\) # (\error6|output~1_combout\ $ (\error6|output~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \check_error~1_combout\,
	datab => \error6|output~1_combout\,
	datad => \error6|output~2_combout\,
	combout => \check_error~2_combout\);

-- Location: LCCOMB_X26_Y3_N8
\error2|output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \error2|output~3_combout\ = \fcs[9]~input_o\ $ (\fcs[14]~input_o\ $ (\fcs[11]~input_o\ $ (\fcs[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[9]~input_o\,
	datab => \fcs[14]~input_o\,
	datac => \fcs[11]~input_o\,
	datad => \fcs[12]~input_o\,
	combout => \error2|output~3_combout\);

-- Location: IOIBUF_X30_Y0_N8
\fcs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(1),
	o => \fcs[1]~input_o\);

-- Location: LCCOMB_X30_Y2_N12
\error1|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error1|output~0_combout\ = \fcs[13]~input_o\ $ (\fcs[15]~input_o\ $ (\fcs[1]~input_o\ $ (\fcs[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[13]~input_o\,
	datab => \fcs[15]~input_o\,
	datac => \fcs[1]~input_o\,
	datad => \fcs[21]~input_o\,
	combout => \error1|output~0_combout\);

-- Location: LCCOMB_X30_Y2_N30
\error1|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error1|output~1_combout\ = \error2|output~3_combout\ $ (\fcs[8]~input_o\ $ (\fcs[23]~input_o\ $ (\error1|output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error2|output~3_combout\,
	datab => \fcs[8]~input_o\,
	datac => \fcs[23]~input_o\,
	datad => \error1|output~0_combout\,
	combout => \error1|output~1_combout\);

-- Location: LCCOMB_X26_Y3_N18
\error5|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error5|output~0_combout\ = \fcs[15]~input_o\ $ (\fcs[13]~input_o\ $ (\fcs[14]~input_o\ $ (\fcs[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[15]~input_o\,
	datab => \fcs[13]~input_o\,
	datac => \fcs[14]~input_o\,
	datad => \fcs[12]~input_o\,
	combout => \error5|output~0_combout\);

-- Location: LCCOMB_X26_Y3_N20
\encoder|g16|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder|g16|output~0_combout\ = \fcs[8]~input_o\ $ (\fcs[10]~input_o\ $ (\fcs[16]~input_o\ $ (\fcs[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[8]~input_o\,
	datab => \fcs[10]~input_o\,
	datac => \fcs[16]~input_o\,
	datad => \fcs[17]~input_o\,
	combout => \encoder|g16|output~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\fcs[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(3),
	o => \fcs[3]~input_o\);

-- Location: LCCOMB_X26_Y3_N14
\error3|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \error3|output~0_combout\ = \fcs[3]~input_o\ $ (\fcs[21]~input_o\ $ (\fcs[9]~input_o\ $ (\fcs[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fcs[3]~input_o\,
	datab => \fcs[21]~input_o\,
	datac => \fcs[9]~input_o\,
	datad => \fcs[12]~input_o\,
	combout => \error3|output~0_combout\);

-- Location: IOIBUF_X34_Y2_N22
\fcs[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fcs(5),
	o => \fcs[5]~input_o\);

-- Location: LCCOMB_X30_Y2_N0
\error5|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \error5|output~1_combout\ = \fcs[20]~input_o\ $ (\fcs[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fcs[20]~input_o\,
	datac => \fcs[5]~input_o\,
	combout => \error5|output~1_combout\);

-- Location: LCCOMB_X30_Y3_N16
\check_error~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \check_error~3_combout\ = (\encoder|g16|output~0_combout\ & ((\error5|output~0_combout\ $ (!\error5|output~1_combout\)) # (!\error3|output~0_combout\))) # (!\encoder|g16|output~0_combout\ & ((\error3|output~0_combout\) # (\error5|output~0_combout\ $ 
-- (\error5|output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error5|output~0_combout\,
	datab => \encoder|g16|output~0_combout\,
	datac => \error3|output~0_combout\,
	datad => \error5|output~1_combout\,
	combout => \check_error~3_combout\);

-- Location: LCCOMB_X30_Y2_N26
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


