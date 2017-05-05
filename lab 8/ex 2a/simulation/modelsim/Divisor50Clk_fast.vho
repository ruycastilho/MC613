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

-- DATE "05/05/2017 14:47:25"

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

ENTITY 	Divisor50Clk IS
    PORT (
	clk_in : IN std_logic;
	clk_out : OUT std_logic
	);
END Divisor50Clk;

-- Design Ports Information
-- clk_out	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_in	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Divisor50Clk IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL \clk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \clk_in~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Count~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Count~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Count~1_combout\ : std_logic;
SIGNAL \clk_temp~0_combout\ : std_logic;
SIGNAL \clk_temp~regout\ : std_logic;
SIGNAL Count : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk_in <= clk_in;
clk_out <= ww_clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_in~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_in~combout\);

-- Location: LCCOMB_X1_Y10_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (Count(3) & (!\Add0~5\)) # (!Count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCFF_X1_Y10_N7
\Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(3));

-- Location: LCCOMB_X1_Y10_N20
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (Count(0) & (!Count(1) & (!Count(2) & !Count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count(0),
	datab => Count(1),
	datac => Count(2),
	datad => Count(3),
	combout => \Equal0~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_in~I\ : cycloneii_io
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
	padio => ww_clk_in,
	combout => \clk_in~combout\);

-- Location: CLKCTRL_G3
\clk_in~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = Count(0) $ (VCC)
-- \Add0~1\ = CARRY(Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCFF_X1_Y10_N1
\Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(0));

-- Location: LCCOMB_X1_Y10_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (Count(1) & (!\Add0~1\)) # (!Count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y10_N18
\Count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count~0_combout\ = \Add0~2_combout\ $ (((\Equal0~0_combout\ & (Count(5) & Count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => Count(5),
	datac => Count(4),
	datad => \Add0~2_combout\,
	combout => \Count~0_combout\);

-- Location: LCFF_X1_Y10_N19
\Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(1));

-- Location: LCCOMB_X1_Y10_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (Count(2) & (\Add0~3\ $ (GND))) # (!Count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((Count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCFF_X1_Y10_N5
\Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(2));

-- Location: LCCOMB_X1_Y10_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (Count(4) & (\Add0~7\ $ (GND))) # (!Count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((Count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X1_Y10_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (Count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Count(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X1_Y10_N28
\Count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count~2_combout\ = \Add0~10_combout\ $ (((\Equal0~0_combout\ & (Count(4) & Count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => Count(4),
	datac => Count(5),
	datad => \Add0~10_combout\,
	combout => \Count~2_combout\);

-- Location: LCFF_X1_Y10_N29
\Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(5));

-- Location: LCCOMB_X1_Y10_N26
\Count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Count~1_combout\ = \Add0~8_combout\ $ (((\Equal0~0_combout\ & (Count(5) & Count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => Count(5),
	datac => Count(4),
	datad => \Add0~8_combout\,
	combout => \Count~1_combout\);

-- Location: LCFF_X1_Y10_N27
\Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \Count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Count(4));

-- Location: LCCOMB_X1_Y10_N24
\clk_temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk_temp~0_combout\ = \clk_temp~regout\ $ (((\Equal0~0_combout\ & (Count(4) & Count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => Count(4),
	datac => \clk_temp~regout\,
	datad => Count(5),
	combout => \clk_temp~0_combout\);

-- Location: LCFF_X1_Y10_N25
clk_temp : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_in~clkctrl_outclk\,
	datain => \clk_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_temp~regout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_out~I\ : cycloneii_io
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
	datain => \clk_temp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_out);
END structure;


