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

-- DATE "04/27/2017 20:37:42"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	demo_setup IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END demo_setup;

-- Design Ports Information
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF demo_setup IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~0_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~6_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~9_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~10_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[0]~11_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[1]~16_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[2]~21_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~26_combout\ : std_logic;
SIGNAL \Banco1|decodD2R|Mux7~6_combout\ : std_logic;
SIGNAL \Banco1|decodD2R|Mux7~7_combout\ : std_logic;
SIGNAL \Banco1|g1:6:registers|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~1_combout\ : std_logic;
SIGNAL \Banco1|decodD2R|Mux7~1_combout\ : std_logic;
SIGNAL \Banco1|g1:0:registers|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Banco1|decodD2R|Mux7~0_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[2]~18_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~7_combout\ : std_logic;
SIGNAL \Banco1|decodD2R|Mux7~5_combout\ : std_logic;
SIGNAL \Banco1|decodD2R|Mux7~4_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[2]~20_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~3_combout\ : std_logic;
SIGNAL \Banco1|decodD2R|Mux7~3_combout\ : std_logic;
SIGNAL \Banco1|g1:2:registers|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Banco1|decodD2R|Mux7~2_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[2]~19_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[2]~22_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[1]~13_combout\ : std_logic;
SIGNAL \Banco1|g1:2:registers|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[1]~14_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[1]~15_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[1]~17_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~24_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~23_combout\ : std_logic;
SIGNAL \Banco1|g1:4:registers|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~25_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~27_combout\ : std_logic;
SIGNAL \Banco1|g1:1:registers|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[0]~2_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[0]~8_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[3]~4_combout\ : std_logic;
SIGNAL \Banco1|g1:3:registers|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[0]~5_combout\ : std_logic;
SIGNAL \Banco1|DATA_OUT[0]~12_combout\ : std_logic;
SIGNAL \display|Mux6~0_combout\ : std_logic;
SIGNAL \display|Mux5~0_combout\ : std_logic;
SIGNAL \display|Mux4~0_combout\ : std_logic;
SIGNAL \display|Mux3~0_combout\ : std_logic;
SIGNAL \display|Mux2~0_combout\ : std_logic;
SIGNAL \display|Mux1~0_combout\ : std_logic;
SIGNAL \display|Mux0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Banco1|g1:1:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Banco1|g1:2:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Banco1|g1:3:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Banco1|g1:4:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Banco1|g1:5:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Banco1|g1:6:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Banco1|g1:7:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Banco1|g1:0:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \display|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY~combout\(2) <= NOT \KEY~combout\(2);
\display|ALT_INV_Mux0~0_combout\ <= NOT \display|Mux0~0_combout\;

