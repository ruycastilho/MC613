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

-- DATE "04/17/2017 11:58:58"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ripple32 IS
    PORT (
	x : IN std_logic_vector(31 DOWNTO 0);
	y : IN std_logic_vector(31 DOWNTO 0);
	cin : IN std_logic;
	f : OUT std_logic_vector(31 DOWNTO 0);
	cout : OUT std_logic;
	v : OUT std_logic
	);
END ripple32;

-- Design Ports Information
-- f[0]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[1]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[2]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[3]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[5]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[6]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[8]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[9]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[10]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[11]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[12]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[13]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[14]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[15]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[16]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[17]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[18]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[19]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[20]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[21]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[22]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[23]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[24]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[25]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[26]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[27]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[28]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[29]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[30]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f[31]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- v	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x[0]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[0]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cin	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[1]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[1]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[2]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[2]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[3]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[3]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[4]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[5]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[5]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[6]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[6]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[7]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[7]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[8]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[8]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[9]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[9]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[10]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[10]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[11]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[11]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[12]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[12]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[13]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[13]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[14]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[14]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[15]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[15]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[16]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[16]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[17]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[17]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[18]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[18]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[19]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[19]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[20]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[20]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[21]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[21]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[22]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[22]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[23]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[23]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[24]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[24]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[25]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[25]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[26]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[26]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[27]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[27]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[28]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[28]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[29]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[29]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[30]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[30]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x[31]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y[31]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ripple32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_f : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL \g1:17:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:20:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:26:FA|cout~1_combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \fa1|f~0_combout\ : std_logic;
SIGNAL \fa1|cout~0_combout\ : std_logic;
SIGNAL \g1:1:FA|f~combout\ : std_logic;
SIGNAL \g1:2:FA|f~0_combout\ : std_logic;
SIGNAL \g1:2:FA|f~combout\ : std_logic;
SIGNAL \g1:2:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:2:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:2:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:3:FA|f~combout\ : std_logic;
SIGNAL \g1:3:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:4:FA|f~combout\ : std_logic;
SIGNAL \g1:4:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:5:FA|f~combout\ : std_logic;
SIGNAL \g1:5:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:5:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:6:FA|f~combout\ : std_logic;
SIGNAL \g1:6:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:7:FA|f~combout\ : std_logic;
SIGNAL \g1:7:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:8:FA|f~combout\ : std_logic;
SIGNAL \g1:8:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:9:FA|f~combout\ : std_logic;
SIGNAL \g1:10:FA|f~0_combout\ : std_logic;
SIGNAL \g1:10:FA|f~combout\ : std_logic;
SIGNAL \g1:10:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:10:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:10:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:11:FA|f~combout\ : std_logic;
SIGNAL \g1:11:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:12:FA|f~combout\ : std_logic;
SIGNAL \g1:12:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:13:FA|f~combout\ : std_logic;
SIGNAL \g1:14:FA|f~0_combout\ : std_logic;
SIGNAL \g1:14:FA|f~combout\ : std_logic;
SIGNAL \g1:14:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:14:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:14:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:15:FA|f~combout\ : std_logic;
SIGNAL \g1:15:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:16:FA|f~combout\ : std_logic;
SIGNAL \g1:17:FA|f~0_combout\ : std_logic;
SIGNAL \g1:17:FA|f~combout\ : std_logic;
SIGNAL \g1:17:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:17:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:18:FA|f~combout\ : std_logic;
SIGNAL \g1:18:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:19:FA|f~combout\ : std_logic;
SIGNAL \g1:20:FA|f~0_combout\ : std_logic;
SIGNAL \g1:20:FA|f~combout\ : std_logic;
SIGNAL \g1:20:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:20:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:21:FA|f~combout\ : std_logic;
SIGNAL \g1:21:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:22:FA|f~combout\ : std_logic;
SIGNAL \g1:23:FA|f~0_combout\ : std_logic;
SIGNAL \g1:23:FA|f~combout\ : std_logic;
SIGNAL \g1:23:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:23:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:23:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:24:FA|f~combout\ : std_logic;
SIGNAL \g1:24:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:25:FA|f~combout\ : std_logic;
SIGNAL \g1:26:FA|f~0_combout\ : std_logic;
SIGNAL \g1:26:FA|f~combout\ : std_logic;
SIGNAL \g1:26:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:26:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:27:FA|f~combout\ : std_logic;
SIGNAL \g1:27:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:28:FA|f~combout\ : std_logic;
SIGNAL \g1:29:FA|f~0_combout\ : std_logic;
SIGNAL \g1:29:FA|f~combout\ : std_logic;
SIGNAL \g1:29:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:29:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:29:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:30:FA|f~combout\ : std_logic;
SIGNAL \g1:30:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:31:FA|f~combout\ : std_logic;
SIGNAL \g1:31:FA|cout~0_combout\ : std_logic;
SIGNAL \v~0_combout\ : std_logic;
SIGNAL \x~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \y~combout\ : std_logic_vector(31 DOWNTO 0);

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

-- Location: LCCOMB_X21_Y13_N16
\g1:17:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:17:FA|cout~1_combout\ = (\y~combout\(17)) # (\x~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(17),
	datac => \x~combout\(17),
	combout => \g1:17:FA|cout~1_combout\);

