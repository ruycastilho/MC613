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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/24/2017 16:32:24"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM IS
    PORT (
	Clock : IN std_logic;
	Address : IN std_logic_vector(5 DOWNTO 0);
	Data : IN std_logic_vector(7 DOWNTO 0);
	WrEn : IN std_logic;
	CS : IN std_logic;
	Q : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END RAM;

ARCHITECTURE structure OF RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WrEn : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \WrEn~input_o\ : std_logic;
SIGNAL \CS~input_o\ : std_logic;
SIGNAL \ram~15_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Data[0]~input_o\ : std_logic;
SIGNAL \Address[0]~input_o\ : std_logic;
SIGNAL \Address[1]~input_o\ : std_logic;
SIGNAL \Address[2]~input_o\ : std_logic;
SIGNAL \Address[3]~input_o\ : std_logic;
SIGNAL \Address[4]~input_o\ : std_logic;
SIGNAL \Address[5]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \output[0]~en_q\ : std_logic;
SIGNAL \Data[1]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \output[1]~en_q\ : std_logic;
SIGNAL \Data[2]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \output[2]~en_q\ : std_logic;
SIGNAL \Data[3]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \output[3]~en_q\ : std_logic;
SIGNAL \Data[4]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \output[4]~en_q\ : std_logic;
SIGNAL \Data[5]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \output[5]~en_q\ : std_logic;
SIGNAL \Data[6]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \output[6]~en_q\ : std_logic;
SIGNAL \Data[7]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \output[7]~en_q\ : std_logic;
SIGNAL \ALT_INV_CS~input_o\ : std_logic;
SIGNAL \ALT_INV_WrEn~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Address <= Address;
ww_Data <= Data;
ww_WrEn <= WrEn;
ww_CS <= CS;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \Data[0]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \Data[1]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \Data[2]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \Data[3]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \Data[4]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \Data[5]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \Data[6]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \Data[7]~input_o\;

\ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\Address[5]~input_o\ & \Address[4]~input_o\ & \Address[3]~input_o\ & \Address[2]~input_o\ & \Address[1]~input_o\ & \Address[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);
\ALT_INV_CS~input_o\ <= NOT \CS~input_o\;
\ALT_INV_WrEn~input_o\ <= NOT \WrEn~input_o\;

\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	oe => \output[0]~en_q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	oe => \output[1]~en_q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	oe => \output[2]~en_q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	oe => \output[3]~en_q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	oe => \output[4]~en_q\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	oe => \output[5]~en_q\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	oe => \output[6]~en_q\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	oe => \output[7]~en_q\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

\WrEn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WrEn,
	o => \WrEn~input_o\);

\CS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS,
	o => \CS~input_o\);

\ram~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram~15_combout\ = (\WrEn~input_o\ & \CS~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WrEn~input_o\,
	datab => \ALT_INV_CS~input_o\,
	combout => \ram~15_combout\);

\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\Data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(0),
	o => \Data[0]~input_o\);

\Address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(0),
	o => \Address[0]~input_o\);

\Address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(1),
	o => \Address[1]~input_o\);

\Address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(2),
	o => \Address[2]~input_o\);

\Address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(3),
	o => \Address[3]~input_o\);

\Address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(4),
	o => \Address[4]~input_o\);

\Address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Address(5),
	o => \Address[5]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_g0n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~15_combout\,
	portbre => VCC,
	clk0 => \Clock~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\output[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~en_q\);

\Data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(1),
	o => \Data[1]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_g0n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~15_combout\,
	portbre => VCC,
	clk0 => \Clock~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\output[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~en_q\);

\Data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(2),
	o => \Data[2]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_g0n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~15_combout\,
	portbre => VCC,
	clk0 => \Clock~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\output[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~en_q\);

\Data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(3),
	o => \Data[3]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_g0n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~15_combout\,
	portbre => VCC,
	clk0 => \Clock~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\output[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~en_q\);

\Data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(4),
	o => \Data[4]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_g0n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~15_combout\,
	portbre => VCC,
	clk0 => \Clock~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\output[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[4]~en_q\);

\Data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(5),
	o => \Data[5]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_g0n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~15_combout\,
	portbre => VCC,
	clk0 => \Clock~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\output[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[5]~en_q\);

\Data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(6),
	o => \Data[6]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_g0n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~15_combout\,
	portbre => VCC,
	clk0 => \Clock~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\output[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[6]~en_q\);

\Data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data(7),
	o => \Data[7]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_g0n1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \ram~15_combout\,
	portbre => VCC,
	clk0 => \Clock~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\output[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \CS~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[7]~en_q\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;
END structure;


