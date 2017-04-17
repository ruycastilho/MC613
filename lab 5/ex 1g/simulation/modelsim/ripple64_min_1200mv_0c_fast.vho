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

-- DATE "04/17/2017 12:01:07"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ripple64 IS
    PORT (
	x : IN std_logic_vector(63 DOWNTO 0);
	y : IN std_logic_vector(63 DOWNTO 0);
	cin : IN std_logic;
	f : OUT std_logic_vector(63 DOWNTO 0);
	cout : OUT std_logic;
	v : OUT std_logic
	);
END ripple64;

-- Design Ports Information
-- f[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[5]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[7]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[8]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[9]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[10]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[12]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[13]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[14]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[16]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[17]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[19]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[20]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[21]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[22]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[23]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[24]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[25]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[26]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[27]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[28]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[29]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[30]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[31]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[32]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[33]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[34]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[35]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[36]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[37]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[38]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[39]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[40]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[41]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[42]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[43]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[44]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[45]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[46]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[47]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[48]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[49]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[50]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[51]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[52]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[53]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[54]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[55]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[56]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[57]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[58]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[59]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[60]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[61]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[62]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[63]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[9]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[10]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[11]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[12]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[13]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[14]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[16]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[16]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[17]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[18]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[18]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[19]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[19]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[20]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[20]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[21]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[21]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[22]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[22]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[23]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[23]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[24]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[24]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[25]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[25]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[26]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[26]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[27]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[27]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[28]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[28]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[29]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[29]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[30]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[30]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[31]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[31]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[32]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[32]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[33]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[33]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[34]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[34]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[35]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[35]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[36]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[36]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[37]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[37]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[38]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[38]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[39]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[39]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[40]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[40]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[41]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[41]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[42]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[42]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[43]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[43]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[44]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[44]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[45]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[45]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[46]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[46]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[47]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[47]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[48]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[48]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[49]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[49]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[50]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[50]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[51]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[51]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[52]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[52]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[53]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[53]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[54]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[54]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[55]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[55]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[56]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[56]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[57]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[57]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[58]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[58]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[59]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[59]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[60]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[60]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[61]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[61]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[62]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[62]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[63]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[63]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ripple64 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_f : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL \g1:22:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:35:FA|cout~1_combout\ : std_logic;
SIGNAL \y[22]~input_o\ : std_logic;
SIGNAL \x[42]~input_o\ : std_logic;
SIGNAL \y[45]~input_o\ : std_logic;
SIGNAL \x[52]~input_o\ : std_logic;
SIGNAL \f[0]~output_o\ : std_logic;
SIGNAL \f[1]~output_o\ : std_logic;
SIGNAL \f[2]~output_o\ : std_logic;
SIGNAL \f[3]~output_o\ : std_logic;
SIGNAL \f[4]~output_o\ : std_logic;
SIGNAL \f[5]~output_o\ : std_logic;
SIGNAL \f[6]~output_o\ : std_logic;
SIGNAL \f[7]~output_o\ : std_logic;
SIGNAL \f[8]~output_o\ : std_logic;
SIGNAL \f[9]~output_o\ : std_logic;
SIGNAL \f[10]~output_o\ : std_logic;
SIGNAL \f[11]~output_o\ : std_logic;
SIGNAL \f[12]~output_o\ : std_logic;
SIGNAL \f[13]~output_o\ : std_logic;
SIGNAL \f[14]~output_o\ : std_logic;
SIGNAL \f[15]~output_o\ : std_logic;
SIGNAL \f[16]~output_o\ : std_logic;
SIGNAL \f[17]~output_o\ : std_logic;
SIGNAL \f[18]~output_o\ : std_logic;
SIGNAL \f[19]~output_o\ : std_logic;
SIGNAL \f[20]~output_o\ : std_logic;
SIGNAL \f[21]~output_o\ : std_logic;
SIGNAL \f[22]~output_o\ : std_logic;
SIGNAL \f[23]~output_o\ : std_logic;
SIGNAL \f[24]~output_o\ : std_logic;
SIGNAL \f[25]~output_o\ : std_logic;
SIGNAL \f[26]~output_o\ : std_logic;
SIGNAL \f[27]~output_o\ : std_logic;
SIGNAL \f[28]~output_o\ : std_logic;
SIGNAL \f[29]~output_o\ : std_logic;
SIGNAL \f[30]~output_o\ : std_logic;
SIGNAL \f[31]~output_o\ : std_logic;
SIGNAL \f[32]~output_o\ : std_logic;
SIGNAL \f[33]~output_o\ : std_logic;
SIGNAL \f[34]~output_o\ : std_logic;
SIGNAL \f[35]~output_o\ : std_logic;
SIGNAL \f[36]~output_o\ : std_logic;
SIGNAL \f[37]~output_o\ : std_logic;
SIGNAL \f[38]~output_o\ : std_logic;
SIGNAL \f[39]~output_o\ : std_logic;
SIGNAL \f[40]~output_o\ : std_logic;
SIGNAL \f[41]~output_o\ : std_logic;
SIGNAL \f[42]~output_o\ : std_logic;
SIGNAL \f[43]~output_o\ : std_logic;
SIGNAL \f[44]~output_o\ : std_logic;
SIGNAL \f[45]~output_o\ : std_logic;
SIGNAL \f[46]~output_o\ : std_logic;
SIGNAL \f[47]~output_o\ : std_logic;
SIGNAL \f[48]~output_o\ : std_logic;
SIGNAL \f[49]~output_o\ : std_logic;
SIGNAL \f[50]~output_o\ : std_logic;
SIGNAL \f[51]~output_o\ : std_logic;
SIGNAL \f[52]~output_o\ : std_logic;
SIGNAL \f[53]~output_o\ : std_logic;
SIGNAL \f[54]~output_o\ : std_logic;
SIGNAL \f[55]~output_o\ : std_logic;
SIGNAL \f[56]~output_o\ : std_logic;
SIGNAL \f[57]~output_o\ : std_logic;
SIGNAL \f[58]~output_o\ : std_logic;
SIGNAL \f[59]~output_o\ : std_logic;
SIGNAL \f[60]~output_o\ : std_logic;
SIGNAL \f[61]~output_o\ : std_logic;
SIGNAL \f[62]~output_o\ : std_logic;
SIGNAL \f[63]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \fa1|f~0_combout\ : std_logic;
SIGNAL \fa1|cout~0_combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \g1:1:FA|f~combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \g1:2:FA|f~0_combout\ : std_logic;
SIGNAL \g1:2:FA|f~combout\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \g1:2:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:2:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:2:FA|cout~2_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \g1:3:FA|f~combout\ : std_logic;
SIGNAL \g1:3:FA|cout~0_combout\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \g1:4:FA|f~combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \g1:4:FA|cout~0_combout\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \g1:5:FA|f~combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \g1:5:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:6:FA|f~combout\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \g1:7:FA|f~0_combout\ : std_logic;
SIGNAL \g1:7:FA|f~combout\ : std_logic;
SIGNAL \g1:7:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:7:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:7:FA|cout~2_combout\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \x[8]~input_o\ : std_logic;
SIGNAL \g1:8:FA|f~combout\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \x[9]~input_o\ : std_logic;
SIGNAL \g1:8:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:9:FA|f~combout\ : std_logic;
SIGNAL \x[10]~input_o\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \g1:10:FA|f~0_combout\ : std_logic;
SIGNAL \g1:10:FA|f~combout\ : std_logic;
SIGNAL \g1:10:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:10:FA|cout~2_combout\ : std_logic;
SIGNAL \x[11]~input_o\ : std_logic;
SIGNAL \g1:10:FA|cout~0_combout\ : std_logic;
SIGNAL \y[11]~input_o\ : std_logic;
SIGNAL \g1:11:FA|f~combout\ : std_logic;
SIGNAL \x[12]~input_o\ : std_logic;
SIGNAL \g1:11:FA|cout~0_combout\ : std_logic;
SIGNAL \y[12]~input_o\ : std_logic;
SIGNAL \g1:12:FA|f~combout\ : std_logic;
SIGNAL \y[13]~input_o\ : std_logic;
SIGNAL \g1:12:FA|cout~0_combout\ : std_logic;
SIGNAL \x[13]~input_o\ : std_logic;
SIGNAL \g1:13:FA|f~combout\ : std_logic;
SIGNAL \y[14]~input_o\ : std_logic;
SIGNAL \x[14]~input_o\ : std_logic;
SIGNAL \g1:14:FA|f~0_combout\ : std_logic;
SIGNAL \g1:14:FA|f~combout\ : std_logic;
SIGNAL \g1:14:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:14:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:14:FA|cout~0_combout\ : std_logic;
SIGNAL \x[15]~input_o\ : std_logic;
SIGNAL \y[15]~input_o\ : std_logic;
SIGNAL \g1:15:FA|f~combout\ : std_logic;
SIGNAL \x[16]~input_o\ : std_logic;
SIGNAL \g1:15:FA|cout~0_combout\ : std_logic;
SIGNAL \y[16]~input_o\ : std_logic;
SIGNAL \g1:16:FA|f~combout\ : std_logic;
SIGNAL \g1:16:FA|cout~0_combout\ : std_logic;
SIGNAL \y[17]~input_o\ : std_logic;
SIGNAL \x[17]~input_o\ : std_logic;
SIGNAL \g1:17:FA|f~combout\ : std_logic;
SIGNAL \g1:17:FA|cout~0_combout\ : std_logic;
SIGNAL \x[18]~input_o\ : std_logic;
SIGNAL \y[18]~input_o\ : std_logic;
SIGNAL \g1:18:FA|f~combout\ : std_logic;
SIGNAL \g1:18:FA|cout~0_combout\ : std_logic;
SIGNAL \x[19]~input_o\ : std_logic;
SIGNAL \y[19]~input_o\ : std_logic;
SIGNAL \g1:19:FA|f~combout\ : std_logic;
SIGNAL \x[20]~input_o\ : std_logic;
SIGNAL \g1:19:FA|cout~0_combout\ : std_logic;
SIGNAL \y[20]~input_o\ : std_logic;
SIGNAL \g1:20:FA|f~combout\ : std_logic;
SIGNAL \y[21]~input_o\ : std_logic;
SIGNAL \x[21]~input_o\ : std_logic;
SIGNAL \g1:20:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:21:FA|f~combout\ : std_logic;
SIGNAL \x[22]~input_o\ : std_logic;
SIGNAL \g1:22:FA|f~0_combout\ : std_logic;
SIGNAL \g1:22:FA|f~combout\ : std_logic;
SIGNAL \x[23]~input_o\ : std_logic;
SIGNAL \g1:22:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:22:FA|cout~2_combout\ : std_logic;
SIGNAL \y[23]~input_o\ : std_logic;
SIGNAL \g1:23:FA|f~combout\ : std_logic;
SIGNAL \x[24]~input_o\ : std_logic;
SIGNAL \g1:23:FA|cout~0_combout\ : std_logic;
SIGNAL \y[24]~input_o\ : std_logic;
SIGNAL \g1:24:FA|f~combout\ : std_logic;
SIGNAL \g1:24:FA|cout~0_combout\ : std_logic;
SIGNAL \x[25]~input_o\ : std_logic;
SIGNAL \y[25]~input_o\ : std_logic;
SIGNAL \g1:25:FA|f~combout\ : std_logic;
SIGNAL \g1:25:FA|cout~0_combout\ : std_logic;
SIGNAL \y[26]~input_o\ : std_logic;
SIGNAL \x[26]~input_o\ : std_logic;
SIGNAL \g1:26:FA|f~combout\ : std_logic;
SIGNAL \y[27]~input_o\ : std_logic;
SIGNAL \g1:26:FA|cout~0_combout\ : std_logic;
SIGNAL \x[27]~input_o\ : std_logic;
SIGNAL \g1:27:FA|f~combout\ : std_logic;
SIGNAL \g1:27:FA|cout~0_combout\ : std_logic;
SIGNAL \x[28]~input_o\ : std_logic;
SIGNAL \y[28]~input_o\ : std_logic;
SIGNAL \g1:28:FA|f~combout\ : std_logic;
SIGNAL \y[29]~input_o\ : std_logic;
SIGNAL \x[29]~input_o\ : std_logic;
SIGNAL \g1:28:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:29:FA|f~combout\ : std_logic;
SIGNAL \y[30]~input_o\ : std_logic;
SIGNAL \g1:29:FA|cout~0_combout\ : std_logic;
SIGNAL \x[30]~input_o\ : std_logic;
SIGNAL \g1:30:FA|f~combout\ : std_logic;
SIGNAL \y[31]~input_o\ : std_logic;
SIGNAL \x[31]~input_o\ : std_logic;
SIGNAL \g1:31:FA|f~0_combout\ : std_logic;
SIGNAL \g1:31:FA|f~combout\ : std_logic;
SIGNAL \g1:31:FA|cout~0_combout\ : std_logic;
SIGNAL \x[32]~input_o\ : std_logic;
SIGNAL \y[32]~input_o\ : std_logic;
SIGNAL \g1:31:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:31:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:32:FA|f~combout\ : std_logic;
SIGNAL \g1:32:FA|cout~0_combout\ : std_logic;
SIGNAL \y[33]~input_o\ : std_logic;
SIGNAL \x[33]~input_o\ : std_logic;
SIGNAL \g1:33:FA|f~combout\ : std_logic;
SIGNAL \g1:33:FA|cout~0_combout\ : std_logic;
SIGNAL \x[34]~input_o\ : std_logic;
SIGNAL \y[34]~input_o\ : std_logic;
SIGNAL \g1:34:FA|f~combout\ : std_logic;
SIGNAL \y[35]~input_o\ : std_logic;
SIGNAL \x[35]~input_o\ : std_logic;
SIGNAL \g1:35:FA|f~0_combout\ : std_logic;
SIGNAL \g1:35:FA|f~combout\ : std_logic;
SIGNAL \x[36]~input_o\ : std_logic;
SIGNAL \g1:35:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:35:FA|cout~2_combout\ : std_logic;
SIGNAL \y[36]~input_o\ : std_logic;
SIGNAL \g1:36:FA|f~combout\ : std_logic;
SIGNAL \x[37]~input_o\ : std_logic;
SIGNAL \y[37]~input_o\ : std_logic;
SIGNAL \g1:36:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:37:FA|f~combout\ : std_logic;
SIGNAL \x[38]~input_o\ : std_logic;
SIGNAL \y[38]~input_o\ : std_logic;
SIGNAL \g1:37:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:38:FA|f~combout\ : std_logic;
SIGNAL \x[39]~input_o\ : std_logic;
SIGNAL \y[39]~input_o\ : std_logic;
SIGNAL \g1:39:FA|f~0_combout\ : std_logic;
SIGNAL \g1:39:FA|f~combout\ : std_logic;
SIGNAL \g1:39:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:39:FA|cout~2_combout\ : std_logic;
SIGNAL \x[40]~input_o\ : std_logic;
SIGNAL \g1:39:FA|cout~0_combout\ : std_logic;
SIGNAL \y[40]~input_o\ : std_logic;
SIGNAL \g1:40:FA|f~combout\ : std_logic;
SIGNAL \g1:40:FA|cout~0_combout\ : std_logic;
SIGNAL \x[41]~input_o\ : std_logic;
SIGNAL \y[41]~input_o\ : std_logic;
SIGNAL \g1:41:FA|f~combout\ : std_logic;
SIGNAL \y[42]~input_o\ : std_logic;
SIGNAL \g1:42:FA|f~0_combout\ : std_logic;
SIGNAL \g1:42:FA|f~combout\ : std_logic;
SIGNAL \y[43]~input_o\ : std_logic;
SIGNAL \g1:42:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:42:FA|cout~2_combout\ : std_logic;
SIGNAL \g1:42:FA|cout~0_combout\ : std_logic;
SIGNAL \x[43]~input_o\ : std_logic;
SIGNAL \g1:43:FA|f~combout\ : std_logic;
SIGNAL \y[44]~input_o\ : std_logic;
SIGNAL \g1:43:FA|cout~0_combout\ : std_logic;
SIGNAL \x[44]~input_o\ : std_logic;
SIGNAL \g1:44:FA|f~combout\ : std_logic;
SIGNAL \x[45]~input_o\ : std_logic;
SIGNAL \g1:45:FA|f~0_combout\ : std_logic;
SIGNAL \g1:45:FA|f~combout\ : std_logic;
SIGNAL \g1:45:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:45:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:45:FA|cout~2_combout\ : std_logic;
SIGNAL \y[46]~input_o\ : std_logic;
SIGNAL \x[46]~input_o\ : std_logic;
SIGNAL \g1:46:FA|f~combout\ : std_logic;
SIGNAL \y[47]~input_o\ : std_logic;
SIGNAL \g1:46:FA|cout~0_combout\ : std_logic;
SIGNAL \x[47]~input_o\ : std_logic;
SIGNAL \g1:47:FA|f~combout\ : std_logic;
SIGNAL \y[48]~input_o\ : std_logic;
SIGNAL \x[48]~input_o\ : std_logic;
SIGNAL \g1:48:FA|f~0_combout\ : std_logic;
SIGNAL \g1:48:FA|f~combout\ : std_logic;
SIGNAL \g1:48:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:48:FA|cout~2_combout\ : std_logic;
SIGNAL \x[49]~input_o\ : std_logic;
SIGNAL \g1:48:FA|cout~0_combout\ : std_logic;
SIGNAL \y[49]~input_o\ : std_logic;
SIGNAL \g1:49:FA|f~combout\ : std_logic;
SIGNAL \g1:49:FA|cout~0_combout\ : std_logic;
SIGNAL \y[50]~input_o\ : std_logic;
SIGNAL \x[50]~input_o\ : std_logic;
SIGNAL \g1:50:FA|f~combout\ : std_logic;
SIGNAL \y[51]~input_o\ : std_logic;
SIGNAL \g1:50:FA|cout~0_combout\ : std_logic;
SIGNAL \x[51]~input_o\ : std_logic;
SIGNAL \g1:51:FA|f~combout\ : std_logic;
SIGNAL \y[52]~input_o\ : std_logic;
SIGNAL \g1:52:FA|f~0_combout\ : std_logic;
SIGNAL \g1:52:FA|f~combout\ : std_logic;
SIGNAL \g1:52:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:52:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:52:FA|cout~2_combout\ : std_logic;
SIGNAL \y[53]~input_o\ : std_logic;
SIGNAL \x[53]~input_o\ : std_logic;
SIGNAL \g1:53:FA|f~combout\ : std_logic;
SIGNAL \y[54]~input_o\ : std_logic;
SIGNAL \x[54]~input_o\ : std_logic;
SIGNAL \g1:53:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:54:FA|f~combout\ : std_logic;
SIGNAL \x[55]~input_o\ : std_logic;
SIGNAL \g1:54:FA|cout~0_combout\ : std_logic;
SIGNAL \y[55]~input_o\ : std_logic;
SIGNAL \g1:55:FA|f~combout\ : std_logic;
SIGNAL \x[56]~input_o\ : std_logic;
SIGNAL \y[56]~input_o\ : std_logic;
SIGNAL \g1:55:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:56:FA|f~combout\ : std_logic;
SIGNAL \y[57]~input_o\ : std_logic;
SIGNAL \x[57]~input_o\ : std_logic;
SIGNAL \g1:56:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:57:FA|f~combout\ : std_logic;
SIGNAL \g1:57:FA|cout~0_combout\ : std_logic;
SIGNAL \x[58]~input_o\ : std_logic;
SIGNAL \y[58]~input_o\ : std_logic;
SIGNAL \g1:58:FA|f~combout\ : std_logic;
SIGNAL \g1:58:FA|cout~0_combout\ : std_logic;
SIGNAL \x[59]~input_o\ : std_logic;
SIGNAL \y[59]~input_o\ : std_logic;
SIGNAL \g1:59:FA|f~combout\ : std_logic;
SIGNAL \y[60]~input_o\ : std_logic;
SIGNAL \x[60]~input_o\ : std_logic;
SIGNAL \g1:60:FA|f~0_combout\ : std_logic;
SIGNAL \g1:60:FA|f~combout\ : std_logic;
SIGNAL \g1:60:FA|cout~0_combout\ : std_logic;
SIGNAL \g1:60:FA|cout~1_combout\ : std_logic;
SIGNAL \g1:60:FA|cout~2_combout\ : std_logic;
SIGNAL \x[61]~input_o\ : std_logic;
SIGNAL \y[61]~input_o\ : std_logic;
SIGNAL \g1:61:FA|f~combout\ : std_logic;
SIGNAL \y[62]~input_o\ : std_logic;
SIGNAL \g1:61:FA|cout~0_combout\ : std_logic;
SIGNAL \x[62]~input_o\ : std_logic;
SIGNAL \g1:62:FA|f~combout\ : std_logic;
SIGNAL \g1:62:FA|cout~0_combout\ : std_logic;
SIGNAL \x[63]~input_o\ : std_logic;
SIGNAL \y[63]~input_o\ : std_logic;
SIGNAL \g1:63:FA|f~combout\ : std_logic;
SIGNAL \g1:63:FA|cout~0_combout\ : std_logic;
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

-- Location: LCCOMB_X26_Y63_N12
\g1:22:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:22:FA|cout~1_combout\ = (\y[22]~input_o\) # (\x[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[22]~input_o\,
	datad => \x[22]~input_o\,
	combout => \g1:22:FA|cout~1_combout\);