-- Location: LCCOMB_X45_Y10_N26
\Banco1|DATA_OUT[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~0_combout\ = (\SW~combout\(3) & (!\SW~combout\(4) & (\KEY~combout\(1) & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \KEY~combout\(1),
	datad => \SW~combout\(5),
	combout => \Banco1|DATA_OUT[3]~0_combout\);

-- Location: LCCOMB_X45_Y10_N18
\Banco1|DATA_OUT[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~6_combout\ = (\SW~combout\(3) & (!\SW~combout\(4) & (\KEY~combout\(1) & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \KEY~combout\(1),
	datad => \SW~combout\(5),
	combout => \Banco1|DATA_OUT[3]~6_combout\);

-- Location: LCFF_X49_Y10_N25
\Banco1|g1:6:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:6:registers|Q\(0));

-- Location: LCFF_X48_Y10_N17
\Banco1|g1:7:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:7:registers|Q\(0));

-- Location: LCCOMB_X45_Y10_N6
\Banco1|DATA_OUT[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~9_combout\ = (\SW~combout\(3) & (\SW~combout\(4) & (\KEY~combout\(1) & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \KEY~combout\(1),
	datad => \SW~combout\(5),
	combout => \Banco1|DATA_OUT[3]~9_combout\);

-- Location: LCCOMB_X45_Y10_N8
\Banco1|DATA_OUT[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~10_combout\ = (!\SW~combout\(3) & (\SW~combout\(4) & (\KEY~combout\(1) & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \KEY~combout\(1),
	datad => \SW~combout\(5),
	combout => \Banco1|DATA_OUT[3]~10_combout\);

-- Location: LCCOMB_X49_Y10_N24
\Banco1|DATA_OUT[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[0]~11_combout\ = (\Banco1|DATA_OUT[3]~10_combout\ & ((\Banco1|g1:6:registers|Q\(0)) # ((\Banco1|DATA_OUT[3]~9_combout\ & \Banco1|g1:7:registers|Q\(0))))) # (!\Banco1|DATA_OUT[3]~10_combout\ & (\Banco1|DATA_OUT[3]~9_combout\ & 
-- ((\Banco1|g1:7:registers|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~10_combout\,
	datab => \Banco1|DATA_OUT[3]~9_combout\,
	datac => \Banco1|g1:6:registers|Q\(0),
	datad => \Banco1|g1:7:registers|Q\(0),
	combout => \Banco1|DATA_OUT[0]~11_combout\);

-- Location: LCFF_X48_Y10_N11
\Banco1|g1:7:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:7:registers|Q\(1));

-- Location: LCFF_X49_Y10_N27
\Banco1|g1:6:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:6:registers|Q\(1));

-- Location: LCCOMB_X48_Y10_N10
\Banco1|DATA_OUT[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[1]~16_combout\ = (\Banco1|g1:6:registers|Q\(1) & ((\Banco1|DATA_OUT[3]~10_combout\) # ((\Banco1|DATA_OUT[3]~9_combout\ & \Banco1|g1:7:registers|Q\(1))))) # (!\Banco1|g1:6:registers|Q\(1) & (\Banco1|DATA_OUT[3]~9_combout\ & 
-- (\Banco1|g1:7:registers|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|g1:6:registers|Q\(1),
	datab => \Banco1|DATA_OUT[3]~9_combout\,
	datac => \Banco1|g1:7:registers|Q\(1),
	datad => \Banco1|DATA_OUT[3]~10_combout\,
	combout => \Banco1|DATA_OUT[1]~16_combout\);

-- Location: LCFF_X48_Y10_N21
\Banco1|g1:7:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(8),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:7:registers|Q\(2));

-- Location: LCFF_X49_Y10_N5
\Banco1|g1:6:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \Banco1|g1:6:registers|Q[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	ena => \Banco1|decodD2R|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:6:registers|Q\(2));

-- Location: LCCOMB_X48_Y10_N20
\Banco1|DATA_OUT[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[2]~21_combout\ = (\Banco1|DATA_OUT[3]~10_combout\ & ((\Banco1|g1:6:registers|Q\(2)) # ((\Banco1|DATA_OUT[3]~9_combout\ & \Banco1|g1:7:registers|Q\(2))))) # (!\Banco1|DATA_OUT[3]~10_combout\ & (\Banco1|DATA_OUT[3]~9_combout\ & 
-- (\Banco1|g1:7:registers|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~10_combout\,
	datab => \Banco1|DATA_OUT[3]~9_combout\,
	datac => \Banco1|g1:7:registers|Q\(2),
	datad => \Banco1|g1:6:registers|Q\(2),
	combout => \Banco1|DATA_OUT[2]~21_combout\);

-- Location: LCFF_X48_Y10_N23
\Banco1|g1:7:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(9),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:7:registers|Q\(3));

-- Location: LCFF_X49_Y10_N31
\Banco1|g1:6:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(9),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:6:registers|Q\(3));

-- Location: LCCOMB_X48_Y10_N22
\Banco1|DATA_OUT[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~26_combout\ = (\Banco1|DATA_OUT[3]~10_combout\ & ((\Banco1|g1:6:registers|Q\(3)) # ((\Banco1|DATA_OUT[3]~9_combout\ & \Banco1|g1:7:registers|Q\(3))))) # (!\Banco1|DATA_OUT[3]~10_combout\ & (\Banco1|DATA_OUT[3]~9_combout\ & 
-- (\Banco1|g1:7:registers|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~10_combout\,
	datab => \Banco1|DATA_OUT[3]~9_combout\,
	datac => \Banco1|g1:7:registers|Q\(3),
	datad => \Banco1|g1:6:registers|Q\(3),
	combout => \Banco1|DATA_OUT[3]~26_combout\);

-- Location: LCCOMB_X49_Y10_N28
\Banco1|decodD2R|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|decodD2R|Mux7~6_combout\ = (!\SW~combout\(0) & (\SW~combout\(1) & \SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Banco1|decodD2R|Mux7~6_combout\);

-- Location: LCCOMB_X49_Y10_N14
\Banco1|decodD2R|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|decodD2R|Mux7~7_combout\ = (\SW~combout\(0) & (\SW~combout\(1) & \SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Banco1|decodD2R|Mux7~7_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X49_Y10_N4
\Banco1|g1:6:registers|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|g1:6:registers|Q[2]~feeder_combout\ = \SW~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(8),
	combout => \Banco1|g1:6:registers|Q[2]~feeder_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCCOMB_X45_Y10_N28
\Banco1|DATA_OUT[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~1_combout\ = (!\SW~combout\(3) & (!\SW~combout\(4) & (\KEY~combout\(1) & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \KEY~combout\(1),
	datad => \SW~combout\(5),
	combout => \Banco1|DATA_OUT[3]~1_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X49_Y10_N2
\Banco1|decodD2R|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|decodD2R|Mux7~1_combout\ = (\SW~combout\(0) & (!\SW~combout\(1) & !\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Banco1|decodD2R|Mux7~1_combout\);

-- Location: LCFF_X44_Y10_N1
\Banco1|g1:1:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(8),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:1:registers|Q\(2));

-- Location: LCCOMB_X45_Y10_N20
\Banco1|g1:0:registers|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|g1:0:registers|Q[2]~feeder_combout\ = \SW~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(8),
	combout => \Banco1|g1:0:registers|Q[2]~feeder_combout\);

-- Location: LCCOMB_X49_Y10_N8
\Banco1|decodD2R|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|decodD2R|Mux7~0_combout\ = (!\SW~combout\(0) & (!\SW~combout\(1) & !\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Banco1|decodD2R|Mux7~0_combout\);

-- Location: LCFF_X45_Y10_N21
\Banco1|g1:0:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \Banco1|g1:0:registers|Q[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	ena => \Banco1|decodD2R|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:0:registers|Q\(2));

-- Location: LCCOMB_X44_Y10_N0
\Banco1|DATA_OUT[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[2]~18_combout\ = (\Banco1|DATA_OUT[3]~0_combout\ & ((\Banco1|g1:1:registers|Q\(2)) # ((\Banco1|DATA_OUT[3]~1_combout\ & \Banco1|g1:0:registers|Q\(2))))) # (!\Banco1|DATA_OUT[3]~0_combout\ & (\Banco1|DATA_OUT[3]~1_combout\ & 
-- ((\Banco1|g1:0:registers|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~0_combout\,
	datab => \Banco1|DATA_OUT[3]~1_combout\,
	datac => \Banco1|g1:1:registers|Q\(2),
	datad => \Banco1|g1:0:registers|Q\(2),
	combout => \Banco1|DATA_OUT[2]~18_combout\);

-- Location: LCCOMB_X45_Y10_N4
\Banco1|DATA_OUT[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~7_combout\ = (!\SW~combout\(3) & (!\SW~combout\(4) & (\KEY~combout\(1) & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \KEY~combout\(1),
	datad => \SW~combout\(5),
	combout => \Banco1|DATA_OUT[3]~7_combout\);

-- Location: LCCOMB_X49_Y10_N10
\Banco1|decodD2R|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|decodD2R|Mux7~5_combout\ = (\SW~combout\(0) & (!\SW~combout\(1) & \SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Banco1|decodD2R|Mux7~5_combout\);

-- Location: LCFF_X48_Y11_N29
\Banco1|g1:5:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(8),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:5:registers|Q\(2));

-- Location: LCCOMB_X49_Y10_N0
\Banco1|decodD2R|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|decodD2R|Mux7~4_combout\ = (!\SW~combout\(0) & (!\SW~combout\(1) & \SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Banco1|decodD2R|Mux7~4_combout\);

-- Location: LCFF_X49_Y11_N5
\Banco1|g1:4:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(8),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:4:registers|Q\(2));

-- Location: LCCOMB_X48_Y11_N28
\Banco1|DATA_OUT[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[2]~20_combout\ = (\Banco1|DATA_OUT[3]~6_combout\ & ((\Banco1|g1:5:registers|Q\(2)) # ((\Banco1|DATA_OUT[3]~7_combout\ & \Banco1|g1:4:registers|Q\(2))))) # (!\Banco1|DATA_OUT[3]~6_combout\ & (\Banco1|DATA_OUT[3]~7_combout\ & 
-- ((\Banco1|g1:4:registers|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~6_combout\,
	datab => \Banco1|DATA_OUT[3]~7_combout\,
	datac => \Banco1|g1:5:registers|Q\(2),
	datad => \Banco1|g1:4:registers|Q\(2),
	combout => \Banco1|DATA_OUT[2]~20_combout\);

-- Location: LCCOMB_X45_Y10_N22
\Banco1|DATA_OUT[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~3_combout\ = (\SW~combout\(3) & (\SW~combout\(4) & (\KEY~combout\(1) & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \KEY~combout\(1),
	datad => \SW~combout\(5),
	combout => \Banco1|DATA_OUT[3]~3_combout\);

-- Location: LCCOMB_X49_Y10_N22
\Banco1|decodD2R|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|decodD2R|Mux7~3_combout\ = (\SW~combout\(0) & (\SW~combout\(1) & !\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Banco1|decodD2R|Mux7~3_combout\);

-- Location: LCFF_X47_Y10_N29
\Banco1|g1:3:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(8),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:3:registers|Q\(2));

-- Location: LCCOMB_X46_Y10_N12
\Banco1|g1:2:registers|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|g1:2:registers|Q[2]~feeder_combout\ = \SW~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(8),
	combout => \Banco1|g1:2:registers|Q[2]~feeder_combout\);

-- Location: LCCOMB_X49_Y10_N12
\Banco1|decodD2R|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|decodD2R|Mux7~2_combout\ = (!\SW~combout\(0) & (\SW~combout\(1) & !\SW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \SW~combout\(1),
	datad => \SW~combout\(2),
	combout => \Banco1|decodD2R|Mux7~2_combout\);

-- Location: LCFF_X46_Y10_N13
\Banco1|g1:2:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \Banco1|g1:2:registers|Q[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	ena => \Banco1|decodD2R|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:2:registers|Q\(2));

-- Location: LCCOMB_X47_Y10_N28
\Banco1|DATA_OUT[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[2]~19_combout\ = (\Banco1|DATA_OUT[3]~4_combout\ & ((\Banco1|g1:2:registers|Q\(2)) # ((\Banco1|DATA_OUT[3]~3_combout\ & \Banco1|g1:3:registers|Q\(2))))) # (!\Banco1|DATA_OUT[3]~4_combout\ & (\Banco1|DATA_OUT[3]~3_combout\ & 
-- (\Banco1|g1:3:registers|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~4_combout\,
	datab => \Banco1|DATA_OUT[3]~3_combout\,
	datac => \Banco1|g1:3:registers|Q\(2),
	datad => \Banco1|g1:2:registers|Q\(2),
	combout => \Banco1|DATA_OUT[2]~19_combout\);

-- Location: LCCOMB_X44_Y10_N10
\Banco1|DATA_OUT[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[2]~22_combout\ = (\Banco1|DATA_OUT[2]~21_combout\) # ((\Banco1|DATA_OUT[2]~18_combout\) # ((\Banco1|DATA_OUT[2]~20_combout\) # (\Banco1|DATA_OUT[2]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[2]~21_combout\,
	datab => \Banco1|DATA_OUT[2]~18_combout\,
	datac => \Banco1|DATA_OUT[2]~20_combout\,
	datad => \Banco1|DATA_OUT[2]~19_combout\,
	combout => \Banco1|DATA_OUT[2]~22_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCFF_X44_Y10_N5
\Banco1|g1:1:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:1:registers|Q\(1));

-- Location: LCFF_X45_Y10_N3
\Banco1|g1:0:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:0:registers|Q\(1));

-- Location: LCCOMB_X44_Y10_N4
\Banco1|DATA_OUT[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[1]~13_combout\ = (\Banco1|DATA_OUT[3]~0_combout\ & ((\Banco1|g1:1:registers|Q\(1)) # ((\Banco1|DATA_OUT[3]~1_combout\ & \Banco1|g1:0:registers|Q\(1))))) # (!\Banco1|DATA_OUT[3]~0_combout\ & (\Banco1|DATA_OUT[3]~1_combout\ & 
-- ((\Banco1|g1:0:registers|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~0_combout\,
	datab => \Banco1|DATA_OUT[3]~1_combout\,
	datac => \Banco1|g1:1:registers|Q\(1),
	datad => \Banco1|g1:0:registers|Q\(1),
	combout => \Banco1|DATA_OUT[1]~13_combout\);

-- Location: LCFF_X47_Y10_N11
\Banco1|g1:3:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:3:registers|Q\(1));

-- Location: LCCOMB_X46_Y10_N18
\Banco1|g1:2:registers|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|g1:2:registers|Q[1]~feeder_combout\ = \SW~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(7),
	combout => \Banco1|g1:2:registers|Q[1]~feeder_combout\);

-- Location: LCFF_X46_Y10_N19
\Banco1|g1:2:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \Banco1|g1:2:registers|Q[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	ena => \Banco1|decodD2R|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:2:registers|Q\(1));

-- Location: LCCOMB_X47_Y10_N10
\Banco1|DATA_OUT[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[1]~14_combout\ = (\Banco1|DATA_OUT[3]~4_combout\ & ((\Banco1|g1:2:registers|Q\(1)) # ((\Banco1|DATA_OUT[3]~3_combout\ & \Banco1|g1:3:registers|Q\(1))))) # (!\Banco1|DATA_OUT[3]~4_combout\ & (\Banco1|DATA_OUT[3]~3_combout\ & 
-- (\Banco1|g1:3:registers|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~4_combout\,
	datab => \Banco1|DATA_OUT[3]~3_combout\,
	datac => \Banco1|g1:3:registers|Q\(1),
	datad => \Banco1|g1:2:registers|Q\(1),
	combout => \Banco1|DATA_OUT[1]~14_combout\);

-- Location: LCFF_X48_Y11_N27
\Banco1|g1:5:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:5:registers|Q\(1));

-- Location: LCFF_X49_Y11_N3
\Banco1|g1:4:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(7),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:4:registers|Q\(1));

-- Location: LCCOMB_X48_Y11_N26
\Banco1|DATA_OUT[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[1]~15_combout\ = (\Banco1|DATA_OUT[3]~6_combout\ & ((\Banco1|g1:5:registers|Q\(1)) # ((\Banco1|DATA_OUT[3]~7_combout\ & \Banco1|g1:4:registers|Q\(1))))) # (!\Banco1|DATA_OUT[3]~6_combout\ & (\Banco1|DATA_OUT[3]~7_combout\ & 
-- ((\Banco1|g1:4:registers|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~6_combout\,
	datab => \Banco1|DATA_OUT[3]~7_combout\,
	datac => \Banco1|g1:5:registers|Q\(1),
	datad => \Banco1|g1:4:registers|Q\(1),
	combout => \Banco1|DATA_OUT[1]~15_combout\);

-- Location: LCCOMB_X44_Y10_N30
\Banco1|DATA_OUT[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[1]~17_combout\ = (\Banco1|DATA_OUT[1]~16_combout\) # ((\Banco1|DATA_OUT[1]~13_combout\) # ((\Banco1|DATA_OUT[1]~14_combout\) # (\Banco1|DATA_OUT[1]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[1]~16_combout\,
	datab => \Banco1|DATA_OUT[1]~13_combout\,
	datac => \Banco1|DATA_OUT[1]~14_combout\,
	datad => \Banco1|DATA_OUT[1]~15_combout\,
	combout => \Banco1|DATA_OUT[1]~17_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCFF_X47_Y10_N23
\Banco1|g1:3:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(9),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:3:registers|Q\(3));

-- Location: LCFF_X46_Y10_N15
\Banco1|g1:2:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(9),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:2:registers|Q\(3));

-- Location: LCCOMB_X47_Y10_N22
\Banco1|DATA_OUT[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~24_combout\ = (\Banco1|DATA_OUT[3]~4_combout\ & ((\Banco1|g1:2:registers|Q\(3)) # ((\Banco1|DATA_OUT[3]~3_combout\ & \Banco1|g1:3:registers|Q\(3))))) # (!\Banco1|DATA_OUT[3]~4_combout\ & (\Banco1|DATA_OUT[3]~3_combout\ & 
-- (\Banco1|g1:3:registers|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~4_combout\,
	datab => \Banco1|DATA_OUT[3]~3_combout\,
	datac => \Banco1|g1:3:registers|Q\(3),
	datad => \Banco1|g1:2:registers|Q\(3),
	combout => \Banco1|DATA_OUT[3]~24_combout\);

-- Location: LCFF_X44_Y10_N21
\Banco1|g1:1:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(9),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:1:registers|Q\(3));

-- Location: LCFF_X45_Y10_N31
\Banco1|g1:0:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(9),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:0:registers|Q\(3));

-- Location: LCCOMB_X44_Y10_N20
\Banco1|DATA_OUT[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~23_combout\ = (\Banco1|DATA_OUT[3]~0_combout\ & ((\Banco1|g1:1:registers|Q\(3)) # ((\Banco1|DATA_OUT[3]~1_combout\ & \Banco1|g1:0:registers|Q\(3))))) # (!\Banco1|DATA_OUT[3]~0_combout\ & (\Banco1|DATA_OUT[3]~1_combout\ & 
-- ((\Banco1|g1:0:registers|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~0_combout\,
	datab => \Banco1|DATA_OUT[3]~1_combout\,
	datac => \Banco1|g1:1:registers|Q\(3),
	datad => \Banco1|g1:0:registers|Q\(3),
	combout => \Banco1|DATA_OUT[3]~23_combout\);

-- Location: LCFF_X48_Y11_N7
\Banco1|g1:5:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(9),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:5:registers|Q\(3));

-- Location: LCCOMB_X49_Y11_N30
\Banco1|g1:4:registers|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|g1:4:registers|Q[3]~feeder_combout\ = \SW~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(9),
	combout => \Banco1|g1:4:registers|Q[3]~feeder_combout\);

-- Location: LCFF_X49_Y11_N31
\Banco1|g1:4:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \Banco1|g1:4:registers|Q[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	ena => \Banco1|decodD2R|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:4:registers|Q\(3));

-- Location: LCCOMB_X48_Y11_N6
\Banco1|DATA_OUT[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~25_combout\ = (\Banco1|DATA_OUT[3]~6_combout\ & ((\Banco1|g1:5:registers|Q\(3)) # ((\Banco1|DATA_OUT[3]~7_combout\ & \Banco1|g1:4:registers|Q\(3))))) # (!\Banco1|DATA_OUT[3]~6_combout\ & (\Banco1|DATA_OUT[3]~7_combout\ & 
-- ((\Banco1|g1:4:registers|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~6_combout\,
	datab => \Banco1|DATA_OUT[3]~7_combout\,
	datac => \Banco1|g1:5:registers|Q\(3),
	datad => \Banco1|g1:4:registers|Q\(3),
	combout => \Banco1|DATA_OUT[3]~25_combout\);

-- Location: LCCOMB_X44_Y10_N22
\Banco1|DATA_OUT[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~27_combout\ = (\Banco1|DATA_OUT[3]~26_combout\) # ((\Banco1|DATA_OUT[3]~24_combout\) # ((\Banco1|DATA_OUT[3]~23_combout\) # (\Banco1|DATA_OUT[3]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~26_combout\,
	datab => \Banco1|DATA_OUT[3]~24_combout\,
	datac => \Banco1|DATA_OUT[3]~23_combout\,
	datad => \Banco1|DATA_OUT[3]~25_combout\,
	combout => \Banco1|DATA_OUT[3]~27_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCCOMB_X44_Y10_N16
\Banco1|g1:1:registers|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|g1:1:registers|Q[0]~feeder_combout\ = \SW~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(6),
	combout => \Banco1|g1:1:registers|Q[0]~feeder_combout\);

-- Location: LCFF_X44_Y10_N17
\Banco1|g1:1:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \Banco1|g1:1:registers|Q[0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	ena => \Banco1|decodD2R|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:1:registers|Q\(0));

-- Location: LCFF_X45_Y10_N25
\Banco1|g1:0:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:0:registers|Q\(0));

-- Location: LCCOMB_X45_Y10_N24
\Banco1|DATA_OUT[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[0]~2_combout\ = (\Banco1|DATA_OUT[3]~0_combout\ & ((\Banco1|g1:1:registers|Q\(0)) # ((\Banco1|g1:0:registers|Q\(0) & \Banco1|DATA_OUT[3]~1_combout\)))) # (!\Banco1|DATA_OUT[3]~0_combout\ & (((\Banco1|g1:0:registers|Q\(0) & 
-- \Banco1|DATA_OUT[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~0_combout\,
	datab => \Banco1|g1:1:registers|Q\(0),
	datac => \Banco1|g1:0:registers|Q\(0),
	datad => \Banco1|DATA_OUT[3]~1_combout\,
	combout => \Banco1|DATA_OUT[0]~2_combout\);

-- Location: LCFF_X49_Y11_N17
\Banco1|g1:4:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:4:registers|Q\(0));

-- Location: LCFF_X48_Y11_N9
\Banco1|g1:5:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:5:registers|Q\(0));

-- Location: LCCOMB_X49_Y11_N16
\Banco1|DATA_OUT[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[0]~8_combout\ = (\Banco1|DATA_OUT[3]~6_combout\ & ((\Banco1|g1:5:registers|Q\(0)) # ((\Banco1|DATA_OUT[3]~7_combout\ & \Banco1|g1:4:registers|Q\(0))))) # (!\Banco1|DATA_OUT[3]~6_combout\ & (\Banco1|DATA_OUT[3]~7_combout\ & 
-- (\Banco1|g1:4:registers|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~6_combout\,
	datab => \Banco1|DATA_OUT[3]~7_combout\,
	datac => \Banco1|g1:4:registers|Q\(0),
	datad => \Banco1|g1:5:registers|Q\(0),
	combout => \Banco1|DATA_OUT[0]~8_combout\);

-- Location: LCCOMB_X45_Y10_N0
\Banco1|DATA_OUT[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[3]~4_combout\ = (!\SW~combout\(3) & (\SW~combout\(4) & (\KEY~combout\(1) & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \KEY~combout\(1),
	datad => \SW~combout\(5),
	combout => \Banco1|DATA_OUT[3]~4_combout\);

-- Location: LCFF_X46_Y10_N25
\Banco1|g1:2:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	sdata => \SW~combout\(6),
	aclr => \ALT_INV_KEY~combout\(2),
	sload => VCC,
	ena => \Banco1|decodD2R|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:2:registers|Q\(0));

-- Location: LCCOMB_X47_Y10_N24
\Banco1|g1:3:registers|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|g1:3:registers|Q[0]~feeder_combout\ = \SW~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(6),
	combout => \Banco1|g1:3:registers|Q[0]~feeder_combout\);

-- Location: LCFF_X47_Y10_N25
\Banco1|g1:3:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \Banco1|g1:3:registers|Q[0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(2),
	ena => \Banco1|decodD2R|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Banco1|g1:3:registers|Q\(0));

-- Location: LCCOMB_X46_Y10_N24
\Banco1|DATA_OUT[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[0]~5_combout\ = (\Banco1|DATA_OUT[3]~3_combout\ & ((\Banco1|g1:3:registers|Q\(0)) # ((\Banco1|DATA_OUT[3]~4_combout\ & \Banco1|g1:2:registers|Q\(0))))) # (!\Banco1|DATA_OUT[3]~3_combout\ & (\Banco1|DATA_OUT[3]~4_combout\ & 
-- (\Banco1|g1:2:registers|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[3]~3_combout\,
	datab => \Banco1|DATA_OUT[3]~4_combout\,
	datac => \Banco1|g1:2:registers|Q\(0),
	datad => \Banco1|g1:3:registers|Q\(0),
	combout => \Banco1|DATA_OUT[0]~5_combout\);

-- Location: LCCOMB_X44_Y10_N18
\Banco1|DATA_OUT[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Banco1|DATA_OUT[0]~12_combout\ = (\Banco1|DATA_OUT[0]~11_combout\) # ((\Banco1|DATA_OUT[0]~2_combout\) # ((\Banco1|DATA_OUT[0]~8_combout\) # (\Banco1|DATA_OUT[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[0]~11_combout\,
	datab => \Banco1|DATA_OUT[0]~2_combout\,
	datac => \Banco1|DATA_OUT[0]~8_combout\,
	datad => \Banco1|DATA_OUT[0]~5_combout\,
	combout => \Banco1|DATA_OUT[0]~12_combout\);

-- Location: LCCOMB_X44_Y10_N24
\display|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display|Mux6~0_combout\ = (!\Banco1|DATA_OUT[1]~17_combout\ & (!\Banco1|DATA_OUT[3]~27_combout\ & (\Banco1|DATA_OUT[2]~22_combout\ $ (\Banco1|DATA_OUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[2]~22_combout\,
	datab => \Banco1|DATA_OUT[1]~17_combout\,
	datac => \Banco1|DATA_OUT[3]~27_combout\,
	datad => \Banco1|DATA_OUT[0]~12_combout\,
	combout => \display|Mux6~0_combout\);

-- Location: LCCOMB_X44_Y10_N26
\display|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display|Mux5~0_combout\ = (\Banco1|DATA_OUT[2]~22_combout\ & ((\Banco1|DATA_OUT[3]~27_combout\) # (\Banco1|DATA_OUT[1]~17_combout\ $ (\Banco1|DATA_OUT[0]~12_combout\)))) # (!\Banco1|DATA_OUT[2]~22_combout\ & (\Banco1|DATA_OUT[1]~17_combout\ & 
-- (\Banco1|DATA_OUT[3]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[2]~22_combout\,
	datab => \Banco1|DATA_OUT[1]~17_combout\,
	datac => \Banco1|DATA_OUT[3]~27_combout\,
	datad => \Banco1|DATA_OUT[0]~12_combout\,
	combout => \display|Mux5~0_combout\);

-- Location: LCCOMB_X44_Y10_N28
\display|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display|Mux4~0_combout\ = (\Banco1|DATA_OUT[2]~22_combout\ & (((\Banco1|DATA_OUT[3]~27_combout\)))) # (!\Banco1|DATA_OUT[2]~22_combout\ & (\Banco1|DATA_OUT[1]~17_combout\ & ((\Banco1|DATA_OUT[3]~27_combout\) # (!\Banco1|DATA_OUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[2]~22_combout\,
	datab => \Banco1|DATA_OUT[1]~17_combout\,
	datac => \Banco1|DATA_OUT[3]~27_combout\,
	datad => \Banco1|DATA_OUT[0]~12_combout\,
	combout => \display|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y10_N14
\display|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display|Mux3~0_combout\ = (!\Banco1|DATA_OUT[3]~27_combout\ & ((\Banco1|DATA_OUT[2]~22_combout\ & (\Banco1|DATA_OUT[1]~17_combout\ $ (!\Banco1|DATA_OUT[0]~12_combout\))) # (!\Banco1|DATA_OUT[2]~22_combout\ & (!\Banco1|DATA_OUT[1]~17_combout\ & 
-- \Banco1|DATA_OUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[2]~22_combout\,
	datab => \Banco1|DATA_OUT[1]~17_combout\,
	datac => \Banco1|DATA_OUT[3]~27_combout\,
	datad => \Banco1|DATA_OUT[0]~12_combout\,
	combout => \display|Mux3~0_combout\);

-- Location: LCCOMB_X44_Y10_N8
\display|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display|Mux2~0_combout\ = (\Banco1|DATA_OUT[1]~17_combout\ & (((!\Banco1|DATA_OUT[3]~27_combout\ & \Banco1|DATA_OUT[0]~12_combout\)))) # (!\Banco1|DATA_OUT[1]~17_combout\ & ((\Banco1|DATA_OUT[2]~22_combout\ & (!\Banco1|DATA_OUT[3]~27_combout\)) # 
-- (!\Banco1|DATA_OUT[2]~22_combout\ & ((\Banco1|DATA_OUT[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[2]~22_combout\,
	datab => \Banco1|DATA_OUT[1]~17_combout\,
	datac => \Banco1|DATA_OUT[3]~27_combout\,
	datad => \Banco1|DATA_OUT[0]~12_combout\,
	combout => \display|Mux2~0_combout\);

-- Location: LCCOMB_X44_Y10_N2
\display|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display|Mux1~0_combout\ = (!\Banco1|DATA_OUT[3]~27_combout\ & ((\Banco1|DATA_OUT[2]~22_combout\ & (\Banco1|DATA_OUT[1]~17_combout\ & \Banco1|DATA_OUT[0]~12_combout\)) # (!\Banco1|DATA_OUT[2]~22_combout\ & ((\Banco1|DATA_OUT[1]~17_combout\) # 
-- (\Banco1|DATA_OUT[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[2]~22_combout\,
	datab => \Banco1|DATA_OUT[1]~17_combout\,
	datac => \Banco1|DATA_OUT[3]~27_combout\,
	datad => \Banco1|DATA_OUT[0]~12_combout\,
	combout => \display|Mux1~0_combout\);

-- Location: LCCOMB_X44_Y10_N12
\display|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display|Mux0~0_combout\ = (\Banco1|DATA_OUT[3]~27_combout\) # ((\Banco1|DATA_OUT[2]~22_combout\ & ((!\Banco1|DATA_OUT[0]~12_combout\) # (!\Banco1|DATA_OUT[1]~17_combout\))) # (!\Banco1|DATA_OUT[2]~22_combout\ & (\Banco1|DATA_OUT[1]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Banco1|DATA_OUT[2]~22_combout\,
	datab => \Banco1|DATA_OUT[1]~17_combout\,
	datac => \Banco1|DATA_OUT[3]~27_combout\,
	datad => \Banco1|DATA_OUT[0]~12_combout\,
	combout => \display|Mux0~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \display|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \display|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \display|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \display|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \display|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \display|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \display|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50);
END structure;


