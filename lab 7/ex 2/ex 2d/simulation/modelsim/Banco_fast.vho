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

-- DATE "04/27/2017 20:22:03"

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

ENTITY 	Banco IS
    PORT (
	DATA_IN : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(5 DOWNTO 0);
	Rd_En : IN std_logic;
	Wr_En : IN std_logic;
	Clk : IN std_logic;
	Resetn : IN std_logic;
	DATA_OUT : OUT std_logic_vector(3 DOWNTO 0)
	);
END Banco;

-- Design Ports Information
-- DATA_OUT[0]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_OUT[1]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_OUT[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DATA_OUT[3]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[3]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Wr_En	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Resetn	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rd_En	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Banco IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATA_IN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Rd_En : std_logic;
SIGNAL ww_Wr_En : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_DATA_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Resetn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decodR2D|y[0]~1_combout\ : std_logic;
SIGNAL \decodR2D|y[3]~2_combout\ : std_logic;
SIGNAL \decodR2D|y[4]~5_combout\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Rd_En~combout\ : std_logic;
SIGNAL \Clk~clkctrl_outclk\ : std_logic;
SIGNAL \Wr_En~combout\ : std_logic;
SIGNAL \decodR2D|y[1]~0_combout\ : std_logic;
SIGNAL \Resetn~combout\ : std_logic;
SIGNAL \Resetn~clkctrl_outclk\ : std_logic;
SIGNAL \decodD2R|y[0]~0_combout\ : std_logic;
SIGNAL \decodD2R|y[1]~1_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[0]~4_combout\ : std_logic;
SIGNAL \decodD2R|y[5]~5_combout\ : std_logic;
SIGNAL \decodD2R|y[4]~4_combout\ : std_logic;
SIGNAL \decodR2D|y[5]~4_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[0]~6_combout\ : std_logic;
SIGNAL \decodD2R|y[3]~3_combout\ : std_logic;
SIGNAL \decodD2R|y[2]~2_combout\ : std_logic;
SIGNAL \decodR2D|y[2]~3_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[0]~5_combout\ : std_logic;
SIGNAL \decodR2D|y[6]~7_combout\ : std_logic;
SIGNAL \decodD2R|y[6]~6_combout\ : std_logic;
SIGNAL \decodR2D|y[7]~6_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[0]~7_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[0]~8_combout\ : std_logic;
SIGNAL \g1:4:registers|Q[1]~feeder_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[1]~11_combout\ : std_logic;
SIGNAL \decodD2R|y[7]~7_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[1]~12_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[1]~10_combout\ : std_logic;
SIGNAL \g1:0:registers|Q[1]~feeder_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[1]~9_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[1]~13_combout\ : std_logic;
SIGNAL \g1:4:registers|Q[2]~feeder_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[2]~16_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[2]~17_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[2]~15_combout\ : std_logic;
SIGNAL \g1:0:registers|Q[2]~feeder_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[2]~14_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[2]~18_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[3]~20_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[3]~22_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[3]~19_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[3]~21_combout\ : std_logic;
SIGNAL \g1:0:bufferTri|F[3]~23_combout\ : std_logic;
SIGNAL \g1:2:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1:3:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1:5:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1:0:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1:6:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1:4:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1:1:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \g1:7:registers|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DATA_IN~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Resetn~clkctrl_outclk\ : std_logic;

BEGIN

ww_DATA_IN <= DATA_IN;
ww_SW <= SW;
ww_Rd_En <= Rd_En;
ww_Wr_En <= Wr_En;
ww_Clk <= Clk;
ww_Resetn <= Resetn;
DATA_OUT <= ww_DATA_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk~combout\);

\Resetn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Resetn~combout\);
\ALT_INV_Resetn~clkctrl_outclk\ <= NOT \Resetn~clkctrl_outclk\;