-- Location: LCCOMB_X80_Y52_N12
\g1:35:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:35:FA|cout~1_combout\ = (\y[35]~input_o\) # (\x[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[35]~input_o\,
	datad => \x[35]~input_o\,
	combout => \g1:35:FA|cout~1_combout\);

-- Location: IOIBUF_X24_Y67_N15
\y[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(22),
	o => \y[22]~input_o\);

-- Location: IOIBUF_X54_Y67_N8
\x[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(42),
	o => \x[42]~input_o\);

-- Location: IOIBUF_X33_Y67_N15
\y[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(45),
	o => \y[45]~input_o\);

-- Location: IOIBUF_X65_Y67_N15
\x[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(52),
	o => \x[52]~input_o\);

-- Location: IOOBUF_X81_Y46_N16
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

-- Location: IOOBUF_X81_Y43_N2
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

-- Location: IOOBUF_X81_Y41_N2
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

-- Location: IOOBUF_X81_Y47_N9
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

-- Location: IOOBUF_X81_Y42_N2
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

-- Location: IOOBUF_X81_Y47_N2
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

-- Location: IOOBUF_X10_Y0_N2
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X10_Y0_N9
\f[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:8:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[8]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\f[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:9:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[9]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\f[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:10:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[10]~output_o\);

-- Location: IOOBUF_X15_Y0_N9
\f[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:11:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[11]~output_o\);

-- Location: IOOBUF_X81_Y25_N2
\f[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:12:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[12]~output_o\);

-- Location: IOOBUF_X81_Y61_N2
\f[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:13:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[13]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\f[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:14:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[14]~output_o\);

-- Location: IOOBUF_X81_Y65_N9
\f[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:15:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[15]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\f[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:16:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[16]~output_o\);

-- Location: IOOBUF_X70_Y67_N23
\f[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:17:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[17]~output_o\);

-- Location: IOOBUF_X70_Y67_N9
\f[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:18:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[18]~output_o\);

-- Location: IOOBUF_X81_Y59_N2
\f[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:19:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[19]~output_o\);

-- Location: IOOBUF_X22_Y67_N9
\f[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:20:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[20]~output_o\);

-- Location: IOOBUF_X24_Y67_N2
\f[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:21:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[21]~output_o\);

-- Location: IOOBUF_X24_Y67_N9
\f[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:22:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[22]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\f[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:23:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[23]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\f[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:24:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[24]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\f[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:25:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[25]~output_o\);

-- Location: IOOBUF_X19_Y67_N9
\f[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:26:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[26]~output_o\);

-- Location: IOOBUF_X81_Y10_N2
\f[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:27:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[27]~output_o\);

-- Location: IOOBUF_X81_Y12_N2
\f[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:28:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[28]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\f[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:29:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[29]~output_o\);

-- Location: IOOBUF_X81_Y10_N9
\f[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:30:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[30]~output_o\);

-- Location: IOOBUF_X81_Y14_N9
\f[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:31:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[31]~output_o\);

-- Location: IOOBUF_X81_Y11_N23
\f[32]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:32:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[32]~output_o\);

-- Location: IOOBUF_X81_Y50_N9
\f[33]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:33:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[33]~output_o\);

-- Location: IOOBUF_X81_Y52_N9
\f[34]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:34:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[34]~output_o\);

-- Location: IOOBUF_X81_Y53_N2
\f[35]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:35:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[35]~output_o\);

-- Location: IOOBUF_X81_Y58_N2
\f[36]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:36:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[36]~output_o\);

-- Location: IOOBUF_X81_Y52_N16
\f[37]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:37:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[37]~output_o\);

-- Location: IOOBUF_X52_Y67_N2
\f[38]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:38:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[38]~output_o\);

-- Location: IOOBUF_X52_Y67_N9
\f[39]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:39:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[39]~output_o\);

-- Location: IOOBUF_X52_Y67_N23
\f[40]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:40:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[40]~output_o\);

-- Location: IOOBUF_X56_Y67_N23
\f[41]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:41:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[41]~output_o\);

-- Location: IOOBUF_X49_Y67_N9
\f[42]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:42:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[42]~output_o\);

-- Location: IOOBUF_X49_Y67_N2
\f[43]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:43:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[43]~output_o\);

-- Location: IOOBUF_X31_Y67_N2
\f[44]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:44:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[44]~output_o\);

-- Location: IOOBUF_X33_Y67_N23
\f[45]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:45:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[45]~output_o\);

-- Location: IOOBUF_X31_Y67_N9
\f[46]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:46:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[46]~output_o\);

-- Location: IOOBUF_X81_Y2_N2
\f[47]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:47:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[47]~output_o\);

-- Location: IOOBUF_X81_Y6_N16
\f[48]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:48:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[48]~output_o\);

-- Location: IOOBUF_X81_Y6_N9
\f[49]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:49:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[49]~output_o\);

-- Location: IOOBUF_X81_Y3_N9
\f[50]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:50:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[50]~output_o\);

-- Location: IOOBUF_X63_Y67_N2
\f[51]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:51:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[51]~output_o\);

-- Location: IOOBUF_X63_Y67_N9
\f[52]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:52:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[52]~output_o\);

-- Location: IOOBUF_X61_Y67_N9
\f[53]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:53:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[53]~output_o\);

-- Location: IOOBUF_X42_Y67_N9
\f[54]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:54:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[54]~output_o\);

-- Location: IOOBUF_X42_Y0_N2
\f[55]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:55:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[55]~output_o\);

