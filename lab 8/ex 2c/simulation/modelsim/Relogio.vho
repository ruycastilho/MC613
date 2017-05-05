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

-- DATE "05/05/2017 18:04:02"

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

ENTITY 	Relogio IS
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
END Relogio;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Relogio IS
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
SIGNAL \divisor_clk|clk_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor_clk|Add0~0_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~1\ : std_logic;
SIGNAL \divisor_clk|Add0~2_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~3\ : std_logic;
SIGNAL \divisor_clk|Add0~4_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~5\ : std_logic;
SIGNAL \divisor_clk|Add0~6_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~7\ : std_logic;
SIGNAL \divisor_clk|Add0~8_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~9\ : std_logic;
SIGNAL \divisor_clk|Add0~10_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~11\ : std_logic;
SIGNAL \divisor_clk|Add0~12_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~13\ : std_logic;
SIGNAL \divisor_clk|Add0~14_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~15\ : std_logic;
SIGNAL \divisor_clk|Add0~16_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~17\ : std_logic;
SIGNAL \divisor_clk|Add0~18_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~19\ : std_logic;
SIGNAL \divisor_clk|Add0~20_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~21\ : std_logic;
SIGNAL \divisor_clk|Add0~22_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~23\ : std_logic;
SIGNAL \divisor_clk|Add0~24_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~25\ : std_logic;
SIGNAL \divisor_clk|Add0~26_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~27\ : std_logic;
SIGNAL \divisor_clk|Add0~28_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~29\ : std_logic;
SIGNAL \divisor_clk|Add0~30_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~31\ : std_logic;
SIGNAL \divisor_clk|Add0~32_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~33\ : std_logic;
SIGNAL \divisor_clk|Add0~34_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~35\ : std_logic;
SIGNAL \divisor_clk|Add0~36_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~37\ : std_logic;
SIGNAL \divisor_clk|Add0~38_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~39\ : std_logic;
SIGNAL \divisor_clk|Add0~40_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~41\ : std_logic;
SIGNAL \divisor_clk|Add0~42_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~43\ : std_logic;
SIGNAL \divisor_clk|Add0~44_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~45\ : std_logic;
SIGNAL \divisor_clk|Add0~46_combout\ : std_logic;
SIGNAL \divisor_clk|Add0~47\ : std_logic;
SIGNAL \divisor_clk|Add0~48_combout\ : std_logic;
SIGNAL \divisor_clk|clk_temp~regout\ : std_logic;
SIGNAL \divisor_clk|Equal0~0_combout\ : std_logic;
SIGNAL \divisor_clk|Equal0~1_combout\ : std_logic;
SIGNAL \divisor_clk|Equal0~2_combout\ : std_logic;
SIGNAL \divisor_clk|Equal0~3_combout\ : std_logic;
SIGNAL \divisor_clk|Equal0~4_combout\ : std_logic;
SIGNAL \divisor_clk|Equal0~5_combout\ : std_logic;
SIGNAL \divisor_clk|Equal0~6_combout\ : std_logic;
SIGNAL \divisor_clk|Equal0~7_combout\ : std_logic;
SIGNAL \divisor_clk|clk_temp~0_combout\ : std_logic;
SIGNAL \load_enable~0_combout\ : std_logic;
SIGNAL \divisor_clk|Count~0_combout\ : std_logic;
SIGNAL \divisor_clk|Count~1_combout\ : std_logic;
SIGNAL \divisor_clk|Count~2_combout\ : std_logic;
SIGNAL \divisor_clk|Count~3_combout\ : std_logic;
SIGNAL \divisor_clk|Count~4_combout\ : std_logic;
SIGNAL \divisor_clk|Count~5_combout\ : std_logic;
SIGNAL \divisor_clk|Count~6_combout\ : std_logic;
SIGNAL \divisor_clk|Count~7_combout\ : std_logic;
SIGNAL \divisor_clk|Count~8_combout\ : std_logic;
SIGNAL \divisor_clk|Count~9_combout\ : std_logic;
SIGNAL \divisor_clk|Count~10_combout\ : std_logic;
SIGNAL \divisor_clk|Count~11_combout\ : std_logic;
SIGNAL \divisor_clk|Count~12_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \divisor_clk|clk_temp~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \unidade_min|Q~0_combout\ : std_logic;
SIGNAL \load_enable~2_combout\ : std_logic;
SIGNAL \dezena_seg|Q~0_combout\ : std_logic;
SIGNAL \unidade_seg|Q~0_combout\ : std_logic;
SIGNAL \cont_enable[0]~feeder_combout\ : std_logic;
SIGNAL \unidade_seg|Add0~1_combout\ : std_logic;
SIGNAL \unidade_seg|Q~3_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \unidade_seg|Q~1_combout\ : std_logic;
SIGNAL \unidade_seg|Add0~0_combout\ : std_logic;
SIGNAL \unidade_seg|Q~2_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \dezena_seg|Q[3]~1_combout\ : std_logic;
SIGNAL \dezena_seg|Q~2_combout\ : std_logic;
SIGNAL \dezena_seg|Add0~0_combout\ : std_logic;
SIGNAL \dezena_seg|Q~3_combout\ : std_logic;
SIGNAL \dezena_seg|Add0~1_combout\ : std_logic;
SIGNAL \dezena_seg|Q~4_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \unidade_min|Add0~1_combout\ : std_logic;
SIGNAL \unidade_min|Q~2_combout\ : std_logic;
SIGNAL \unidade_min|Equal0~0_combout\ : std_logic;
SIGNAL \unidade_min|Add0~0_combout\ : std_logic;
SIGNAL \unidade_min|Q~1_combout\ : std_logic;
SIGNAL \display0_out~1_combout\ : std_logic;
SIGNAL \display0_out~2_combout\ : std_logic;
SIGNAL \unidade_min|Add0~2_combout\ : std_logic;
SIGNAL \unidade_min|Q~3_combout\ : std_logic;
SIGNAL \display0_out~3_combout\ : std_logic;
SIGNAL \display0_out~0_combout\ : std_logic;
SIGNAL \display_0|Mux6~0_combout\ : std_logic;
SIGNAL \display_0|Mux5~0_combout\ : std_logic;
SIGNAL \display_0|Mux4~0_combout\ : std_logic;
SIGNAL \display_0|Mux3~0_combout\ : std_logic;
SIGNAL \display_0|Mux2~0_combout\ : std_logic;
SIGNAL \display_0|Mux1~0_combout\ : std_logic;
SIGNAL \display_0|Mux0~0_combout\ : std_logic;
SIGNAL \display1_out~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \load_enable~3_combout\ : std_logic;
SIGNAL \load_enable[2]~1_combout\ : std_logic;
SIGNAL \dezena_min|Q~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \dezena_min|Add0~2_combout\ : std_logic;
SIGNAL \dezena_min|Q~3_combout\ : std_logic;
SIGNAL \dezena_min|Equal0~0_combout\ : std_logic;
SIGNAL \dezena_min|Add0~0_combout\ : std_logic;
SIGNAL \dezena_min|Q~1_combout\ : std_logic;
SIGNAL \dezena_min|Add0~1_combout\ : std_logic;
SIGNAL \dezena_min|Q~2_combout\ : std_logic;
SIGNAL \display1_out~2_combout\ : std_logic;
SIGNAL \display1_out~3_combout\ : std_logic;
SIGNAL \display1_out~0_combout\ : std_logic;
SIGNAL \display_1|Mux6~0_combout\ : std_logic;
SIGNAL \display_1|Mux5~0_combout\ : std_logic;
SIGNAL \display_1|Mux4~0_combout\ : std_logic;
SIGNAL \display_1|Mux3~0_combout\ : std_logic;
SIGNAL \display_1|Mux2~0_combout\ : std_logic;
SIGNAL \display_1|Mux1~0_combout\ : std_logic;
SIGNAL \display_1|Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \load_enable~4_combout\ : std_logic;
SIGNAL \unidade_hora|Q~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \unidade_hora|Add0~2_combout\ : std_logic;
SIGNAL \unidade_hora|Q~3_combout\ : std_logic;
SIGNAL \unidade_hora|Equal0~0_combout\ : std_logic;
SIGNAL \unidade_hora|Add0~0_combout\ : std_logic;
SIGNAL \unidade_hora|Q~1_combout\ : std_logic;
SIGNAL \unidade_hora|Add0~1_combout\ : std_logic;
SIGNAL \unidade_hora|Q~2_combout\ : std_logic;
SIGNAL \display2_out~2_combout\ : std_logic;
SIGNAL \display2_out~1_combout\ : std_logic;
SIGNAL \display2_out~3_combout\ : std_logic;
SIGNAL \display2_out~0_combout\ : std_logic;
SIGNAL \display_2|Mux6~0_combout\ : std_logic;
SIGNAL \display_2|Mux5~0_combout\ : std_logic;
SIGNAL \display_2|Mux4~0_combout\ : std_logic;
SIGNAL \display_2|Mux3~0_combout\ : std_logic;
SIGNAL \display_2|Mux2~0_combout\ : std_logic;
SIGNAL \display_2|Mux1~0_combout\ : std_logic;
SIGNAL \display_2|Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \load_enable~5_combout\ : std_logic;
SIGNAL \dezena_hora|Q~0_combout\ : std_logic;
SIGNAL \dezena_hora|Add0~2_combout\ : std_logic;
SIGNAL \dezena_hora|Q~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cont_enable~0_combout\ : std_logic;
SIGNAL \cont_enable~1_combout\ : std_logic;
SIGNAL \dezena_hora|Add0~0_combout\ : std_logic;
SIGNAL \dezena_hora|Q~1_combout\ : std_logic;
SIGNAL \dezena_hora|Equal0~0_combout\ : std_logic;
SIGNAL \dezena_hora|Add0~1_combout\ : std_logic;
SIGNAL \dezena_hora|Q~2_combout\ : std_logic;
SIGNAL \display3_out~2_combout\ : std_logic;
SIGNAL \display3_out~3_combout\ : std_logic;
SIGNAL \display3_out~1_combout\ : std_logic;
SIGNAL \display3_out~0_combout\ : std_logic;
SIGNAL \display_3|Mux6~0_combout\ : std_logic;
SIGNAL \display_3|Mux5~0_combout\ : std_logic;
SIGNAL \display_3|Mux4~0_combout\ : std_logic;
SIGNAL \display_3|Mux3~0_combout\ : std_logic;
SIGNAL \display_3|Mux2~0_combout\ : std_logic;
SIGNAL \display_3|Mux1~0_combout\ : std_logic;
SIGNAL \display_3|Mux0~0_combout\ : std_logic;
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \dezena_seg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \unidade_min|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dezena_min|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \unidade_hora|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dezena_hora|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL load_enable_temp : std_logic_vector(5 DOWNTO 0);
SIGNAL load_enable : std_logic_vector(5 DOWNTO 0);
SIGNAL display3_out : std_logic_vector(3 DOWNTO 0);
SIGNAL display2_out : std_logic_vector(3 DOWNTO 0);
SIGNAL display1_out : std_logic_vector(3 DOWNTO 0);
SIGNAL display0_out : std_logic_vector(3 DOWNTO 0);
SIGNAL cont_enable : std_logic_vector(5 DOWNTO 0);
SIGNAL \divisor_clk|Count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \unidade_seg|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \display_3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display_1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display_0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW~combout\ : std_logic_vector(9 DOWNTO 9);
SIGNAL ALT_INV_cont_enable : std_logic_vector(0 DOWNTO 0);

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

