-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/14/2023 19:57:35"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab2P1 IS
    PORT (
	data : IN std_logic_vector(7 DOWNTO 0);
	add : IN std_logic;
	latchA : IN std_logic;
	latchB : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END Lab2P1;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latchB	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latchA	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2P1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_add : std_logic;
SIGNAL ww_latchA : std_logic;
SIGNAL ww_latchB : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \add~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \latchB~input_o\ : std_logic;
SIGNAL \latchA~input_o\ : std_logic;
SIGNAL \Add0~34_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL b : std_logic_vector(7 DOWNTO 0);
SIGNAL a : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_latchA~input_o\ : std_logic;
SIGNAL \ALT_INV_latchB~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_add~input_o\ : std_logic;
SIGNAL ALT_INV_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_b : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_data <= data;
ww_add <= add;
ww_latchA <= latchA;
ww_latchB <= latchB;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data[7]~input_o\ <= NOT \data[7]~input_o\;
\ALT_INV_data[6]~input_o\ <= NOT \data[6]~input_o\;
\ALT_INV_data[5]~input_o\ <= NOT \data[5]~input_o\;
\ALT_INV_data[4]~input_o\ <= NOT \data[4]~input_o\;
\ALT_INV_data[3]~input_o\ <= NOT \data[3]~input_o\;
\ALT_INV_data[2]~input_o\ <= NOT \data[2]~input_o\;
\ALT_INV_data[1]~input_o\ <= NOT \data[1]~input_o\;
\ALT_INV_latchA~input_o\ <= NOT \latchA~input_o\;
\ALT_INV_latchB~input_o\ <= NOT \latchB~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;
\ALT_INV_add~input_o\ <= NOT \add~input_o\;
ALT_INV_a(7) <= NOT a(7);
ALT_INV_b(7) <= NOT b(7);
ALT_INV_a(6) <= NOT a(6);
ALT_INV_b(6) <= NOT b(6);
ALT_INV_a(5) <= NOT a(5);
ALT_INV_b(5) <= NOT b(5);
ALT_INV_a(4) <= NOT a(4);
ALT_INV_b(4) <= NOT b(4);
ALT_INV_a(3) <= NOT a(3);
ALT_INV_b(3) <= NOT b(3);
ALT_INV_a(2) <= NOT a(2);
ALT_INV_b(2) <= NOT b(2);
ALT_INV_a(1) <= NOT a(1);
ALT_INV_b(1) <= NOT b(1);
ALT_INV_a(0) <= NOT a(0);
ALT_INV_b(0) <= NOT b(0);

-- Location: IOOBUF_X0_Y18_N79
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOOBUF_X0_Y18_N96
\LED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X0_Y18_N62
\LED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X0_Y18_N45
\LED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X0_Y19_N39
\LED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X0_Y19_N56
\LED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X0_Y19_N5
\LED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X0_Y19_N22
\LED[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_LED(7));

-- Location: IOIBUF_X33_Y0_N75
\add~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add,
	o => \add~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\latchB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_latchB,
	o => \latchB~input_o\);

-- Location: LABCELL_X10_Y1_N0
\b[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- b(0) = ( b(0) & ( \latchB~input_o\ ) ) # ( b(0) & ( !\latchB~input_o\ & ( \data[0]~input_o\ ) ) ) # ( !b(0) & ( !\latchB~input_o\ & ( \data[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[0]~input_o\,
	datae => ALT_INV_b(0),
	dataf => \ALT_INV_latchB~input_o\,
	combout => b(0));

-- Location: IOIBUF_X11_Y0_N35
\latchA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_latchA,
	o => \latchA~input_o\);

-- Location: LABCELL_X10_Y1_N9
\a[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- a(0) = ( \latchA~input_o\ & ( a(0) ) ) # ( !\latchA~input_o\ & ( \data[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_a(0),
	datac => \ALT_INV_data[0]~input_o\,
	dataf => \ALT_INV_latchA~input_o\,
	combout => a(0));

