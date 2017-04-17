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

-- DATE "04/17/2017 12:57:38"

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

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(1 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0);
	Z : OUT std_logic;
	C : OUT std_logic;
	N : OUT std_logic;
	V : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- F[0]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[1]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[2]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- F[3]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- C	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- N	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- V	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- S[0]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[1]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ripple|fa1|cout~0_combout\ : std_logic;
SIGNAL \ripple|g1:1:FA|f~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ripple|g1:1:FA|cout~0_combout\ : std_logic;
SIGNAL \ripple|g1:2:FA|f~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ripple|g1:2:FA|cout~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \ripple|g1:3:FA|f~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ripple|g1:2:FA|cout~1_combout\ : std_logic;
SIGNAL \ripple|g1:2:FA|cout~2_combout\ : std_logic;
SIGNAL \ripple|g1:3:FA|cout~0_combout\ : std_logic;
SIGNAL \ripple|v~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_S <= S;
F <= ww_F;
Z <= ww_Z;
C <= ww_C;
N <= ww_N;
V <= ww_V;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X1_Y7_N6
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = \B~combout\(1) $ (((\S~combout\(1) & !\S~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datac => \S~combout\(1),
	datad => \S~combout\(0),
	combout => \Mux2~0_combout\);

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[1]~I\ : cycloneii_io
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
	padio => ww_S(1),
	combout => \S~combout\(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[0]~I\ : cycloneii_io
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
	padio => ww_S(0),
	combout => \S~combout\(0));

-- Location: LCCOMB_X1_Y7_N16
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\A~combout\(0) & ((\B~combout\(0) & ((\S~combout\(0)))) # (!\B~combout\(0) & ((\S~combout\(1)) # (!\S~combout\(0)))))) # (!\A~combout\(0) & (\B~combout\(0) & ((\S~combout\(1)) # (!\S~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \S~combout\(1),
	datac => \B~combout\(0),
	datad => \S~combout\(0),
	combout => \Mux8~0_combout\);

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X1_Y7_N12
\ripple|fa1|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|fa1|cout~0_combout\ = (\B~combout\(0) & (\A~combout\(0))) # (!\B~combout\(0) & (((\S~combout\(1) & !\S~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \S~combout\(1),
	datac => \B~combout\(0),
	datad => \S~combout\(0),
	combout => \ripple|fa1|cout~0_combout\);

-- Location: LCCOMB_X1_Y7_N24
\ripple|g1:1:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|g1:1:FA|f~combout\ = \Mux2~0_combout\ $ (\A~combout\(1) $ (\ripple|fa1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datac => \A~combout\(1),
	datad => \ripple|fa1|cout~0_combout\,
	combout => \ripple|g1:1:FA|f~combout\);

-- Location: LCCOMB_X1_Y7_N10
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\S~combout\(0) & ((\B~combout\(1) & ((\S~combout\(1)) # (\A~combout\(1)))) # (!\B~combout\(1) & (\S~combout\(1) & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \S~combout\(1),
	datac => \A~combout\(1),
	datad => \S~combout\(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X1_Y7_N26
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((!\S~combout\(0) & \ripple|g1:1:FA|f~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~combout\(0),
	datac => \ripple|g1:1:FA|f~combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X1_Y7_N28
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\S~combout\(0) & ((\B~combout\(2) & ((\A~combout\(2)) # (\S~combout\(1)))) # (!\B~combout\(2) & (\A~combout\(2) & \S~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \S~combout\(1),
	datad => \S~combout\(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y7_N22
\ripple|g1:1:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|g1:1:FA|cout~0_combout\ = (\Mux2~0_combout\ & ((\A~combout\(1)) # (\ripple|fa1|cout~0_combout\))) # (!\Mux2~0_combout\ & (\A~combout\(1) & \ripple|fa1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datac => \A~combout\(1),
	datad => \ripple|fa1|cout~0_combout\,
	combout => \ripple|g1:1:FA|cout~0_combout\);

-- Location: LCCOMB_X1_Y7_N8
\ripple|g1:2:FA|f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|g1:2:FA|f~0_combout\ = \B~combout\(2) $ (\A~combout\(2) $ (((\S~combout\(1) & !\S~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \S~combout\(1),
	datad => \S~combout\(0),
	combout => \ripple|g1:2:FA|f~0_combout\);

-- Location: LCCOMB_X1_Y7_N2
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # ((!\S~combout\(0) & (\ripple|g1:1:FA|cout~0_combout\ $ (\ripple|g1:2:FA|f~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \ripple|g1:1:FA|cout~0_combout\,
	datac => \ripple|g1:2:FA|f~0_combout\,
	datad => \S~combout\(0),
	combout => \Mux6~1_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X3_Y7_N28
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\S~combout\(1) & ((\A~combout\(3)) # (\B~combout\(3)))) # (!\S~combout\(1) & (\A~combout\(3) & \B~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \A~combout\(3),
	datad => \B~combout\(3),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X3_Y7_N16
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = \B~combout\(3) $ (((\S~combout\(1) & !\S~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datac => \S~combout\(0),
	datad => \B~combout\(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X1_Y7_N20
\ripple|g1:2:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|g1:2:FA|cout~0_combout\ = (\A~combout\(2) & (\B~combout\(2) $ (((\S~combout\(1) & !\S~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \S~combout\(1),
	datad => \S~combout\(0),
	combout => \ripple|g1:2:FA|cout~0_combout\);

-- Location: LCCOMB_X3_Y7_N2
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = \Mux0~0_combout\ $ (((\ripple|g1:2:FA|cout~2_combout\) # (\ripple|g1:2:FA|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ripple|g1:2:FA|cout~2_combout\,
	datac => \Mux0~0_combout\,
	datad => \ripple|g1:2:FA|cout~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X3_Y7_N6
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\S~combout\(0) & (\Mux5~1_combout\)) # (!\S~combout\(0) & ((\Mux5~0_combout\ $ (\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~0_combout\,
	datac => \S~combout\(0),
	datad => \A~combout\(3),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X3_Y7_N0
\ripple|g1:3:FA|f\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|g1:3:FA|f~combout\ = \A~combout\(3) $ (\Mux0~0_combout\ $ (((\ripple|g1:2:FA|cout~2_combout\) # (\ripple|g1:2:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ripple|g1:2:FA|cout~2_combout\,
	datab => \A~combout\(3),
	datac => \Mux0~0_combout\,
	datad => \ripple|g1:2:FA|cout~0_combout\,
	combout => \ripple|g1:3:FA|f~combout\);

-- Location: LCCOMB_X1_Y7_N18
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ripple|g1:1:FA|f~combout\ & (\B~combout\(0) $ (!\A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datac => \A~combout\(0),
	datad => \ripple|g1:1:FA|f~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y7_N4
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ripple|g1:3:FA|f~combout\ & (\Equal0~0_combout\ & (\ripple|g1:2:FA|f~0_combout\ $ (!\ripple|g1:1:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ripple|g1:3:FA|f~combout\,
	datab => \Equal0~0_combout\,
	datac => \ripple|g1:2:FA|f~0_combout\,
	datad => \ripple|g1:1:FA|cout~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y7_N30
\ripple|g1:2:FA|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|g1:2:FA|cout~1_combout\ = (\A~combout\(2)) # (\B~combout\(2) $ (((\S~combout\(1) & !\S~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \S~combout\(1),
	datad => \S~combout\(0),
	combout => \ripple|g1:2:FA|cout~1_combout\);

-- Location: LCCOMB_X1_Y7_N0
\ripple|g1:2:FA|cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|g1:2:FA|cout~2_combout\ = (\ripple|g1:2:FA|cout~1_combout\ & ((\Mux2~0_combout\ & ((\A~combout\(1)) # (\ripple|fa1|cout~0_combout\))) # (!\Mux2~0_combout\ & (\A~combout\(1) & \ripple|fa1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \ripple|g1:2:FA|cout~1_combout\,
	datac => \A~combout\(1),
	datad => \ripple|fa1|cout~0_combout\,
	combout => \ripple|g1:2:FA|cout~2_combout\);

-- Location: LCCOMB_X3_Y7_N18
\ripple|g1:3:FA|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|g1:3:FA|cout~0_combout\ = (\A~combout\(3) & ((\ripple|g1:2:FA|cout~2_combout\) # ((\Mux0~0_combout\) # (\ripple|g1:2:FA|cout~0_combout\)))) # (!\A~combout\(3) & (\Mux0~0_combout\ & ((\ripple|g1:2:FA|cout~2_combout\) # 
-- (\ripple|g1:2:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ripple|g1:2:FA|cout~2_combout\,
	datab => \A~combout\(3),
	datac => \Mux0~0_combout\,
	datad => \ripple|g1:2:FA|cout~0_combout\,
	combout => \ripple|g1:3:FA|cout~0_combout\);

-- Location: LCCOMB_X3_Y7_N12
\ripple|v\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple|v~combout\ = (\A~combout\(3) & (!\ripple|g1:2:FA|cout~2_combout\ & (\Mux0~0_combout\ & !\ripple|g1:2:FA|cout~0_combout\))) # (!\A~combout\(3) & (!\Mux0~0_combout\ & ((\ripple|g1:2:FA|cout~2_combout\) # (\ripple|g1:2:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ripple|g1:2:FA|cout~2_combout\,
	datab => \A~combout\(3),
	datac => \Mux0~0_combout\,
	datad => \ripple|g1:2:FA|cout~0_combout\,
	combout => \ripple|v~combout\);

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[0]~I\ : cycloneii_io
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
	datain => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(0));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[1]~I\ : cycloneii_io
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
	datain => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(1));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[2]~I\ : cycloneii_io
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
	datain => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(2));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\F[3]~I\ : cycloneii_io
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
	datain => \Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_F(3));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z~I\ : cycloneii_io
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
	datain => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\C~I\ : cycloneii_io
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
	datain => \ripple|g1:3:FA|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_C);

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\N~I\ : cycloneii_io
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
	datain => \ripple|g1:3:FA|f~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N);

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\V~I\ : cycloneii_io
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
	datain => \ripple|v~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_V);
END structure;