\divisor_clk|clk_temp~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \divisor_clk|clk_temp~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\display_3|ALT_INV_Mux0~0_combout\ <= NOT \display_3|Mux0~0_combout\;
\display_2|ALT_INV_Mux0~0_combout\ <= NOT \display_2|Mux0~0_combout\;
\display_1|ALT_INV_Mux0~0_combout\ <= NOT \display_1|Mux0~0_combout\;
\display_0|ALT_INV_Mux0~0_combout\ <= NOT \display_0|Mux0~0_combout\;
\ALT_INV_SW~combout\(9) <= NOT \SW~combout\(9);
ALT_INV_cont_enable(0) <= NOT cont_enable(0);

-- Location: LCCOMB_X2_Y13_N8
\divisor_clk|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~0_combout\ = \divisor_clk|Count\(0) $ (VCC)
-- \divisor_clk|Add0~1\ = CARRY(\divisor_clk|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(0),
	datad => VCC,
	combout => \divisor_clk|Add0~0_combout\,
	cout => \divisor_clk|Add0~1\);

-- Location: LCCOMB_X2_Y13_N10
\divisor_clk|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~2_combout\ = (\divisor_clk|Count\(1) & (!\divisor_clk|Add0~1\)) # (!\divisor_clk|Count\(1) & ((\divisor_clk|Add0~1\) # (GND)))
-- \divisor_clk|Add0~3\ = CARRY((!\divisor_clk|Add0~1\) # (!\divisor_clk|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(1),
	datad => VCC,
	cin => \divisor_clk|Add0~1\,
	combout => \divisor_clk|Add0~2_combout\,
	cout => \divisor_clk|Add0~3\);

-- Location: LCCOMB_X2_Y13_N12
\divisor_clk|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~4_combout\ = (\divisor_clk|Count\(2) & (\divisor_clk|Add0~3\ $ (GND))) # (!\divisor_clk|Count\(2) & (!\divisor_clk|Add0~3\ & VCC))
-- \divisor_clk|Add0~5\ = CARRY((\divisor_clk|Count\(2) & !\divisor_clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(2),
	datad => VCC,
	cin => \divisor_clk|Add0~3\,
	combout => \divisor_clk|Add0~4_combout\,
	cout => \divisor_clk|Add0~5\);

-- Location: LCCOMB_X2_Y13_N14
\divisor_clk|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~6_combout\ = (\divisor_clk|Count\(3) & (!\divisor_clk|Add0~5\)) # (!\divisor_clk|Count\(3) & ((\divisor_clk|Add0~5\) # (GND)))
-- \divisor_clk|Add0~7\ = CARRY((!\divisor_clk|Add0~5\) # (!\divisor_clk|Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(3),
	datad => VCC,
	cin => \divisor_clk|Add0~5\,
	combout => \divisor_clk|Add0~6_combout\,
	cout => \divisor_clk|Add0~7\);

-- Location: LCCOMB_X2_Y13_N16
\divisor_clk|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~8_combout\ = (\divisor_clk|Count\(4) & (\divisor_clk|Add0~7\ $ (GND))) # (!\divisor_clk|Count\(4) & (!\divisor_clk|Add0~7\ & VCC))
-- \divisor_clk|Add0~9\ = CARRY((\divisor_clk|Count\(4) & !\divisor_clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(4),
	datad => VCC,
	cin => \divisor_clk|Add0~7\,
	combout => \divisor_clk|Add0~8_combout\,
	cout => \divisor_clk|Add0~9\);

-- Location: LCCOMB_X2_Y13_N18
\divisor_clk|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~10_combout\ = (\divisor_clk|Count\(5) & (!\divisor_clk|Add0~9\)) # (!\divisor_clk|Count\(5) & ((\divisor_clk|Add0~9\) # (GND)))
-- \divisor_clk|Add0~11\ = CARRY((!\divisor_clk|Add0~9\) # (!\divisor_clk|Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(5),
	datad => VCC,
	cin => \divisor_clk|Add0~9\,
	combout => \divisor_clk|Add0~10_combout\,
	cout => \divisor_clk|Add0~11\);

-- Location: LCCOMB_X2_Y13_N20
\divisor_clk|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~12_combout\ = (\divisor_clk|Count\(6) & (\divisor_clk|Add0~11\ $ (GND))) # (!\divisor_clk|Count\(6) & (!\divisor_clk|Add0~11\ & VCC))
-- \divisor_clk|Add0~13\ = CARRY((\divisor_clk|Count\(6) & !\divisor_clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(6),
	datad => VCC,
	cin => \divisor_clk|Add0~11\,
	combout => \divisor_clk|Add0~12_combout\,
	cout => \divisor_clk|Add0~13\);

-- Location: LCCOMB_X2_Y13_N22
\divisor_clk|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~14_combout\ = (\divisor_clk|Count\(7) & (!\divisor_clk|Add0~13\)) # (!\divisor_clk|Count\(7) & ((\divisor_clk|Add0~13\) # (GND)))
-- \divisor_clk|Add0~15\ = CARRY((!\divisor_clk|Add0~13\) # (!\divisor_clk|Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(7),
	datad => VCC,
	cin => \divisor_clk|Add0~13\,
	combout => \divisor_clk|Add0~14_combout\,
	cout => \divisor_clk|Add0~15\);

-- Location: LCCOMB_X2_Y13_N24
\divisor_clk|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~16_combout\ = (\divisor_clk|Count\(8) & (\divisor_clk|Add0~15\ $ (GND))) # (!\divisor_clk|Count\(8) & (!\divisor_clk|Add0~15\ & VCC))
-- \divisor_clk|Add0~17\ = CARRY((\divisor_clk|Count\(8) & !\divisor_clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(8),
	datad => VCC,
	cin => \divisor_clk|Add0~15\,
	combout => \divisor_clk|Add0~16_combout\,
	cout => \divisor_clk|Add0~17\);

-- Location: LCCOMB_X2_Y13_N26
\divisor_clk|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~18_combout\ = (\divisor_clk|Count\(9) & (!\divisor_clk|Add0~17\)) # (!\divisor_clk|Count\(9) & ((\divisor_clk|Add0~17\) # (GND)))
-- \divisor_clk|Add0~19\ = CARRY((!\divisor_clk|Add0~17\) # (!\divisor_clk|Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(9),
	datad => VCC,
	cin => \divisor_clk|Add0~17\,
	combout => \divisor_clk|Add0~18_combout\,
	cout => \divisor_clk|Add0~19\);

-- Location: LCCOMB_X2_Y13_N28
\divisor_clk|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~20_combout\ = (\divisor_clk|Count\(10) & (\divisor_clk|Add0~19\ $ (GND))) # (!\divisor_clk|Count\(10) & (!\divisor_clk|Add0~19\ & VCC))
-- \divisor_clk|Add0~21\ = CARRY((\divisor_clk|Count\(10) & !\divisor_clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(10),
	datad => VCC,
	cin => \divisor_clk|Add0~19\,
	combout => \divisor_clk|Add0~20_combout\,
	cout => \divisor_clk|Add0~21\);

-- Location: LCCOMB_X2_Y13_N30
\divisor_clk|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~22_combout\ = (\divisor_clk|Count\(11) & (!\divisor_clk|Add0~21\)) # (!\divisor_clk|Count\(11) & ((\divisor_clk|Add0~21\) # (GND)))
-- \divisor_clk|Add0~23\ = CARRY((!\divisor_clk|Add0~21\) # (!\divisor_clk|Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(11),
	datad => VCC,
	cin => \divisor_clk|Add0~21\,
	combout => \divisor_clk|Add0~22_combout\,
	cout => \divisor_clk|Add0~23\);

-- Location: LCCOMB_X2_Y12_N0
\divisor_clk|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~24_combout\ = (\divisor_clk|Count\(12) & (\divisor_clk|Add0~23\ $ (GND))) # (!\divisor_clk|Count\(12) & (!\divisor_clk|Add0~23\ & VCC))
-- \divisor_clk|Add0~25\ = CARRY((\divisor_clk|Count\(12) & !\divisor_clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(12),
	datad => VCC,
	cin => \divisor_clk|Add0~23\,
	combout => \divisor_clk|Add0~24_combout\,
	cout => \divisor_clk|Add0~25\);

-- Location: LCCOMB_X2_Y12_N2
\divisor_clk|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~26_combout\ = (\divisor_clk|Count\(13) & (!\divisor_clk|Add0~25\)) # (!\divisor_clk|Count\(13) & ((\divisor_clk|Add0~25\) # (GND)))
-- \divisor_clk|Add0~27\ = CARRY((!\divisor_clk|Add0~25\) # (!\divisor_clk|Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(13),
	datad => VCC,
	cin => \divisor_clk|Add0~25\,
	combout => \divisor_clk|Add0~26_combout\,
	cout => \divisor_clk|Add0~27\);

-- Location: LCCOMB_X2_Y12_N4
\divisor_clk|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~28_combout\ = (\divisor_clk|Count\(14) & (\divisor_clk|Add0~27\ $ (GND))) # (!\divisor_clk|Count\(14) & (!\divisor_clk|Add0~27\ & VCC))
-- \divisor_clk|Add0~29\ = CARRY((\divisor_clk|Count\(14) & !\divisor_clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(14),
	datad => VCC,
	cin => \divisor_clk|Add0~27\,
	combout => \divisor_clk|Add0~28_combout\,
	cout => \divisor_clk|Add0~29\);

-- Location: LCCOMB_X2_Y12_N6
\divisor_clk|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~30_combout\ = (\divisor_clk|Count\(15) & (!\divisor_clk|Add0~29\)) # (!\divisor_clk|Count\(15) & ((\divisor_clk|Add0~29\) # (GND)))
-- \divisor_clk|Add0~31\ = CARRY((!\divisor_clk|Add0~29\) # (!\divisor_clk|Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(15),
	datad => VCC,
	cin => \divisor_clk|Add0~29\,
	combout => \divisor_clk|Add0~30_combout\,
	cout => \divisor_clk|Add0~31\);

-- Location: LCCOMB_X2_Y12_N8
\divisor_clk|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~32_combout\ = (\divisor_clk|Count\(16) & (\divisor_clk|Add0~31\ $ (GND))) # (!\divisor_clk|Count\(16) & (!\divisor_clk|Add0~31\ & VCC))
-- \divisor_clk|Add0~33\ = CARRY((\divisor_clk|Count\(16) & !\divisor_clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(16),
	datad => VCC,
	cin => \divisor_clk|Add0~31\,
	combout => \divisor_clk|Add0~32_combout\,
	cout => \divisor_clk|Add0~33\);

-- Location: LCCOMB_X2_Y12_N10
\divisor_clk|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~34_combout\ = (\divisor_clk|Count\(17) & (!\divisor_clk|Add0~33\)) # (!\divisor_clk|Count\(17) & ((\divisor_clk|Add0~33\) # (GND)))
-- \divisor_clk|Add0~35\ = CARRY((!\divisor_clk|Add0~33\) # (!\divisor_clk|Count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(17),
	datad => VCC,
	cin => \divisor_clk|Add0~33\,
	combout => \divisor_clk|Add0~34_combout\,
	cout => \divisor_clk|Add0~35\);

-- Location: LCCOMB_X2_Y12_N12
\divisor_clk|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~36_combout\ = (\divisor_clk|Count\(18) & (\divisor_clk|Add0~35\ $ (GND))) # (!\divisor_clk|Count\(18) & (!\divisor_clk|Add0~35\ & VCC))
-- \divisor_clk|Add0~37\ = CARRY((\divisor_clk|Count\(18) & !\divisor_clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(18),
	datad => VCC,
	cin => \divisor_clk|Add0~35\,
	combout => \divisor_clk|Add0~36_combout\,
	cout => \divisor_clk|Add0~37\);

-- Location: LCCOMB_X2_Y12_N14
\divisor_clk|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~38_combout\ = (\divisor_clk|Count\(19) & (!\divisor_clk|Add0~37\)) # (!\divisor_clk|Count\(19) & ((\divisor_clk|Add0~37\) # (GND)))
-- \divisor_clk|Add0~39\ = CARRY((!\divisor_clk|Add0~37\) # (!\divisor_clk|Count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(19),
	datad => VCC,
	cin => \divisor_clk|Add0~37\,
	combout => \divisor_clk|Add0~38_combout\,
	cout => \divisor_clk|Add0~39\);

-- Location: LCCOMB_X2_Y12_N16
\divisor_clk|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~40_combout\ = (\divisor_clk|Count\(20) & (\divisor_clk|Add0~39\ $ (GND))) # (!\divisor_clk|Count\(20) & (!\divisor_clk|Add0~39\ & VCC))
-- \divisor_clk|Add0~41\ = CARRY((\divisor_clk|Count\(20) & !\divisor_clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(20),
	datad => VCC,
	cin => \divisor_clk|Add0~39\,
	combout => \divisor_clk|Add0~40_combout\,
	cout => \divisor_clk|Add0~41\);

-- Location: LCCOMB_X2_Y12_N18
\divisor_clk|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~42_combout\ = (\divisor_clk|Count\(21) & (!\divisor_clk|Add0~41\)) # (!\divisor_clk|Count\(21) & ((\divisor_clk|Add0~41\) # (GND)))
-- \divisor_clk|Add0~43\ = CARRY((!\divisor_clk|Add0~41\) # (!\divisor_clk|Count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(21),
	datad => VCC,
	cin => \divisor_clk|Add0~41\,
	combout => \divisor_clk|Add0~42_combout\,
	cout => \divisor_clk|Add0~43\);

-- Location: LCCOMB_X2_Y12_N20
\divisor_clk|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~44_combout\ = (\divisor_clk|Count\(22) & (\divisor_clk|Add0~43\ $ (GND))) # (!\divisor_clk|Count\(22) & (!\divisor_clk|Add0~43\ & VCC))
-- \divisor_clk|Add0~45\ = CARRY((\divisor_clk|Count\(22) & !\divisor_clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(22),
	datad => VCC,
	cin => \divisor_clk|Add0~43\,
	combout => \divisor_clk|Add0~44_combout\,
	cout => \divisor_clk|Add0~45\);

-- Location: LCCOMB_X2_Y12_N22
\divisor_clk|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~46_combout\ = (\divisor_clk|Count\(23) & (!\divisor_clk|Add0~45\)) # (!\divisor_clk|Count\(23) & ((\divisor_clk|Add0~45\) # (GND)))
-- \divisor_clk|Add0~47\ = CARRY((!\divisor_clk|Add0~45\) # (!\divisor_clk|Count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Count\(23),
	datad => VCC,
	cin => \divisor_clk|Add0~45\,
	combout => \divisor_clk|Add0~46_combout\,
	cout => \divisor_clk|Add0~47\);

-- Location: LCCOMB_X2_Y12_N24
\divisor_clk|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Add0~48_combout\ = \divisor_clk|Add0~47\ $ (!\divisor_clk|Count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisor_clk|Count\(24),
	cin => \divisor_clk|Add0~47\,
	combout => \divisor_clk|Add0~48_combout\);

-- Location: LCFF_X1_Y12_N1
\divisor_clk|clk_temp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|clk_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|clk_temp~regout\);

-- Location: LCFF_X20_Y20_N25
\load_enable[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \load_enable~0_combout\,
	ena => \load_enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable(2));

-- Location: LCFF_X1_Y12_N27
\divisor_clk|Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(6));

-- Location: LCFF_X2_Y13_N23
\divisor_clk|Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(7));

-- Location: LCFF_X2_Y13_N19
\divisor_clk|Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(5));

-- Location: LCFF_X2_Y13_N17
\divisor_clk|Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(4));

-- Location: LCCOMB_X1_Y12_N28
\divisor_clk|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Equal0~0_combout\ = (!\divisor_clk|Count\(4) & (\divisor_clk|Count\(6) & (!\divisor_clk|Count\(5) & !\divisor_clk|Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(4),
	datab => \divisor_clk|Count\(6),
	datac => \divisor_clk|Count\(5),
	datad => \divisor_clk|Count\(7),
	combout => \divisor_clk|Equal0~0_combout\);

-- Location: LCFF_X2_Y13_N15
\divisor_clk|Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(3));

-- Location: LCFF_X2_Y13_N13
\divisor_clk|Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(2));

-- Location: LCFF_X2_Y13_N11
\divisor_clk|Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(1));

-- Location: LCFF_X2_Y13_N1
\divisor_clk|Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(0));

-- Location: LCCOMB_X2_Y13_N2
\divisor_clk|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Equal0~1_combout\ = (!\divisor_clk|Count\(2) & (!\divisor_clk|Count\(0) & (!\divisor_clk|Count\(3) & !\divisor_clk|Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(2),
	datab => \divisor_clk|Count\(0),
	datac => \divisor_clk|Count\(3),
	datad => \divisor_clk|Count\(1),
	combout => \divisor_clk|Equal0~1_combout\);

-- Location: LCFF_X2_Y13_N5
\divisor_clk|Count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(11));

-- Location: LCFF_X2_Y13_N25
\divisor_clk|Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(8));

-- Location: LCFF_X2_Y13_N27
\divisor_clk|Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(9));

-- Location: LCFF_X2_Y13_N29
\divisor_clk|Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(10));

-- Location: LCCOMB_X2_Y13_N6
\divisor_clk|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Equal0~2_combout\ = (!\divisor_clk|Count\(8) & (!\divisor_clk|Count\(9) & (\divisor_clk|Count\(11) & !\divisor_clk|Count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(8),
	datab => \divisor_clk|Count\(9),
	datac => \divisor_clk|Count\(11),
	datad => \divisor_clk|Count\(10),
	combout => \divisor_clk|Equal0~2_combout\);

-- Location: LCFF_X1_Y12_N19
\divisor_clk|Count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(12));

-- Location: LCFF_X1_Y12_N13
\divisor_clk|Count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(13));

-- Location: LCFF_X1_Y12_N7
\divisor_clk|Count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(14));

-- Location: LCFF_X2_Y12_N7
\divisor_clk|Count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(15));