-- Location: LABCELL_X6_Y1_N30
\Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~34_cout\ = CARRY(( !\add~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add~input_o\,
	cin => GND,
	cout => \Add0~34_cout\);

-- Location: LABCELL_X6_Y1_N33
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( a(0) ) + ( !\add~input_o\ $ (b(0)) ) + ( \Add0~34_cout\ ))
-- \Add0~2\ = CARRY(( a(0) ) + ( !\add~input_o\ $ (b(0)) ) + ( \Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add~input_o\,
	datac => ALT_INV_b(0),
	datad => ALT_INV_a(0),
	cin => \Add0~34_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X33_Y0_N58
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LABCELL_X10_Y1_N42
\b[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- b(1) = ( b(1) & ( (\data[1]~input_o\) # (\latchB~input_o\) ) ) # ( !b(1) & ( (!\latchB~input_o\ & \data[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_latchB~input_o\,
	datac => \ALT_INV_data[1]~input_o\,
	dataf => ALT_INV_b(1),
	combout => b(1));

-- Location: LABCELL_X10_Y1_N18
\a[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- a(1) = ( \latchA~input_o\ & ( a(1) ) ) # ( !\latchA~input_o\ & ( \data[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_a(1),
	datac => \ALT_INV_data[1]~input_o\,
	dataf => \ALT_INV_latchA~input_o\,
	combout => a(1));

-- Location: LABCELL_X6_Y1_N36
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\add~input_o\ $ (b(1)) ) + ( a(1) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\add~input_o\ $ (b(1)) ) + ( a(1) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add~input_o\,
	datad => ALT_INV_b(1),
	dataf => ALT_INV_a(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: IOIBUF_X34_Y0_N1
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: MLABCELL_X9_Y1_N30
\b[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- b(2) = ( \data[2]~input_o\ & ( \latchB~input_o\ & ( b(2) ) ) ) # ( !\data[2]~input_o\ & ( \latchB~input_o\ & ( b(2) ) ) ) # ( \data[2]~input_o\ & ( !\latchB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_b(2),
	datae => \ALT_INV_data[2]~input_o\,
	dataf => \ALT_INV_latchB~input_o\,
	combout => b(2));

-- Location: LABCELL_X12_Y1_N33
\a[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- a(2) = ( a(2) & ( (\latchA~input_o\) # (\data[2]~input_o\) ) ) # ( !a(2) & ( (\data[2]~input_o\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[2]~input_o\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_a(2),
	combout => a(2));

-- Location: LABCELL_X6_Y1_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\add~input_o\ $ (b(2)) ) + ( a(2) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\add~input_o\ $ (b(2)) ) + ( a(2) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add~input_o\,
	datac => ALT_INV_b(2),
	dataf => ALT_INV_a(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: IOIBUF_X34_Y0_N18
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: LABCELL_X10_Y1_N33
\a[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- a(3) = ( a(3) & ( (\data[3]~input_o\) # (\latchA~input_o\) ) ) # ( !a(3) & ( (!\latchA~input_o\ & \data[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_latchA~input_o\,
	datac => \ALT_INV_data[3]~input_o\,
	dataf => ALT_INV_a(3),
	combout => a(3));

-- Location: LABCELL_X10_Y1_N24
\b[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- b(3) = ( \data[3]~input_o\ & ( b(3) ) ) # ( !\data[3]~input_o\ & ( b(3) & ( \latchB~input_o\ ) ) ) # ( \data[3]~input_o\ & ( !b(3) & ( !\latchB~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchB~input_o\,
	datae => \ALT_INV_data[3]~input_o\,
	dataf => ALT_INV_b(3),
	combout => b(3));

-- Location: LABCELL_X6_Y1_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\add~input_o\ $ (b(3)) ) + ( a(3) ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\add~input_o\ $ (b(3)) ) + ( a(3) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add~input_o\,
	datac => ALT_INV_a(3),
	datad => ALT_INV_b(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: IOIBUF_X36_Y0_N35
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: LABCELL_X10_Y1_N6
\b[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- b(4) = ( b(4) & ( (\data[4]~input_o\) # (\latchB~input_o\) ) ) # ( !b(4) & ( (!\latchB~input_o\ & \data[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_latchB~input_o\,
	datac => \ALT_INV_data[4]~input_o\,
	dataf => ALT_INV_b(4),
	combout => b(4));

-- Location: LABCELL_X10_Y1_N30
\a[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- a(4) = ( a(4) & ( (\data[4]~input_o\) # (\latchA~input_o\) ) ) # ( !a(4) & ( (!\latchA~input_o\ & \data[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_latchA~input_o\,
	datac => \ALT_INV_data[4]~input_o\,
	dataf => ALT_INV_a(4),
	combout => a(4));

-- Location: LABCELL_X6_Y1_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\add~input_o\ $ (b(4)) ) + ( a(4) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\add~input_o\ $ (b(4)) ) + ( a(4) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add~input_o\,
	datac => ALT_INV_b(4),
	dataf => ALT_INV_a(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: IOIBUF_X36_Y0_N52
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: LABCELL_X10_Y1_N36
\b[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- b(5) = ( b(5) & ( \latchB~input_o\ ) ) # ( b(5) & ( !\latchB~input_o\ & ( \data[5]~input_o\ ) ) ) # ( !b(5) & ( !\latchB~input_o\ & ( \data[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[5]~input_o\,
	datae => ALT_INV_b(5),
	dataf => \ALT_INV_latchB~input_o\,
	combout => b(5));

-- Location: LABCELL_X10_Y1_N15
\a[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- a(5) = ( \data[5]~input_o\ & ( \latchA~input_o\ & ( a(5) ) ) ) # ( !\data[5]~input_o\ & ( \latchA~input_o\ & ( a(5) ) ) ) # ( \data[5]~input_o\ & ( !\latchA~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_a(5),
	datae => \ALT_INV_data[5]~input_o\,
	dataf => \ALT_INV_latchA~input_o\,
	combout => a(5));

-- Location: LABCELL_X6_Y1_N48
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( a(5) ) + ( !\add~input_o\ $ (b(5)) ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( a(5) ) + ( !\add~input_o\ $ (b(5)) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add~input_o\,
	datac => ALT_INV_b(5),
	datad => ALT_INV_a(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: IOIBUF_X34_Y0_N52
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: LABCELL_X10_Y1_N51
\b[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- b(6) = ( \data[6]~input_o\ & ( b(6) ) ) # ( !\data[6]~input_o\ & ( b(6) & ( \latchB~input_o\ ) ) ) # ( \data[6]~input_o\ & ( !b(6) & ( !\latchB~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_latchB~input_o\,
	datae => \ALT_INV_data[6]~input_o\,
	dataf => ALT_INV_b(6),
	combout => b(6));

-- Location: LABCELL_X10_Y1_N57
\a[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- a(6) = ( a(6) & ( \latchA~input_o\ ) ) # ( a(6) & ( !\latchA~input_o\ & ( \data[6]~input_o\ ) ) ) # ( !a(6) & ( !\latchA~input_o\ & ( \data[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[6]~input_o\,
	datae => ALT_INV_a(6),
	dataf => \ALT_INV_latchA~input_o\,
	combout => a(6));

-- Location: LABCELL_X6_Y1_N51
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( a(6) ) + ( !\add~input_o\ $ (b(6)) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( a(6) ) + ( !\add~input_o\ $ (b(6)) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_add~input_o\,
	datac => ALT_INV_b(6),
	datad => ALT_INV_a(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: IOIBUF_X34_Y0_N35
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: MLABCELL_X9_Y1_N6
\b[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- b(7) = ( \data[7]~input_o\ & ( \latchB~input_o\ & ( b(7) ) ) ) # ( !\data[7]~input_o\ & ( \latchB~input_o\ & ( b(7) ) ) ) # ( \data[7]~input_o\ & ( !\latchB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_b(7),
	datae => \ALT_INV_data[7]~input_o\,
	dataf => \ALT_INV_latchB~input_o\,
	combout => b(7));

-- Location: LABCELL_X12_Y1_N39
\a[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- a(7) = ( a(7) & ( (\latchA~input_o\) # (\data[7]~input_o\) ) ) # ( !a(7) & ( (\data[7]~input_o\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[7]~input_o\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_a(7),
	combout => a(7));

-- Location: LABCELL_X6_Y1_N54
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !b(7) $ (\add~input_o\) ) + ( a(7) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_b(7),
	datab => \ALT_INV_add~input_o\,
	dataf => ALT_INV_a(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

-- Location: LABCELL_X26_Y38_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