-- Location: IOOBUF_X44_Y67_N16
\f[56]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:56:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[56]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\f[57]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:57:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[57]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\f[58]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:58:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[58]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\f[59]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:59:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[59]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\f[60]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:60:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[60]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\f[61]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:61:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[61]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\f[62]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:62:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[62]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\f[63]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:63:FA|f~combout\,
	devoe => ww_devoe,
	o => \f[63]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g1:63:FA|cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X58_Y0_N16
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

-- Location: IOIBUF_X81_Y34_N8
\x[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X81_Y34_N1
\y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X81_Y49_N15
\cin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X80_Y42_N16
\fa1|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fa1|f~0_combout\ = \x[0]~input_o\ $ (\y[0]~input_o\ $ (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[0]~input_o\,
	datac => \y[0]~input_o\,
	datad => \cin~input_o\,
	combout => \fa1|f~0_combout\);

-- Location: LCCOMB_X80_Y42_N2
\fa1|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fa1|cout~0_combout\ = (\x[0]~input_o\ & ((\y[0]~input_o\) # (\cin~input_o\))) # (!\x[0]~input_o\ & (\y[0]~input_o\ & \cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[0]~input_o\,
	datac => \y[0]~input_o\,
	datad => \cin~input_o\,
	combout => \fa1|cout~0_combout\);

-- Location: IOIBUF_X81_Y23_N8
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X81_Y42_N8
\x[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X80_Y42_N4
\g1:1:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:1:FA|f~combout\ = \fa1|cout~0_combout\ $ (\y[1]~input_o\ $ (\x[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fa1|cout~0_combout\,
	datac => \y[1]~input_o\,
	datad => \x[1]~input_o\,
	combout => \g1:1:FA|f~combout\);

-- Location: IOIBUF_X81_Y39_N1
\x[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X81_Y25_N15
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X80_Y42_N6
\g1:2:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:2:FA|f~0_combout\ = \x[2]~input_o\ $ (\y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	combout => \g1:2:FA|f~0_combout\);

-- Location: LCCOMB_X80_Y42_N8
\g1:2:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:2:FA|f~combout\ = \g1:2:FA|f~0_combout\ $ (((\fa1|cout~0_combout\ & ((\y[1]~input_o\) # (\x[1]~input_o\))) # (!\fa1|cout~0_combout\ & (\y[1]~input_o\ & \x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:2:FA|f~0_combout\,
	datab => \fa1|cout~0_combout\,
	datac => \y[1]~input_o\,
	datad => \x[1]~input_o\,
	combout => \g1:2:FA|f~combout\);

-- Location: IOIBUF_X81_Y44_N8
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X80_Y42_N18
\g1:2:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:2:FA|cout~0_combout\ = (\x[2]~input_o\ & \y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	combout => \g1:2:FA|cout~0_combout\);

-- Location: LCCOMB_X80_Y42_N28
\g1:2:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:2:FA|cout~1_combout\ = (\x[2]~input_o\) # (\y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[2]~input_o\,
	datac => \y[2]~input_o\,
	combout => \g1:2:FA|cout~1_combout\);

-- Location: LCCOMB_X80_Y42_N22
\g1:2:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:2:FA|cout~2_combout\ = (\g1:2:FA|cout~1_combout\ & ((\x[1]~input_o\ & ((\fa1|cout~0_combout\) # (\y[1]~input_o\))) # (!\x[1]~input_o\ & (\fa1|cout~0_combout\ & \y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \fa1|cout~0_combout\,
	datac => \y[1]~input_o\,
	datad => \g1:2:FA|cout~1_combout\,
	combout => \g1:2:FA|cout~2_combout\);

-- Location: IOIBUF_X81_Y44_N1
\x[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X80_Y42_N0
\g1:3:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:3:FA|f~combout\ = \y[3]~input_o\ $ (\x[3]~input_o\ $ (((\g1:2:FA|cout~0_combout\) # (\g1:2:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \g1:2:FA|cout~0_combout\,
	datac => \g1:2:FA|cout~2_combout\,
	datad => \x[3]~input_o\,
	combout => \g1:3:FA|f~combout\);

-- Location: LCCOMB_X80_Y42_N10
\g1:3:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:3:FA|cout~0_combout\ = (\y[3]~input_o\ & ((\g1:2:FA|cout~0_combout\) # ((\g1:2:FA|cout~2_combout\) # (\x[3]~input_o\)))) # (!\y[3]~input_o\ & (\x[3]~input_o\ & ((\g1:2:FA|cout~0_combout\) # (\g1:2:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \g1:2:FA|cout~0_combout\,
	datac => \g1:2:FA|cout~2_combout\,
	datad => \x[3]~input_o\,
	combout => \g1:3:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y26_N8
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X81_Y26_N1
\x[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: LCCOMB_X80_Y42_N12
\g1:4:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:4:FA|f~combout\ = \g1:3:FA|cout~0_combout\ $ (\y[4]~input_o\ $ (\x[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:3:FA|cout~0_combout\,
	datac => \y[4]~input_o\,
	datad => \x[4]~input_o\,
	combout => \g1:4:FA|f~combout\);

-- Location: IOIBUF_X81_Y39_N8
\x[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LCCOMB_X80_Y42_N14
\g1:4:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:4:FA|cout~0_combout\ = (\g1:3:FA|cout~0_combout\ & ((\y[4]~input_o\) # (\x[4]~input_o\))) # (!\g1:3:FA|cout~0_combout\ & (\y[4]~input_o\ & \x[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:3:FA|cout~0_combout\,
	datac => \y[4]~input_o\,
	datad => \x[4]~input_o\,
	combout => \g1:4:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y46_N1
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X80_Y42_N24
\g1:5:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:5:FA|f~combout\ = \x[5]~input_o\ $ (\g1:4:FA|cout~0_combout\ $ (\y[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datac => \g1:4:FA|cout~0_combout\,
	datad => \y[5]~input_o\,
	combout => \g1:5:FA|f~combout\);

-- Location: IOIBUF_X10_Y0_N22
\x[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: LCCOMB_X80_Y42_N26
\g1:5:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:5:FA|cout~0_combout\ = (\x[5]~input_o\ & ((\g1:4:FA|cout~0_combout\) # (\y[5]~input_o\))) # (!\x[5]~input_o\ & (\g1:4:FA|cout~0_combout\ & \y[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[5]~input_o\,
	datac => \g1:4:FA|cout~0_combout\,
	datad => \y[5]~input_o\,
	combout => \g1:5:FA|cout~0_combout\);

-- Location: LCCOMB_X18_Y1_N24
\g1:6:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:6:FA|f~combout\ = \x[6]~input_o\ $ (\y[6]~input_o\ $ (\g1:5:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[6]~input_o\,
	datac => \y[6]~input_o\,
	datad => \g1:5:FA|cout~0_combout\,
	combout => \g1:6:FA|f~combout\);

-- Location: IOIBUF_X17_Y0_N8
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\x[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LCCOMB_X18_Y1_N10
\g1:7:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:7:FA|f~0_combout\ = \y[7]~input_o\ $ (\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[7]~input_o\,
	datac => \x[7]~input_o\,
	combout => \g1:7:FA|f~0_combout\);

-- Location: LCCOMB_X18_Y1_N4
\g1:7:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:7:FA|f~combout\ = \g1:7:FA|f~0_combout\ $ (((\x[6]~input_o\ & ((\y[6]~input_o\) # (\g1:5:FA|cout~0_combout\))) # (!\x[6]~input_o\ & (\y[6]~input_o\ & \g1:5:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:7:FA|f~0_combout\,
	datab => \x[6]~input_o\,
	datac => \y[6]~input_o\,
	datad => \g1:5:FA|cout~0_combout\,
	combout => \g1:7:FA|f~combout\);

-- Location: LCCOMB_X18_Y1_N6
\g1:7:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:7:FA|cout~0_combout\ = (\y[7]~input_o\ & \x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[7]~input_o\,
	datac => \x[7]~input_o\,
	combout => \g1:7:FA|cout~0_combout\);

-- Location: LCCOMB_X18_Y1_N16
\g1:7:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:7:FA|cout~1_combout\ = (\y[7]~input_o\) # (\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[7]~input_o\,
	datac => \x[7]~input_o\,
	combout => \g1:7:FA|cout~1_combout\);

-- Location: LCCOMB_X18_Y1_N18
\g1:7:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:7:FA|cout~2_combout\ = (\g1:7:FA|cout~1_combout\ & ((\g1:5:FA|cout~0_combout\ & ((\x[6]~input_o\) # (\y[6]~input_o\))) # (!\g1:5:FA|cout~0_combout\ & (\x[6]~input_o\ & \y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:5:FA|cout~0_combout\,
	datab => \x[6]~input_o\,
	datac => \y[6]~input_o\,
	datad => \g1:7:FA|cout~1_combout\,
	combout => \g1:7:FA|cout~2_combout\);

-- Location: IOIBUF_X19_Y0_N1
\y[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\x[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(8),
	o => \x[8]~input_o\);

-- Location: LCCOMB_X18_Y1_N12
\g1:8:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:8:FA|f~combout\ = \y[8]~input_o\ $ (\x[8]~input_o\ $ (((\g1:7:FA|cout~0_combout\) # (\g1:7:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:7:FA|cout~0_combout\,
	datab => \g1:7:FA|cout~2_combout\,
	datac => \y[8]~input_o\,
	datad => \x[8]~input_o\,
	combout => \g1:8:FA|f~combout\);

-- Location: IOIBUF_X17_Y0_N1
\y[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: IOIBUF_X15_Y0_N15
\x[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(9),
	o => \x[9]~input_o\);

-- Location: LCCOMB_X18_Y1_N14
\g1:8:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:8:FA|cout~0_combout\ = (\y[8]~input_o\ & ((\g1:7:FA|cout~0_combout\) # ((\g1:7:FA|cout~2_combout\) # (\x[8]~input_o\)))) # (!\y[8]~input_o\ & (\x[8]~input_o\ & ((\g1:7:FA|cout~0_combout\) # (\g1:7:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:7:FA|cout~0_combout\,
	datab => \g1:7:FA|cout~2_combout\,
	datac => \y[8]~input_o\,
	datad => \x[8]~input_o\,
	combout => \g1:8:FA|cout~0_combout\);

-- Location: LCCOMB_X18_Y1_N0
\g1:9:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:9:FA|f~combout\ = \y[9]~input_o\ $ (\x[9]~input_o\ $ (\g1:8:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datab => \x[9]~input_o\,
	datac => \g1:8:FA|cout~0_combout\,
	combout => \g1:9:FA|f~combout\);

-- Location: IOIBUF_X17_Y0_N22
\x[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(10),
	o => \x[10]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\y[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

-- Location: LCCOMB_X18_Y1_N2
\g1:10:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:10:FA|f~0_combout\ = \x[10]~input_o\ $ (\y[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[10]~input_o\,
	datac => \y[10]~input_o\,
	combout => \g1:10:FA|f~0_combout\);

-- Location: LCCOMB_X18_Y1_N20
\g1:10:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:10:FA|f~combout\ = \g1:10:FA|f~0_combout\ $ (((\y[9]~input_o\ & ((\x[9]~input_o\) # (\g1:8:FA|cout~0_combout\))) # (!\y[9]~input_o\ & (\x[9]~input_o\ & \g1:8:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datab => \x[9]~input_o\,
	datac => \g1:8:FA|cout~0_combout\,
	datad => \g1:10:FA|f~0_combout\,
	combout => \g1:10:FA|f~combout\);

-- Location: LCCOMB_X18_Y1_N8
\g1:10:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:10:FA|cout~1_combout\ = (\x[10]~input_o\) # (\y[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[10]~input_o\,
	datac => \y[10]~input_o\,
	combout => \g1:10:FA|cout~1_combout\);

-- Location: LCCOMB_X18_Y1_N26
\g1:10:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:10:FA|cout~2_combout\ = (\g1:10:FA|cout~1_combout\ & ((\y[9]~input_o\ & ((\g1:8:FA|cout~0_combout\) # (\x[9]~input_o\))) # (!\y[9]~input_o\ & (\g1:8:FA|cout~0_combout\ & \x[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[9]~input_o\,
	datab => \g1:8:FA|cout~0_combout\,
	datac => \g1:10:FA|cout~1_combout\,
	datad => \x[9]~input_o\,
	combout => \g1:10:FA|cout~2_combout\);

-- Location: IOIBUF_X17_Y67_N8
\x[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(11),
	o => \x[11]~input_o\);

-- Location: LCCOMB_X18_Y1_N30
\g1:10:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:10:FA|cout~0_combout\ = (\x[10]~input_o\ & \y[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[10]~input_o\,
	datac => \y[10]~input_o\,
	combout => \g1:10:FA|cout~0_combout\);

-- Location: IOIBUF_X17_Y67_N1
\y[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(11),
	o => \y[11]~input_o\);

-- Location: LCCOMB_X18_Y1_N28
\g1:11:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:11:FA|f~combout\ = \x[11]~input_o\ $ (\y[11]~input_o\ $ (((\g1:10:FA|cout~2_combout\) # (\g1:10:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:10:FA|cout~2_combout\,
	datab => \x[11]~input_o\,
	datac => \g1:10:FA|cout~0_combout\,
	datad => \y[11]~input_o\,
	combout => \g1:11:FA|f~combout\);

-- Location: IOIBUF_X81_Y46_N8
\x[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(12),
	o => \x[12]~input_o\);

-- Location: LCCOMB_X18_Y1_N22
\g1:11:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:11:FA|cout~0_combout\ = (\x[11]~input_o\ & ((\g1:10:FA|cout~2_combout\) # ((\g1:10:FA|cout~0_combout\) # (\y[11]~input_o\)))) # (!\x[11]~input_o\ & (\y[11]~input_o\ & ((\g1:10:FA|cout~2_combout\) # (\g1:10:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:10:FA|cout~2_combout\,
	datab => \x[11]~input_o\,
	datac => \g1:10:FA|cout~0_combout\,
	datad => \y[11]~input_o\,
	combout => \g1:11:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y25_N8
\y[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(12),
	o => \y[12]~input_o\);

-- Location: LCCOMB_X80_Y42_N20
\g1:12:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:12:FA|f~combout\ = \x[12]~input_o\ $ (\g1:11:FA|cout~0_combout\ $ (\y[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[12]~input_o\,
	datac => \g1:11:FA|cout~0_combout\,
	datad => \y[12]~input_o\,
	combout => \g1:12:FA|f~combout\);

-- Location: IOIBUF_X81_Y59_N8
\y[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(13),
	o => \y[13]~input_o\);

-- Location: LCCOMB_X80_Y42_N30
\g1:12:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:12:FA|cout~0_combout\ = (\x[12]~input_o\ & ((\g1:11:FA|cout~0_combout\) # (\y[12]~input_o\))) # (!\x[12]~input_o\ & (\g1:11:FA|cout~0_combout\ & \y[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[12]~input_o\,
	datac => \g1:11:FA|cout~0_combout\,
	datad => \y[12]~input_o\,
	combout => \g1:12:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y65_N22
\x[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(13),
	o => \x[13]~input_o\);

-- Location: LCCOMB_X80_Y63_N8
\g1:13:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:13:FA|f~combout\ = \y[13]~input_o\ $ (\g1:12:FA|cout~0_combout\ $ (\x[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[13]~input_o\,
	datac => \g1:12:FA|cout~0_combout\,
	datad => \x[13]~input_o\,
	combout => \g1:13:FA|f~combout\);

-- Location: IOIBUF_X81_Y59_N15
\y[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(14),
	o => \y[14]~input_o\);

-- Location: IOIBUF_X81_Y63_N1
\x[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(14),
	o => \x[14]~input_o\);

-- Location: LCCOMB_X80_Y63_N18
\g1:14:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:14:FA|f~0_combout\ = \y[14]~input_o\ $ (\x[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[14]~input_o\,
	datad => \x[14]~input_o\,
	combout => \g1:14:FA|f~0_combout\);

-- Location: LCCOMB_X80_Y63_N20
\g1:14:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:14:FA|f~combout\ = \g1:14:FA|f~0_combout\ $ (((\y[13]~input_o\ & ((\g1:12:FA|cout~0_combout\) # (\x[13]~input_o\))) # (!\y[13]~input_o\ & (\g1:12:FA|cout~0_combout\ & \x[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[13]~input_o\,
	datab => \g1:14:FA|f~0_combout\,
	datac => \g1:12:FA|cout~0_combout\,
	datad => \x[13]~input_o\,
	combout => \g1:14:FA|f~combout\);

-- Location: LCCOMB_X80_Y63_N24
\g1:14:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:14:FA|cout~1_combout\ = (\y[14]~input_o\) # (\x[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[14]~input_o\,
	datad => \x[14]~input_o\,
	combout => \g1:14:FA|cout~1_combout\);

-- Location: LCCOMB_X80_Y63_N10
\g1:14:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:14:FA|cout~2_combout\ = (\g1:14:FA|cout~1_combout\ & ((\y[13]~input_o\ & ((\g1:12:FA|cout~0_combout\) # (\x[13]~input_o\))) # (!\y[13]~input_o\ & (\g1:12:FA|cout~0_combout\ & \x[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[13]~input_o\,
	datab => \g1:14:FA|cout~1_combout\,
	datac => \g1:12:FA|cout~0_combout\,
	datad => \x[13]~input_o\,
	combout => \g1:14:FA|cout~2_combout\);

-- Location: LCCOMB_X80_Y63_N14
\g1:14:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:14:FA|cout~0_combout\ = (\y[14]~input_o\ & \x[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[14]~input_o\,
	datad => \x[14]~input_o\,
	combout => \g1:14:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y65_N15
\x[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(15),
	o => \x[15]~input_o\);

-- Location: IOIBUF_X81_Y64_N22
\y[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(15),
	o => \y[15]~input_o\);

-- Location: LCCOMB_X80_Y63_N28
\g1:15:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:15:FA|f~combout\ = \x[15]~input_o\ $ (\y[15]~input_o\ $ (((\g1:14:FA|cout~2_combout\) # (\g1:14:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:14:FA|cout~2_combout\,
	datab => \g1:14:FA|cout~0_combout\,
	datac => \x[15]~input_o\,
	datad => \y[15]~input_o\,
	combout => \g1:15:FA|f~combout\);

-- Location: IOIBUF_X81_Y62_N15
\x[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(16),
	o => \x[16]~input_o\);

-- Location: LCCOMB_X80_Y63_N30
\g1:15:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:15:FA|cout~0_combout\ = (\x[15]~input_o\ & ((\g1:14:FA|cout~2_combout\) # ((\g1:14:FA|cout~0_combout\) # (\y[15]~input_o\)))) # (!\x[15]~input_o\ & (\y[15]~input_o\ & ((\g1:14:FA|cout~2_combout\) # (\g1:14:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:14:FA|cout~2_combout\,
	datab => \g1:14:FA|cout~0_combout\,
	datac => \x[15]~input_o\,
	datad => \y[15]~input_o\,
	combout => \g1:15:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y64_N15
\y[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(16),
	o => \y[16]~input_o\);

-- Location: LCCOMB_X80_Y63_N0
\g1:16:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:16:FA|f~combout\ = \x[16]~input_o\ $ (\g1:15:FA|cout~0_combout\ $ (\y[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[16]~input_o\,
	datac => \g1:15:FA|cout~0_combout\,
	datad => \y[16]~input_o\,
	combout => \g1:16:FA|f~combout\);

-- Location: LCCOMB_X80_Y63_N2
\g1:16:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:16:FA|cout~0_combout\ = (\x[16]~input_o\ & ((\g1:15:FA|cout~0_combout\) # (\y[16]~input_o\))) # (!\x[16]~input_o\ & (\g1:15:FA|cout~0_combout\ & \y[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[16]~input_o\,
	datac => \g1:15:FA|cout~0_combout\,
	datad => \y[16]~input_o\,
	combout => \g1:16:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y64_N1
\y[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(17),
	o => \y[17]~input_o\);

-- Location: IOIBUF_X81_Y61_N15
\x[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(17),
	o => \x[17]~input_o\);

-- Location: LCCOMB_X80_Y63_N12
\g1:17:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:17:FA|f~combout\ = \g1:16:FA|cout~0_combout\ $ (\y[17]~input_o\ $ (\x[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:16:FA|cout~0_combout\,
	datac => \y[17]~input_o\,
	datad => \x[17]~input_o\,
	combout => \g1:17:FA|f~combout\);

-- Location: LCCOMB_X80_Y63_N6
\g1:17:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:17:FA|cout~0_combout\ = (\g1:16:FA|cout~0_combout\ & ((\y[17]~input_o\) # (\x[17]~input_o\))) # (!\g1:16:FA|cout~0_combout\ & (\y[17]~input_o\ & \x[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:16:FA|cout~0_combout\,
	datac => \y[17]~input_o\,
	datad => \x[17]~input_o\,
	combout => \g1:17:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y61_N8
\x[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(18),
	o => \x[18]~input_o\);

-- Location: IOIBUF_X81_Y65_N1
\y[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(18),
	o => \y[18]~input_o\);

-- Location: LCCOMB_X80_Y63_N16
\g1:18:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:18:FA|f~combout\ = \g1:17:FA|cout~0_combout\ $ (\x[18]~input_o\ $ (\y[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:17:FA|cout~0_combout\,
	datac => \x[18]~input_o\,
	datad => \y[18]~input_o\,
	combout => \g1:18:FA|f~combout\);

-- Location: LCCOMB_X80_Y63_N26
\g1:18:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:18:FA|cout~0_combout\ = (\g1:17:FA|cout~0_combout\ & ((\x[18]~input_o\) # (\y[18]~input_o\))) # (!\g1:17:FA|cout~0_combout\ & (\x[18]~input_o\ & \y[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:17:FA|cout~0_combout\,
	datac => \x[18]~input_o\,
	datad => \y[18]~input_o\,
	combout => \g1:18:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y62_N1
\x[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(19),
	o => \x[19]~input_o\);

-- Location: IOIBUF_X81_Y64_N8
\y[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(19),
	o => \y[19]~input_o\);

-- Location: LCCOMB_X80_Y63_N4
\g1:19:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:19:FA|f~combout\ = \g1:18:FA|cout~0_combout\ $ (\x[19]~input_o\ $ (\y[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:18:FA|cout~0_combout\,
	datab => \x[19]~input_o\,
	datac => \y[19]~input_o\,
	combout => \g1:19:FA|f~combout\);

-- Location: IOIBUF_X26_Y0_N8
\x[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(20),
	o => \x[20]~input_o\);

-- Location: LCCOMB_X80_Y63_N22
\g1:19:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:19:FA|cout~0_combout\ = (\g1:18:FA|cout~0_combout\ & ((\x[19]~input_o\) # (\y[19]~input_o\))) # (!\g1:18:FA|cout~0_combout\ & (\x[19]~input_o\ & \y[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:18:FA|cout~0_combout\,
	datab => \x[19]~input_o\,
	datac => \y[19]~input_o\,
	combout => \g1:19:FA|cout~0_combout\);

-- Location: IOIBUF_X26_Y67_N22
\y[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(20),
	o => \y[20]~input_o\);

-- Location: LCCOMB_X26_Y63_N8
\g1:20:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:20:FA|f~combout\ = \x[20]~input_o\ $ (\g1:19:FA|cout~0_combout\ $ (\y[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[20]~input_o\,
	datab => \g1:19:FA|cout~0_combout\,
	datad => \y[20]~input_o\,
	combout => \g1:20:FA|f~combout\);

-- Location: IOIBUF_X29_Y67_N1
\y[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(21),
	o => \y[21]~input_o\);

-- Location: IOIBUF_X29_Y67_N8
\x[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(21),
	o => \x[21]~input_o\);

-- Location: LCCOMB_X26_Y63_N2
\g1:20:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:20:FA|cout~0_combout\ = (\x[20]~input_o\ & ((\g1:19:FA|cout~0_combout\) # (\y[20]~input_o\))) # (!\x[20]~input_o\ & (\g1:19:FA|cout~0_combout\ & \y[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[20]~input_o\,
	datab => \g1:19:FA|cout~0_combout\,
	datad => \y[20]~input_o\,
	combout => \g1:20:FA|cout~0_combout\);

-- Location: LCCOMB_X26_Y63_N4
\g1:21:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:21:FA|f~combout\ = \y[21]~input_o\ $ (\x[21]~input_o\ $ (\g1:20:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[21]~input_o\,
	datac => \x[21]~input_o\,
	datad => \g1:20:FA|cout~0_combout\,
	combout => \g1:21:FA|f~combout\);

-- Location: IOIBUF_X29_Y0_N8
\x[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(22),
	o => \x[22]~input_o\);

-- Location: LCCOMB_X26_Y63_N6
\g1:22:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:22:FA|f~0_combout\ = \y[22]~input_o\ $ (\x[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[22]~input_o\,
	datad => \x[22]~input_o\,
	combout => \g1:22:FA|f~0_combout\);

-- Location: LCCOMB_X26_Y63_N16
\g1:22:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:22:FA|f~combout\ = \g1:22:FA|f~0_combout\ $ (((\y[21]~input_o\ & ((\x[21]~input_o\) # (\g1:20:FA|cout~0_combout\))) # (!\y[21]~input_o\ & (\x[21]~input_o\ & \g1:20:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:22:FA|f~0_combout\,
	datab => \y[21]~input_o\,
	datac => \x[21]~input_o\,
	datad => \g1:20:FA|cout~0_combout\,
	combout => \g1:22:FA|f~combout\);

-- Location: IOIBUF_X22_Y67_N1
\x[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(23),
	o => \x[23]~input_o\);

-- Location: LCCOMB_X26_Y63_N18
\g1:22:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:22:FA|cout~0_combout\ = (\y[22]~input_o\ & \x[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[22]~input_o\,
	datad => \x[22]~input_o\,
	combout => \g1:22:FA|cout~0_combout\);

-- Location: LCCOMB_X26_Y63_N22
\g1:22:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:22:FA|cout~2_combout\ = (\g1:22:FA|cout~1_combout\ & ((\y[21]~input_o\ & ((\x[21]~input_o\) # (\g1:20:FA|cout~0_combout\))) # (!\y[21]~input_o\ & (\x[21]~input_o\ & \g1:20:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:22:FA|cout~1_combout\,
	datab => \y[21]~input_o\,
	datac => \x[21]~input_o\,
	datad => \g1:20:FA|cout~0_combout\,
	combout => \g1:22:FA|cout~2_combout\);

-- Location: IOIBUF_X22_Y0_N1
\y[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(23),
	o => \y[23]~input_o\);

-- Location: LCCOMB_X26_Y63_N0
\g1:23:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:23:FA|f~combout\ = \x[23]~input_o\ $ (\y[23]~input_o\ $ (((\g1:22:FA|cout~0_combout\) # (\g1:22:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[23]~input_o\,
	datab => \g1:22:FA|cout~0_combout\,
	datac => \g1:22:FA|cout~2_combout\,
	datad => \y[23]~input_o\,
	combout => \g1:23:FA|f~combout\);

-- Location: IOIBUF_X24_Y67_N22
\x[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(24),
	o => \x[24]~input_o\);

-- Location: LCCOMB_X26_Y63_N26
\g1:23:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:23:FA|cout~0_combout\ = (\x[23]~input_o\ & ((\g1:22:FA|cout~0_combout\) # ((\g1:22:FA|cout~2_combout\) # (\y[23]~input_o\)))) # (!\x[23]~input_o\ & (\y[23]~input_o\ & ((\g1:22:FA|cout~0_combout\) # (\g1:22:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[23]~input_o\,
	datab => \g1:22:FA|cout~0_combout\,
	datac => \g1:22:FA|cout~2_combout\,
	datad => \y[23]~input_o\,
	combout => \g1:23:FA|cout~0_combout\);

-- Location: IOIBUF_X26_Y67_N8
\y[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(24),
	o => \y[24]~input_o\);

-- Location: LCCOMB_X26_Y63_N20
\g1:24:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:24:FA|f~combout\ = \x[24]~input_o\ $ (\g1:23:FA|cout~0_combout\ $ (\y[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[24]~input_o\,
	datac => \g1:23:FA|cout~0_combout\,
	datad => \y[24]~input_o\,
	combout => \g1:24:FA|f~combout\);

-- Location: LCCOMB_X26_Y63_N14
\g1:24:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:24:FA|cout~0_combout\ = (\x[24]~input_o\ & ((\g1:23:FA|cout~0_combout\) # (\y[24]~input_o\))) # (!\x[24]~input_o\ & (\g1:23:FA|cout~0_combout\ & \y[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[24]~input_o\,
	datac => \g1:23:FA|cout~0_combout\,
	datad => \y[24]~input_o\,
	combout => \g1:24:FA|cout~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\x[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(25),
	o => \x[25]~input_o\);

-- Location: IOIBUF_X26_Y67_N15
\y[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(25),
	o => \y[25]~input_o\);

-- Location: LCCOMB_X26_Y63_N24
\g1:25:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:25:FA|f~combout\ = \g1:24:FA|cout~0_combout\ $ (\x[25]~input_o\ $ (\y[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:24:FA|cout~0_combout\,
	datac => \x[25]~input_o\,
	datad => \y[25]~input_o\,
	combout => \g1:25:FA|f~combout\);

-- Location: LCCOMB_X26_Y63_N10
\g1:25:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:25:FA|cout~0_combout\ = (\g1:24:FA|cout~0_combout\ & ((\x[25]~input_o\) # (\y[25]~input_o\))) # (!\g1:24:FA|cout~0_combout\ & (\x[25]~input_o\ & \y[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:24:FA|cout~0_combout\,
	datac => \x[25]~input_o\,
	datad => \y[25]~input_o\,
	combout => \g1:25:FA|cout~0_combout\);

-- Location: IOIBUF_X29_Y67_N15
\y[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(26),
	o => \y[26]~input_o\);

-- Location: IOIBUF_X26_Y67_N1
\x[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(26),
	o => \x[26]~input_o\);

-- Location: LCCOMB_X26_Y63_N28
\g1:26:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:26:FA|f~combout\ = \g1:25:FA|cout~0_combout\ $ (\y[26]~input_o\ $ (\x[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:25:FA|cout~0_combout\,
	datac => \y[26]~input_o\,
	datad => \x[26]~input_o\,
	combout => \g1:26:FA|f~combout\);

-- Location: IOIBUF_X81_Y9_N8
\y[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(27),
	o => \y[27]~input_o\);

-- Location: LCCOMB_X26_Y63_N30
\g1:26:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:26:FA|cout~0_combout\ = (\g1:25:FA|cout~0_combout\ & ((\y[26]~input_o\) # (\x[26]~input_o\))) # (!\g1:25:FA|cout~0_combout\ & (\y[26]~input_o\ & \x[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:25:FA|cout~0_combout\,
	datac => \y[26]~input_o\,
	datad => \x[26]~input_o\,
	combout => \g1:26:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y19_N1
\x[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(27),
	o => \x[27]~input_o\);

-- Location: LCCOMB_X80_Y14_N8
\g1:27:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:27:FA|f~combout\ = \y[27]~input_o\ $ (\g1:26:FA|cout~0_combout\ $ (\x[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[27]~input_o\,
	datac => \g1:26:FA|cout~0_combout\,
	datad => \x[27]~input_o\,
	combout => \g1:27:FA|f~combout\);

-- Location: LCCOMB_X80_Y14_N10
\g1:27:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:27:FA|cout~0_combout\ = (\y[27]~input_o\ & ((\g1:26:FA|cout~0_combout\) # (\x[27]~input_o\))) # (!\y[27]~input_o\ & (\g1:26:FA|cout~0_combout\ & \x[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[27]~input_o\,
	datac => \g1:26:FA|cout~0_combout\,
	datad => \x[27]~input_o\,
	combout => \g1:27:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y12_N8
\x[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(28),
	o => \x[28]~input_o\);

-- Location: IOIBUF_X81_Y16_N1
\y[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(28),
	o => \y[28]~input_o\);

-- Location: LCCOMB_X80_Y14_N20
\g1:28:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:28:FA|f~combout\ = \g1:27:FA|cout~0_combout\ $ (\x[28]~input_o\ $ (\y[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:27:FA|cout~0_combout\,
	datac => \x[28]~input_o\,
	datad => \y[28]~input_o\,
	combout => \g1:28:FA|f~combout\);

-- Location: IOIBUF_X81_Y14_N1
\y[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(29),
	o => \y[29]~input_o\);

-- Location: IOIBUF_X81_Y17_N8
\x[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(29),
	o => \x[29]~input_o\);

-- Location: LCCOMB_X80_Y14_N30
\g1:28:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:28:FA|cout~0_combout\ = (\g1:27:FA|cout~0_combout\ & ((\x[28]~input_o\) # (\y[28]~input_o\))) # (!\g1:27:FA|cout~0_combout\ & (\x[28]~input_o\ & \y[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:27:FA|cout~0_combout\,
	datac => \x[28]~input_o\,
	datad => \y[28]~input_o\,
	combout => \g1:28:FA|cout~0_combout\);

-- Location: LCCOMB_X80_Y14_N0
\g1:29:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:29:FA|f~combout\ = \y[29]~input_o\ $ (\x[29]~input_o\ $ (\g1:28:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[29]~input_o\,
	datab => \x[29]~input_o\,
	datac => \g1:28:FA|cout~0_combout\,
	combout => \g1:29:FA|f~combout\);

-- Location: IOIBUF_X81_Y11_N1
\y[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(30),
	o => \y[30]~input_o\);

-- Location: LCCOMB_X80_Y14_N18
\g1:29:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:29:FA|cout~0_combout\ = (\y[29]~input_o\ & ((\x[29]~input_o\) # (\g1:28:FA|cout~0_combout\))) # (!\y[29]~input_o\ & (\x[29]~input_o\ & \g1:28:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[29]~input_o\,
	datab => \x[29]~input_o\,
	datac => \g1:28:FA|cout~0_combout\,
	combout => \g1:29:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y16_N8
\x[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(30),
	o => \x[30]~input_o\);

-- Location: LCCOMB_X80_Y14_N28
\g1:30:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:30:FA|f~combout\ = \y[30]~input_o\ $ (\g1:29:FA|cout~0_combout\ $ (\x[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[30]~input_o\,
	datab => \g1:29:FA|cout~0_combout\,
	datad => \x[30]~input_o\,
	combout => \g1:30:FA|f~combout\);

-- Location: IOIBUF_X81_Y9_N1
\y[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(31),
	o => \y[31]~input_o\);

-- Location: IOIBUF_X81_Y19_N8
\x[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(31),
	o => \x[31]~input_o\);

-- Location: LCCOMB_X80_Y14_N6
\g1:31:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:31:FA|f~0_combout\ = \y[31]~input_o\ $ (\x[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[31]~input_o\,
	datad => \x[31]~input_o\,
	combout => \g1:31:FA|f~0_combout\);

-- Location: LCCOMB_X80_Y14_N16
\g1:31:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:31:FA|f~combout\ = \g1:31:FA|f~0_combout\ $ (((\y[30]~input_o\ & ((\g1:29:FA|cout~0_combout\) # (\x[30]~input_o\))) # (!\y[30]~input_o\ & (\g1:29:FA|cout~0_combout\ & \x[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[30]~input_o\,
	datab => \g1:29:FA|cout~0_combout\,
	datac => \g1:31:FA|f~0_combout\,
	datad => \x[30]~input_o\,
	combout => \g1:31:FA|f~combout\);

-- Location: LCCOMB_X80_Y14_N26
\g1:31:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:31:FA|cout~0_combout\ = (\y[31]~input_o\ & \x[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[31]~input_o\,
	datad => \x[31]~input_o\,
	combout => \g1:31:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y10_N15
\x[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(32),
	o => \x[32]~input_o\);

-- Location: IOIBUF_X81_Y14_N15
\y[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(32),
	o => \y[32]~input_o\);

-- Location: LCCOMB_X80_Y14_N4
\g1:31:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:31:FA|cout~1_combout\ = (\y[31]~input_o\) # (\x[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[31]~input_o\,
	datad => \x[31]~input_o\,
	combout => \g1:31:FA|cout~1_combout\);

-- Location: LCCOMB_X80_Y14_N22
\g1:31:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:31:FA|cout~2_combout\ = (\g1:31:FA|cout~1_combout\ & ((\y[30]~input_o\ & ((\g1:29:FA|cout~0_combout\) # (\x[30]~input_o\))) # (!\y[30]~input_o\ & (\g1:29:FA|cout~0_combout\ & \x[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[30]~input_o\,
	datab => \g1:29:FA|cout~0_combout\,
	datac => \g1:31:FA|cout~1_combout\,
	datad => \x[30]~input_o\,
	combout => \g1:31:FA|cout~2_combout\);

-- Location: LCCOMB_X80_Y14_N24
\g1:32:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:32:FA|f~combout\ = \x[32]~input_o\ $ (\y[32]~input_o\ $ (((\g1:31:FA|cout~0_combout\) # (\g1:31:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:31:FA|cout~0_combout\,
	datab => \x[32]~input_o\,
	datac => \y[32]~input_o\,
	datad => \g1:31:FA|cout~2_combout\,
	combout => \g1:32:FA|f~combout\);

-- Location: LCCOMB_X80_Y14_N2
\g1:32:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:32:FA|cout~0_combout\ = (\x[32]~input_o\ & ((\g1:31:FA|cout~0_combout\) # ((\y[32]~input_o\) # (\g1:31:FA|cout~2_combout\)))) # (!\x[32]~input_o\ & (\y[32]~input_o\ & ((\g1:31:FA|cout~0_combout\) # (\g1:31:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:31:FA|cout~0_combout\,
	datab => \x[32]~input_o\,
	datac => \y[32]~input_o\,
	datad => \g1:31:FA|cout~2_combout\,
	combout => \g1:32:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y50_N1
\y[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(33),
	o => \y[33]~input_o\);

-- Location: IOIBUF_X81_Y55_N1
\x[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(33),
	o => \x[33]~input_o\);

-- Location: LCCOMB_X80_Y52_N8
\g1:33:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:33:FA|f~combout\ = \g1:32:FA|cout~0_combout\ $ (\y[33]~input_o\ $ (\x[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:32:FA|cout~0_combout\,
	datac => \y[33]~input_o\,
	datad => \x[33]~input_o\,
	combout => \g1:33:FA|f~combout\);

-- Location: LCCOMB_X80_Y52_N2
\g1:33:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:33:FA|cout~0_combout\ = (\g1:32:FA|cout~0_combout\ & ((\y[33]~input_o\) # (\x[33]~input_o\))) # (!\g1:32:FA|cout~0_combout\ & (\y[33]~input_o\ & \x[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:32:FA|cout~0_combout\,
	datac => \y[33]~input_o\,
	datad => \x[33]~input_o\,
	combout => \g1:33:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y55_N8
\x[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(34),
	o => \x[34]~input_o\);

-- Location: IOIBUF_X81_Y56_N8
\y[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(34),
	o => \y[34]~input_o\);

-- Location: LCCOMB_X80_Y52_N4
\g1:34:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:34:FA|f~combout\ = \g1:33:FA|cout~0_combout\ $ (\x[34]~input_o\ $ (\y[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g1:33:FA|cout~0_combout\,
	datac => \x[34]~input_o\,
	datad => \y[34]~input_o\,
	combout => \g1:34:FA|f~combout\);

-- Location: IOIBUF_X81_Y52_N1
\y[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(35),
	o => \y[35]~input_o\);

-- Location: IOIBUF_X81_Y56_N1
\x[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(35),
	o => \x[35]~input_o\);

-- Location: LCCOMB_X80_Y52_N6
\g1:35:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:35:FA|f~0_combout\ = \y[35]~input_o\ $ (\x[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[35]~input_o\,
	datad => \x[35]~input_o\,
	combout => \g1:35:FA|f~0_combout\);

-- Location: LCCOMB_X80_Y52_N0
\g1:35:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:35:FA|f~combout\ = \g1:35:FA|f~0_combout\ $ (((\g1:33:FA|cout~0_combout\ & ((\x[34]~input_o\) # (\y[34]~input_o\))) # (!\g1:33:FA|cout~0_combout\ & (\x[34]~input_o\ & \y[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:35:FA|f~0_combout\,
	datab => \g1:33:FA|cout~0_combout\,
	datac => \x[34]~input_o\,
	datad => \y[34]~input_o\,
	combout => \g1:35:FA|f~combout\);

-- Location: IOIBUF_X81_Y49_N8
\x[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(36),
	o => \x[36]~input_o\);

-- Location: LCCOMB_X80_Y52_N18
\g1:35:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:35:FA|cout~0_combout\ = (\y[35]~input_o\ & \x[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[35]~input_o\,
	datad => \x[35]~input_o\,
	combout => \g1:35:FA|cout~0_combout\);

-- Location: LCCOMB_X80_Y52_N14
\g1:35:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:35:FA|cout~2_combout\ = (\g1:35:FA|cout~1_combout\ & ((\g1:33:FA|cout~0_combout\ & ((\x[34]~input_o\) # (\y[34]~input_o\))) # (!\g1:33:FA|cout~0_combout\ & (\x[34]~input_o\ & \y[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:35:FA|cout~1_combout\,
	datab => \g1:33:FA|cout~0_combout\,
	datac => \x[34]~input_o\,
	datad => \y[34]~input_o\,
	combout => \g1:35:FA|cout~2_combout\);

-- Location: IOIBUF_X81_Y53_N8
\y[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(36),
	o => \y[36]~input_o\);

-- Location: LCCOMB_X80_Y52_N24
\g1:36:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:36:FA|f~combout\ = \x[36]~input_o\ $ (\y[36]~input_o\ $ (((\g1:35:FA|cout~0_combout\) # (\g1:35:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[36]~input_o\,
	datab => \g1:35:FA|cout~0_combout\,
	datac => \g1:35:FA|cout~2_combout\,
	datad => \y[36]~input_o\,
	combout => \g1:36:FA|f~combout\);

-- Location: IOIBUF_X81_Y58_N8
\x[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(37),
	o => \x[37]~input_o\);

-- Location: IOIBUF_X81_Y49_N1
\y[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(37),
	o => \y[37]~input_o\);

-- Location: LCCOMB_X80_Y52_N26
\g1:36:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:36:FA|cout~0_combout\ = (\x[36]~input_o\ & ((\g1:35:FA|cout~0_combout\) # ((\g1:35:FA|cout~2_combout\) # (\y[36]~input_o\)))) # (!\x[36]~input_o\ & (\y[36]~input_o\ & ((\g1:35:FA|cout~0_combout\) # (\g1:35:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[36]~input_o\,
	datab => \g1:35:FA|cout~0_combout\,
	datac => \g1:35:FA|cout~2_combout\,
	datad => \y[36]~input_o\,
	combout => \g1:36:FA|cout~0_combout\);

-- Location: LCCOMB_X80_Y52_N20
\g1:37:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:37:FA|f~combout\ = \x[37]~input_o\ $ (\y[37]~input_o\ $ (\g1:36:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[37]~input_o\,
	datab => \y[37]~input_o\,
	datac => \g1:36:FA|cout~0_combout\,
	combout => \g1:37:FA|f~combout\);

-- Location: IOIBUF_X52_Y0_N8
\x[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(38),
	o => \x[38]~input_o\);

-- Location: IOIBUF_X58_Y67_N15
\y[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(38),
	o => \y[38]~input_o\);

-- Location: LCCOMB_X80_Y52_N22
\g1:37:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:37:FA|cout~0_combout\ = (\x[37]~input_o\ & ((\y[37]~input_o\) # (\g1:36:FA|cout~0_combout\))) # (!\x[37]~input_o\ & (\y[37]~input_o\ & \g1:36:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[37]~input_o\,
	datab => \y[37]~input_o\,
	datac => \g1:36:FA|cout~0_combout\,
	combout => \g1:37:FA|cout~0_combout\);

-- Location: LCCOMB_X53_Y66_N24
\g1:38:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:38:FA|f~combout\ = \x[38]~input_o\ $ (\y[38]~input_o\ $ (\g1:37:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[38]~input_o\,
	datac => \y[38]~input_o\,
	datad => \g1:37:FA|cout~0_combout\,
	combout => \g1:38:FA|f~combout\);

-- Location: IOIBUF_X54_Y67_N15
\x[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(39),
	o => \x[39]~input_o\);

-- Location: IOIBUF_X56_Y67_N8
\y[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(39),
	o => \y[39]~input_o\);

-- Location: LCCOMB_X53_Y66_N26
\g1:39:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:39:FA|f~0_combout\ = \x[39]~input_o\ $ (\y[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[39]~input_o\,
	datad => \y[39]~input_o\,
	combout => \g1:39:FA|f~0_combout\);

-- Location: LCCOMB_X53_Y66_N20
\g1:39:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:39:FA|f~combout\ = \g1:39:FA|f~0_combout\ $ (((\y[38]~input_o\ & ((\x[38]~input_o\) # (\g1:37:FA|cout~0_combout\))) # (!\y[38]~input_o\ & (\x[38]~input_o\ & \g1:37:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[38]~input_o\,
	datab => \x[38]~input_o\,
	datac => \g1:39:FA|f~0_combout\,
	datad => \g1:37:FA|cout~0_combout\,
	combout => \g1:39:FA|f~combout\);

-- Location: LCCOMB_X53_Y66_N8
\g1:39:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:39:FA|cout~1_combout\ = (\x[39]~input_o\) # (\y[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[39]~input_o\,
	datad => \y[39]~input_o\,
	combout => \g1:39:FA|cout~1_combout\);

-- Location: LCCOMB_X53_Y66_N10
\g1:39:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:39:FA|cout~2_combout\ = (\g1:39:FA|cout~1_combout\ & ((\y[38]~input_o\ & ((\x[38]~input_o\) # (\g1:37:FA|cout~0_combout\))) # (!\y[38]~input_o\ & (\x[38]~input_o\ & \g1:37:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[38]~input_o\,
	datab => \x[38]~input_o\,
	datac => \g1:39:FA|cout~1_combout\,
	datad => \g1:37:FA|cout~0_combout\,
	combout => \g1:39:FA|cout~2_combout\);

-- Location: IOIBUF_X54_Y67_N22
\x[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(40),
	o => \x[40]~input_o\);

-- Location: LCCOMB_X53_Y66_N14
\g1:39:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:39:FA|cout~0_combout\ = (\x[39]~input_o\ & \y[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[39]~input_o\,
	datad => \y[39]~input_o\,
	combout => \g1:39:FA|cout~0_combout\);

-- Location: IOIBUF_X56_Y67_N15
\y[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(40),
	o => \y[40]~input_o\);

-- Location: LCCOMB_X53_Y66_N12
\g1:40:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:40:FA|f~combout\ = \x[40]~input_o\ $ (\y[40]~input_o\ $ (((\g1:39:FA|cout~2_combout\) # (\g1:39:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:39:FA|cout~2_combout\,
	datab => \x[40]~input_o\,
	datac => \g1:39:FA|cout~0_combout\,
	datad => \y[40]~input_o\,
	combout => \g1:40:FA|f~combout\);

-- Location: LCCOMB_X53_Y66_N6
\g1:40:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:40:FA|cout~0_combout\ = (\x[40]~input_o\ & ((\g1:39:FA|cout~2_combout\) # ((\g1:39:FA|cout~0_combout\) # (\y[40]~input_o\)))) # (!\x[40]~input_o\ & (\y[40]~input_o\ & ((\g1:39:FA|cout~2_combout\) # (\g1:39:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:39:FA|cout~2_combout\,
	datab => \x[40]~input_o\,
	datac => \g1:39:FA|cout~0_combout\,
	datad => \y[40]~input_o\,
	combout => \g1:40:FA|cout~0_combout\);

-- Location: IOIBUF_X49_Y67_N22
\x[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(41),
	o => \x[41]~input_o\);

-- Location: IOIBUF_X56_Y67_N1
\y[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(41),
	o => \y[41]~input_o\);

-- Location: LCCOMB_X53_Y66_N0
\g1:41:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:41:FA|f~combout\ = \g1:40:FA|cout~0_combout\ $ (\x[41]~input_o\ $ (\y[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:40:FA|cout~0_combout\,
	datac => \x[41]~input_o\,
	datad => \y[41]~input_o\,
	combout => \g1:41:FA|f~combout\);

-- Location: IOIBUF_X52_Y67_N15
\y[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(42),
	o => \y[42]~input_o\);

-- Location: LCCOMB_X53_Y66_N2
\g1:42:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:42:FA|f~0_combout\ = \x[42]~input_o\ $ (\y[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[42]~input_o\,
	datac => \y[42]~input_o\,
	combout => \g1:42:FA|f~0_combout\);

-- Location: LCCOMB_X53_Y66_N4
\g1:42:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:42:FA|f~combout\ = \g1:42:FA|f~0_combout\ $ (((\g1:40:FA|cout~0_combout\ & ((\x[41]~input_o\) # (\y[41]~input_o\))) # (!\g1:40:FA|cout~0_combout\ & (\x[41]~input_o\ & \y[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:40:FA|cout~0_combout\,
	datab => \g1:42:FA|f~0_combout\,
	datac => \x[41]~input_o\,
	datad => \y[41]~input_o\,
	combout => \g1:42:FA|f~combout\);

-- Location: IOIBUF_X49_Y67_N15
\y[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(43),
	o => \y[43]~input_o\);

-- Location: LCCOMB_X53_Y66_N16
\g1:42:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:42:FA|cout~1_combout\ = (\x[42]~input_o\) # (\y[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[42]~input_o\,
	datac => \y[42]~input_o\,
	combout => \g1:42:FA|cout~1_combout\);

-- Location: LCCOMB_X53_Y66_N18
\g1:42:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:42:FA|cout~2_combout\ = (\g1:42:FA|cout~1_combout\ & ((\g1:40:FA|cout~0_combout\ & ((\x[41]~input_o\) # (\y[41]~input_o\))) # (!\g1:40:FA|cout~0_combout\ & (\x[41]~input_o\ & \y[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:40:FA|cout~0_combout\,
	datab => \g1:42:FA|cout~1_combout\,
	datac => \x[41]~input_o\,
	datad => \y[41]~input_o\,
	combout => \g1:42:FA|cout~2_combout\);

-- Location: LCCOMB_X53_Y66_N30
\g1:42:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:42:FA|cout~0_combout\ = (\x[42]~input_o\ & \y[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[42]~input_o\,
	datac => \y[42]~input_o\,
	combout => \g1:42:FA|cout~0_combout\);

-- Location: IOIBUF_X54_Y67_N1
\x[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(43),
	o => \x[43]~input_o\);

-- Location: LCCOMB_X53_Y66_N28
\g1:43:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:43:FA|f~combout\ = \y[43]~input_o\ $ (\x[43]~input_o\ $ (((\g1:42:FA|cout~2_combout\) # (\g1:42:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[43]~input_o\,
	datab => \g1:42:FA|cout~2_combout\,
	datac => \g1:42:FA|cout~0_combout\,
	datad => \x[43]~input_o\,
	combout => \g1:43:FA|f~combout\);

-- Location: IOIBUF_X38_Y67_N1
\y[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(44),
	o => \y[44]~input_o\);

-- Location: LCCOMB_X53_Y66_N22
\g1:43:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:43:FA|cout~0_combout\ = (\y[43]~input_o\ & ((\g1:42:FA|cout~2_combout\) # ((\g1:42:FA|cout~0_combout\) # (\x[43]~input_o\)))) # (!\y[43]~input_o\ & (\x[43]~input_o\ & ((\g1:42:FA|cout~2_combout\) # (\g1:42:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[43]~input_o\,
	datab => \g1:42:FA|cout~2_combout\,
	datac => \g1:42:FA|cout~0_combout\,
	datad => \x[43]~input_o\,
	combout => \g1:43:FA|cout~0_combout\);

-- Location: IOIBUF_X33_Y67_N1
\x[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(44),
	o => \x[44]~input_o\);

-- Location: LCCOMB_X33_Y66_N8
\g1:44:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:44:FA|f~combout\ = \y[44]~input_o\ $ (\g1:43:FA|cout~0_combout\ $ (\x[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[44]~input_o\,
	datac => \g1:43:FA|cout~0_combout\,
	datad => \x[44]~input_o\,
	combout => \g1:44:FA|f~combout\);

-- Location: IOIBUF_X38_Y67_N8
\x[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(45),
	o => \x[45]~input_o\);

-- Location: LCCOMB_X33_Y66_N26
\g1:45:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:45:FA|f~0_combout\ = \y[45]~input_o\ $ (\x[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[45]~input_o\,
	datad => \x[45]~input_o\,
	combout => \g1:45:FA|f~0_combout\);

-- Location: LCCOMB_X33_Y66_N20
\g1:45:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:45:FA|f~combout\ = \g1:45:FA|f~0_combout\ $ (((\g1:43:FA|cout~0_combout\ & ((\y[44]~input_o\) # (\x[44]~input_o\))) # (!\g1:43:FA|cout~0_combout\ & (\y[44]~input_o\ & \x[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:45:FA|f~0_combout\,
	datab => \g1:43:FA|cout~0_combout\,
	datac => \y[44]~input_o\,
	datad => \x[44]~input_o\,
	combout => \g1:45:FA|f~combout\);

-- Location: LCCOMB_X33_Y66_N6
\g1:45:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:45:FA|cout~0_combout\ = (\y[45]~input_o\ & \x[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[45]~input_o\,
	datad => \x[45]~input_o\,
	combout => \g1:45:FA|cout~0_combout\);

-- Location: LCCOMB_X33_Y66_N0
\g1:45:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:45:FA|cout~1_combout\ = (\y[45]~input_o\) # (\x[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[45]~input_o\,
	datad => \x[45]~input_o\,
	combout => \g1:45:FA|cout~1_combout\);

-- Location: LCCOMB_X33_Y66_N2
\g1:45:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:45:FA|cout~2_combout\ = (\g1:45:FA|cout~1_combout\ & ((\y[44]~input_o\ & ((\g1:43:FA|cout~0_combout\) # (\x[44]~input_o\))) # (!\y[44]~input_o\ & (\g1:43:FA|cout~0_combout\ & \x[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[44]~input_o\,
	datab => \g1:45:FA|cout~1_combout\,
	datac => \g1:43:FA|cout~0_combout\,
	datad => \x[44]~input_o\,
	combout => \g1:45:FA|cout~2_combout\);

-- Location: IOIBUF_X31_Y67_N15
\y[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(46),
	o => \y[46]~input_o\);

-- Location: IOIBUF_X33_Y67_N8
\x[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(46),
	o => \x[46]~input_o\);

-- Location: LCCOMB_X33_Y66_N12
\g1:46:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:46:FA|f~combout\ = \y[46]~input_o\ $ (\x[46]~input_o\ $ (((\g1:45:FA|cout~0_combout\) # (\g1:45:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:45:FA|cout~0_combout\,
	datab => \g1:45:FA|cout~2_combout\,
	datac => \y[46]~input_o\,
	datad => \x[46]~input_o\,
	combout => \g1:46:FA|f~combout\);

-- Location: IOIBUF_X81_Y4_N1
\y[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(47),
	o => \y[47]~input_o\);

-- Location: LCCOMB_X33_Y66_N14
\g1:46:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:46:FA|cout~0_combout\ = (\y[46]~input_o\ & ((\g1:45:FA|cout~0_combout\) # ((\g1:45:FA|cout~2_combout\) # (\x[46]~input_o\)))) # (!\y[46]~input_o\ & (\x[46]~input_o\ & ((\g1:45:FA|cout~0_combout\) # (\g1:45:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:45:FA|cout~0_combout\,
	datab => \g1:45:FA|cout~2_combout\,
	datac => \y[46]~input_o\,
	datad => \x[46]~input_o\,
	combout => \g1:46:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y4_N15
\x[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(47),
	o => \x[47]~input_o\);

-- Location: LCCOMB_X80_Y4_N24
\g1:47:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:47:FA|f~combout\ = \y[47]~input_o\ $ (\g1:46:FA|cout~0_combout\ $ (\x[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[47]~input_o\,
	datab => \g1:46:FA|cout~0_combout\,
	datad => \x[47]~input_o\,
	combout => \g1:47:FA|f~combout\);

-- Location: IOIBUF_X81_Y3_N1
\y[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(48),
	o => \y[48]~input_o\);

-- Location: IOIBUF_X81_Y6_N1
\x[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(48),
	o => \x[48]~input_o\);

-- Location: LCCOMB_X80_Y4_N2
\g1:48:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:48:FA|f~0_combout\ = \y[48]~input_o\ $ (\x[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[48]~input_o\,
	datad => \x[48]~input_o\,
	combout => \g1:48:FA|f~0_combout\);

-- Location: LCCOMB_X80_Y4_N20
\g1:48:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:48:FA|f~combout\ = \g1:48:FA|f~0_combout\ $ (((\y[47]~input_o\ & ((\g1:46:FA|cout~0_combout\) # (\x[47]~input_o\))) # (!\y[47]~input_o\ & (\g1:46:FA|cout~0_combout\ & \x[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[47]~input_o\,
	datab => \g1:48:FA|f~0_combout\,
	datac => \g1:46:FA|cout~0_combout\,
	datad => \x[47]~input_o\,
	combout => \g1:48:FA|f~combout\);

-- Location: LCCOMB_X80_Y4_N0
\g1:48:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:48:FA|cout~1_combout\ = (\y[48]~input_o\) # (\x[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[48]~input_o\,
	datad => \x[48]~input_o\,
	combout => \g1:48:FA|cout~1_combout\);

-- Location: LCCOMB_X80_Y4_N10
\g1:48:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:48:FA|cout~2_combout\ = (\g1:48:FA|cout~1_combout\ & ((\y[47]~input_o\ & ((\g1:46:FA|cout~0_combout\) # (\x[47]~input_o\))) # (!\y[47]~input_o\ & (\g1:46:FA|cout~0_combout\ & \x[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[47]~input_o\,
	datab => \g1:48:FA|cout~1_combout\,
	datac => \g1:46:FA|cout~0_combout\,
	datad => \x[47]~input_o\,
	combout => \g1:48:FA|cout~2_combout\);

-- Location: IOIBUF_X81_Y2_N22
\x[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(49),
	o => \x[49]~input_o\);

-- Location: LCCOMB_X80_Y4_N22
\g1:48:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:48:FA|cout~0_combout\ = (\y[48]~input_o\ & \x[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y[48]~input_o\,
	datad => \x[48]~input_o\,
	combout => \g1:48:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y4_N8
\y[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(49),
	o => \y[49]~input_o\);

-- Location: LCCOMB_X80_Y4_N12
\g1:49:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:49:FA|f~combout\ = \x[49]~input_o\ $ (\y[49]~input_o\ $ (((\g1:48:FA|cout~2_combout\) # (\g1:48:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:48:FA|cout~2_combout\,
	datab => \x[49]~input_o\,
	datac => \g1:48:FA|cout~0_combout\,
	datad => \y[49]~input_o\,
	combout => \g1:49:FA|f~combout\);

-- Location: LCCOMB_X80_Y4_N6
\g1:49:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:49:FA|cout~0_combout\ = (\x[49]~input_o\ & ((\g1:48:FA|cout~2_combout\) # ((\g1:48:FA|cout~0_combout\) # (\y[49]~input_o\)))) # (!\x[49]~input_o\ & (\y[49]~input_o\ & ((\g1:48:FA|cout~2_combout\) # (\g1:48:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:48:FA|cout~2_combout\,
	datab => \x[49]~input_o\,
	datac => \g1:48:FA|cout~0_combout\,
	datad => \y[49]~input_o\,
	combout => \g1:49:FA|cout~0_combout\);

-- Location: IOIBUF_X81_Y4_N22
\y[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(50),
	o => \y[50]~input_o\);

-- Location: IOIBUF_X81_Y5_N1
\x[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(50),
	o => \x[50]~input_o\);

-- Location: LCCOMB_X80_Y4_N8
\g1:50:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:50:FA|f~combout\ = \g1:49:FA|cout~0_combout\ $ (\y[50]~input_o\ $ (\x[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:49:FA|cout~0_combout\,
	datab => \y[50]~input_o\,
	datac => \x[50]~input_o\,
	combout => \g1:50:FA|f~combout\);

-- Location: IOIBUF_X61_Y67_N1
\y[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(51),
	o => \y[51]~input_o\);

-- Location: LCCOMB_X80_Y4_N26
\g1:50:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:50:FA|cout~0_combout\ = (\g1:49:FA|cout~0_combout\ & ((\y[50]~input_o\) # (\x[50]~input_o\))) # (!\g1:49:FA|cout~0_combout\ & (\y[50]~input_o\ & \x[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:49:FA|cout~0_combout\,
	datab => \y[50]~input_o\,
	datac => \x[50]~input_o\,
	combout => \g1:50:FA|cout~0_combout\);

-- Location: IOIBUF_X65_Y67_N8
\x[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(51),
	o => \x[51]~input_o\);

-- Location: LCCOMB_X64_Y66_N0
\g1:51:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:51:FA|f~combout\ = \y[51]~input_o\ $ (\g1:50:FA|cout~0_combout\ $ (\x[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[51]~input_o\,
	datac => \g1:50:FA|cout~0_combout\,
	datad => \x[51]~input_o\,
	combout => \g1:51:FA|f~combout\);

-- Location: IOIBUF_X65_Y67_N1
\y[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(52),
	o => \y[52]~input_o\);

-- Location: LCCOMB_X64_Y66_N10
\g1:52:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:52:FA|f~0_combout\ = \x[52]~input_o\ $ (\y[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[52]~input_o\,
	datac => \y[52]~input_o\,
	combout => \g1:52:FA|f~0_combout\);

-- Location: LCCOMB_X64_Y66_N20
\g1:52:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:52:FA|f~combout\ = \g1:52:FA|f~0_combout\ $ (((\y[51]~input_o\ & ((\x[51]~input_o\) # (\g1:50:FA|cout~0_combout\))) # (!\y[51]~input_o\ & (\x[51]~input_o\ & \g1:50:FA|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[51]~input_o\,
	datab => \x[51]~input_o\,
	datac => \g1:50:FA|cout~0_combout\,
	datad => \g1:52:FA|f~0_combout\,
	combout => \g1:52:FA|f~combout\);

-- Location: LCCOMB_X64_Y66_N22
\g1:52:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:52:FA|cout~0_combout\ = (\x[52]~input_o\ & \y[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[52]~input_o\,
	datac => \y[52]~input_o\,
	combout => \g1:52:FA|cout~0_combout\);

-- Location: LCCOMB_X64_Y66_N24
\g1:52:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:52:FA|cout~1_combout\ = (\x[52]~input_o\) # (\y[52]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[52]~input_o\,
	datac => \y[52]~input_o\,
	combout => \g1:52:FA|cout~1_combout\);

-- Location: LCCOMB_X64_Y66_N2
\g1:52:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:52:FA|cout~2_combout\ = (\g1:52:FA|cout~1_combout\ & ((\y[51]~input_o\ & ((\g1:50:FA|cout~0_combout\) # (\x[51]~input_o\))) # (!\y[51]~input_o\ & (\g1:50:FA|cout~0_combout\ & \x[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[51]~input_o\,
	datab => \g1:52:FA|cout~1_combout\,
	datac => \g1:50:FA|cout~0_combout\,
	datad => \x[51]~input_o\,
	combout => \g1:52:FA|cout~2_combout\);

-- Location: IOIBUF_X63_Y67_N15
\y[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(53),
	o => \y[53]~input_o\);

-- Location: IOIBUF_X68_Y67_N1
\x[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(53),
	o => \x[53]~input_o\);

-- Location: LCCOMB_X64_Y66_N12
\g1:53:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:53:FA|f~combout\ = \y[53]~input_o\ $ (\x[53]~input_o\ $ (((\g1:52:FA|cout~0_combout\) # (\g1:52:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:52:FA|cout~0_combout\,
	datab => \g1:52:FA|cout~2_combout\,
	datac => \y[53]~input_o\,
	datad => \x[53]~input_o\,
	combout => \g1:53:FA|f~combout\);

-- Location: IOIBUF_X47_Y67_N8
\y[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(54),
	o => \y[54]~input_o\);

-- Location: IOIBUF_X44_Y67_N1
\x[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(54),
	o => \x[54]~input_o\);

-- Location: LCCOMB_X64_Y66_N6
\g1:53:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:53:FA|cout~0_combout\ = (\y[53]~input_o\ & ((\g1:52:FA|cout~0_combout\) # ((\g1:52:FA|cout~2_combout\) # (\x[53]~input_o\)))) # (!\y[53]~input_o\ & (\x[53]~input_o\ & ((\g1:52:FA|cout~0_combout\) # (\g1:52:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:52:FA|cout~0_combout\,
	datab => \g1:52:FA|cout~2_combout\,
	datac => \y[53]~input_o\,
	datad => \x[53]~input_o\,
	combout => \g1:53:FA|cout~0_combout\);

-- Location: LCCOMB_X43_Y66_N16
\g1:54:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:54:FA|f~combout\ = \y[54]~input_o\ $ (\x[54]~input_o\ $ (\g1:53:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[54]~input_o\,
	datab => \x[54]~input_o\,
	datad => \g1:53:FA|cout~0_combout\,
	combout => \g1:54:FA|f~combout\);

-- Location: IOIBUF_X31_Y67_N22
\x[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(55),
	o => \x[55]~input_o\);

-- Location: LCCOMB_X43_Y66_N26
\g1:54:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:54:FA|cout~0_combout\ = (\y[54]~input_o\ & ((\x[54]~input_o\) # (\g1:53:FA|cout~0_combout\))) # (!\y[54]~input_o\ & (\x[54]~input_o\ & \g1:53:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[54]~input_o\,
	datab => \x[54]~input_o\,
	datad => \g1:53:FA|cout~0_combout\,
	combout => \g1:54:FA|cout~0_combout\);

-- Location: IOIBUF_X44_Y67_N8
\y[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(55),
	o => \y[55]~input_o\);

-- Location: LCCOMB_X43_Y66_N12
\g1:55:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:55:FA|f~combout\ = \x[55]~input_o\ $ (\g1:54:FA|cout~0_combout\ $ (\y[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[55]~input_o\,
	datac => \g1:54:FA|cout~0_combout\,
	datad => \y[55]~input_o\,
	combout => \g1:55:FA|f~combout\);

-- Location: IOIBUF_X42_Y67_N1
\x[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(56),
	o => \x[56]~input_o\);

-- Location: IOIBUF_X40_Y67_N1
\y[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(56),
	o => \y[56]~input_o\);

-- Location: LCCOMB_X43_Y66_N6
\g1:55:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:55:FA|cout~0_combout\ = (\x[55]~input_o\ & ((\g1:54:FA|cout~0_combout\) # (\y[55]~input_o\))) # (!\x[55]~input_o\ & (\g1:54:FA|cout~0_combout\ & \y[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[55]~input_o\,
	datac => \g1:54:FA|cout~0_combout\,
	datad => \y[55]~input_o\,
	combout => \g1:55:FA|cout~0_combout\);

-- Location: LCCOMB_X43_Y66_N0
\g1:56:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:56:FA|f~combout\ = \x[56]~input_o\ $ (\y[56]~input_o\ $ (\g1:55:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[56]~input_o\,
	datac => \y[56]~input_o\,
	datad => \g1:55:FA|cout~0_combout\,
	combout => \g1:56:FA|f~combout\);

-- Location: IOIBUF_X42_Y67_N22
\y[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(57),
	o => \y[57]~input_o\);

-- Location: IOIBUF_X8_Y67_N1
\x[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(57),
	o => \x[57]~input_o\);

-- Location: LCCOMB_X43_Y66_N10
\g1:56:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:56:FA|cout~0_combout\ = (\x[56]~input_o\ & ((\y[56]~input_o\) # (\g1:55:FA|cout~0_combout\))) # (!\x[56]~input_o\ & (\y[56]~input_o\ & \g1:55:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[56]~input_o\,
	datac => \y[56]~input_o\,
	datad => \g1:55:FA|cout~0_combout\,
	combout => \g1:56:FA|cout~0_combout\);

-- Location: LCCOMB_X43_Y66_N4
\g1:57:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:57:FA|f~combout\ = \y[57]~input_o\ $ (\x[57]~input_o\ $ (\g1:56:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[57]~input_o\,
	datac => \x[57]~input_o\,
	datad => \g1:56:FA|cout~0_combout\,
	combout => \g1:57:FA|f~combout\);

-- Location: LCCOMB_X43_Y66_N22
\g1:57:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:57:FA|cout~0_combout\ = (\y[57]~input_o\ & ((\x[57]~input_o\) # (\g1:56:FA|cout~0_combout\))) # (!\y[57]~input_o\ & (\x[57]~input_o\ & \g1:56:FA|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[57]~input_o\,
	datac => \x[57]~input_o\,
	datad => \g1:56:FA|cout~0_combout\,
	combout => \g1:57:FA|cout~0_combout\);

-- Location: IOIBUF_X44_Y67_N22
\x[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(58),
	o => \x[58]~input_o\);

-- Location: IOIBUF_X42_Y67_N15
\y[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(58),
	o => \y[58]~input_o\);

-- Location: LCCOMB_X43_Y66_N24
\g1:58:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:58:FA|f~combout\ = \g1:57:FA|cout~0_combout\ $ (\x[58]~input_o\ $ (\y[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:57:FA|cout~0_combout\,
	datab => \x[58]~input_o\,
	datac => \y[58]~input_o\,
	combout => \g1:58:FA|f~combout\);

-- Location: LCCOMB_X43_Y66_N2
\g1:58:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:58:FA|cout~0_combout\ = (\g1:57:FA|cout~0_combout\ & ((\x[58]~input_o\) # (\y[58]~input_o\))) # (!\g1:57:FA|cout~0_combout\ & (\x[58]~input_o\ & \y[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:57:FA|cout~0_combout\,
	datab => \x[58]~input_o\,
	datac => \y[58]~input_o\,
	combout => \g1:58:FA|cout~0_combout\);

-- Location: IOIBUF_X56_Y0_N15
\x[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(59),
	o => \x[59]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\y[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(59),
	o => \y[59]~input_o\);

-- Location: LCCOMB_X61_Y1_N8
\g1:59:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:59:FA|f~combout\ = \g1:58:FA|cout~0_combout\ $ (\x[59]~input_o\ $ (\y[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:58:FA|cout~0_combout\,
	datab => \x[59]~input_o\,
	datac => \y[59]~input_o\,
	combout => \g1:59:FA|f~combout\);

-- Location: IOIBUF_X61_Y0_N1
\y[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(60),
	o => \y[60]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\x[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(60),
	o => \x[60]~input_o\);

-- Location: LCCOMB_X61_Y1_N18
\g1:60:FA|f~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:60:FA|f~0_combout\ = \y[60]~input_o\ $ (\x[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[60]~input_o\,
	datac => \x[60]~input_o\,
	combout => \g1:60:FA|f~0_combout\);

-- Location: LCCOMB_X61_Y1_N4
\g1:60:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:60:FA|f~combout\ = \g1:60:FA|f~0_combout\ $ (((\g1:58:FA|cout~0_combout\ & ((\x[59]~input_o\) # (\y[59]~input_o\))) # (!\g1:58:FA|cout~0_combout\ & (\x[59]~input_o\ & \y[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:58:FA|cout~0_combout\,
	datab => \x[59]~input_o\,
	datac => \y[59]~input_o\,
	datad => \g1:60:FA|f~0_combout\,
	combout => \g1:60:FA|f~combout\);

-- Location: LCCOMB_X61_Y1_N6
\g1:60:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:60:FA|cout~0_combout\ = (\y[60]~input_o\ & \x[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[60]~input_o\,
	datac => \x[60]~input_o\,
	combout => \g1:60:FA|cout~0_combout\);

-- Location: LCCOMB_X61_Y1_N16
\g1:60:FA|cout~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:60:FA|cout~1_combout\ = (\y[60]~input_o\) # (\x[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[60]~input_o\,
	datac => \x[60]~input_o\,
	combout => \g1:60:FA|cout~1_combout\);

-- Location: LCCOMB_X61_Y1_N2
\g1:60:FA|cout~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:60:FA|cout~2_combout\ = (\g1:60:FA|cout~1_combout\ & ((\g1:58:FA|cout~0_combout\ & ((\x[59]~input_o\) # (\y[59]~input_o\))) # (!\g1:58:FA|cout~0_combout\ & (\x[59]~input_o\ & \y[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:58:FA|cout~0_combout\,
	datab => \x[59]~input_o\,
	datac => \y[59]~input_o\,
	datad => \g1:60:FA|cout~1_combout\,
	combout => \g1:60:FA|cout~2_combout\);

-- Location: IOIBUF_X68_Y0_N1
\x[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(61),
	o => \x[61]~input_o\);

-- Location: IOIBUF_X68_Y0_N8
\y[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(61),
	o => \y[61]~input_o\);

-- Location: LCCOMB_X61_Y1_N28
\g1:61:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:61:FA|f~combout\ = \x[61]~input_o\ $ (\y[61]~input_o\ $ (((\g1:60:FA|cout~0_combout\) # (\g1:60:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:60:FA|cout~0_combout\,
	datab => \g1:60:FA|cout~2_combout\,
	datac => \x[61]~input_o\,
	datad => \y[61]~input_o\,
	combout => \g1:61:FA|f~combout\);

-- Location: IOIBUF_X56_Y0_N22
\y[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(62),
	o => \y[62]~input_o\);

-- Location: LCCOMB_X61_Y1_N22
\g1:61:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:61:FA|cout~0_combout\ = (\x[61]~input_o\ & ((\g1:60:FA|cout~0_combout\) # ((\g1:60:FA|cout~2_combout\) # (\y[61]~input_o\)))) # (!\x[61]~input_o\ & (\y[61]~input_o\ & ((\g1:60:FA|cout~0_combout\) # (\g1:60:FA|cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:60:FA|cout~0_combout\,
	datab => \g1:60:FA|cout~2_combout\,
	datac => \x[61]~input_o\,
	datad => \y[61]~input_o\,
	combout => \g1:61:FA|cout~0_combout\);

-- Location: IOIBUF_X68_Y0_N15
\x[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(62),
	o => \x[62]~input_o\);

-- Location: LCCOMB_X61_Y1_N24
\g1:62:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:62:FA|f~combout\ = \y[62]~input_o\ $ (\g1:61:FA|cout~0_combout\ $ (\x[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[62]~input_o\,
	datac => \g1:61:FA|cout~0_combout\,
	datad => \x[62]~input_o\,
	combout => \g1:62:FA|f~combout\);

-- Location: LCCOMB_X61_Y1_N10
\g1:62:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:62:FA|cout~0_combout\ = (\y[62]~input_o\ & ((\g1:61:FA|cout~0_combout\) # (\x[62]~input_o\))) # (!\y[62]~input_o\ & (\g1:61:FA|cout~0_combout\ & \x[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[62]~input_o\,
	datac => \g1:61:FA|cout~0_combout\,
	datad => \x[62]~input_o\,
	combout => \g1:62:FA|cout~0_combout\);

-- Location: IOIBUF_X65_Y0_N1
\x[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(63),
	o => \x[63]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\y[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(63),
	o => \y[63]~input_o\);

-- Location: LCCOMB_X61_Y1_N20
\g1:63:FA|f\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:63:FA|f~combout\ = \g1:62:FA|cout~0_combout\ $ (\x[63]~input_o\ $ (\y[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:62:FA|cout~0_combout\,
	datac => \x[63]~input_o\,
	datad => \y[63]~input_o\,
	combout => \g1:63:FA|f~combout\);

-- Location: LCCOMB_X61_Y1_N14
\g1:63:FA|cout~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \g1:63:FA|cout~0_combout\ = (\g1:62:FA|cout~0_combout\ & ((\x[63]~input_o\) # (\y[63]~input_o\))) # (!\g1:62:FA|cout~0_combout\ & (\x[63]~input_o\ & \y[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:62:FA|cout~0_combout\,
	datac => \x[63]~input_o\,
	datad => \y[63]~input_o\,
	combout => \g1:63:FA|cout~0_combout\);

-- Location: LCCOMB_X61_Y1_N0
\v~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \v~0_combout\ = (\g1:62:FA|cout~0_combout\ & (!\x[63]~input_o\ & !\y[63]~input_o\)) # (!\g1:62:FA|cout~0_combout\ & (\x[63]~input_o\ & \y[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g1:62:FA|cout~0_combout\,
	datac => \x[63]~input_o\,
	datad => \y[63]~input_o\,
	combout => \v~0_combout\);

ww_f(0) <= \f[0]~output_o\;

ww_f(1) <= \f[1]~output_o\;

ww_f(2) <= \f[2]~output_o\;

ww_f(3) <= \f[3]~output_o\;

ww_f(4) <= \f[4]~output_o\;

ww_f(5) <= \f[5]~output_o\;

ww_f(6) <= \f[6]~output_o\;

ww_f(7) <= \f[7]~output_o\;

ww_f(8) <= \f[8]~output_o\;

ww_f(9) <= \f[9]~output_o\;

ww_f(10) <= \f[10]~output_o\;

ww_f(11) <= \f[11]~output_o\;

ww_f(12) <= \f[12]~output_o\;

ww_f(13) <= \f[13]~output_o\;

ww_f(14) <= \f[14]~output_o\;

ww_f(15) <= \f[15]~output_o\;

ww_f(16) <= \f[16]~output_o\;

ww_f(17) <= \f[17]~output_o\;

ww_f(18) <= \f[18]~output_o\;

ww_f(19) <= \f[19]~output_o\;

ww_f(20) <= \f[20]~output_o\;

ww_f(21) <= \f[21]~output_o\;

ww_f(22) <= \f[22]~output_o\;

ww_f(23) <= \f[23]~output_o\;

ww_f(24) <= \f[24]~output_o\;

ww_f(25) <= \f[25]~output_o\;

ww_f(26) <= \f[26]~output_o\;

ww_f(27) <= \f[27]~output_o\;

ww_f(28) <= \f[28]~output_o\;

ww_f(29) <= \f[29]~output_o\;

ww_f(30) <= \f[30]~output_o\;

ww_f(31) <= \f[31]~output_o\;

ww_f(32) <= \f[32]~output_o\;

ww_f(33) <= \f[33]~output_o\;

ww_f(34) <= \f[34]~output_o\;

ww_f(35) <= \f[35]~output_o\;

ww_f(36) <= \f[36]~output_o\;

ww_f(37) <= \f[37]~output_o\;

ww_f(38) <= \f[38]~output_o\;

ww_f(39) <= \f[39]~output_o\;

ww_f(40) <= \f[40]~output_o\;

ww_f(41) <= \f[41]~output_o\;

ww_f(42) <= \f[42]~output_o\;

ww_f(43) <= \f[43]~output_o\;

ww_f(44) <= \f[44]~output_o\;

ww_f(45) <= \f[45]~output_o\;

ww_f(46) <= \f[46]~output_o\;

ww_f(47) <= \f[47]~output_o\;

ww_f(48) <= \f[48]~output_o\;

ww_f(49) <= \f[49]~output_o\;

ww_f(50) <= \f[50]~output_o\;

ww_f(51) <= \f[51]~output_o\;

ww_f(52) <= \f[52]~output_o\;

ww_f(53) <= \f[53]~output_o\;

ww_f(54) <= \f[54]~output_o\;

ww_f(55) <= \f[55]~output_o\;

ww_f(56) <= \f[56]~output_o\;

ww_f(57) <= \f[57]~output_o\;

ww_f(58) <= \f[58]~output_o\;

ww_f(59) <= \f[59]~output_o\;

ww_f(60) <= \f[60]~output_o\;

ww_f(61) <= \f[61]~output_o\;

ww_f(62) <= \f[62]~output_o\;

ww_f(63) <= \f[63]~output_o\;

ww_cout <= \cout~output_o\;

ww_v <= \v~output_o\;
END structure;