-- Location: LCCOMB_X1_Y12_N16
\divisor_clk|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Equal0~3_combout\ = (\divisor_clk|Count\(13) & (\divisor_clk|Count\(12) & (\divisor_clk|Count\(14) & !\divisor_clk|Count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(13),
	datab => \divisor_clk|Count\(12),
	datac => \divisor_clk|Count\(14),
	datad => \divisor_clk|Count\(15),
	combout => \divisor_clk|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y12_N22
\divisor_clk|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Equal0~4_combout\ = (\divisor_clk|Equal0~3_combout\ & (\divisor_clk|Equal0~0_combout\ & (\divisor_clk|Equal0~2_combout\ & \divisor_clk|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Equal0~3_combout\,
	datab => \divisor_clk|Equal0~0_combout\,
	datac => \divisor_clk|Equal0~2_combout\,
	datad => \divisor_clk|Equal0~1_combout\,
	combout => \divisor_clk|Equal0~4_combout\);

-- Location: LCFF_X1_Y12_N11
\divisor_clk|Count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(16));

-- Location: LCFF_X1_Y12_N15
\divisor_clk|Count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(18));

-- Location: LCFF_X1_Y12_N31
\divisor_clk|Count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(19));

-- Location: LCFF_X2_Y12_N11
\divisor_clk|Count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(17));

-- Location: LCCOMB_X1_Y12_N8
\divisor_clk|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Equal0~5_combout\ = (\divisor_clk|Count\(16) & (\divisor_clk|Count\(18) & (!\divisor_clk|Count\(17) & \divisor_clk|Count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(16),
	datab => \divisor_clk|Count\(18),
	datac => \divisor_clk|Count\(17),
	datad => \divisor_clk|Count\(19),
	combout => \divisor_clk|Equal0~5_combout\);

-- Location: LCFF_X2_Y12_N31
\divisor_clk|Count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(24));

-- Location: LCFF_X2_Y12_N29
\divisor_clk|Count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(20));

-- Location: LCFF_X2_Y12_N27
\divisor_clk|Count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(21));

-- Location: LCFF_X1_Y12_N25
\divisor_clk|Count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(22));

-- Location: LCFF_X2_Y12_N23
\divisor_clk|Count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \divisor_clk|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divisor_clk|Count\(23));

