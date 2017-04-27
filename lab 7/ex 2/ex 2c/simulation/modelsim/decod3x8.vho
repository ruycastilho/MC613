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

-- DATE "04/27/2017 19:33:29"

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

ENTITY 	decod3x8 IS
    PORT (
	w : IN std_logic_vector(2 DOWNTO 0);
	En : IN std_logic;
	y : OUT std_logic_vector(7 DOWNTO 0)
	);
END decod3x8;

-- Design Ports Information
-- y[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decod3x8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_En : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \w[2]~input_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \w[1]~input_o\ : std_logic;
SIGNAL \w[0]~input_o\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \y~3_combout\ : std_logic;
SIGNAL \y~4_combout\ : std_logic;
SIGNAL \y~5_combout\ : std_logic;
SIGNAL \y~6_combout\ : std_logic;
SIGNAL \y~7_combout\ : std_logic;

BEGIN

ww_w <= w;
ww_En <= En;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~1_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~2_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~3_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\y[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~4_combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\y[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~5_combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\y[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~6_combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\y[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~7_combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOIBUF_X10_Y0_N8
\w[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(2),
	o => \w[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\En~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\w[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(1),
	o => \w[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\w[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w(0),
	o => \w[0]~input_o\);

-- Location: LCCOMB_X15_Y1_N0
\y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~0_combout\ = (!\w[2]~input_o\ & (\En~input_o\ & (!\w[1]~input_o\ & !\w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \En~input_o\,
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \y~0_combout\);

-- Location: LCCOMB_X15_Y1_N10
\y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~1_combout\ = (!\w[2]~input_o\ & (\En~input_o\ & (!\w[1]~input_o\ & \w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \En~input_o\,
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \y~1_combout\);

-- Location: LCCOMB_X15_Y1_N12
\y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~2_combout\ = (!\w[2]~input_o\ & (\En~input_o\ & (\w[1]~input_o\ & !\w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \En~input_o\,
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \y~2_combout\);

-- Location: LCCOMB_X15_Y1_N6
\y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~3_combout\ = (!\w[2]~input_o\ & (\En~input_o\ & (\w[1]~input_o\ & \w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \En~input_o\,
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \y~3_combout\);

-- Location: LCCOMB_X15_Y1_N24
\y~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~4_combout\ = (\w[2]~input_o\ & (\En~input_o\ & (!\w[1]~input_o\ & !\w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \En~input_o\,
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \y~4_combout\);

-- Location: LCCOMB_X15_Y1_N26
\y~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~5_combout\ = (\w[2]~input_o\ & (\En~input_o\ & (!\w[1]~input_o\ & \w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \En~input_o\,
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \y~5_combout\);

-- Location: LCCOMB_X15_Y1_N20
\y~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~6_combout\ = (\w[2]~input_o\ & (\En~input_o\ & (\w[1]~input_o\ & !\w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \En~input_o\,
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \y~6_combout\);

-- Location: LCCOMB_X15_Y1_N22
\y~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y~7_combout\ = (\w[2]~input_o\ & (\En~input_o\ & (\w[1]~input_o\ & \w[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w[2]~input_o\,
	datab => \En~input_o\,
	datac => \w[1]~input_o\,
	datad => \w[0]~input_o\,
	combout => \y~7_combout\);

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(7) <= \y[7]~output_o\;
END structure;


