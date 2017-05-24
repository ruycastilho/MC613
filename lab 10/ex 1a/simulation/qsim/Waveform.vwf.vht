-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/24/2017 16:32:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_vhd_vec_tst IS
END RAM_vhd_vec_tst;
ARCHITECTURE RAM_arch OF RAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Address : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL CS : STD_LOGIC;
SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL WrEn : STD_LOGIC;
COMPONENT RAM
	PORT (
	Address : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	Clock : IN STD_LOGIC;
	CS : IN STD_LOGIC;
	Data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Q : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	WrEn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM
	PORT MAP (
-- list connections between master ports and signals
	Address => Address,
	Clock => Clock,
	CS => CS,
	Data => Data,
	Q => Q,
	WrEn => WrEn
	);
-- Address[5]
t_prcs_Address_5: PROCESS
BEGIN
	Address(5) <= '0';
	WAIT FOR 640000 ps;
	Address(5) <= '1';
WAIT;
END PROCESS t_prcs_Address_5;
-- Address[4]
t_prcs_Address_4: PROCESS
BEGIN
	Address(4) <= '0';
	WAIT FOR 320000 ps;
	Address(4) <= '1';
	WAIT FOR 320000 ps;
	Address(4) <= '0';
	WAIT FOR 320000 ps;
	Address(4) <= '1';
WAIT;
END PROCESS t_prcs_Address_4;
-- Address[3]
t_prcs_Address_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		Address(3) <= '0';
		WAIT FOR 160000 ps;
		Address(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	Address(3) <= '0';
WAIT;
END PROCESS t_prcs_Address_3;
-- Address[2]
t_prcs_Address_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		Address(2) <= '0';
		WAIT FOR 80000 ps;
		Address(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	Address(2) <= '0';
WAIT;
END PROCESS t_prcs_Address_2;
-- Address[1]
t_prcs_Address_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Address(1) <= '0';
		WAIT FOR 40000 ps;
		Address(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Address(1) <= '0';
WAIT;
END PROCESS t_prcs_Address_1;
-- Address[0]
t_prcs_Address_0: PROCESS
BEGIN
LOOP
	Address(0) <= '0';
	WAIT FOR 20000 ps;
	Address(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Address_0;

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- CS
t_prcs_CS: PROCESS
BEGIN
	CS <= '1';
WAIT;
END PROCESS t_prcs_CS;
-- Data[7]
t_prcs_Data_7: PROCESS
BEGIN
	Data(7) <= '0';
WAIT;
END PROCESS t_prcs_Data_7;
-- Data[6]
t_prcs_Data_6: PROCESS
BEGIN
	Data(6) <= '0';
WAIT;
END PROCESS t_prcs_Data_6;
-- Data[5]
t_prcs_Data_5: PROCESS
BEGIN
	Data(5) <= '1';
WAIT;
END PROCESS t_prcs_Data_5;
-- Data[4]
t_prcs_Data_4: PROCESS
BEGIN
	Data(4) <= '1';
WAIT;
END PROCESS t_prcs_Data_4;
-- Data[3]
t_prcs_Data_3: PROCESS
BEGIN
	Data(3) <= '0';
WAIT;
END PROCESS t_prcs_Data_3;
-- Data[2]
t_prcs_Data_2: PROCESS
BEGIN
	Data(2) <= '0';
WAIT;
END PROCESS t_prcs_Data_2;
-- Data[1]
t_prcs_Data_1: PROCESS
BEGIN
	Data(1) <= '0';
WAIT;
END PROCESS t_prcs_Data_1;
-- Data[0]
t_prcs_Data_0: PROCESS
BEGIN
	Data(0) <= '1';
WAIT;
END PROCESS t_prcs_Data_0;

-- WrEn
t_prcs_WrEn: PROCESS
BEGIN
	WrEn <= '1';
WAIT;
END PROCESS t_prcs_WrEn;
END RAM_arch;