-- Location: LCCOMB_X1_Y12_N4
\divisor_clk|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Equal0~6_combout\ = (\divisor_clk|Count\(22) & (!\divisor_clk|Count\(23) & (\divisor_clk|Count\(21) & \divisor_clk|Count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(22),
	datab => \divisor_clk|Count\(23),
	datac => \divisor_clk|Count\(21),
	datad => \divisor_clk|Count\(20),
	combout => \divisor_clk|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y12_N20
\divisor_clk|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Equal0~7_combout\ = (\divisor_clk|Count\(24) & (\divisor_clk|Equal0~5_combout\ & (\divisor_clk|Equal0~6_combout\ & \divisor_clk|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Count\(24),
	datab => \divisor_clk|Equal0~5_combout\,
	datac => \divisor_clk|Equal0~6_combout\,
	datad => \divisor_clk|Equal0~4_combout\,
	combout => \divisor_clk|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y12_N0
\divisor_clk|clk_temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|clk_temp~0_combout\ = \divisor_clk|clk_temp~regout\ $ (\divisor_clk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|clk_temp~regout\,
	datad => \divisor_clk|Equal0~7_combout\,
	combout => \divisor_clk|clk_temp~0_combout\);

-- Location: LCFF_X20_Y19_N11
\load_enable_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \Mux3~0_combout\,
	ena => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable_temp(2));

-- Location: LCCOMB_X20_Y20_N24
\load_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \load_enable~0_combout\ = (\SW~combout\(9) & load_enable_temp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(9),
	datad => load_enable_temp(2),
	combout => \load_enable~0_combout\);

-- Location: LCCOMB_X1_Y12_N26
\divisor_clk|Count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~0_combout\ = (!\divisor_clk|Equal0~7_combout\ & \divisor_clk|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Equal0~7_combout\,
	datad => \divisor_clk|Add0~12_combout\,
	combout => \divisor_clk|Count~0_combout\);

-- Location: LCCOMB_X2_Y13_N0
\divisor_clk|Count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~1_combout\ = (\divisor_clk|Add0~0_combout\ & !\divisor_clk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Add0~0_combout\,
	datad => \divisor_clk|Equal0~7_combout\,
	combout => \divisor_clk|Count~1_combout\);

-- Location: LCCOMB_X2_Y13_N4
\divisor_clk|Count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~2_combout\ = (\divisor_clk|Add0~22_combout\ & !\divisor_clk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor_clk|Add0~22_combout\,
	datad => \divisor_clk|Equal0~7_combout\,
	combout => \divisor_clk|Count~2_combout\);

-- Location: LCCOMB_X1_Y12_N18
\divisor_clk|Count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~3_combout\ = (\divisor_clk|Add0~24_combout\ & !\divisor_clk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Add0~24_combout\,
	datad => \divisor_clk|Equal0~7_combout\,
	combout => \divisor_clk|Count~3_combout\);

-- Location: LCCOMB_X1_Y12_N12
\divisor_clk|Count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~4_combout\ = (!\divisor_clk|Equal0~7_combout\ & \divisor_clk|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Equal0~7_combout\,
	datad => \divisor_clk|Add0~26_combout\,
	combout => \divisor_clk|Count~4_combout\);

-- Location: LCCOMB_X1_Y12_N6
\divisor_clk|Count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~5_combout\ = (!\divisor_clk|Equal0~7_combout\ & \divisor_clk|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Equal0~7_combout\,
	datad => \divisor_clk|Add0~28_combout\,
	combout => \divisor_clk|Count~5_combout\);

-- Location: LCCOMB_X1_Y12_N10
\divisor_clk|Count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~6_combout\ = (\divisor_clk|Add0~32_combout\ & !\divisor_clk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Add0~32_combout\,
	datad => \divisor_clk|Equal0~7_combout\,
	combout => \divisor_clk|Count~6_combout\);

-- Location: LCCOMB_X1_Y12_N14
\divisor_clk|Count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~7_combout\ = (\divisor_clk|Add0~36_combout\ & !\divisor_clk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Add0~36_combout\,
	datad => \divisor_clk|Equal0~7_combout\,
	combout => \divisor_clk|Count~7_combout\);

-- Location: LCCOMB_X1_Y12_N30
\divisor_clk|Count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~8_combout\ = (\divisor_clk|Add0~38_combout\ & !\divisor_clk|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Add0~38_combout\,
	datad => \divisor_clk|Equal0~7_combout\,
	combout => \divisor_clk|Count~8_combout\);

-- Location: LCCOMB_X2_Y12_N30
\divisor_clk|Count~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~9_combout\ = (!\divisor_clk|Equal0~7_combout\ & \divisor_clk|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Equal0~7_combout\,
	datac => \divisor_clk|Add0~48_combout\,
	combout => \divisor_clk|Count~9_combout\);

-- Location: LCCOMB_X2_Y12_N28
\divisor_clk|Count~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~10_combout\ = (!\divisor_clk|Equal0~7_combout\ & \divisor_clk|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor_clk|Equal0~7_combout\,
	datac => \divisor_clk|Add0~40_combout\,
	combout => \divisor_clk|Count~10_combout\);

-- Location: LCCOMB_X2_Y12_N26
\divisor_clk|Count~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~11_combout\ = (!\divisor_clk|Equal0~7_combout\ & \divisor_clk|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Equal0~7_combout\,
	datad => \divisor_clk|Add0~42_combout\,
	combout => \divisor_clk|Count~11_combout\);

-- Location: LCCOMB_X1_Y12_N24
\divisor_clk|Count~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divisor_clk|Count~12_combout\ = (!\divisor_clk|Equal0~7_combout\ & \divisor_clk|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor_clk|Equal0~7_combout\,
	datad => \divisor_clk|Add0~44_combout\,
	combout => \divisor_clk|Count~12_combout\);

-- Location: LCCOMB_X20_Y19_N10
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\SW~combout\(5) & !\SW~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \Mux3~0_combout\);

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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G3
\divisor_clk|clk_temp~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor_clk|clk_temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor_clk|clk_temp~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

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

-- Location: LCCOMB_X20_Y20_N8
\unidade_min|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_min|Q~0_combout\ = (load_enable(2) & ((\SW~combout\(0)))) # (!load_enable(2) & (!\unidade_min|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(2),
	datac => \unidade_min|Q\(0),
	datad => \SW~combout\(0),
	combout => \unidade_min|Q~0_combout\);

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

-- Location: LCCOMB_X18_Y20_N16
\load_enable~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \load_enable~2_combout\ = (load_enable(0)) # (\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => load_enable(0),
	datad => \KEY~combout\(0),
	combout => \load_enable~2_combout\);

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

-- Location: LCFF_X18_Y20_N17
\load_enable[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \load_enable~2_combout\,
	sclr => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable(0));

-- Location: LCCOMB_X19_Y20_N22
\dezena_seg|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_seg|Q~0_combout\ = (!\dezena_seg|Q\(0) & !load_enable(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dezena_seg|Q\(0),
	datad => load_enable(0),
	combout => \dezena_seg|Q~0_combout\);

-- Location: LCCOMB_X18_Y20_N22
\unidade_seg|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_seg|Q~0_combout\ = (!load_enable(0) & !\unidade_seg|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(0),
	datac => \unidade_seg|Q\(0),
	combout => \unidade_seg|Q~0_combout\);

-- Location: LCCOMB_X18_Y20_N26
\cont_enable[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_enable[0]~feeder_combout\ = \SW~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(9),
	combout => \cont_enable[0]~feeder_combout\);

-- Location: LCFF_X18_Y20_N27
\cont_enable[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \cont_enable[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_enable(0));

-- Location: LCFF_X18_Y20_N23
\unidade_seg|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_seg|Q~0_combout\,
	ena => ALT_INV_cont_enable(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_seg|Q\(0));

-- Location: LCCOMB_X18_Y20_N20
\unidade_seg|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_seg|Add0~1_combout\ = \unidade_seg|Q\(3) $ (((\unidade_seg|Q\(2) & (\unidade_seg|Q\(1) & \unidade_seg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_seg|Q\(3),
	datab => \unidade_seg|Q\(2),
	datac => \unidade_seg|Q\(1),
	datad => \unidade_seg|Q\(0),
	combout => \unidade_seg|Add0~1_combout\);

-- Location: LCCOMB_X18_Y20_N12
\unidade_seg|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_seg|Q~3_combout\ = (!load_enable(0) & (\unidade_seg|Add0~1_combout\ & ((!\Equal5~0_combout\) # (!\unidade_seg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(0),
	datab => \unidade_seg|Q\(0),
	datac => \unidade_seg|Add0~1_combout\,
	datad => \Equal5~0_combout\,
	combout => \unidade_seg|Q~3_combout\);

-- Location: LCFF_X18_Y20_N13
\unidade_seg|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_seg|Q~3_combout\,
	ena => ALT_INV_cont_enable(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_seg|Q\(3));

-- Location: LCCOMB_X18_Y20_N28
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\unidade_seg|Q\(2) & (!\unidade_seg|Q\(1) & \unidade_seg|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidade_seg|Q\(2),
	datac => \unidade_seg|Q\(1),
	datad => \unidade_seg|Q\(3),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X18_Y20_N24
\unidade_seg|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_seg|Q~1_combout\ = (!load_enable(0) & ((\unidade_seg|Q\(0) & (!\unidade_seg|Q\(1) & !\Equal5~0_combout\)) # (!\unidade_seg|Q\(0) & (\unidade_seg|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(0),
	datab => \unidade_seg|Q\(0),
	datac => \unidade_seg|Q\(1),
	datad => \Equal5~0_combout\,
	combout => \unidade_seg|Q~1_combout\);

-- Location: LCFF_X18_Y20_N25
\unidade_seg|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_seg|Q~1_combout\,
	ena => ALT_INV_cont_enable(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_seg|Q\(1));

-- Location: LCCOMB_X18_Y20_N14
\unidade_seg|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_seg|Add0~0_combout\ = \unidade_seg|Q\(2) $ (((\unidade_seg|Q\(1) & \unidade_seg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidade_seg|Q\(2),
	datac => \unidade_seg|Q\(1),
	datad => \unidade_seg|Q\(0),
	combout => \unidade_seg|Add0~0_combout\);

-- Location: LCCOMB_X18_Y20_N18
\unidade_seg|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_seg|Q~2_combout\ = (!load_enable(0) & (\unidade_seg|Add0~0_combout\ & ((!\Equal5~0_combout\) # (!\unidade_seg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(0),
	datab => \unidade_seg|Q\(0),
	datac => \unidade_seg|Add0~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \unidade_seg|Q~2_combout\);

-- Location: LCFF_X18_Y20_N19
\unidade_seg|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_seg|Q~2_combout\,
	ena => ALT_INV_cont_enable(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_seg|Q\(2));

-- Location: LCCOMB_X19_Y20_N28
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\unidade_seg|Q\(3) & (!\unidade_seg|Q\(0) & (!\unidade_seg|Q\(2) & !\unidade_seg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_seg|Q\(3),
	datab => \unidade_seg|Q\(0),
	datac => \unidade_seg|Q\(2),
	datad => \unidade_seg|Q\(1),
	combout => \Equal5~1_combout\);

-- Location: LCFF_X19_Y20_N29
\cont_enable[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \Equal5~1_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_enable(1));

-- Location: LCFF_X19_Y20_N23
\dezena_seg|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_seg|Q~0_combout\,
	ena => cont_enable(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_seg|Q\(0));

-- Location: LCCOMB_X19_Y20_N10
\dezena_seg|Q[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_seg|Q[3]~1_combout\ = ((\dezena_seg|Q\(2)) # ((\dezena_seg|Q\(1)) # (!\dezena_seg|Q\(0)))) # (!\dezena_seg|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_seg|Q\(3),
	datab => \dezena_seg|Q\(2),
	datac => \dezena_seg|Q\(1),
	datad => \dezena_seg|Q\(0),
	combout => \dezena_seg|Q[3]~1_combout\);

-- Location: LCCOMB_X19_Y20_N20
\dezena_seg|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_seg|Q~2_combout\ = (!load_enable(0) & (\dezena_seg|Q[3]~1_combout\ & (\dezena_seg|Q\(0) $ (\dezena_seg|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_seg|Q\(0),
	datab => load_enable(0),
	datac => \dezena_seg|Q\(1),
	datad => \dezena_seg|Q[3]~1_combout\,
	combout => \dezena_seg|Q~2_combout\);

-- Location: LCFF_X19_Y20_N21
\dezena_seg|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_seg|Q~2_combout\,
	ena => cont_enable(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_seg|Q\(1));

-- Location: LCCOMB_X19_Y20_N4
\dezena_seg|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_seg|Add0~0_combout\ = \dezena_seg|Q\(2) $ (((\dezena_seg|Q\(1) & \dezena_seg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dezena_seg|Q\(2),
	datac => \dezena_seg|Q\(1),
	datad => \dezena_seg|Q\(0),
	combout => \dezena_seg|Add0~0_combout\);

-- Location: LCCOMB_X19_Y20_N30
\dezena_seg|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_seg|Q~3_combout\ = (!load_enable(0) & (\dezena_seg|Add0~0_combout\ & \dezena_seg|Q[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => load_enable(0),
	datac => \dezena_seg|Add0~0_combout\,
	datad => \dezena_seg|Q[3]~1_combout\,
	combout => \dezena_seg|Q~3_combout\);

-- Location: LCFF_X19_Y20_N31
\dezena_seg|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_seg|Q~3_combout\,
	ena => cont_enable(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_seg|Q\(2));

-- Location: LCCOMB_X19_Y20_N14
\dezena_seg|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_seg|Add0~1_combout\ = \dezena_seg|Q\(3) $ (((\dezena_seg|Q\(2) & (\dezena_seg|Q\(1) & \dezena_seg|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_seg|Q\(3),
	datab => \dezena_seg|Q\(2),
	datac => \dezena_seg|Q\(1),
	datad => \dezena_seg|Q\(0),
	combout => \dezena_seg|Add0~1_combout\);

-- Location: LCCOMB_X19_Y20_N24
\dezena_seg|Q~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_seg|Q~4_combout\ = (!load_enable(0) & (\dezena_seg|Add0~1_combout\ & \dezena_seg|Q[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => load_enable(0),
	datac => \dezena_seg|Add0~1_combout\,
	datad => \dezena_seg|Q[3]~1_combout\,
	combout => \dezena_seg|Q~4_combout\);

-- Location: LCFF_X19_Y20_N25
\dezena_seg|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_seg|Q~4_combout\,
	ena => cont_enable(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_seg|Q\(3));

-- Location: LCCOMB_X19_Y20_N26
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\dezena_seg|Q\(1) & (\dezena_seg|Q\(2) & (!\dezena_seg|Q\(3) & \dezena_seg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_seg|Q\(1),
	datab => \dezena_seg|Q\(2),
	datac => \dezena_seg|Q\(3),
	datad => \dezena_seg|Q\(0),
	combout => \Equal4~0_combout\);

-- Location: LCFF_X19_Y20_N27
\cont_enable[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \Equal4~0_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_enable(2));

-- Location: LCFF_X20_Y20_N9
\unidade_min|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_min|Q~0_combout\,
	ena => cont_enable(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_min|Q\(0));

-- Location: LCCOMB_X20_Y20_N26
\unidade_min|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_min|Add0~1_combout\ = \unidade_min|Q\(2) $ (((\unidade_min|Q\(1) & \unidade_min|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidade_min|Q\(1),
	datac => \unidade_min|Q\(0),
	datad => \unidade_min|Q\(2),
	combout => \unidade_min|Add0~1_combout\);

-- Location: LCCOMB_X20_Y20_N28
\unidade_min|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_min|Q~2_combout\ = (load_enable(2) & (\SW~combout\(2))) # (!load_enable(2) & (((!\unidade_min|Equal0~0_combout\ & \unidade_min|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(2),
	datab => \SW~combout\(2),
	datac => \unidade_min|Equal0~0_combout\,
	datad => \unidade_min|Add0~1_combout\,
	combout => \unidade_min|Q~2_combout\);

-- Location: LCFF_X20_Y20_N29
\unidade_min|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_min|Q~2_combout\,
	ena => cont_enable(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_min|Q\(2));

-- Location: LCCOMB_X20_Y20_N20
\unidade_min|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_min|Equal0~0_combout\ = (\unidade_min|Q\(3) & (!\unidade_min|Q\(2) & (\unidade_min|Q\(0) & !\unidade_min|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_min|Q\(3),
	datab => \unidade_min|Q\(2),
	datac => \unidade_min|Q\(0),
	datad => \unidade_min|Q\(1),
	combout => \unidade_min|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y20_N18
\unidade_min|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_min|Add0~0_combout\ = \unidade_min|Q\(0) $ (\unidade_min|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unidade_min|Q\(0),
	datad => \unidade_min|Q\(1),
	combout => \unidade_min|Add0~0_combout\);

-- Location: LCCOMB_X20_Y20_N22
\unidade_min|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_min|Q~1_combout\ = (load_enable(2) & (\SW~combout\(1))) # (!load_enable(2) & (((!\unidade_min|Equal0~0_combout\ & \unidade_min|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(2),
	datab => \SW~combout\(1),
	datac => \unidade_min|Equal0~0_combout\,
	datad => \unidade_min|Add0~0_combout\,
	combout => \unidade_min|Q~1_combout\);

-- Location: LCFF_X20_Y20_N23
\unidade_min|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_min|Q~1_combout\,
	ena => cont_enable(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_min|Q\(1));

-- Location: LCCOMB_X19_Y20_N18
\display0_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0_out~1_combout\ = (\SW~combout\(8) & (\unidade_min|Q\(1))) # (!\SW~combout\(8) & ((\unidade_seg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datac => \unidade_min|Q\(1),
	datad => \unidade_seg|Q\(1),
	combout => \display0_out~1_combout\);

-- Location: LCFF_X19_Y20_N19
\display0_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display0_out~1_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display0_out(1));

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

-- Location: LCCOMB_X16_Y20_N20
\display0_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0_out~2_combout\ = (\SW~combout\(8) & ((\unidade_min|Q\(2)))) # (!\SW~combout\(8) & (\unidade_seg|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \unidade_seg|Q\(2),
	datad => \unidade_min|Q\(2),
	combout => \display0_out~2_combout\);

-- Location: LCFF_X16_Y20_N21
\display0_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display0_out~2_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display0_out(2));

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

-- Location: LCCOMB_X20_Y20_N12
\unidade_min|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_min|Add0~2_combout\ = \unidade_min|Q\(3) $ (((\unidade_min|Q\(2) & (\unidade_min|Q\(0) & \unidade_min|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_min|Q\(3),
	datab => \unidade_min|Q\(2),
	datac => \unidade_min|Q\(0),
	datad => \unidade_min|Q\(1),
	combout => \unidade_min|Add0~2_combout\);

-- Location: LCCOMB_X20_Y20_N10
\unidade_min|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_min|Q~3_combout\ = (load_enable(2) & (\SW~combout\(3))) # (!load_enable(2) & (((!\unidade_min|Equal0~0_combout\ & \unidade_min|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(2),
	datab => \SW~combout\(3),
	datac => \unidade_min|Equal0~0_combout\,
	datad => \unidade_min|Add0~2_combout\,
	combout => \unidade_min|Q~3_combout\);

-- Location: LCFF_X20_Y20_N11
\unidade_min|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_min|Q~3_combout\,
	ena => cont_enable(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_min|Q\(3));

-- Location: LCCOMB_X15_Y20_N20
\display0_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0_out~3_combout\ = (\SW~combout\(8) & ((\unidade_min|Q\(3)))) # (!\SW~combout\(8) & (\unidade_seg|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \unidade_seg|Q\(3),
	datad => \unidade_min|Q\(3),
	combout => \display0_out~3_combout\);

-- Location: LCFF_X15_Y20_N21
\display0_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display0_out~3_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display0_out(3));

-- Location: LCCOMB_X19_Y20_N16
\display0_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display0_out~0_combout\ = (\SW~combout\(8) & (\unidade_min|Q\(0))) # (!\SW~combout\(8) & ((\unidade_seg|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datac => \unidade_min|Q\(0),
	datad => \unidade_seg|Q\(0),
	combout => \display0_out~0_combout\);

-- Location: LCFF_X19_Y20_N17
\display0_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display0_out~0_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display0_out(0));

-- Location: LCCOMB_X4_Y20_N28
\display_0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_0|Mux6~0_combout\ = (!display0_out(1) & (!display0_out(3) & (display0_out(2) $ (display0_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display0_out(1),
	datab => display0_out(2),
	datac => display0_out(3),
	datad => display0_out(0),
	combout => \display_0|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y20_N10
\display_0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_0|Mux5~0_combout\ = (display0_out(2) & ((display0_out(3)) # (display0_out(1) $ (display0_out(0))))) # (!display0_out(2) & (display0_out(1) & (display0_out(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display0_out(1),
	datab => display0_out(2),
	datac => display0_out(3),
	datad => display0_out(0),
	combout => \display_0|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y20_N16
\display_0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_0|Mux4~0_combout\ = (display0_out(2) & (((display0_out(3))))) # (!display0_out(2) & (display0_out(1) & ((display0_out(3)) # (!display0_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display0_out(1),
	datab => display0_out(2),
	datac => display0_out(3),
	datad => display0_out(0),
	combout => \display_0|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y20_N26
\display_0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_0|Mux3~0_combout\ = (!display0_out(3) & ((display0_out(1) & (display0_out(2) & display0_out(0))) # (!display0_out(1) & (display0_out(2) $ (display0_out(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display0_out(1),
	datab => display0_out(2),
	datac => display0_out(3),
	datad => display0_out(0),
	combout => \display_0|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y20_N20
\display_0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_0|Mux2~0_combout\ = (display0_out(1) & (((!display0_out(3) & display0_out(0))))) # (!display0_out(1) & ((display0_out(2) & (!display0_out(3))) # (!display0_out(2) & ((display0_out(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display0_out(1),
	datab => display0_out(2),
	datac => display0_out(3),
	datad => display0_out(0),
	combout => \display_0|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y20_N6
\display_0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_0|Mux1~0_combout\ = (!display0_out(3) & ((display0_out(1) & ((display0_out(0)) # (!display0_out(2)))) # (!display0_out(1) & (!display0_out(2) & display0_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display0_out(1),
	datab => display0_out(2),
	datac => display0_out(3),
	datad => display0_out(0),
	combout => \display_0|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y20_N12
\display_0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_0|Mux0~0_combout\ = (display0_out(3)) # ((display0_out(1) & ((!display0_out(0)) # (!display0_out(2)))) # (!display0_out(1) & (display0_out(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display0_out(1),
	datab => display0_out(2),
	datac => display0_out(3),
	datad => display0_out(0),
	combout => \display_0|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y20_N10
\display1_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1_out~1_combout\ = (\SW~combout\(8) & (\dezena_min|Q\(1))) # (!\SW~combout\(8) & ((\dezena_seg|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_min|Q\(1),
	datac => \SW~combout\(8),
	datad => \dezena_seg|Q\(1),
	combout => \display1_out~1_combout\);

-- Location: LCFF_X16_Y20_N11
\display1_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display1_out~1_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display1_out(1));

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

-- Location: LCCOMB_X20_Y19_N0
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SW~combout\(5) & !\SW~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X20_Y19_N1
\load_enable_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \Mux1~0_combout\,
	ena => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable_temp(3));

-- Location: LCCOMB_X20_Y20_N14
\load_enable~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \load_enable~3_combout\ = (\SW~combout\(9) & load_enable_temp(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(9),
	datad => load_enable_temp(3),
	combout => \load_enable~3_combout\);

-- Location: LCCOMB_X20_Y20_N16
\load_enable[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \load_enable[2]~1_combout\ = (\KEY~combout\(0)) # (!\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(9),
	datad => \KEY~combout\(0),
	combout => \load_enable[2]~1_combout\);

-- Location: LCFF_X20_Y20_N15
\load_enable[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \load_enable~3_combout\,
	ena => \load_enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable(3));

-- Location: LCCOMB_X16_Y20_N22
\dezena_min|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_min|Q~0_combout\ = (load_enable(3) & (\SW~combout\(0))) # (!load_enable(3) & ((!\dezena_min|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \dezena_min|Q\(0),
	datad => load_enable(3),
	combout => \dezena_min|Q~0_combout\);

-- Location: LCCOMB_X16_Y20_N26
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\unidade_min|Q\(0) & (!\unidade_min|Q\(1) & (\unidade_min|Q\(3) & !\unidade_min|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_min|Q\(0),
	datab => \unidade_min|Q\(1),
	datac => \unidade_min|Q\(3),
	datad => \unidade_min|Q\(2),
	combout => \Equal3~0_combout\);

-- Location: LCFF_X16_Y20_N27
\cont_enable[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \Equal3~0_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_enable(3));

-- Location: LCFF_X16_Y20_N23
\dezena_min|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_min|Q~0_combout\,
	ena => cont_enable(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_min|Q\(0));

-- Location: LCCOMB_X16_Y20_N30
\dezena_min|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_min|Add0~2_combout\ = \dezena_min|Q\(3) $ (((\dezena_min|Q\(1) & (\dezena_min|Q\(0) & \dezena_min|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_min|Q\(1),
	datab => \dezena_min|Q\(0),
	datac => \dezena_min|Q\(3),
	datad => \dezena_min|Q\(2),
	combout => \dezena_min|Add0~2_combout\);

-- Location: LCCOMB_X16_Y20_N8
\dezena_min|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_min|Q~3_combout\ = (load_enable(3) & (\SW~combout\(3))) # (!load_enable(3) & (((!\dezena_min|Equal0~0_combout\ & \dezena_min|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => load_enable(3),
	datac => \dezena_min|Equal0~0_combout\,
	datad => \dezena_min|Add0~2_combout\,
	combout => \dezena_min|Q~3_combout\);

-- Location: LCFF_X16_Y20_N9
\dezena_min|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_min|Q~3_combout\,
	ena => cont_enable(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_min|Q\(3));

-- Location: LCCOMB_X16_Y20_N14
\dezena_min|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_min|Equal0~0_combout\ = (!\dezena_min|Q\(1) & (\dezena_min|Q\(0) & (\dezena_min|Q\(3) & !\dezena_min|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_min|Q\(1),
	datab => \dezena_min|Q\(0),
	datac => \dezena_min|Q\(3),
	datad => \dezena_min|Q\(2),
	combout => \dezena_min|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y20_N4
\dezena_min|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_min|Add0~0_combout\ = \dezena_min|Q\(1) $ (\dezena_min|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dezena_min|Q\(1),
	datad => \dezena_min|Q\(0),
	combout => \dezena_min|Add0~0_combout\);

-- Location: LCCOMB_X16_Y20_N16
\dezena_min|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_min|Q~1_combout\ = (load_enable(3) & (\SW~combout\(1))) # (!load_enable(3) & (((\dezena_min|Add0~0_combout\ & !\dezena_min|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \dezena_min|Add0~0_combout\,
	datac => \dezena_min|Equal0~0_combout\,
	datad => load_enable(3),
	combout => \dezena_min|Q~1_combout\);

-- Location: LCFF_X16_Y20_N17
\dezena_min|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_min|Q~1_combout\,
	ena => cont_enable(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_min|Q\(1));

-- Location: LCCOMB_X16_Y20_N28
\dezena_min|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_min|Add0~1_combout\ = \dezena_min|Q\(2) $ (((\dezena_min|Q\(0) & \dezena_min|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dezena_min|Q\(0),
	datac => \dezena_min|Q\(1),
	datad => \dezena_min|Q\(2),
	combout => \dezena_min|Add0~1_combout\);

-- Location: LCCOMB_X16_Y20_N18
\dezena_min|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_min|Q~2_combout\ = (load_enable(3) & (\SW~combout\(2))) # (!load_enable(3) & (((!\dezena_min|Equal0~0_combout\ & \dezena_min|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => load_enable(3),
	datab => \SW~combout\(2),
	datac => \dezena_min|Equal0~0_combout\,
	datad => \dezena_min|Add0~1_combout\,
	combout => \dezena_min|Q~2_combout\);

-- Location: LCFF_X16_Y20_N19
\dezena_min|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_min|Q~2_combout\,
	ena => cont_enable(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_min|Q\(2));

-- Location: LCCOMB_X16_Y20_N12
\display1_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1_out~2_combout\ = (\SW~combout\(8) & (\dezena_min|Q\(2))) # (!\SW~combout\(8) & ((\dezena_seg|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dezena_min|Q\(2),
	datac => \SW~combout\(8),
	datad => \dezena_seg|Q\(2),
	combout => \display1_out~2_combout\);

-- Location: LCFF_X16_Y20_N13
\display1_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display1_out~2_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display1_out(2));

-- Location: LCCOMB_X15_Y20_N10
\display1_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1_out~3_combout\ = (\SW~combout\(8) & (\dezena_min|Q\(3))) # (!\SW~combout\(8) & ((\dezena_seg|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \dezena_min|Q\(3),
	datad => \dezena_seg|Q\(3),
	combout => \display1_out~3_combout\);

-- Location: LCFF_X15_Y20_N11
\display1_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display1_out~3_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display1_out(3));

-- Location: LCCOMB_X19_Y20_N12
\display1_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display1_out~0_combout\ = (\SW~combout\(8) & ((\dezena_min|Q\(0)))) # (!\SW~combout\(8) & (\dezena_seg|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dezena_seg|Q\(0),
	datac => \SW~combout\(8),
	datad => \dezena_min|Q\(0),
	combout => \display1_out~0_combout\);

-- Location: LCFF_X19_Y20_N13
\display1_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display1_out~0_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display1_out(0));

-- Location: LCCOMB_X1_Y20_N20
\display_1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_1|Mux6~0_combout\ = (!display1_out(1) & (!display1_out(3) & (display1_out(2) $ (display1_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display1_out(1),
	datab => display1_out(2),
	datac => display1_out(3),
	datad => display1_out(0),
	combout => \display_1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y20_N2
\display_1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_1|Mux5~0_combout\ = (display1_out(2) & ((display1_out(3)) # (display1_out(1) $ (display1_out(0))))) # (!display1_out(2) & (display1_out(1) & (display1_out(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display1_out(1),
	datab => display1_out(2),
	datac => display1_out(3),
	datad => display1_out(0),
	combout => \display_1|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y20_N0
\display_1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_1|Mux4~0_combout\ = (display1_out(2) & (((display1_out(3))))) # (!display1_out(2) & (display1_out(1) & ((display1_out(3)) # (!display1_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display1_out(1),
	datab => display1_out(2),
	datac => display1_out(3),
	datad => display1_out(0),
	combout => \display_1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y20_N10
\display_1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_1|Mux3~0_combout\ = (!display1_out(3) & ((display1_out(1) & (display1_out(2) & display1_out(0))) # (!display1_out(1) & (display1_out(2) $ (display1_out(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display1_out(1),
	datab => display1_out(2),
	datac => display1_out(3),
	datad => display1_out(0),
	combout => \display_1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y20_N12
\display_1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_1|Mux2~0_combout\ = (display1_out(1) & (((!display1_out(3) & display1_out(0))))) # (!display1_out(1) & ((display1_out(2) & (!display1_out(3))) # (!display1_out(2) & ((display1_out(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display1_out(1),
	datab => display1_out(2),
	datac => display1_out(3),
	datad => display1_out(0),
	combout => \display_1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y20_N22
\display_1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_1|Mux1~0_combout\ = (!display1_out(3) & ((display1_out(1) & ((display1_out(0)) # (!display1_out(2)))) # (!display1_out(1) & (!display1_out(2) & display1_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display1_out(1),
	datab => display1_out(2),
	datac => display1_out(3),
	datad => display1_out(0),
	combout => \display_1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y20_N4
\display_1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_1|Mux0~0_combout\ = (display1_out(3)) # ((display1_out(1) & ((!display1_out(0)) # (!display1_out(2)))) # (!display1_out(1) & (display1_out(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display1_out(1),
	datab => display1_out(2),
	datac => display1_out(3),
	datad => display1_out(0),
	combout => \display_1|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y19_N2
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\SW~combout\(5) & \SW~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \Mux1~1_combout\);

-- Location: LCFF_X20_Y19_N3
\load_enable_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \Mux1~1_combout\,
	ena => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable_temp(4));

-- Location: LCCOMB_X20_Y19_N24
\load_enable~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \load_enable~4_combout\ = (\SW~combout\(9) & load_enable_temp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(9),
	datad => load_enable_temp(4),
	combout => \load_enable~4_combout\);

-- Location: LCFF_X20_Y19_N25
\load_enable[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \load_enable~4_combout\,
	ena => \load_enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable(4));

-- Location: LCCOMB_X15_Y19_N18
\unidade_hora|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_hora|Q~0_combout\ = (load_enable(4) & (\SW~combout\(0))) # (!load_enable(4) & ((!\unidade_hora|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \unidade_hora|Q\(0),
	datad => load_enable(4),
	combout => \unidade_hora|Q~0_combout\);

-- Location: LCCOMB_X15_Y19_N26
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\dezena_min|Q\(1) & (\dezena_min|Q\(0) & (\dezena_min|Q\(2) & !\dezena_min|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_min|Q\(1),
	datab => \dezena_min|Q\(0),
	datac => \dezena_min|Q\(2),
	datad => \dezena_min|Q\(3),
	combout => \Equal2~0_combout\);

-- Location: LCFF_X15_Y19_N27
\cont_enable[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \Equal2~0_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_enable(4));

-- Location: LCFF_X15_Y19_N19
\unidade_hora|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_hora|Q~0_combout\,
	ena => cont_enable(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_hora|Q\(0));

-- Location: LCCOMB_X15_Y19_N30
\unidade_hora|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_hora|Add0~2_combout\ = \unidade_hora|Q\(3) $ (((\unidade_hora|Q\(1) & (\unidade_hora|Q\(0) & \unidade_hora|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_hora|Q\(1),
	datab => \unidade_hora|Q\(0),
	datac => \unidade_hora|Q\(3),
	datad => \unidade_hora|Q\(2),
	combout => \unidade_hora|Add0~2_combout\);

-- Location: LCCOMB_X15_Y19_N24
\unidade_hora|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_hora|Q~3_combout\ = (load_enable(4) & (\SW~combout\(3))) # (!load_enable(4) & (((\unidade_hora|Add0~2_combout\ & !\unidade_hora|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => \unidade_hora|Add0~2_combout\,
	datac => \unidade_hora|Equal0~0_combout\,
	datad => load_enable(4),
	combout => \unidade_hora|Q~3_combout\);

-- Location: LCFF_X15_Y19_N25
\unidade_hora|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_hora|Q~3_combout\,
	ena => cont_enable(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_hora|Q\(3));

-- Location: LCCOMB_X15_Y19_N14
\unidade_hora|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_hora|Equal0~0_combout\ = (!\unidade_hora|Q\(1) & (\unidade_hora|Q\(0) & (\unidade_hora|Q\(3) & !\unidade_hora|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_hora|Q\(1),
	datab => \unidade_hora|Q\(0),
	datac => \unidade_hora|Q\(3),
	datad => \unidade_hora|Q\(2),
	combout => \unidade_hora|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y19_N20
\unidade_hora|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_hora|Add0~0_combout\ = \unidade_hora|Q\(1) $ (\unidade_hora|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \unidade_hora|Q\(1),
	datad => \unidade_hora|Q\(0),
	combout => \unidade_hora|Add0~0_combout\);

-- Location: LCCOMB_X15_Y19_N16
\unidade_hora|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_hora|Q~1_combout\ = (load_enable(4) & (\SW~combout\(1))) # (!load_enable(4) & (((!\unidade_hora|Equal0~0_combout\ & \unidade_hora|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \unidade_hora|Equal0~0_combout\,
	datac => \unidade_hora|Add0~0_combout\,
	datad => load_enable(4),
	combout => \unidade_hora|Q~1_combout\);

-- Location: LCFF_X15_Y19_N17
\unidade_hora|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_hora|Q~1_combout\,
	ena => cont_enable(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_hora|Q\(1));

-- Location: LCCOMB_X15_Y19_N4
\unidade_hora|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_hora|Add0~1_combout\ = \unidade_hora|Q\(2) $ (((\unidade_hora|Q\(0) & \unidade_hora|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \unidade_hora|Q\(0),
	datac => \unidade_hora|Q\(1),
	datad => \unidade_hora|Q\(2),
	combout => \unidade_hora|Add0~1_combout\);

-- Location: LCCOMB_X15_Y19_N22
\unidade_hora|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \unidade_hora|Q~2_combout\ = (load_enable(4) & (\SW~combout\(2))) # (!load_enable(4) & (((\unidade_hora|Add0~1_combout\ & !\unidade_hora|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \unidade_hora|Add0~1_combout\,
	datac => \unidade_hora|Equal0~0_combout\,
	datad => load_enable(4),
	combout => \unidade_hora|Q~2_combout\);

-- Location: LCFF_X15_Y19_N23
\unidade_hora|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \unidade_hora|Q~2_combout\,
	ena => cont_enable(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \unidade_hora|Q\(2));

-- Location: LCCOMB_X16_Y20_N0
\display2_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2_out~2_combout\ = (\SW~combout\(8) & (\unidade_hora|Q\(2))) # (!\SW~combout\(8) & ((\unidade_min|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \unidade_hora|Q\(2),
	datad => \unidade_min|Q\(2),
	combout => \display2_out~2_combout\);

-- Location: LCFF_X16_Y20_N1
\display2_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display2_out~2_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display2_out(2));

-- Location: LCCOMB_X15_Y20_N12
\display2_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2_out~1_combout\ = (\SW~combout\(8) & (\unidade_hora|Q\(1))) # (!\SW~combout\(8) & ((\unidade_min|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \unidade_hora|Q\(1),
	datad => \unidade_min|Q\(1),
	combout => \display2_out~1_combout\);

-- Location: LCFF_X15_Y20_N13
\display2_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display2_out~1_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display2_out(1));

-- Location: LCCOMB_X15_Y20_N18
\display2_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2_out~3_combout\ = (\SW~combout\(8) & (\unidade_hora|Q\(3))) # (!\SW~combout\(8) & ((\unidade_min|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \unidade_hora|Q\(3),
	datad => \unidade_min|Q\(3),
	combout => \display2_out~3_combout\);

-- Location: LCFF_X15_Y20_N19
\display2_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display2_out~3_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display2_out(3));

-- Location: LCCOMB_X16_Y20_N2
\display2_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display2_out~0_combout\ = (\SW~combout\(8) & ((\unidade_hora|Q\(0)))) # (!\SW~combout\(8) & (\unidade_min|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \unidade_min|Q\(0),
	datad => \unidade_hora|Q\(0),
	combout => \display2_out~0_combout\);

-- Location: LCFF_X16_Y20_N3
\display2_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display2_out~0_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display2_out(0));

-- Location: LCCOMB_X1_Y23_N16
\display_2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_2|Mux6~0_combout\ = (!display2_out(1) & (!display2_out(3) & (display2_out(2) $ (display2_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display2_out(2),
	datab => display2_out(1),
	datac => display2_out(3),
	datad => display2_out(0),
	combout => \display_2|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\display_2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_2|Mux5~0_combout\ = (display2_out(2) & ((display2_out(3)) # (display2_out(1) $ (display2_out(0))))) # (!display2_out(2) & (display2_out(1) & (display2_out(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display2_out(2),
	datab => display2_out(1),
	datac => display2_out(3),
	datad => display2_out(0),
	combout => \display_2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y23_N12
\display_2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_2|Mux4~0_combout\ = (display2_out(2) & (((display2_out(3))))) # (!display2_out(2) & (display2_out(1) & ((display2_out(3)) # (!display2_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display2_out(2),
	datab => display2_out(1),
	datac => display2_out(3),
	datad => display2_out(0),
	combout => \display_2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\display_2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_2|Mux3~0_combout\ = (!display2_out(3) & ((display2_out(2) & (display2_out(1) $ (!display2_out(0)))) # (!display2_out(2) & (!display2_out(1) & display2_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display2_out(2),
	datab => display2_out(1),
	datac => display2_out(3),
	datad => display2_out(0),
	combout => \display_2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\display_2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_2|Mux2~0_combout\ = (display2_out(1) & (((!display2_out(3) & display2_out(0))))) # (!display2_out(1) & ((display2_out(2) & (!display2_out(3))) # (!display2_out(2) & ((display2_out(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display2_out(2),
	datab => display2_out(1),
	datac => display2_out(3),
	datad => display2_out(0),
	combout => \display_2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\display_2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_2|Mux1~0_combout\ = (!display2_out(3) & ((display2_out(2) & (display2_out(1) & display2_out(0))) # (!display2_out(2) & ((display2_out(1)) # (display2_out(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display2_out(2),
	datab => display2_out(1),
	datac => display2_out(3),
	datad => display2_out(0),
	combout => \display_2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\display_2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_2|Mux0~0_combout\ = (display2_out(3)) # ((display2_out(2) & ((!display2_out(0)) # (!display2_out(1)))) # (!display2_out(2) & (display2_out(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display2_out(2),
	datab => display2_out(1),
	datac => display2_out(3),
	datad => display2_out(0),
	combout => \display_2|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y19_N8
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\SW~combout\(5) & \SW~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(5),
	datad => \SW~combout\(6),
	combout => \Mux1~2_combout\);

-- Location: LCFF_X20_Y19_N9
\load_enable_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \Mux1~2_combout\,
	ena => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable_temp(5));

-- Location: LCCOMB_X16_Y19_N28
\load_enable~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \load_enable~5_combout\ = (\SW~combout\(9) & load_enable_temp(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(9),
	datad => load_enable_temp(5),
	combout => \load_enable~5_combout\);

-- Location: LCFF_X16_Y19_N29
\load_enable[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \load_enable~5_combout\,
	ena => \load_enable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => load_enable(5));

-- Location: LCCOMB_X16_Y19_N16
\dezena_hora|Q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_hora|Q~0_combout\ = (load_enable(5) & (\SW~combout\(0))) # (!load_enable(5) & ((!\dezena_hora|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \dezena_hora|Q\(0),
	datad => load_enable(5),
	combout => \dezena_hora|Q~0_combout\);

-- Location: LCCOMB_X16_Y19_N20
\dezena_hora|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_hora|Add0~2_combout\ = \dezena_hora|Q\(3) $ (((\dezena_hora|Q\(0) & (\dezena_hora|Q\(1) & \dezena_hora|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_hora|Q\(0),
	datab => \dezena_hora|Q\(1),
	datac => \dezena_hora|Q\(2),
	datad => \dezena_hora|Q\(3),
	combout => \dezena_hora|Add0~2_combout\);

-- Location: LCCOMB_X16_Y19_N22
\dezena_hora|Q~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_hora|Q~3_combout\ = (load_enable(5) & (\SW~combout\(3))) # (!load_enable(5) & (((\dezena_hora|Add0~2_combout\ & !\dezena_hora|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datab => load_enable(5),
	datac => \dezena_hora|Add0~2_combout\,
	datad => \dezena_hora|Equal0~0_combout\,
	combout => \dezena_hora|Q~3_combout\);

-- Location: LCFF_X16_Y19_N23
\dezena_hora|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_hora|Q~3_combout\,
	ena => cont_enable(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_hora|Q\(3));

-- Location: LCCOMB_X16_Y19_N10
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\dezena_hora|Q\(0) & (!\dezena_hora|Q\(3) & (!\dezena_hora|Q\(2) & \dezena_hora|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_hora|Q\(0),
	datab => \dezena_hora|Q\(3),
	datac => \dezena_hora|Q\(2),
	datad => \dezena_hora|Q\(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y19_N10
\cont_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_enable~0_combout\ = (!\unidade_hora|Q\(0) & (!\unidade_hora|Q\(2) & (\unidade_hora|Q\(3) & !\unidade_hora|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \unidade_hora|Q\(0),
	datab => \unidade_hora|Q\(2),
	datac => \unidade_hora|Q\(3),
	datad => \unidade_hora|Q\(1),
	combout => \cont_enable~0_combout\);

-- Location: LCCOMB_X15_Y19_N12
\cont_enable~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cont_enable~1_combout\ = (!\Equal0~0_combout\ & \cont_enable~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => \cont_enable~0_combout\,
	combout => \cont_enable~1_combout\);

-- Location: LCFF_X15_Y19_N13
\cont_enable[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \cont_enable~1_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cont_enable(5));

-- Location: LCFF_X16_Y19_N17
\dezena_hora|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_hora|Q~0_combout\,
	ena => cont_enable(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_hora|Q\(0));

-- Location: LCCOMB_X16_Y19_N14
\dezena_hora|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_hora|Add0~0_combout\ = \dezena_hora|Q\(0) $ (\dezena_hora|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dezena_hora|Q\(0),
	datad => \dezena_hora|Q\(1),
	combout => \dezena_hora|Add0~0_combout\);

-- Location: LCCOMB_X16_Y19_N30
\dezena_hora|Q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_hora|Q~1_combout\ = (load_enable(5) & (\SW~combout\(1))) # (!load_enable(5) & (((\dezena_hora|Add0~0_combout\ & !\dezena_hora|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => load_enable(5),
	datac => \dezena_hora|Add0~0_combout\,
	datad => \dezena_hora|Equal0~0_combout\,
	combout => \dezena_hora|Q~1_combout\);

-- Location: LCFF_X16_Y19_N31
\dezena_hora|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_hora|Q~1_combout\,
	ena => cont_enable(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_hora|Q\(1));

-- Location: LCCOMB_X16_Y19_N24
\dezena_hora|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_hora|Equal0~0_combout\ = (\dezena_hora|Q\(0) & (!\dezena_hora|Q\(1) & (!\dezena_hora|Q\(2) & \dezena_hora|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dezena_hora|Q\(0),
	datab => \dezena_hora|Q\(1),
	datac => \dezena_hora|Q\(2),
	datad => \dezena_hora|Q\(3),
	combout => \dezena_hora|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y19_N26
\dezena_hora|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_hora|Add0~1_combout\ = \dezena_hora|Q\(2) $ (((\dezena_hora|Q\(1) & \dezena_hora|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dezena_hora|Q\(1),
	datac => \dezena_hora|Q\(2),
	datad => \dezena_hora|Q\(0),
	combout => \dezena_hora|Add0~1_combout\);

-- Location: LCCOMB_X16_Y19_N8
\dezena_hora|Q~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dezena_hora|Q~2_combout\ = (load_enable(5) & (\SW~combout\(2))) # (!load_enable(5) & (((!\dezena_hora|Equal0~0_combout\ & \dezena_hora|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => load_enable(5),
	datac => \dezena_hora|Equal0~0_combout\,
	datad => \dezena_hora|Add0~1_combout\,
	combout => \dezena_hora|Q~2_combout\);

-- Location: LCFF_X16_Y19_N9
\dezena_hora|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \dezena_hora|Q~2_combout\,
	ena => cont_enable(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dezena_hora|Q\(2));

-- Location: LCCOMB_X16_Y20_N24
\display3_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3_out~2_combout\ = (\SW~combout\(8) & ((\dezena_hora|Q\(2)))) # (!\SW~combout\(8) & (\dezena_min|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \dezena_min|Q\(2),
	datad => \dezena_hora|Q\(2),
	combout => \display3_out~2_combout\);

-- Location: LCFF_X16_Y20_N25
\display3_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display3_out~2_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display3_out(2));

-- Location: LCCOMB_X15_Y20_N16
\display3_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3_out~3_combout\ = (\SW~combout\(8) & ((\dezena_hora|Q\(3)))) # (!\SW~combout\(8) & (\dezena_min|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \dezena_min|Q\(3),
	datad => \dezena_hora|Q\(3),
	combout => \display3_out~3_combout\);

-- Location: LCFF_X15_Y20_N17
\display3_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display3_out~3_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display3_out(3));

-- Location: LCCOMB_X15_Y19_N28
\display3_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3_out~1_combout\ = (\SW~combout\(8) & ((\dezena_hora|Q\(1)))) # (!\SW~combout\(8) & (\dezena_min|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(8),
	datac => \dezena_min|Q\(1),
	datad => \dezena_hora|Q\(1),
	combout => \display3_out~1_combout\);

-- Location: LCFF_X15_Y19_N29
\display3_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display3_out~1_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display3_out(1));

-- Location: LCCOMB_X16_Y20_N6
\display3_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display3_out~0_combout\ = (\SW~combout\(8) & ((\dezena_hora|Q\(0)))) # (!\SW~combout\(8) & (\dezena_min|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dezena_min|Q\(0),
	datac => \SW~combout\(8),
	datad => \dezena_hora|Q\(0),
	combout => \display3_out~0_combout\);

-- Location: LCFF_X16_Y20_N7
\display3_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \divisor_clk|clk_temp~clkctrl_outclk\,
	datain => \display3_out~0_combout\,
	ena => \ALT_INV_SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => display3_out(0));

-- Location: LCCOMB_X7_Y19_N4
\display_3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_3|Mux6~0_combout\ = (!display3_out(3) & (!display3_out(1) & (display3_out(2) $ (display3_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display3_out(2),
	datab => display3_out(3),
	datac => display3_out(1),
	datad => display3_out(0),
	combout => \display_3|Mux6~0_combout\);

-- Location: LCCOMB_X7_Y19_N10
\display_3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_3|Mux5~0_combout\ = (display3_out(2) & ((display3_out(3)) # (display3_out(1) $ (display3_out(0))))) # (!display3_out(2) & (display3_out(3) & (display3_out(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display3_out(2),
	datab => display3_out(3),
	datac => display3_out(1),
	datad => display3_out(0),
	combout => \display_3|Mux5~0_combout\);

-- Location: LCCOMB_X7_Y19_N0
\display_3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_3|Mux4~0_combout\ = (display3_out(2) & (display3_out(3))) # (!display3_out(2) & (display3_out(1) & ((display3_out(3)) # (!display3_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display3_out(2),
	datab => display3_out(3),
	datac => display3_out(1),
	datad => display3_out(0),
	combout => \display_3|Mux4~0_combout\);

-- Location: LCCOMB_X7_Y19_N26
\display_3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_3|Mux3~0_combout\ = (!display3_out(3) & ((display3_out(2) & (display3_out(1) $ (!display3_out(0)))) # (!display3_out(2) & (!display3_out(1) & display3_out(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display3_out(2),
	datab => display3_out(3),
	datac => display3_out(1),
	datad => display3_out(0),
	combout => \display_3|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y19_N12
\display_3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_3|Mux2~0_combout\ = (display3_out(1) & (((!display3_out(3) & display3_out(0))))) # (!display3_out(1) & ((display3_out(2) & (!display3_out(3))) # (!display3_out(2) & ((display3_out(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display3_out(2),
	datab => display3_out(3),
	datac => display3_out(1),
	datad => display3_out(0),
	combout => \display_3|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y19_N22
\display_3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_3|Mux1~0_combout\ = (!display3_out(3) & ((display3_out(2) & (display3_out(1) & display3_out(0))) # (!display3_out(2) & ((display3_out(1)) # (display3_out(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display3_out(2),
	datab => display3_out(3),
	datac => display3_out(1),
	datad => display3_out(0),
	combout => \display_3|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y19_N24
\display_3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_3|Mux0~0_combout\ = (display3_out(3)) # ((display3_out(2) & ((!display3_out(0)) # (!display3_out(1)))) # (!display3_out(2) & (display3_out(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display3_out(2),
	datab => display3_out(3),
	datac => display3_out(1),
	datad => display3_out(0),
	combout => \display_3|Mux0~0_combout\);

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
	padio => ww_SW(4));

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
	padio => ww_SW(7));

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
	padio => ww_KEY(1));

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
	padio => ww_KEY(2));

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
	datain => \display_0|Mux6~0_combout\,
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
	datain => \display_0|Mux5~0_combout\,
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
	datain => \display_0|Mux4~0_combout\,
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
	datain => \display_0|Mux3~0_combout\,
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
	datain => \display_0|Mux2~0_combout\,
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
	datain => \display_0|Mux1~0_combout\,
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
	datain => \display_0|ALT_INV_Mux0~0_combout\,
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
	datain => \display_1|Mux6~0_combout\,
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
	datain => \display_1|Mux5~0_combout\,
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
	datain => \display_1|Mux4~0_combout\,
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
	datain => \display_1|Mux3~0_combout\,
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
	datain => \display_1|Mux2~0_combout\,
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
	datain => \display_1|Mux1~0_combout\,
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
	datain => \display_1|ALT_INV_Mux0~0_combout\,
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
	datain => \display_2|Mux6~0_combout\,
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
	datain => \display_2|Mux5~0_combout\,
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
	datain => \display_2|Mux4~0_combout\,
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
	datain => \display_2|Mux3~0_combout\,
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
	datain => \display_2|Mux2~0_combout\,
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
	datain => \display_2|Mux1~0_combout\,
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
	datain => \display_2|ALT_INV_Mux0~0_combout\,
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
	datain => \display_3|Mux6~0_combout\,
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
	datain => \display_3|Mux5~0_combout\,
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
	datain => \display_3|Mux4~0_combout\,
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
	datain => \display_3|Mux3~0_combout\,
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
	datain => \display_3|Mux2~0_combout\,
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
	datain => \display_3|Mux1~0_combout\,
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
	datain => \display_3|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));
END structure;