-- Location: LCCOMB_X34_Y15_N6
\decodR2D|y[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodR2D|y[0]~1_combout\ = (!\SW~combout\(3) & (!\SW~combout\(4) & (\Wr_En~combout\ & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \Wr_En~combout\,
	datad => \SW~combout\(5),
	combout => \decodR2D|y[0]~1_combout\);

-- Location: LCCOMB_X34_Y15_N0
\decodR2D|y[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodR2D|y[3]~2_combout\ = (\SW~combout\(3) & (\SW~combout\(4) & (\Wr_En~combout\ & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \Wr_En~combout\,
	datad => \SW~combout\(5),
	combout => \decodR2D|y[3]~2_combout\);

-- Location: LCCOMB_X34_Y15_N22
\decodR2D|y[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodR2D|y[4]~5_combout\ = (!\SW~combout\(3) & (!\SW~combout\(4) & (\Wr_En~combout\ & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \Wr_En~combout\,
	datad => \SW~combout\(5),
	combout => \decodR2D|y[4]~5_combout\);

-- Location: LCFF_X33_Y15_N11
\g1:7:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(0),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:7:registers|Q\(0));

-- Location: LCFF_X33_Y15_N25
\g1:6:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(1),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:6:registers|Q\(1));

-- Location: LCFF_X33_Y15_N7
\g1:6:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(2),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:6:registers|Q\(2));

-- Location: LCFF_X33_Y15_N13
\g1:6:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(3),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:6:registers|Q\(3));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : cycloneii_io
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
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Rd_En~I\ : cycloneii_io
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
	padio => ww_Rd_En,
	combout => \Rd_En~combout\);

-- Location: CLKCTRL_G3
\Clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~clkctrl_outclk\);

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Wr_En~I\ : cycloneii_io
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
	padio => ww_Wr_En,
	combout => \Wr_En~combout\);

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X34_Y15_N28
\decodR2D|y[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodR2D|y[1]~0_combout\ = (\SW~combout\(3) & (!\SW~combout\(4) & (\Wr_En~combout\ & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \Wr_En~combout\,
	datad => \SW~combout\(5),
	combout => \decodR2D|y[1]~0_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[0]~I\ : cycloneii_io
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
	padio => ww_DATA_IN(0),
	combout => \DATA_IN~combout\(0));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Resetn~I\ : cycloneii_io
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
	padio => ww_Resetn,
	combout => \Resetn~combout\);

-- Location: CLKCTRL_G1
\Resetn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Resetn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Resetn~clkctrl_outclk\);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y15_N0
\decodD2R|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodD2R|y[0]~0_combout\ = (\Rd_En~combout\ & (!\SW~combout\(1) & (!\SW~combout\(2) & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rd_En~combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \decodD2R|y[0]~0_combout\);

-- Location: LCFF_X34_Y15_N17
\g1:0:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(0),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:0:registers|Q\(0));

-- Location: LCCOMB_X32_Y15_N18
\decodD2R|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodD2R|y[1]~1_combout\ = (\Rd_En~combout\ & (!\SW~combout\(1) & (!\SW~combout\(2) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rd_En~combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \decodD2R|y[1]~1_combout\);

-- Location: LCFF_X34_Y15_N11
\g1:1:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(0),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:1:registers|Q\(0));

-- Location: LCCOMB_X34_Y15_N16
\g1:0:bufferTri|F[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[0]~4_combout\ = (\decodR2D|y[0]~1_combout\ & (\g1:0:registers|Q\(0) & ((\g1:1:registers|Q\(0)) # (!\decodR2D|y[1]~0_combout\)))) # (!\decodR2D|y[0]~1_combout\ & (((\g1:1:registers|Q\(0))) # (!\decodR2D|y[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[0]~1_combout\,
	datab => \decodR2D|y[1]~0_combout\,
	datac => \g1:0:registers|Q\(0),
	datad => \g1:1:registers|Q\(0),
	combout => \g1:0:bufferTri|F[0]~4_combout\);

-- Location: LCCOMB_X32_Y15_N26
\decodD2R|y[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodD2R|y[5]~5_combout\ = (\Rd_En~combout\ & (!\SW~combout\(1) & (\SW~combout\(2) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rd_En~combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \decodD2R|y[5]~5_combout\);

-- Location: LCFF_X32_Y15_N3
\g1:5:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(0),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:5:registers|Q\(0));

-- Location: LCCOMB_X32_Y15_N24
\decodD2R|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodD2R|y[4]~4_combout\ = (\Rd_En~combout\ & (!\SW~combout\(1) & (\SW~combout\(2) & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rd_En~combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \decodD2R|y[4]~4_combout\);

-- Location: LCFF_X32_Y15_N17
\g1:4:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(0),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:4:registers|Q\(0));

-- Location: LCCOMB_X34_Y15_N20
\decodR2D|y[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodR2D|y[5]~4_combout\ = (\SW~combout\(3) & (!\SW~combout\(4) & (\Wr_En~combout\ & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \Wr_En~combout\,
	datad => \SW~combout\(5),
	combout => \decodR2D|y[5]~4_combout\);

-- Location: LCCOMB_X32_Y15_N16
\g1:0:bufferTri|F[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[0]~6_combout\ = (\decodR2D|y[4]~5_combout\ & (\g1:4:registers|Q\(0) & ((\g1:5:registers|Q\(0)) # (!\decodR2D|y[5]~4_combout\)))) # (!\decodR2D|y[4]~5_combout\ & ((\g1:5:registers|Q\(0)) # ((!\decodR2D|y[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[4]~5_combout\,
	datab => \g1:5:registers|Q\(0),
	datac => \g1:4:registers|Q\(0),
	datad => \decodR2D|y[5]~4_combout\,
	combout => \g1:0:bufferTri|F[0]~6_combout\);

-- Location: LCCOMB_X32_Y15_N6
\decodD2R|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodD2R|y[3]~3_combout\ = (\Rd_En~combout\ & (\SW~combout\(1) & (!\SW~combout\(2) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rd_En~combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \decodD2R|y[3]~3_combout\);

-- Location: LCFF_X33_Y16_N19
\g1:3:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(0),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:3:registers|Q\(0));

-- Location: LCCOMB_X32_Y15_N4
\decodD2R|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodD2R|y[2]~2_combout\ = (\Rd_En~combout\ & (\SW~combout\(1) & (!\SW~combout\(2) & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rd_En~combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \decodD2R|y[2]~2_combout\);

-- Location: LCFF_X33_Y16_N17
\g1:2:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(0),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:2:registers|Q\(0));

-- Location: LCCOMB_X34_Y15_N2
\decodR2D|y[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodR2D|y[2]~3_combout\ = (!\SW~combout\(3) & (\SW~combout\(4) & (\Wr_En~combout\ & !\SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \Wr_En~combout\,
	datad => \SW~combout\(5),
	combout => \decodR2D|y[2]~3_combout\);

-- Location: LCCOMB_X33_Y16_N16
\g1:0:bufferTri|F[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[0]~5_combout\ = (\decodR2D|y[3]~2_combout\ & (\g1:3:registers|Q\(0) & ((\g1:2:registers|Q\(0)) # (!\decodR2D|y[2]~3_combout\)))) # (!\decodR2D|y[3]~2_combout\ & (((\g1:2:registers|Q\(0)) # (!\decodR2D|y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[3]~2_combout\,
	datab => \g1:3:registers|Q\(0),
	datac => \g1:2:registers|Q\(0),
	datad => \decodR2D|y[2]~3_combout\,
	combout => \g1:0:bufferTri|F[0]~5_combout\);

-- Location: LCCOMB_X34_Y15_N18
\decodR2D|y[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodR2D|y[6]~7_combout\ = (!\SW~combout\(3) & (\SW~combout\(4) & (\Wr_En~combout\ & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \Wr_En~combout\,
	datad => \SW~combout\(5),
	combout => \decodR2D|y[6]~7_combout\);

-- Location: LCCOMB_X32_Y15_N20
\decodD2R|y[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodD2R|y[6]~6_combout\ = (\Rd_En~combout\ & (\SW~combout\(1) & (\SW~combout\(2) & !\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rd_En~combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \decodD2R|y[6]~6_combout\);

-- Location: LCFF_X33_Y15_N1
\g1:6:registers|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(0),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:6:registers|Q\(0));

-- Location: LCCOMB_X34_Y15_N24
\decodR2D|y[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodR2D|y[7]~6_combout\ = (\SW~combout\(3) & (\SW~combout\(4) & (\Wr_En~combout\ & \SW~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \SW~combout\(4),
	datac => \Wr_En~combout\,
	datad => \SW~combout\(5),
	combout => \decodR2D|y[7]~6_combout\);

-- Location: LCCOMB_X33_Y15_N0
\g1:0:bufferTri|F[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[0]~7_combout\ = (\g1:7:registers|Q\(0) & (((\g1:6:registers|Q\(0))) # (!\decodR2D|y[6]~7_combout\))) # (!\g1:7:registers|Q\(0) & (!\decodR2D|y[7]~6_combout\ & ((\g1:6:registers|Q\(0)) # (!\decodR2D|y[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:7:registers|Q\(0),
	datab => \decodR2D|y[6]~7_combout\,
	datac => \g1:6:registers|Q\(0),
	datad => \decodR2D|y[7]~6_combout\,
	combout => \g1:0:bufferTri|F[0]~7_combout\);

-- Location: LCCOMB_X33_Y15_N20
\g1:0:bufferTri|F[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[0]~8_combout\ = (\g1:0:bufferTri|F[0]~4_combout\ & (\g1:0:bufferTri|F[0]~6_combout\ & (\g1:0:bufferTri|F[0]~5_combout\ & \g1:0:bufferTri|F[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:0:bufferTri|F[0]~4_combout\,
	datab => \g1:0:bufferTri|F[0]~6_combout\,
	datac => \g1:0:bufferTri|F[0]~5_combout\,
	datad => \g1:0:bufferTri|F[0]~7_combout\,
	combout => \g1:0:bufferTri|F[0]~8_combout\);

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[1]~I\ : cycloneii_io
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
	padio => ww_DATA_IN(1),
	combout => \DATA_IN~combout\(1));

-- Location: LCCOMB_X32_Y15_N22
\g1:4:registers|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:4:registers|Q[1]~feeder_combout\ = \DATA_IN~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN~combout\(1),
	combout => \g1:4:registers|Q[1]~feeder_combout\);

-- Location: LCFF_X32_Y15_N23
\g1:4:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \g1:4:registers|Q[1]~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \decodD2R|y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:4:registers|Q\(1));

-- Location: LCFF_X32_Y15_N13
\g1:5:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(1),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:5:registers|Q\(1));

-- Location: LCCOMB_X32_Y15_N12
\g1:0:bufferTri|F[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[1]~11_combout\ = (\decodR2D|y[4]~5_combout\ & (\g1:4:registers|Q\(1) & ((\g1:5:registers|Q\(1)) # (!\decodR2D|y[5]~4_combout\)))) # (!\decodR2D|y[4]~5_combout\ & (((\g1:5:registers|Q\(1)) # (!\decodR2D|y[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[4]~5_combout\,
	datab => \g1:4:registers|Q\(1),
	datac => \g1:5:registers|Q\(1),
	datad => \decodR2D|y[5]~4_combout\,
	combout => \g1:0:bufferTri|F[1]~11_combout\);

-- Location: LCCOMB_X32_Y15_N14
\decodD2R|y[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodD2R|y[7]~7_combout\ = (\Rd_En~combout\ & (\SW~combout\(1) & (\SW~combout\(2) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rd_En~combout\,
	datab => \SW~combout\(1),
	datac => \SW~combout\(2),
	datad => \SW~combout\(0),
	combout => \decodD2R|y[7]~7_combout\);

-- Location: LCFF_X33_Y15_N31
\g1:7:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(1),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:7:registers|Q\(1));

-- Location: LCCOMB_X33_Y15_N30
\g1:0:bufferTri|F[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[1]~12_combout\ = (\g1:6:registers|Q\(1) & (((\g1:7:registers|Q\(1)) # (!\decodR2D|y[7]~6_combout\)))) # (!\g1:6:registers|Q\(1) & (!\decodR2D|y[6]~7_combout\ & ((\g1:7:registers|Q\(1)) # (!\decodR2D|y[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:6:registers|Q\(1),
	datab => \decodR2D|y[6]~7_combout\,
	datac => \g1:7:registers|Q\(1),
	datad => \decodR2D|y[7]~6_combout\,
	combout => \g1:0:bufferTri|F[1]~12_combout\);

-- Location: LCFF_X33_Y16_N31
\g1:2:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(1),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:2:registers|Q\(1));

-- Location: LCFF_X33_Y16_N13
\g1:3:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(1),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:3:registers|Q\(1));

-- Location: LCCOMB_X33_Y16_N12
\g1:0:bufferTri|F[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[1]~10_combout\ = (\decodR2D|y[3]~2_combout\ & (\g1:3:registers|Q\(1) & ((\g1:2:registers|Q\(1)) # (!\decodR2D|y[2]~3_combout\)))) # (!\decodR2D|y[3]~2_combout\ & ((\g1:2:registers|Q\(1)) # ((!\decodR2D|y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[3]~2_combout\,
	datab => \g1:2:registers|Q\(1),
	datac => \g1:3:registers|Q\(1),
	datad => \decodR2D|y[2]~3_combout\,
	combout => \g1:0:bufferTri|F[1]~10_combout\);

-- Location: LCCOMB_X34_Y15_N14
\g1:0:registers|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:registers|Q[1]~feeder_combout\ = \DATA_IN~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN~combout\(1),
	combout => \g1:0:registers|Q[1]~feeder_combout\);

-- Location: LCFF_X34_Y15_N15
\g1:0:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \g1:0:registers|Q[1]~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \decodD2R|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:0:registers|Q\(1));

-- Location: LCFF_X34_Y15_N5
\g1:1:registers|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(1),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:1:registers|Q\(1));

-- Location: LCCOMB_X34_Y15_N4
\g1:0:bufferTri|F[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[1]~9_combout\ = (\decodR2D|y[0]~1_combout\ & (\g1:0:registers|Q\(1) & ((\g1:1:registers|Q\(1)) # (!\decodR2D|y[1]~0_combout\)))) # (!\decodR2D|y[0]~1_combout\ & (((\g1:1:registers|Q\(1)) # (!\decodR2D|y[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[0]~1_combout\,
	datab => \g1:0:registers|Q\(1),
	datac => \g1:1:registers|Q\(1),
	datad => \decodR2D|y[1]~0_combout\,
	combout => \g1:0:bufferTri|F[1]~9_combout\);

-- Location: LCCOMB_X33_Y15_N2
\g1:0:bufferTri|F[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[1]~13_combout\ = (\g1:0:bufferTri|F[1]~11_combout\ & (\g1:0:bufferTri|F[1]~12_combout\ & (\g1:0:bufferTri|F[1]~10_combout\ & \g1:0:bufferTri|F[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:0:bufferTri|F[1]~11_combout\,
	datab => \g1:0:bufferTri|F[1]~12_combout\,
	datac => \g1:0:bufferTri|F[1]~10_combout\,
	datad => \g1:0:bufferTri|F[1]~9_combout\,
	combout => \g1:0:bufferTri|F[1]~13_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[2]~I\ : cycloneii_io
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
	padio => ww_DATA_IN(2),
	combout => \DATA_IN~combout\(2));

-- Location: LCFF_X32_Y15_N9
\g1:5:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(2),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:5:registers|Q\(2));

-- Location: LCCOMB_X32_Y15_N10
\g1:4:registers|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:4:registers|Q[2]~feeder_combout\ = \DATA_IN~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN~combout\(2),
	combout => \g1:4:registers|Q[2]~feeder_combout\);

-- Location: LCFF_X32_Y15_N11
\g1:4:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \g1:4:registers|Q[2]~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \decodD2R|y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:4:registers|Q\(2));

-- Location: LCCOMB_X32_Y15_N8
\g1:0:bufferTri|F[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[2]~16_combout\ = (\decodR2D|y[4]~5_combout\ & (\g1:4:registers|Q\(2) & ((\g1:5:registers|Q\(2)) # (!\decodR2D|y[5]~4_combout\)))) # (!\decodR2D|y[4]~5_combout\ & (((\g1:5:registers|Q\(2))) # (!\decodR2D|y[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[4]~5_combout\,
	datab => \decodR2D|y[5]~4_combout\,
	datac => \g1:5:registers|Q\(2),
	datad => \g1:4:registers|Q\(2),
	combout => \g1:0:bufferTri|F[2]~16_combout\);

-- Location: LCFF_X33_Y15_N29
\g1:7:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(2),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:7:registers|Q\(2));

-- Location: LCCOMB_X33_Y15_N28
\g1:0:bufferTri|F[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[2]~17_combout\ = (\g1:6:registers|Q\(2) & (((\g1:7:registers|Q\(2)) # (!\decodR2D|y[7]~6_combout\)))) # (!\g1:6:registers|Q\(2) & (!\decodR2D|y[6]~7_combout\ & ((\g1:7:registers|Q\(2)) # (!\decodR2D|y[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:6:registers|Q\(2),
	datab => \decodR2D|y[6]~7_combout\,
	datac => \g1:7:registers|Q\(2),
	datad => \decodR2D|y[7]~6_combout\,
	combout => \g1:0:bufferTri|F[2]~17_combout\);

-- Location: LCFF_X33_Y16_N3
\g1:2:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(2),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:2:registers|Q\(2));

-- Location: LCFF_X33_Y16_N1
\g1:3:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(2),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:3:registers|Q\(2));

-- Location: LCCOMB_X33_Y16_N0
\g1:0:bufferTri|F[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[2]~15_combout\ = (\decodR2D|y[3]~2_combout\ & (\g1:3:registers|Q\(2) & ((\g1:2:registers|Q\(2)) # (!\decodR2D|y[2]~3_combout\)))) # (!\decodR2D|y[3]~2_combout\ & ((\g1:2:registers|Q\(2)) # ((!\decodR2D|y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[3]~2_combout\,
	datab => \g1:2:registers|Q\(2),
	datac => \g1:3:registers|Q\(2),
	datad => \decodR2D|y[2]~3_combout\,
	combout => \g1:0:bufferTri|F[2]~15_combout\);

-- Location: LCFF_X34_Y15_N9
\g1:1:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(2),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:1:registers|Q\(2));

-- Location: LCCOMB_X34_Y15_N26
\g1:0:registers|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:registers|Q[2]~feeder_combout\ = \DATA_IN~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_IN~combout\(2),
	combout => \g1:0:registers|Q[2]~feeder_combout\);

-- Location: LCFF_X34_Y15_N27
\g1:0:registers|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \g1:0:registers|Q[2]~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \decodD2R|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:0:registers|Q\(2));

-- Location: LCCOMB_X34_Y15_N8
\g1:0:bufferTri|F[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[2]~14_combout\ = (\decodR2D|y[0]~1_combout\ & (\g1:0:registers|Q\(2) & ((\g1:1:registers|Q\(2)) # (!\decodR2D|y[1]~0_combout\)))) # (!\decodR2D|y[0]~1_combout\ & (((\g1:1:registers|Q\(2))) # (!\decodR2D|y[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[0]~1_combout\,
	datab => \decodR2D|y[1]~0_combout\,
	datac => \g1:1:registers|Q\(2),
	datad => \g1:0:registers|Q\(2),
	combout => \g1:0:bufferTri|F[2]~14_combout\);

-- Location: LCCOMB_X33_Y15_N8
\g1:0:bufferTri|F[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[2]~18_combout\ = (\g1:0:bufferTri|F[2]~16_combout\ & (\g1:0:bufferTri|F[2]~17_combout\ & (\g1:0:bufferTri|F[2]~15_combout\ & \g1:0:bufferTri|F[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:0:bufferTri|F[2]~16_combout\,
	datab => \g1:0:bufferTri|F[2]~17_combout\,
	datac => \g1:0:bufferTri|F[2]~15_combout\,
	datad => \g1:0:bufferTri|F[2]~14_combout\,
	combout => \g1:0:bufferTri|F[2]~18_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA_IN[3]~I\ : cycloneii_io
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
	padio => ww_DATA_IN(3),
	combout => \DATA_IN~combout\(3));

-- Location: LCFF_X33_Y16_N21
\g1:3:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(3),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:3:registers|Q\(3));

-- Location: LCFF_X33_Y16_N7
\g1:2:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(3),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:2:registers|Q\(3));

-- Location: LCCOMB_X33_Y16_N20
\g1:0:bufferTri|F[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[3]~20_combout\ = (\decodR2D|y[3]~2_combout\ & (\g1:3:registers|Q\(3) & ((\g1:2:registers|Q\(3)) # (!\decodR2D|y[2]~3_combout\)))) # (!\decodR2D|y[3]~2_combout\ & (((\g1:2:registers|Q\(3))) # (!\decodR2D|y[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[3]~2_combout\,
	datab => \decodR2D|y[2]~3_combout\,
	datac => \g1:3:registers|Q\(3),
	datad => \g1:2:registers|Q\(3),
	combout => \g1:0:bufferTri|F[3]~20_combout\);

-- Location: LCFF_X33_Y15_N19
\g1:7:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(3),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:7:registers|Q\(3));

-- Location: LCCOMB_X33_Y15_N18
\g1:0:bufferTri|F[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[3]~22_combout\ = (\g1:6:registers|Q\(3) & (((\g1:7:registers|Q\(3)) # (!\decodR2D|y[7]~6_combout\)))) # (!\g1:6:registers|Q\(3) & (!\decodR2D|y[6]~7_combout\ & ((\g1:7:registers|Q\(3)) # (!\decodR2D|y[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:6:registers|Q\(3),
	datab => \decodR2D|y[6]~7_combout\,
	datac => \g1:7:registers|Q\(3),
	datad => \decodR2D|y[7]~6_combout\,
	combout => \g1:0:bufferTri|F[3]~22_combout\);

-- Location: LCFF_X34_Y15_N13
\g1:1:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(3),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:1:registers|Q\(3));

-- Location: LCFF_X34_Y15_N31
\g1:0:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(3),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:0:registers|Q\(3));

-- Location: LCCOMB_X34_Y15_N12
\g1:0:bufferTri|F[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[3]~19_combout\ = (\decodR2D|y[0]~1_combout\ & (\g1:0:registers|Q\(3) & ((\g1:1:registers|Q\(3)) # (!\decodR2D|y[1]~0_combout\)))) # (!\decodR2D|y[0]~1_combout\ & (((\g1:1:registers|Q\(3))) # (!\decodR2D|y[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[0]~1_combout\,
	datab => \decodR2D|y[1]~0_combout\,
	datac => \g1:1:registers|Q\(3),
	datad => \g1:0:registers|Q\(3),
	combout => \g1:0:bufferTri|F[3]~19_combout\);

-- Location: LCFF_X32_Y15_N31
\g1:4:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(3),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:4:registers|Q\(3));

-- Location: LCFF_X32_Y15_N29
\g1:5:registers|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \DATA_IN~combout\(3),
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \decodD2R|y[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g1:5:registers|Q\(3));

-- Location: LCCOMB_X32_Y15_N28
\g1:0:bufferTri|F[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[3]~21_combout\ = (\decodR2D|y[4]~5_combout\ & (\g1:4:registers|Q\(3) & ((\g1:5:registers|Q\(3)) # (!\decodR2D|y[5]~4_combout\)))) # (!\decodR2D|y[4]~5_combout\ & (((\g1:5:registers|Q\(3)) # (!\decodR2D|y[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodR2D|y[4]~5_combout\,
	datab => \g1:4:registers|Q\(3),
	datac => \g1:5:registers|Q\(3),
	datad => \decodR2D|y[5]~4_combout\,
	combout => \g1:0:bufferTri|F[3]~21_combout\);

-- Location: LCCOMB_X33_Y15_N22
\g1:0:bufferTri|F[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \g1:0:bufferTri|F[3]~23_combout\ = (\g1:0:bufferTri|F[3]~20_combout\ & (\g1:0:bufferTri|F[3]~22_combout\ & (\g1:0:bufferTri|F[3]~19_combout\ & \g1:0:bufferTri|F[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:0:bufferTri|F[3]~20_combout\,
	datab => \g1:0:bufferTri|F[3]~22_combout\,
	datac => \g1:0:bufferTri|F[3]~19_combout\,
	datad => \g1:0:bufferTri|F[3]~21_combout\,
	combout => \g1:0:bufferTri|F[3]~23_combout\);

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[0]~I\ : cycloneii_io
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
	datain => \g1:0:bufferTri|F[0]~8_combout\,
	oe => \Wr_En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_DATA_OUT(0));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[1]~I\ : cycloneii_io
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
	datain => \g1:0:bufferTri|F[1]~13_combout\,
	oe => \Wr_En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_DATA_OUT(1));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[2]~I\ : cycloneii_io
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
	datain => \g1:0:bufferTri|F[2]~18_combout\,
	oe => \Wr_En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_DATA_OUT(2));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DATA_OUT[3]~I\ : cycloneii_io
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
	datain => \g1:0:bufferTri|F[3]~23_combout\,
	oe => \Wr_En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_DATA_OUT(3));
END structure;


