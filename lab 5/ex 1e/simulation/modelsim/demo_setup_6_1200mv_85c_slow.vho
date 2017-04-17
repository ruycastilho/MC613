-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/17/2017 11:55:24"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ripple8 IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	y : IN std_logic_vector(7 DOWNTO 0);
	cin : IN std_logic;
	f : OUT std_logic_vector(7 DOWNTO 0);
	cout : OUT std_logic;
	v : OUT std_logic
	);
END ripple8;

-- Design Ports Information
-- f[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ripple8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_f : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \f[2]~output_o\ : std_logic;
SIGNAL \f[3]~output_o\ : std_logic;
SIGNAL \f[4]~output_o\ : std_logic;
SIGNAL \f[5]~output_o\ : std_logic;
SIGNAL \f[6]~output_o\ : std_logic;
SIGNAL \f[7]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \fa1|f~0_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \fa1|cout~0_combout\ : std_logic;
SIGNAL \g1:1:FA|f~combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \g1:1:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:2:FA|f~combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \g1:2:FA|cout~0_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \g1:3:FA|f~combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \g1:3:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:4:FA|f~combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \g1:4:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:5:FA|f~combout\ : std_logic;
SIGNAL \g1:5:FA|cout~0_combout\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \g1:6:FA|f~combout\ : std_logic;
SIGNAL \g1:6:FA|cout~0_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \g1:7:FA|f~combout\ : std_logic;
SIGNAL \g1:7:FA|cout~0_combout\ : std_logic;
SIGNAL \v~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
ww_cin <= cin;
f <= ww_f;
cout <= ww_cout;
v <= ww_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y31_N2
\f[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fa1|f~0_combout\,
	devoe => ww_devoe,
	o => \f[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\f[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:1:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\f[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:2:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[2]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\f[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:3:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\f[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:4:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[4]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\f[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:5:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[5]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\f[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:6:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[6]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\f[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:7:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[7]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:7:FA|cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\v~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v~0_combout\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOIBUF_X33_Y14_N1
\cin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\x[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LCCOMB_X29_Y27_N0
\fa1|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fa1|f~0_combout\ = \cin~input_o\ $ (\x[0]~input_o\ $ (\y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \fa1|f~0_combout\);

-- Location: IOIBUF_X20_Y31_N1
\x[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X29_Y27_N2
\fa1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fa1|cout~0_combout\ = (\cin~input_o\ & ((\x[0]~input_o\) # (\y[0]~input_o\))) # (!\cin~input_o\ & (\x[0]~input_o\ & \y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datac => \x[0]~input_o\,
	datad => \y[0]~input_o\,
	combout => \fa1|cout~0_combout\);

-- Location: LCCOMB_X29_Y27_N28
\g1:1:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:1:FA|f~combout\ = \x[1]~input_o\ $ (\y[1]~input_o\ $ (\fa1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datac => \y[1]~input_o\,
	datad => \fa1|cout~0_combout\,
	combout => \g1:1:FA|f~combout\);

-- Location: IOIBUF_X14_Y31_N8
\x[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X29_Y27_N6
\g1:1:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:1:FA|cout~0_combout\ = (\x[1]~input_o\ & ((\y[1]~input_o\) # (\fa1|cout~0_combout\))) # (!\x[1]~input_o\ & (\y[1]~input_o\ & \fa1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datac => \y[1]~input_o\,
	datad => \fa1|cout~0_combout\,
	combout => \g1:1:FA|cout~0_combout\);

-- Location: LCCOMB_X29_Y27_N24
\g1:2:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:2:FA|f~combout\ = \x[2]~input_o\ $ (\y[2]~input_o\ $ (\g1:1:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \g1:1:FA|cout~0_combout\,
	combout => \g1:2:FA|f~combout\);

-- Location: IOIBUF_X29_Y31_N8
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X29_Y27_N26
\g1:2:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:2:FA|cout~0_combout\ = (\x[2]~input_o\ & ((\y[2]~input_o\) # (\g1:1:FA|cout~0_combout\))) # (!\x[2]~input_o\ & (\y[2]~input_o\ & \g1:1:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	datad => \g1:1:FA|cout~0_combout\,
	combout => \g1:2:FA|cout~0_combout\);

-- Location: IOIBUF_X33_Y24_N1
\x[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X29_Y27_N12
\g1:3:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:3:FA|f~combout\ = \y[3]~input_o\ $ (\g1:2:FA|cout~0_combout\ $ (\x[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datac => \g1:2:FA|cout~0_combout\,
	datad => \x[3]~input_o\,
	combout => \g1:3:FA|f~combout\);

-- Location: IOIBUF_X24_Y0_N1
\x[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: LCCOMB_X29_Y27_N22
\g1:3:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:3:FA|cout~0_combout\ = (\y[3]~input_o\ & ((\g1:2:FA|cout~0_combout\) # (\x[3]~input_o\))) # (!\y[3]~input_o\ & (\g1:2:FA|cout~0_combout\ & \x[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datac => \g1:2:FA|cout~0_combout\,
	datad => \x[3]~input_o\,
	combout => \g1:3:FA|cout~0_combout\);

-- Location: LCCOMB_X25_Y30_N0
\g1:4:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:4:FA|f~combout\ = \x[4]~input_o\ $ (\y[4]~input_o\ $ (\g1:3:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \y[4]~input_o\,
	datac => \g1:3:FA|cout~0_combout\,
	combout => \g1:4:FA|f~combout\);

-- Location: IOIBUF_X16_Y31_N1
\x[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X16_Y31_N8
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X25_Y30_N26
\g1:4:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:4:FA|cout~0_combout\ = (\x[4]~input_o\ & ((\y[4]~input_o\) # (\g1:3:FA|cout~0_combout\))) # (!\x[4]~input_o\ & (\y[4]~input_o\ & \g1:3:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \y[4]~input_o\,
	datac => \g1:3:FA|cout~0_combout\,
	combout => \g1:4:FA|cout~0_combout\);

-- Location: LCCOMB_X25_Y30_N4
\g1:5:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:5:FA|f~combout\ = \x[5]~input_o\ $ (\y[5]~input_o\ $ (\g1:4:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datab => \y[5]~input_o\,
	datac => \g1:4:FA|cout~0_combout\,
	combout => \g1:5:FA|f~combout\);

-- Location: LCCOMB_X25_Y30_N6
\g1:5:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:5:FA|cout~0_combout\ = (\x[5]~input_o\ & ((\y[5]~input_o\) # (\g1:4:FA|cout~0_combout\))) # (!\x[5]~input_o\ & (\y[5]~input_o\ & \g1:4:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datab => \y[5]~input_o\,
	datac => \g1:4:FA|cout~0_combout\,
	combout => \g1:5:FA|cout~0_combout\);

-- Location: IOIBUF_X29_Y31_N1
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\x[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LCCOMB_X25_Y30_N8
\g1:6:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:6:FA|f~combout\ = \g1:5:FA|cout~0_combout\ $ (\y[6]~input_o\ $ (\x[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:5:FA|cout~0_combout\,
	datab => \y[6]~input_o\,
	datac => \x[6]~input_o\,
	combout => \g1:6:FA|f~combout\);

-- Location: LCCOMB_X25_Y30_N2
\g1:6:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:6:FA|cout~0_combout\ = (\g1:5:FA|cout~0_combout\ & ((\y[6]~input_o\) # (\x[6]~input_o\))) # (!\g1:5:FA|cout~0_combout\ & (\y[6]~input_o\ & \x[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:5:FA|cout~0_combout\,
	datab => \y[6]~input_o\,
	datac => \x[6]~input_o\,
	combout => \g1:6:FA|cout~0_combout\);

-- Location: IOIBUF_X33_Y24_N8
\x[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: LCCOMB_X25_Y30_N20
\g1:7:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:7:FA|f~combout\ = \g1:6:FA|cout~0_combout\ $ (\x[7]~input_o\ $ (\y[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:6:FA|cout~0_combout\,
	datac => \x[7]~input_o\,
	datad => \y[7]~input_o\,
	combout => \g1:7:FA|f~combout\);

-- Location: LCCOMB_X25_Y30_N22
\g1:7:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:7:FA|cout~0_combout\ = (\g1:6:FA|cout~0_combout\ & ((\x[7]~input_o\) # (\y[7]~input_o\))) # (!\g1:6:FA|cout~0_combout\ & (\x[7]~input_o\ & \y[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:6:FA|cout~0_combout\,
	datac => \x[7]~input_o\,
	datad => \y[7]~input_o\,
	combout => \g1:7:FA|cout~0_combout\);

-- Location: LCCOMB_X25_Y30_N24
\v~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \v~0_combout\ = (\g1:6:FA|cout~0_combout\ & (!\x[7]~input_o\ & !\y[7]~input_o\)) # (!\g1:6:FA|cout~0_combout\ & (\x[7]~input_o\ & \y[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:6:FA|cout~0_combout\,
	datac => \x[7]~input_o\,
	datad => \y[7]~input_o\,
	combout => \v~0_combout\);

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_f(2) <= \f[2]~output_o\;

ww_f(3) <= \f[3]~output_o\;

ww_f(4) <= \f[4]~output_o\;

ww_f(5) <= \f[5]~output_o\;

ww_f(6) <= \f[6]~output_o\;

ww_f(7) <= \f[7]~output_o\;

ww_cout <= \cout~output_o\;

ww_v <= \v~output_o\;
END structure;


