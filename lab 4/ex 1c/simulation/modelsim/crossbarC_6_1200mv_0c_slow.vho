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

-- DATE "03/29/2017 16:38:15"

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

ENTITY 	crossbarC IS
    PORT (
	x1 : IN std_logic;
	x2 : IN std_logic;
	s : IN std_logic;
	y1 : OUT std_logic;
	y2 : OUT std_logic
	);
END crossbarC;

-- Design Ports Information
-- y1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF crossbarC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x1 : std_logic;
SIGNAL ww_x2 : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \y2~output_o\ : std_logic;
SIGNAL \x2~input_o\ : std_logic;
SIGNAL \x1~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \y1~0_combout\ : std_logic;
SIGNAL \y2~0_combout\ : std_logic;

BEGIN

ww_x1 <= x1;
ww_x2 <= x2;
ww_s <= s;
y1 <= ww_y1;
y2 <= ww_y2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N9
\y1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y1~0_combout\,
	devoe => ww_devoe,
	o => \y1~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\y2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y2~0_combout\,
	devoe => ww_devoe,
	o => \y2~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\x2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x2,
	o => \x2~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\x1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1,
	o => \x1~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\s~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: LCCOMB_X12_Y1_N0
\y1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y1~0_combout\ = (\s~input_o\ & (\x2~input_o\)) # (!\s~input_o\ & ((\x1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~input_o\,
	datab => \x1~input_o\,
	datad => \s~input_o\,
	combout => \y1~0_combout\);

-- Location: LCCOMB_X12_Y1_N2
\y2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \y2~0_combout\ = (\s~input_o\ & ((\x1~input_o\))) # (!\s~input_o\ & (\x2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~input_o\,
	datab => \x1~input_o\,
	datad => \s~input_o\,
	combout => \y2~0_combout\);

ww_y1 <= \y1~output_o\;

ww_y2 <= \y2~output_o\;
END structure;