-- Location: LCCOMB_X21_Y13_N24
\g1:20:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:20:FA|cout~1_combout\ = (\y~combout\(20)) # (\x~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(20),
	datac => \x~combout\(20),
	combout => \g1:20:FA|cout~1_combout\);

-- Location: LCCOMB_X9_Y4_N24
\g1:26:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:26:FA|cout~1_combout\ = (\x~combout\(26)) # (\y~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(26),
	datac => \y~combout\(26),
	combout => \g1:26:FA|cout~1_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(10),
	combout => \x~combout\(10));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(17),
	combout => \y~combout\(17));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(20),
	combout => \y~combout\(20));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(0),
	combout => \y~combout\(0));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: LCCOMB_X1_Y4_N0
\fa1|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa1|f~0_combout\ = \y~combout\(0) $ (\x~combout\(0) $ (\cin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(0),
	datac => \x~combout\(0),
	datad => \cin~combout\,
	combout => \fa1|f~0_combout\);

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(1),
	combout => \y~combout\(1));

-- Location: LCCOMB_X1_Y4_N18
\fa1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fa1|cout~0_combout\ = (\y~combout\(0) & ((\x~combout\(0)) # (\cin~combout\))) # (!\y~combout\(0) & (\x~combout\(0) & \cin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(0),
	datac => \x~combout\(0),
	datad => \cin~combout\,
	combout => \fa1|cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N20
\g1:1:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:1:FA|f~combout\ = \x~combout\(1) $ (\y~combout\(1) $ (\fa1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(1),
	datac => \y~combout\(1),
	datad => \fa1|cout~0_combout\,
	combout => \g1:1:FA|f~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(2),
	combout => \y~combout\(2));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: LCCOMB_X1_Y4_N22
\g1:2:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:2:FA|f~0_combout\ = \y~combout\(2) $ (\x~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y~combout\(2),
	datad => \x~combout\(2),
	combout => \g1:2:FA|f~0_combout\);

-- Location: LCCOMB_X1_Y4_N24
\g1:2:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:2:FA|f~combout\ = \g1:2:FA|f~0_combout\ $ (((\y~combout\(1) & ((\x~combout\(1)) # (\fa1|cout~0_combout\))) # (!\y~combout\(1) & (\x~combout\(1) & \fa1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(1),
	datab => \g1:2:FA|f~0_combout\,
	datac => \x~combout\(1),
	datad => \fa1|cout~0_combout\,
	combout => \g1:2:FA|f~combout\);

-- Location: LCCOMB_X1_Y4_N28
\g1:2:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:2:FA|cout~1_combout\ = (\y~combout\(2)) # (\x~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y~combout\(2),
	datad => \x~combout\(2),
	combout => \g1:2:FA|cout~1_combout\);

-- Location: LCCOMB_X1_Y4_N6
\g1:2:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:2:FA|cout~2_combout\ = (\g1:2:FA|cout~1_combout\ & ((\y~combout\(1) & ((\x~combout\(1)) # (\fa1|cout~0_combout\))) # (!\y~combout\(1) & (\x~combout\(1) & \fa1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(1),
	datab => \g1:2:FA|cout~1_combout\,
	datac => \x~combout\(1),
	datad => \fa1|cout~0_combout\,
	combout => \g1:2:FA|cout~2_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(3),
	combout => \y~combout\(3));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(3),
	combout => \x~combout\(3));

-- Location: LCCOMB_X1_Y4_N10
\g1:2:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:2:FA|cout~0_combout\ = (\y~combout\(2) & \x~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y~combout\(2),
	datad => \x~combout\(2),
	combout => \g1:2:FA|cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N16
\g1:3:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:3:FA|f~combout\ = \y~combout\(3) $ (\x~combout\(3) $ (((\g1:2:FA|cout~2_combout\) # (\g1:2:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:2:FA|cout~2_combout\,
	datab => \y~combout\(3),
	datac => \x~combout\(3),
	datad => \g1:2:FA|cout~0_combout\,
	combout => \g1:3:FA|f~combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(4),
	combout => \x~combout\(4));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(4),
	combout => \y~combout\(4));

-- Location: LCCOMB_X1_Y4_N2
\g1:3:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:3:FA|cout~0_combout\ = (\y~combout\(3) & ((\g1:2:FA|cout~2_combout\) # ((\x~combout\(3)) # (\g1:2:FA|cout~0_combout\)))) # (!\y~combout\(3) & (\x~combout\(3) & ((\g1:2:FA|cout~2_combout\) # (\g1:2:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:2:FA|cout~2_combout\,
	datab => \y~combout\(3),
	datac => \x~combout\(3),
	datad => \g1:2:FA|cout~0_combout\,
	combout => \g1:3:FA|cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N4
\g1:4:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:4:FA|f~combout\ = \x~combout\(4) $ (\y~combout\(4) $ (\g1:3:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(4),
	datac => \y~combout\(4),
	datad => \g1:3:FA|cout~0_combout\,
	combout => \g1:4:FA|f~combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(5),
	combout => \y~combout\(5));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(5),
	combout => \x~combout\(5));

-- Location: LCCOMB_X1_Y4_N30
\g1:4:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:4:FA|cout~0_combout\ = (\x~combout\(4) & ((\y~combout\(4)) # (\g1:3:FA|cout~0_combout\))) # (!\x~combout\(4) & (\y~combout\(4) & \g1:3:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(4),
	datac => \y~combout\(4),
	datad => \g1:3:FA|cout~0_combout\,
	combout => \g1:4:FA|cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\g1:5:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:5:FA|f~combout\ = \y~combout\(5) $ (\x~combout\(5) $ (\g1:4:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(5),
	datac => \x~combout\(5),
	datad => \g1:4:FA|cout~0_combout\,
	combout => \g1:5:FA|f~combout\);

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(6),
	combout => \y~combout\(6));

-- Location: LCCOMB_X1_Y4_N26
\g1:5:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:5:FA|cout~0_combout\ = (\x~combout\(4) & ((\y~combout\(4)) # (\g1:3:FA|cout~0_combout\))) # (!\x~combout\(4) & (\y~combout\(4) & \g1:3:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(4),
	datac => \y~combout\(4),
	datad => \g1:3:FA|cout~0_combout\,
	combout => \g1:5:FA|cout~0_combout\);

-- Location: LCCOMB_X1_Y4_N12
\g1:5:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:5:FA|cout~1_combout\ = (\y~combout\(5) & ((\x~combout\(5)) # (\g1:5:FA|cout~0_combout\))) # (!\y~combout\(5) & (\x~combout\(5) & \g1:5:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(5),
	datac => \x~combout\(5),
	datad => \g1:5:FA|cout~0_combout\,
	combout => \g1:5:FA|cout~1_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(6),
	combout => \x~combout\(6));

-- Location: LCCOMB_X27_Y10_N8
\g1:6:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:6:FA|f~combout\ = \y~combout\(6) $ (\g1:5:FA|cout~1_combout\ $ (\x~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(6),
	datac => \g1:5:FA|cout~1_combout\,
	datad => \x~combout\(6),
	combout => \g1:6:FA|f~combout\);

-- Location: LCCOMB_X27_Y10_N10
\g1:6:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:6:FA|cout~0_combout\ = (\y~combout\(6) & ((\g1:5:FA|cout~1_combout\) # (\x~combout\(6)))) # (!\y~combout\(6) & (\g1:5:FA|cout~1_combout\ & \x~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(6),
	datac => \g1:5:FA|cout~1_combout\,
	datad => \x~combout\(6),
	combout => \g1:6:FA|cout~0_combout\);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(7),
	combout => \y~combout\(7));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(7),
	combout => \x~combout\(7));

-- Location: LCCOMB_X27_Y10_N12
\g1:7:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:7:FA|f~combout\ = \g1:6:FA|cout~0_combout\ $ (\y~combout\(7) $ (\x~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:6:FA|cout~0_combout\,
	datac => \y~combout\(7),
	datad => \x~combout\(7),
	combout => \g1:7:FA|f~combout\);

-- Location: LCCOMB_X27_Y10_N6
\g1:7:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:7:FA|cout~0_combout\ = (\g1:6:FA|cout~0_combout\ & ((\y~combout\(7)) # (\x~combout\(7)))) # (!\g1:6:FA|cout~0_combout\ & (\y~combout\(7) & \x~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:6:FA|cout~0_combout\,
	datac => \y~combout\(7),
	datad => \x~combout\(7),
	combout => \g1:7:FA|cout~0_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(8),
	combout => \y~combout\(8));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(8),
	combout => \x~combout\(8));

-- Location: LCCOMB_X27_Y10_N0
\g1:8:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:8:FA|f~combout\ = \g1:7:FA|cout~0_combout\ $ (\y~combout\(8) $ (\x~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:7:FA|cout~0_combout\,
	datac => \y~combout\(8),
	datad => \x~combout\(8),
	combout => \g1:8:FA|f~combout\);

-- Location: LCCOMB_X27_Y10_N26
\g1:8:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:8:FA|cout~0_combout\ = (\g1:7:FA|cout~0_combout\ & ((\y~combout\(8)) # (\x~combout\(8)))) # (!\g1:7:FA|cout~0_combout\ & (\y~combout\(8) & \x~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:7:FA|cout~0_combout\,
	datac => \y~combout\(8),
	datad => \x~combout\(8),
	combout => \g1:8:FA|cout~0_combout\);

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(9),
	combout => \x~combout\(9));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(9),
	combout => \y~combout\(9));

-- Location: LCCOMB_X27_Y10_N20
\g1:9:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:9:FA|f~combout\ = \g1:8:FA|cout~0_combout\ $ (\x~combout\(9) $ (\y~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:8:FA|cout~0_combout\,
	datac => \x~combout\(9),
	datad => \y~combout\(9),
	combout => \g1:9:FA|f~combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(10),
	combout => \y~combout\(10));

-- Location: LCCOMB_X27_Y10_N22
\g1:10:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:10:FA|f~0_combout\ = \x~combout\(10) $ (\y~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(10),
	datac => \y~combout\(10),
	combout => \g1:10:FA|f~0_combout\);

-- Location: LCCOMB_X27_Y10_N16
\g1:10:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:10:FA|f~combout\ = \g1:10:FA|f~0_combout\ $ (((\y~combout\(9) & ((\g1:8:FA|cout~0_combout\) # (\x~combout\(9)))) # (!\y~combout\(9) & (\g1:8:FA|cout~0_combout\ & \x~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(9),
	datab => \g1:8:FA|cout~0_combout\,
	datac => \x~combout\(9),
	datad => \g1:10:FA|f~0_combout\,
	combout => \g1:10:FA|f~combout\);

-- Location: LCCOMB_X27_Y10_N28
\g1:10:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:10:FA|cout~1_combout\ = (\x~combout\(10)) # (\y~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(10),
	datac => \y~combout\(10),
	combout => \g1:10:FA|cout~1_combout\);

-- Location: LCCOMB_X27_Y10_N30
\g1:10:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:10:FA|cout~2_combout\ = (\g1:10:FA|cout~1_combout\ & ((\y~combout\(9) & ((\g1:8:FA|cout~0_combout\) # (\x~combout\(9)))) # (!\y~combout\(9) & (\g1:8:FA|cout~0_combout\ & \x~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(9),
	datab => \g1:8:FA|cout~0_combout\,
	datac => \x~combout\(9),
	datad => \g1:10:FA|cout~1_combout\,
	combout => \g1:10:FA|cout~2_combout\);

-- Location: LCCOMB_X27_Y10_N18
\g1:10:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:10:FA|cout~0_combout\ = (\x~combout\(10) & \y~combout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(10),
	datac => \y~combout\(10),
	combout => \g1:10:FA|cout~0_combout\);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(11),
	combout => \y~combout\(11));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(11),
	combout => \x~combout\(11));

-- Location: LCCOMB_X27_Y10_N24
\g1:11:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:11:FA|f~combout\ = \y~combout\(11) $ (\x~combout\(11) $ (((\g1:10:FA|cout~2_combout\) # (\g1:10:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:10:FA|cout~2_combout\,
	datab => \g1:10:FA|cout~0_combout\,
	datac => \y~combout\(11),
	datad => \x~combout\(11),
	combout => \g1:11:FA|f~combout\);

-- Location: LCCOMB_X27_Y10_N2
\g1:11:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:11:FA|cout~0_combout\ = (\y~combout\(11) & ((\g1:10:FA|cout~2_combout\) # ((\g1:10:FA|cout~0_combout\) # (\x~combout\(11))))) # (!\y~combout\(11) & (\x~combout\(11) & ((\g1:10:FA|cout~2_combout\) # (\g1:10:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:10:FA|cout~2_combout\,
	datab => \g1:10:FA|cout~0_combout\,
	datac => \y~combout\(11),
	datad => \x~combout\(11),
	combout => \g1:11:FA|cout~0_combout\);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(12),
	combout => \x~combout\(12));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(12),
	combout => \y~combout\(12));

-- Location: LCCOMB_X6_Y13_N16
\g1:12:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:12:FA|f~combout\ = \g1:11:FA|cout~0_combout\ $ (\x~combout\(12) $ (\y~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:11:FA|cout~0_combout\,
	datab => \x~combout\(12),
	datac => \y~combout\(12),
	combout => \g1:12:FA|f~combout\);

-- Location: LCCOMB_X6_Y13_N10
\g1:12:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:12:FA|cout~0_combout\ = (\g1:11:FA|cout~0_combout\ & ((\x~combout\(12)) # (\y~combout\(12)))) # (!\g1:11:FA|cout~0_combout\ & (\x~combout\(12) & \y~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:11:FA|cout~0_combout\,
	datab => \x~combout\(12),
	datac => \y~combout\(12),
	combout => \g1:12:FA|cout~0_combout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(13),
	combout => \x~combout\(13));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(13),
	combout => \y~combout\(13));

-- Location: LCCOMB_X6_Y13_N12
\g1:13:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:13:FA|f~combout\ = \g1:12:FA|cout~0_combout\ $ (\x~combout\(13) $ (\y~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:12:FA|cout~0_combout\,
	datac => \x~combout\(13),
	datad => \y~combout\(13),
	combout => \g1:13:FA|f~combout\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(14),
	combout => \y~combout\(14));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(14),
	combout => \x~combout\(14));

-- Location: LCCOMB_X6_Y13_N30
\g1:14:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:14:FA|f~0_combout\ = \y~combout\(14) $ (\x~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(14),
	datad => \x~combout\(14),
	combout => \g1:14:FA|f~0_combout\);

-- Location: LCCOMB_X6_Y13_N24
\g1:14:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:14:FA|f~combout\ = \g1:14:FA|f~0_combout\ $ (((\g1:12:FA|cout~0_combout\ & ((\x~combout\(13)) # (\y~combout\(13)))) # (!\g1:12:FA|cout~0_combout\ & (\x~combout\(13) & \y~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:12:FA|cout~0_combout\,
	datab => \g1:14:FA|f~0_combout\,
	datac => \x~combout\(13),
	datad => \y~combout\(13),
	combout => \g1:14:FA|f~combout\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(15),
	combout => \y~combout\(15));

-- Location: LCCOMB_X6_Y13_N28
\g1:14:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:14:FA|cout~1_combout\ = (\y~combout\(14)) # (\x~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(14),
	datad => \x~combout\(14),
	combout => \g1:14:FA|cout~1_combout\);

-- Location: LCCOMB_X6_Y13_N22
\g1:14:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:14:FA|cout~2_combout\ = (\g1:14:FA|cout~1_combout\ & ((\g1:12:FA|cout~0_combout\ & ((\x~combout\(13)) # (\y~combout\(13)))) # (!\g1:12:FA|cout~0_combout\ & (\x~combout\(13) & \y~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:12:FA|cout~0_combout\,
	datab => \g1:14:FA|cout~1_combout\,
	datac => \x~combout\(13),
	datad => \y~combout\(13),
	combout => \g1:14:FA|cout~2_combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(15),
	combout => \x~combout\(15));

-- Location: LCCOMB_X6_Y13_N18
\g1:14:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:14:FA|cout~0_combout\ = (\y~combout\(14) & \x~combout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(14),
	datad => \x~combout\(14),
	combout => \g1:14:FA|cout~0_combout\);

-- Location: LCCOMB_X6_Y13_N0
\g1:15:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:15:FA|f~combout\ = \y~combout\(15) $ (\x~combout\(15) $ (((\g1:14:FA|cout~2_combout\) # (\g1:14:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(15),
	datab => \g1:14:FA|cout~2_combout\,
	datac => \x~combout\(15),
	datad => \g1:14:FA|cout~0_combout\,
	combout => \g1:15:FA|f~combout\);

-- Location: LCCOMB_X6_Y13_N2
\g1:15:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:15:FA|cout~0_combout\ = (\y~combout\(15) & ((\g1:14:FA|cout~2_combout\) # ((\x~combout\(15)) # (\g1:14:FA|cout~0_combout\)))) # (!\y~combout\(15) & (\x~combout\(15) & ((\g1:14:FA|cout~2_combout\) # (\g1:14:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(15),
	datab => \g1:14:FA|cout~2_combout\,
	datac => \x~combout\(15),
	datad => \g1:14:FA|cout~0_combout\,
	combout => \g1:15:FA|cout~0_combout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(16),
	combout => \y~combout\(16));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(16),
	combout => \x~combout\(16));

-- Location: LCCOMB_X21_Y13_N8
\g1:16:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:16:FA|f~combout\ = \g1:15:FA|cout~0_combout\ $ (\y~combout\(16) $ (\x~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:15:FA|cout~0_combout\,
	datac => \y~combout\(16),
	datad => \x~combout\(16),
	combout => \g1:16:FA|f~combout\);

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(17),
	combout => \x~combout\(17));

-- Location: LCCOMB_X21_Y13_N18
\g1:17:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:17:FA|f~0_combout\ = \y~combout\(17) $ (\x~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(17),
	datac => \x~combout\(17),
	combout => \g1:17:FA|f~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\g1:17:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:17:FA|f~combout\ = \g1:17:FA|f~0_combout\ $ (((\x~combout\(16) & ((\y~combout\(16)) # (\g1:15:FA|cout~0_combout\))) # (!\x~combout\(16) & (\y~combout\(16) & \g1:15:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(16),
	datab => \g1:17:FA|f~0_combout\,
	datac => \y~combout\(16),
	datad => \g1:15:FA|cout~0_combout\,
	combout => \g1:17:FA|f~combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(18),
	combout => \x~combout\(18));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(18),
	combout => \y~combout\(18));

-- Location: LCCOMB_X21_Y13_N14
\g1:17:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:17:FA|cout~0_combout\ = (\y~combout\(17) & \x~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(17),
	datac => \x~combout\(17),
	combout => \g1:17:FA|cout~0_combout\);

-- Location: LCCOMB_X21_Y13_N26
\g1:17:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:17:FA|cout~2_combout\ = (\g1:17:FA|cout~1_combout\ & ((\g1:15:FA|cout~0_combout\ & ((\y~combout\(16)) # (\x~combout\(16)))) # (!\g1:15:FA|cout~0_combout\ & (\y~combout\(16) & \x~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:17:FA|cout~1_combout\,
	datab => \g1:15:FA|cout~0_combout\,
	datac => \y~combout\(16),
	datad => \x~combout\(16),
	combout => \g1:17:FA|cout~2_combout\);

-- Location: LCCOMB_X21_Y13_N4
\g1:18:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:18:FA|f~combout\ = \x~combout\(18) $ (\y~combout\(18) $ (((\g1:17:FA|cout~0_combout\) # (\g1:17:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(18),
	datab => \y~combout\(18),
	datac => \g1:17:FA|cout~0_combout\,
	datad => \g1:17:FA|cout~2_combout\,
	combout => \g1:18:FA|f~combout\);

-- Location: LCCOMB_X21_Y13_N30
\g1:18:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:18:FA|cout~0_combout\ = (\x~combout\(18) & ((\y~combout\(18)) # ((\g1:17:FA|cout~0_combout\) # (\g1:17:FA|cout~2_combout\)))) # (!\x~combout\(18) & (\y~combout\(18) & ((\g1:17:FA|cout~0_combout\) # (\g1:17:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(18),
	datab => \y~combout\(18),
	datac => \g1:17:FA|cout~0_combout\,
	datad => \g1:17:FA|cout~2_combout\,
	combout => \g1:18:FA|cout~0_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(19),
	combout => \y~combout\(19));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(19),
	combout => \x~combout\(19));

-- Location: LCCOMB_X21_Y13_N0
\g1:19:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:19:FA|f~combout\ = \g1:18:FA|cout~0_combout\ $ (\y~combout\(19) $ (\x~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:18:FA|cout~0_combout\,
	datac => \y~combout\(19),
	datad => \x~combout\(19),
	combout => \g1:19:FA|f~combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(20),
	combout => \x~combout\(20));

-- Location: LCCOMB_X21_Y13_N10
\g1:20:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:20:FA|f~0_combout\ = \y~combout\(20) $ (\x~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(20),
	datac => \x~combout\(20),
	combout => \g1:20:FA|f~0_combout\);

-- Location: LCCOMB_X21_Y13_N28
\g1:20:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:20:FA|f~combout\ = \g1:20:FA|f~0_combout\ $ (((\g1:18:FA|cout~0_combout\ & ((\y~combout\(19)) # (\x~combout\(19)))) # (!\g1:18:FA|cout~0_combout\ & (\y~combout\(19) & \x~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:20:FA|f~0_combout\,
	datab => \g1:18:FA|cout~0_combout\,
	datac => \y~combout\(19),
	datad => \x~combout\(19),
	combout => \g1:20:FA|f~combout\);

-- Location: LCCOMB_X21_Y13_N6
\g1:20:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:20:FA|cout~0_combout\ = (\y~combout\(20) & \x~combout\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(20),
	datac => \x~combout\(20),
	combout => \g1:20:FA|cout~0_combout\);

-- Location: LCCOMB_X21_Y13_N2
\g1:20:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:20:FA|cout~2_combout\ = (\g1:20:FA|cout~1_combout\ & ((\g1:18:FA|cout~0_combout\ & ((\y~combout\(19)) # (\x~combout\(19)))) # (!\g1:18:FA|cout~0_combout\ & (\y~combout\(19) & \x~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:20:FA|cout~1_combout\,
	datab => \g1:18:FA|cout~0_combout\,
	datac => \y~combout\(19),
	datad => \x~combout\(19),
	combout => \g1:20:FA|cout~2_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(21),
	combout => \x~combout\(21));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(21),
	combout => \y~combout\(21));

-- Location: LCCOMB_X21_Y13_N12
\g1:21:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:21:FA|f~combout\ = \x~combout\(21) $ (\y~combout\(21) $ (((\g1:20:FA|cout~0_combout\) # (\g1:20:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:20:FA|cout~0_combout\,
	datab => \g1:20:FA|cout~2_combout\,
	datac => \x~combout\(21),
	datad => \y~combout\(21),
	combout => \g1:21:FA|f~combout\);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(22),
	combout => \y~combout\(22));

-- Location: LCCOMB_X21_Y13_N22
\g1:21:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:21:FA|cout~0_combout\ = (\x~combout\(21) & ((\g1:20:FA|cout~0_combout\) # ((\g1:20:FA|cout~2_combout\) # (\y~combout\(21))))) # (!\x~combout\(21) & (\y~combout\(21) & ((\g1:20:FA|cout~0_combout\) # (\g1:20:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:20:FA|cout~0_combout\,
	datab => \g1:20:FA|cout~2_combout\,
	datac => \x~combout\(21),
	datad => \y~combout\(21),
	combout => \g1:21:FA|cout~0_combout\);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(22),
	combout => \x~combout\(22));

-- Location: LCCOMB_X9_Y4_N8
\g1:22:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:22:FA|f~combout\ = \y~combout\(22) $ (\g1:21:FA|cout~0_combout\ $ (\x~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(22),
	datac => \g1:21:FA|cout~0_combout\,
	datad => \x~combout\(22),
	combout => \g1:22:FA|f~combout\);

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(23),
	combout => \y~combout\(23));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(23),
	combout => \x~combout\(23));

-- Location: LCCOMB_X9_Y4_N26
\g1:23:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:23:FA|f~0_combout\ = \y~combout\(23) $ (\x~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y~combout\(23),
	datad => \x~combout\(23),
	combout => \g1:23:FA|f~0_combout\);

-- Location: LCCOMB_X9_Y4_N20
\g1:23:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:23:FA|f~combout\ = \g1:23:FA|f~0_combout\ $ (((\y~combout\(22) & ((\x~combout\(22)) # (\g1:21:FA|cout~0_combout\))) # (!\y~combout\(22) & (\x~combout\(22) & \g1:21:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(22),
	datab => \x~combout\(22),
	datac => \g1:21:FA|cout~0_combout\,
	datad => \g1:23:FA|f~0_combout\,
	combout => \g1:23:FA|f~combout\);

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(24),
	combout => \x~combout\(24));

-- Location: LCCOMB_X9_Y4_N0
\g1:23:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:23:FA|cout~1_combout\ = (\y~combout\(23)) # (\x~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y~combout\(23),
	datad => \x~combout\(23),
	combout => \g1:23:FA|cout~1_combout\);

-- Location: LCCOMB_X9_Y4_N18
\g1:23:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:23:FA|cout~2_combout\ = (\g1:23:FA|cout~1_combout\ & ((\y~combout\(22) & ((\x~combout\(22)) # (\g1:21:FA|cout~0_combout\))) # (!\y~combout\(22) & (\x~combout\(22) & \g1:21:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(22),
	datab => \x~combout\(22),
	datac => \g1:21:FA|cout~0_combout\,
	datad => \g1:23:FA|cout~1_combout\,
	combout => \g1:23:FA|cout~2_combout\);

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(24),
	combout => \y~combout\(24));

-- Location: LCCOMB_X9_Y4_N22
\g1:23:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:23:FA|cout~0_combout\ = (\y~combout\(23) & \x~combout\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y~combout\(23),
	datad => \x~combout\(23),
	combout => \g1:23:FA|cout~0_combout\);

-- Location: LCCOMB_X9_Y4_N4
\g1:24:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:24:FA|f~combout\ = \x~combout\(24) $ (\y~combout\(24) $ (((\g1:23:FA|cout~2_combout\) # (\g1:23:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(24),
	datab => \g1:23:FA|cout~2_combout\,
	datac => \y~combout\(24),
	datad => \g1:23:FA|cout~0_combout\,
	combout => \g1:24:FA|f~combout\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(25),
	combout => \x~combout\(25));

-- Location: LCCOMB_X9_Y4_N14
\g1:24:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:24:FA|cout~0_combout\ = (\x~combout\(24) & ((\g1:23:FA|cout~2_combout\) # ((\y~combout\(24)) # (\g1:23:FA|cout~0_combout\)))) # (!\x~combout\(24) & (\y~combout\(24) & ((\g1:23:FA|cout~2_combout\) # (\g1:23:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(24),
	datab => \g1:23:FA|cout~2_combout\,
	datac => \y~combout\(24),
	datad => \g1:23:FA|cout~0_combout\,
	combout => \g1:24:FA|cout~0_combout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(25),
	combout => \y~combout\(25));

-- Location: LCCOMB_X9_Y4_N16
\g1:25:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:25:FA|f~combout\ = \x~combout\(25) $ (\g1:24:FA|cout~0_combout\ $ (\y~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(25),
	datac => \g1:24:FA|cout~0_combout\,
	datad => \y~combout\(25),
	combout => \g1:25:FA|f~combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(26),
	combout => \x~combout\(26));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(26),
	combout => \y~combout\(26));

-- Location: LCCOMB_X9_Y4_N10
\g1:26:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:26:FA|f~0_combout\ = \x~combout\(26) $ (\y~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(26),
	datac => \y~combout\(26),
	combout => \g1:26:FA|f~0_combout\);

-- Location: LCCOMB_X9_Y4_N28
\g1:26:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:26:FA|f~combout\ = \g1:26:FA|f~0_combout\ $ (((\x~combout\(25) & ((\g1:24:FA|cout~0_combout\) # (\y~combout\(25)))) # (!\x~combout\(25) & (\g1:24:FA|cout~0_combout\ & \y~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:26:FA|f~0_combout\,
	datab => \x~combout\(25),
	datac => \g1:24:FA|cout~0_combout\,
	datad => \y~combout\(25),
	combout => \g1:26:FA|f~combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(27),
	combout => \x~combout\(27));

-- Location: LCCOMB_X9_Y4_N2
\g1:26:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:26:FA|cout~2_combout\ = (\g1:26:FA|cout~1_combout\ & ((\x~combout\(25) & ((\g1:24:FA|cout~0_combout\) # (\y~combout\(25)))) # (!\x~combout\(25) & (\g1:24:FA|cout~0_combout\ & \y~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:26:FA|cout~1_combout\,
	datab => \x~combout\(25),
	datac => \g1:24:FA|cout~0_combout\,
	datad => \y~combout\(25),
	combout => \g1:26:FA|cout~2_combout\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(27),
	combout => \y~combout\(27));

-- Location: LCCOMB_X9_Y4_N30
\g1:26:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:26:FA|cout~0_combout\ = (\x~combout\(26) & \y~combout\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(26),
	datac => \y~combout\(26),
	combout => \g1:26:FA|cout~0_combout\);

-- Location: LCCOMB_X9_Y4_N12
\g1:27:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:27:FA|f~combout\ = \x~combout\(27) $ (\y~combout\(27) $ (((\g1:26:FA|cout~2_combout\) # (\g1:26:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(27),
	datab => \g1:26:FA|cout~2_combout\,
	datac => \y~combout\(27),
	datad => \g1:26:FA|cout~0_combout\,
	combout => \g1:27:FA|f~combout\);

-- Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(28),
	combout => \x~combout\(28));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(28),
	combout => \y~combout\(28));

-- Location: LCCOMB_X9_Y4_N6
\g1:27:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:27:FA|cout~0_combout\ = (\x~combout\(27) & ((\g1:26:FA|cout~2_combout\) # ((\y~combout\(27)) # (\g1:26:FA|cout~0_combout\)))) # (!\x~combout\(27) & (\y~combout\(27) & ((\g1:26:FA|cout~2_combout\) # (\g1:26:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(27),
	datab => \g1:26:FA|cout~2_combout\,
	datac => \y~combout\(27),
	datad => \g1:26:FA|cout~0_combout\,
	combout => \g1:27:FA|cout~0_combout\);

-- Location: LCCOMB_X1_Y12_N8
\g1:28:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:28:FA|f~combout\ = \x~combout\(28) $ (\y~combout\(28) $ (\g1:27:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(28),
	datac => \y~combout\(28),
	datad => \g1:27:FA|cout~0_combout\,
	combout => \g1:28:FA|f~combout\);

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(29),
	combout => \x~combout\(29));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(29),
	combout => \y~combout\(29));

-- Location: LCCOMB_X1_Y12_N2
\g1:29:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:29:FA|f~0_combout\ = \x~combout\(29) $ (\y~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(29),
	datac => \y~combout\(29),
	combout => \g1:29:FA|f~0_combout\);

-- Location: LCCOMB_X1_Y12_N20
\g1:29:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:29:FA|f~combout\ = \g1:29:FA|f~0_combout\ $ (((\x~combout\(28) & ((\y~combout\(28)) # (\g1:27:FA|cout~0_combout\))) # (!\x~combout\(28) & (\y~combout\(28) & \g1:27:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(28),
	datab => \g1:29:FA|f~0_combout\,
	datac => \y~combout\(28),
	datad => \g1:27:FA|cout~0_combout\,
	combout => \g1:29:FA|f~combout\);

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(30),
	combout => \x~combout\(30));

-- Location: LCCOMB_X1_Y12_N22
\g1:29:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:29:FA|cout~0_combout\ = (\x~combout\(29) & \y~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(29),
	datac => \y~combout\(29),
	combout => \g1:29:FA|cout~0_combout\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(30),
	combout => \y~combout\(30));

-- Location: LCCOMB_X1_Y12_N0
\g1:29:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:29:FA|cout~1_combout\ = (\x~combout\(29)) # (\y~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(29),
	datac => \y~combout\(29),
	combout => \g1:29:FA|cout~1_combout\);

-- Location: LCCOMB_X1_Y12_N10
\g1:29:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:29:FA|cout~2_combout\ = (\g1:29:FA|cout~1_combout\ & ((\x~combout\(28) & ((\y~combout\(28)) # (\g1:27:FA|cout~0_combout\))) # (!\x~combout\(28) & (\y~combout\(28) & \g1:27:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(28),
	datab => \g1:29:FA|cout~1_combout\,
	datac => \y~combout\(28),
	datad => \g1:27:FA|cout~0_combout\,
	combout => \g1:29:FA|cout~2_combout\);

-- Location: LCCOMB_X1_Y12_N4
\g1:30:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:30:FA|f~combout\ = \x~combout\(30) $ (\y~combout\(30) $ (((\g1:29:FA|cout~0_combout\) # (\g1:29:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(30),
	datab => \g1:29:FA|cout~0_combout\,
	datac => \y~combout\(30),
	datad => \g1:29:FA|cout~2_combout\,
	combout => \g1:30:FA|f~combout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_x(31),
	combout => \x~combout\(31));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_y(31),
	combout => \y~combout\(31));

-- Location: LCCOMB_X1_Y12_N30
\g1:30:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:30:FA|cout~0_combout\ = (\x~combout\(30) & ((\g1:29:FA|cout~0_combout\) # ((\y~combout\(30)) # (\g1:29:FA|cout~2_combout\)))) # (!\x~combout\(30) & (\y~combout\(30) & ((\g1:29:FA|cout~0_combout\) # (\g1:29:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(30),
	datab => \g1:29:FA|cout~0_combout\,
	datac => \y~combout\(30),
	datad => \g1:29:FA|cout~2_combout\,
	combout => \g1:30:FA|cout~0_combout\);

-- Location: LCCOMB_X1_Y12_N24
\g1:31:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:31:FA|f~combout\ = \x~combout\(31) $ (\y~combout\(31) $ (\g1:30:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(31),
	datac => \y~combout\(31),
	datad => \g1:30:FA|cout~0_combout\,
	combout => \g1:31:FA|f~combout\);

-- Location: LCCOMB_X1_Y12_N18
\g1:31:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:31:FA|cout~0_combout\ = (\x~combout\(31) & ((\y~combout\(31)) # (\g1:30:FA|cout~0_combout\))) # (!\x~combout\(31) & (\y~combout\(31) & \g1:30:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(31),
	datac => \y~combout\(31),
	datad => \g1:30:FA|cout~0_combout\,
	combout => \g1:31:FA|cout~0_combout\);

-- Location: LCCOMB_X1_Y12_N12
\v~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \v~0_combout\ = (\x~combout\(31) & (\y~combout\(31) & !\g1:30:FA|cout~0_combout\)) # (!\x~combout\(31) & (!\y~combout\(31) & \g1:30:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(31),
	datac => \y~combout\(31),
	datad => \g1:30:FA|cout~0_combout\,
	combout => \v~0_combout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \fa1|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(0));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:1:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(1));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:2:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(2));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:3:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:4:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(4));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:5:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(5));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:6:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:7:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(7));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:8:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(8));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:9:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(9));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:10:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(10));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:11:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(11));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:12:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(12));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:13:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(13));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:14:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(14));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:15:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(15));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:16:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(16));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:17:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(17));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:18:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(18));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:19:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(19));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:20:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(20));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:21:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(21));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:22:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(22));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:23:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(23));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:24:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(24));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:25:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(25));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:26:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(26));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:27:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(27));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:28:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(28));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:29:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(29));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:30:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(30));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:31:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f(31));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \g1:31:FA|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\v~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \v~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_v);
END structure;


