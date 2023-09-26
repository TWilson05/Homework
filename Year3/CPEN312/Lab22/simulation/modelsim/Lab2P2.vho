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

-- DATE "02/15/2023 17:05:05"

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

ENTITY 	Lab2P2 IS
    PORT (
	data1 : IN std_logic_vector(3 DOWNTO 0);
	data2 : IN std_logic_vector(3 DOWNTO 0);
	sub : IN std_logic;
	latchA : IN std_logic;
	latchB : IN std_logic;
	outA1 : BUFFER std_logic_vector(6 DOWNTO 0);
	outA2 : BUFFER std_logic_vector(6 DOWNTO 0);
	outB1 : BUFFER std_logic_vector(6 DOWNTO 0);
	outB2 : BUFFER std_logic_vector(6 DOWNTO 0);
	outS1 : BUFFER std_logic_vector(6 DOWNTO 0);
	outS2 : BUFFER std_logic_vector(6 DOWNTO 0);
	overflow : BUFFER std_logic
	);
END Lab2P2;

-- Design Ports Information
-- outA1[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA1[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA1[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA1[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA1[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA1[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA1[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA2[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA2[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA2[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA2[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA2[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA2[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA2[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB1[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB1[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB1[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB1[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB1[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB1[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB1[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB2[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB2[1]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB2[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB2[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB2[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB2[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS1[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS1[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS1[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS1[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS1[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS1[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS2[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS2[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS2[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS2[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS2[4]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS2[5]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outS2[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latchA	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- latchB	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2P2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sub : std_logic;
SIGNAL ww_latchA : std_logic;
SIGNAL ww_latchB : std_logic;
SIGNAL ww_outA1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outA2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outB1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outB2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outS1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outS2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \data1[1]~input_o\ : std_logic;
SIGNAL \latchA~input_o\ : std_logic;
SIGNAL \data1[2]~input_o\ : std_logic;
SIGNAL \data1[3]~input_o\ : std_logic;
SIGNAL \data1[0]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \outA1[0]$latch~combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \outA1[1]$latch~combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \outA1[2]$latch~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \outA1[3]$latch~combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \outA1[4]$latch~combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \outA1[5]$latch~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \outA1[6]$latch~combout\ : std_logic;
SIGNAL \data2[0]~input_o\ : std_logic;
SIGNAL \data2[1]~input_o\ : std_logic;
SIGNAL \data2[2]~input_o\ : std_logic;
SIGNAL \data2[3]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \outA2[0]$latch~combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \outA2[1]$latch~combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \outA2[2]$latch~combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \outA2[3]$latch~combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \outA2[4]$latch~combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \outA2[5]$latch~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \outA2[6]$latch~combout\ : std_logic;
SIGNAL \latchB~input_o\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \outB1[0]$latch~combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \outB1[1]$latch~combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \outB1[2]$latch~combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \outB1[3]$latch~combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \outB1[4]$latch~combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \outB1[5]$latch~combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \outB1[6]$latch~combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \outB2[0]$latch~combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \outB2[1]$latch~combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \outB2[2]$latch~combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \outB2[3]$latch~combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \outB2[4]$latch~combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \outB2[5]$latch~combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \outB2[6]$latch~combout\ : std_logic;
SIGNAL \sub~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~22_cout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~23_cout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \S1_temp2[3]~2_combout\ : std_logic;
SIGNAL \S1_temp2[2]~1_combout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \S1_temp2[1]~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \S2_temp2[1]~0_combout\ : std_logic;
SIGNAL \S2_temp2[2]~1_combout\ : std_logic;
SIGNAL \S2_temp2[3]~2_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \overflow~0_combout\ : std_logic;
SIGNAL A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL A2 : std_logic_vector(3 DOWNTO 0);
SIGNAL B1 : std_logic_vector(3 DOWNTO 0);
SIGNAL B2 : std_logic_vector(3 DOWNTO 0);
SIGNAL B2Comp : std_logic_vector(4 DOWNTO 0);
SIGNAL B1Comp : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_data2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_data1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_latchB~input_o\ : std_logic;
SIGNAL \ALT_INV_latchA~input_o\ : std_logic;
SIGNAL \ALT_INV_sub~input_o\ : std_logic;
SIGNAL ALT_INV_B1Comp : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_B2Comp : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_B2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_B1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_A2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_outB2[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB2[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB2[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB2[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB2[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB2[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB2[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB1[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB1[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB1[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB1[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB1[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB1[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outB1[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA2[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA2[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA2[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA2[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA2[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA2[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA2[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA1[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA1[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA1[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA1[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA1[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA1[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_outA1[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~20_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \ALT_INV_S2_temp2[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_S2_temp2[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_S2_temp2[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \ALT_INV_S1_temp2[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_S1_temp2[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_S1_temp2[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;

BEGIN

ww_data1 <= data1;
ww_data2 <= data2;
ww_sub <= sub;
ww_latchA <= latchA;
ww_latchB <= latchB;
outA1 <= ww_outA1;
outA2 <= ww_outA2;
outB1 <= ww_outB1;
outB2 <= ww_outB2;
outS1 <= ww_outS1;
outS2 <= ww_outS2;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data2[3]~input_o\ <= NOT \data2[3]~input_o\;
\ALT_INV_data2[2]~input_o\ <= NOT \data2[2]~input_o\;
\ALT_INV_data2[1]~input_o\ <= NOT \data2[1]~input_o\;
\ALT_INV_data2[0]~input_o\ <= NOT \data2[0]~input_o\;
\ALT_INV_data1[3]~input_o\ <= NOT \data1[3]~input_o\;
\ALT_INV_data1[2]~input_o\ <= NOT \data1[2]~input_o\;
\ALT_INV_data1[1]~input_o\ <= NOT \data1[1]~input_o\;
\ALT_INV_data1[0]~input_o\ <= NOT \data1[0]~input_o\;
\ALT_INV_latchB~input_o\ <= NOT \latchB~input_o\;
\ALT_INV_latchA~input_o\ <= NOT \latchA~input_o\;
\ALT_INV_sub~input_o\ <= NOT \sub~input_o\;
ALT_INV_B1Comp(3) <= NOT B1Comp(3);
ALT_INV_B1Comp(2) <= NOT B1Comp(2);
ALT_INV_B1Comp(1) <= NOT B1Comp(1);
ALT_INV_B1Comp(0) <= NOT B1Comp(0);
ALT_INV_B2Comp(0) <= NOT B2Comp(0);
ALT_INV_B2Comp(3) <= NOT B2Comp(3);
ALT_INV_B2Comp(2) <= NOT B2Comp(2);
ALT_INV_B2Comp(1) <= NOT B2Comp(1);
ALT_INV_B2(3) <= NOT B2(3);
ALT_INV_B2(2) <= NOT B2(2);
ALT_INV_B2(1) <= NOT B2(1);
ALT_INV_B2(0) <= NOT B2(0);
ALT_INV_B1(3) <= NOT B1(3);
ALT_INV_B1(2) <= NOT B1(2);
ALT_INV_B1(1) <= NOT B1(1);
ALT_INV_B1(0) <= NOT B1(0);
ALT_INV_A2(3) <= NOT A2(3);
ALT_INV_A2(2) <= NOT A2(2);
ALT_INV_A2(1) <= NOT A2(1);
ALT_INV_A2(0) <= NOT A2(0);
ALT_INV_A1(3) <= NOT A1(3);
ALT_INV_A1(2) <= NOT A1(2);
ALT_INV_A1(1) <= NOT A1(1);
ALT_INV_A1(0) <= NOT A1(0);
\ALT_INV_outB2[6]$latch~combout\ <= NOT \outB2[6]$latch~combout\;
\ALT_INV_outB2[5]$latch~combout\ <= NOT \outB2[5]$latch~combout\;
\ALT_INV_outB2[4]$latch~combout\ <= NOT \outB2[4]$latch~combout\;
\ALT_INV_outB2[3]$latch~combout\ <= NOT \outB2[3]$latch~combout\;
\ALT_INV_outB2[2]$latch~combout\ <= NOT \outB2[2]$latch~combout\;
\ALT_INV_outB2[1]$latch~combout\ <= NOT \outB2[1]$latch~combout\;
\ALT_INV_outB2[0]$latch~combout\ <= NOT \outB2[0]$latch~combout\;
\ALT_INV_outB1[6]$latch~combout\ <= NOT \outB1[6]$latch~combout\;
\ALT_INV_outB1[5]$latch~combout\ <= NOT \outB1[5]$latch~combout\;
\ALT_INV_outB1[4]$latch~combout\ <= NOT \outB1[4]$latch~combout\;
\ALT_INV_outB1[3]$latch~combout\ <= NOT \outB1[3]$latch~combout\;
\ALT_INV_outB1[2]$latch~combout\ <= NOT \outB1[2]$latch~combout\;
\ALT_INV_outB1[1]$latch~combout\ <= NOT \outB1[1]$latch~combout\;
\ALT_INV_outB1[0]$latch~combout\ <= NOT \outB1[0]$latch~combout\;
\ALT_INV_outA2[6]$latch~combout\ <= NOT \outA2[6]$latch~combout\;
\ALT_INV_outA2[5]$latch~combout\ <= NOT \outA2[5]$latch~combout\;
\ALT_INV_outA2[4]$latch~combout\ <= NOT \outA2[4]$latch~combout\;
\ALT_INV_outA2[3]$latch~combout\ <= NOT \outA2[3]$latch~combout\;
\ALT_INV_outA2[2]$latch~combout\ <= NOT \outA2[2]$latch~combout\;
\ALT_INV_outA2[1]$latch~combout\ <= NOT \outA2[1]$latch~combout\;
\ALT_INV_outA2[0]$latch~combout\ <= NOT \outA2[0]$latch~combout\;
\ALT_INV_outA1[6]$latch~combout\ <= NOT \outA1[6]$latch~combout\;
\ALT_INV_outA1[5]$latch~combout\ <= NOT \outA1[5]$latch~combout\;
\ALT_INV_outA1[4]$latch~combout\ <= NOT \outA1[4]$latch~combout\;
\ALT_INV_outA1[3]$latch~combout\ <= NOT \outA1[3]$latch~combout\;
\ALT_INV_outA1[2]$latch~combout\ <= NOT \outA1[2]$latch~combout\;
\ALT_INV_outA1[1]$latch~combout\ <= NOT \outA1[1]$latch~combout\;
\ALT_INV_outA1[0]$latch~combout\ <= NOT \outA1[0]$latch~combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Add5~25_combout\ <= NOT \Add5~25_combout\;
\ALT_INV_Add5~20_combout\ <= NOT \Add5~20_combout\;
\ALT_INV_Add2~0_combout\ <= NOT \Add2~0_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\ALT_INV_Mux34~0_combout\ <= NOT \Mux34~0_combout\;
\ALT_INV_Mux35~0_combout\ <= NOT \Mux35~0_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux49~0_combout\ <= NOT \Mux49~0_combout\;
\ALT_INV_S2_temp2[3]~2_combout\ <= NOT \S2_temp2[3]~2_combout\;
\ALT_INV_S2_temp2[2]~1_combout\ <= NOT \S2_temp2[2]~1_combout\;
\ALT_INV_S2_temp2[1]~0_combout\ <= NOT \S2_temp2[1]~0_combout\;
\ALT_INV_Mux42~0_combout\ <= NOT \Mux42~0_combout\;
\ALT_INV_S1_temp2[3]~2_combout\ <= NOT \S1_temp2[3]~2_combout\;
\ALT_INV_S1_temp2[2]~1_combout\ <= NOT \S1_temp2[2]~1_combout\;
\ALT_INV_S1_temp2[1]~0_combout\ <= NOT \S1_temp2[1]~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;

-- Location: IOOBUF_X44_Y0_N2
\outA1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA1[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA1(0));

-- Location: IOOBUF_X0_Y21_N39
\outA1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA1[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA1(1));

-- Location: IOOBUF_X0_Y21_N56
\outA1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA1[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA1(2));

-- Location: IOOBUF_X50_Y0_N19
\outA1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA1[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA1(3));

-- Location: IOOBUF_X43_Y0_N19
\outA1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA1[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA1(4));

-- Location: IOOBUF_X22_Y0_N19
\outA1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA1[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA1(5));

-- Location: IOOBUF_X29_Y0_N2
\outA1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA1[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA1(6));

-- Location: IOOBUF_X29_Y0_N19
\outA2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA2[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA2(0));

-- Location: IOOBUF_X36_Y0_N2
\outA2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA2[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA2(1));

-- Location: IOOBUF_X43_Y0_N2
\outA2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA2[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA2(2));

-- Location: IOOBUF_X52_Y0_N19
\outA2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA2[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA2(3));

-- Location: IOOBUF_X44_Y0_N19
\outA2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA2[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA2(4));

-- Location: IOOBUF_X48_Y0_N59
\outA2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA2[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA2(5));

-- Location: IOOBUF_X52_Y0_N36
\outA2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outA2[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outA2(6));

-- Location: IOOBUF_X51_Y0_N19
\outB1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB1[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB1(0));

-- Location: IOOBUF_X51_Y0_N2
\outB1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB1[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB1(1));

-- Location: IOOBUF_X52_Y0_N2
\outB1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB1[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB1(2));

-- Location: IOOBUF_X46_Y0_N19
\outB1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB1[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB1(3));

-- Location: IOOBUF_X40_Y0_N42
\outB1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB1[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB1(4));

-- Location: IOOBUF_X46_Y0_N2
\outB1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB1[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB1(5));

-- Location: IOOBUF_X40_Y0_N59
\outB1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB1[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB1(6));

-- Location: IOOBUF_X40_Y0_N76
\outB2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB2[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB2(0));

-- Location: IOOBUF_X46_Y0_N53
\outB2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB2[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB2(1));

-- Location: IOOBUF_X38_Y0_N19
\outB2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB2[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB2(2));

-- Location: IOOBUF_X36_Y0_N19
\outB2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB2[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB2(3));

-- Location: IOOBUF_X22_Y0_N53
\outB2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB2[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB2(4));

-- Location: IOOBUF_X38_Y0_N53
\outB2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB2[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB2(5));

-- Location: IOOBUF_X48_Y0_N42
\outB2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outB2[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_outB2(6));

-- Location: IOOBUF_X51_Y0_N53
\outS1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux42~0_combout\,
	devoe => ww_devoe,
	o => ww_outS1(0));

-- Location: IOOBUF_X43_Y0_N53
\outS1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~0_combout\,
	devoe => ww_devoe,
	o => ww_outS1(1));

-- Location: IOOBUF_X38_Y0_N36
\outS1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	devoe => ww_devoe,
	o => ww_outS1(2));

-- Location: IOOBUF_X43_Y0_N36
\outS1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	devoe => ww_devoe,
	o => ww_outS1(3));

-- Location: IOOBUF_X44_Y0_N53
\outS1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	devoe => ww_devoe,
	o => ww_outS1(4));

-- Location: IOOBUF_X40_Y0_N93
\outS1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	devoe => ww_devoe,
	o => ww_outS1(5));

-- Location: IOOBUF_X44_Y0_N36
\outS1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~0_combout\,
	devoe => ww_devoe,
	o => ww_outS1(6));

-- Location: IOOBUF_X46_Y0_N36
\outS2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux49~0_combout\,
	devoe => ww_devoe,
	o => ww_outS2(0));

-- Location: IOOBUF_X50_Y0_N53
\outS2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	devoe => ww_devoe,
	o => ww_outS2(1));

-- Location: IOOBUF_X48_Y0_N93
\outS2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	devoe => ww_devoe,
	o => ww_outS2(2));

-- Location: IOOBUF_X50_Y0_N36
\outS2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	devoe => ww_devoe,
	o => ww_outS2(3));

-- Location: IOOBUF_X48_Y0_N76
\outS2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	devoe => ww_devoe,
	o => ww_outS2(4));

-- Location: IOOBUF_X51_Y0_N36
\outS2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	devoe => ww_devoe,
	o => ww_outS2(5));

-- Location: IOOBUF_X52_Y0_N53
\outS2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	devoe => ww_devoe,
	o => ww_outS2(6));

-- Location: IOOBUF_X0_Y18_N45
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \overflow~0_combout\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: IOIBUF_X36_Y0_N52
\data1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1(1),
	o => \data1[1]~input_o\);

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

-- Location: LABCELL_X10_Y1_N57
\A1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- A1(1) = ( A1(1) & ( (\latchA~input_o\) # (\data1[1]~input_o\) ) ) # ( !A1(1) & ( (\data1[1]~input_o\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data1[1]~input_o\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_A1(1),
	combout => A1(1));

-- Location: IOIBUF_X34_Y0_N52
\data1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1(2),
	o => \data1[2]~input_o\);

-- Location: LABCELL_X10_Y1_N6
\A1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- A1(2) = ( \latchA~input_o\ & ( A1(2) ) ) # ( !\latchA~input_o\ & ( A1(2) & ( \data1[2]~input_o\ ) ) ) # ( !\latchA~input_o\ & ( !A1(2) & ( \data1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data1[2]~input_o\,
	datae => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_A1(2),
	combout => A1(2));

-- Location: IOIBUF_X34_Y0_N35
\data1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1(3),
	o => \data1[3]~input_o\);

-- Location: LABCELL_X10_Y1_N0
\A1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- A1(3) = ( A1(3) & ( (\latchA~input_o\) # (\data1[3]~input_o\) ) ) # ( !A1(3) & ( (\data1[3]~input_o\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data1[3]~input_o\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_A1(3),
	combout => A1(3));

-- Location: IOIBUF_X36_Y0_N35
\data1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1(0),
	o => \data1[0]~input_o\);

-- Location: LABCELL_X10_Y1_N30
\A1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- A1(0) = ( A1(0) & ( (\latchA~input_o\) # (\data1[0]~input_o\) ) ) # ( !A1(0) & ( (\data1[0]~input_o\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data1[0]~input_o\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_A1(0),
	combout => A1(0));

-- Location: LABCELL_X10_Y1_N24
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( A1(0) & ( (!A1(1) & (!A1(2) $ (!A1(3)))) # (A1(1) & (!A1(2) & !A1(3))) ) ) # ( !A1(0) & ( !A1(3) $ (((!A1(1) & !A1(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000001011010101000000101101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(1),
	datac => ALT_INV_A1(2),
	datad => ALT_INV_A1(3),
	dataf => ALT_INV_A1(0),
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X10_Y1_N12
\outA1[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA1[0]$latch~combout\ = ( \latchA~input_o\ & ( \outA1[0]$latch~combout\ ) ) # ( !\latchA~input_o\ & ( !\Mux14~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outA1[0]$latch~combout\,
	datad => \ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_latchA~input_o\,
	combout => \outA1[0]$latch~combout\);

-- Location: LABCELL_X10_Y1_N21
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( A1(3) & ( A1(0) & ( (A1(2)) # (A1(1)) ) ) ) # ( !A1(3) & ( A1(0) & ( (!A1(2)) # (A1(1)) ) ) ) # ( A1(3) & ( !A1(0) & ( (A1(2)) # (A1(1)) ) ) ) # ( !A1(3) & ( !A1(0) & ( (A1(1) & !A1(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011111011101110111010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(1),
	datab => ALT_INV_A1(2),
	datae => ALT_INV_A1(3),
	dataf => ALT_INV_A1(0),
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X10_Y1_N3
\outA1[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA1[1]$latch~combout\ = (!\latchA~input_o\ & (\Mux13~0_combout\)) # (\latchA~input_o\ & ((\outA1[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_latchA~input_o\,
	datab => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_outA1[1]$latch~combout\,
	combout => \outA1[1]$latch~combout\);

-- Location: LABCELL_X10_Y1_N39
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( A1(0) & ( A1(3) ) ) # ( !A1(0) & ( A1(3) & ( (A1(2)) # (A1(1)) ) ) ) # ( A1(0) & ( !A1(3) ) ) # ( !A1(0) & ( !A1(3) & ( (!A1(1) & A1(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010111111111111111101110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(1),
	datab => ALT_INV_A1(2),
	datae => ALT_INV_A1(0),
	dataf => ALT_INV_A1(3),
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X10_Y1_N27
\outA1[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA1[2]$latch~combout\ = ( \latchA~input_o\ & ( \outA1[2]$latch~combout\ ) ) # ( !\latchA~input_o\ & ( \Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux12~0_combout\,
	datad => \ALT_INV_outA1[2]$latch~combout\,
	dataf => \ALT_INV_latchA~input_o\,
	combout => \outA1[2]$latch~combout\);

-- Location: LABCELL_X10_Y1_N45
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( A1(0) & ( (!A1(3) & (!A1(2) $ (A1(1)))) # (A1(3) & ((A1(1)) # (A1(2)))) ) ) # ( !A1(0) & ( (!A1(1) & ((A1(2)))) # (A1(1) & (A1(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010110010111100101111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(3),
	datab => ALT_INV_A1(2),
	datac => ALT_INV_A1(1),
	dataf => ALT_INV_A1(0),
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X10_Y1_N54
\outA1[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA1[3]$latch~combout\ = (!\latchA~input_o\ & (\Mux11~0_combout\)) # (\latchA~input_o\ & ((\outA1[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~0_combout\,
	datac => \ALT_INV_outA1[3]$latch~combout\,
	datad => \ALT_INV_latchA~input_o\,
	combout => \outA1[3]$latch~combout\);

-- Location: LABCELL_X10_Y1_N48
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( A1(3) & ( A1(0) & ( (A1(2)) # (A1(1)) ) ) ) # ( A1(3) & ( !A1(0) & ( (A1(2)) # (A1(1)) ) ) ) # ( !A1(3) & ( !A1(0) & ( (A1(1) & !A1(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000000000000000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(1),
	datab => ALT_INV_A1(2),
	datae => ALT_INV_A1(3),
	dataf => ALT_INV_A1(0),
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X10_Y1_N42
\outA1[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA1[4]$latch~combout\ = ( \Mux10~0_combout\ & ( (!\latchA~input_o\) # (\outA1[4]$latch~combout\) ) ) # ( !\Mux10~0_combout\ & ( (\latchA~input_o\ & \outA1[4]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchA~input_o\,
	datad => \ALT_INV_outA1[4]$latch~combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \outA1[4]$latch~combout\);

-- Location: LABCELL_X10_Y1_N15
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( A1(3) & ( (A1(2)) # (A1(1)) ) ) # ( !A1(3) & ( (A1(2) & (!A1(1) $ (!A1(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(1),
	datab => ALT_INV_A1(2),
	datac => ALT_INV_A1(0),
	dataf => ALT_INV_A1(3),
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X10_Y1_N33
\outA1[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA1[5]$latch~combout\ = ( \outA1[5]$latch~combout\ & ( (\latchA~input_o\) # (\Mux9~0_combout\) ) ) # ( !\outA1[5]$latch~combout\ & ( (\Mux9~0_combout\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux9~0_combout\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => \ALT_INV_outA1[5]$latch~combout\,
	combout => \outA1[5]$latch~combout\);

-- Location: MLABCELL_X9_Y1_N48
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( A1(3) & ( (A1(2)) # (A1(1)) ) ) # ( !A1(3) & ( (!A1(1) & (!A1(0) $ (!A1(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(0),
	datab => ALT_INV_A1(1),
	datac => ALT_INV_A1(2),
	dataf => ALT_INV_A1(3),
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X9_Y1_N21
\outA1[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA1[6]$latch~combout\ = ( \latchA~input_o\ & ( \Mux8~0_combout\ & ( \outA1[6]$latch~combout\ ) ) ) # ( !\latchA~input_o\ & ( \Mux8~0_combout\ ) ) # ( \latchA~input_o\ & ( !\Mux8~0_combout\ & ( \outA1[6]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_outA1[6]$latch~combout\,
	datae => \ALT_INV_latchA~input_o\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \outA1[6]$latch~combout\);

-- Location: IOIBUF_X33_Y0_N41
\data2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2(0),
	o => \data2[0]~input_o\);

-- Location: LABCELL_X12_Y1_N6
\A2[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- A2(0) = ( A2(0) & ( (\latchA~input_o\) # (\data2[0]~input_o\) ) ) # ( !A2(0) & ( (\data2[0]~input_o\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data2[0]~input_o\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_A2(0),
	combout => A2(0));

-- Location: IOIBUF_X33_Y0_N58
\data2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2(1),
	o => \data2[1]~input_o\);

-- Location: LABCELL_X12_Y1_N12
\A2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- A2(1) = ( A2(1) & ( (\latchA~input_o\) # (\data2[1]~input_o\) ) ) # ( !A2(1) & ( (\data2[1]~input_o\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data2[1]~input_o\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_A2(1),
	combout => A2(1));

-- Location: IOIBUF_X34_Y0_N1
\data2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2(2),
	o => \data2[2]~input_o\);

-- Location: LABCELL_X12_Y1_N15
\A2[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- A2(2) = ( A2(2) & ( (\latchA~input_o\) # (\data2[2]~input_o\) ) ) # ( !A2(2) & ( (\data2[2]~input_o\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data2[2]~input_o\,
	datac => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_A2(2),
	combout => A2(2));

-- Location: IOIBUF_X34_Y0_N18
\data2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2(3),
	o => \data2[3]~input_o\);

-- Location: LABCELL_X12_Y1_N57
\A2[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- A2(3) = ( \latchA~input_o\ & ( A2(3) ) ) # ( !\latchA~input_o\ & ( A2(3) & ( \data2[3]~input_o\ ) ) ) # ( !\latchA~input_o\ & ( !A2(3) & ( \data2[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data2[3]~input_o\,
	datae => \ALT_INV_latchA~input_o\,
	dataf => ALT_INV_A2(3),
	combout => A2(3));

-- Location: LABCELL_X12_Y1_N33
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( A2(3) & ( (!A2(1) & !A2(2)) ) ) # ( !A2(3) & ( (!A2(1) & ((A2(2)))) # (A2(1) & ((!A2(0)) # (!A2(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000111110001111100011111011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A2(0),
	datab => ALT_INV_A2(1),
	datac => ALT_INV_A2(2),
	dataf => ALT_INV_A2(3),
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X12_Y1_N3
\outA2[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA2[0]$latch~combout\ = ( \Mux21~0_combout\ & ( (\latchA~input_o\ & \outA2[0]$latch~combout\) ) ) # ( !\Mux21~0_combout\ & ( (!\latchA~input_o\) # (\outA2[0]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchA~input_o\,
	datad => \ALT_INV_outA2[0]$latch~combout\,
	dataf => \ALT_INV_Mux21~0_combout\,
	combout => \outA2[0]$latch~combout\);

-- Location: LABCELL_X12_Y1_N0
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( A2(3) & ( (A2(2)) # (A2(1)) ) ) # ( !A2(3) & ( (!A2(0) & (A2(1) & !A2(2))) # (A2(0) & ((!A2(2)) # (A2(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A2(0),
	datab => ALT_INV_A2(1),
	datac => ALT_INV_A2(2),
	dataf => ALT_INV_A2(3),
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X12_Y1_N9
\outA2[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA2[1]$latch~combout\ = ( \Mux20~0_combout\ & ( (!\latchA~input_o\) # (\outA2[1]$latch~combout\) ) ) # ( !\Mux20~0_combout\ & ( (\outA2[1]$latch~combout\ & \latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outA2[1]$latch~combout\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \outA2[1]$latch~combout\);

-- Location: LABCELL_X12_Y1_N48
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( A2(1) & ( (A2(3)) # (A2(0)) ) ) # ( !A2(1) & ( (A2(2)) # (A2(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A2(0),
	datab => ALT_INV_A2(3),
	datac => ALT_INV_A2(2),
	dataf => ALT_INV_A2(1),
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X12_Y1_N30
\outA2[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA2[2]$latch~combout\ = ( \outA2[2]$latch~combout\ & ( (\Mux19~0_combout\) # (\latchA~input_o\) ) ) # ( !\outA2[2]$latch~combout\ & ( (!\latchA~input_o\ & \Mux19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchA~input_o\,
	datad => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_outA2[2]$latch~combout\,
	combout => \outA2[2]$latch~combout\);

-- Location: LABCELL_X12_Y1_N24
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( A2(3) & ( (A2(2)) # (A2(1)) ) ) # ( !A2(3) & ( (!A2(0) & (!A2(1) & A2(2))) # (A2(0) & (!A2(1) $ (A2(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A2(0),
	datab => ALT_INV_A2(1),
	datad => ALT_INV_A2(2),
	dataf => ALT_INV_A2(3),
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X12_Y1_N51
\outA2[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA2[3]$latch~combout\ = ( \outA2[3]$latch~combout\ & ( (\latchA~input_o\) # (\Mux18~0_combout\) ) ) # ( !\outA2[3]$latch~combout\ & ( (\Mux18~0_combout\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux18~0_combout\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => \ALT_INV_outA2[3]$latch~combout\,
	combout => \outA2[3]$latch~combout\);

-- Location: LABCELL_X12_Y1_N45
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( A2(3) & ( A2(1) ) ) # ( !A2(3) & ( A2(1) & ( (!A2(0) & !A2(2)) ) ) ) # ( A2(3) & ( !A2(1) & ( A2(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001110001000100010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A2(0),
	datab => ALT_INV_A2(2),
	datae => ALT_INV_A2(3),
	dataf => ALT_INV_A2(1),
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X12_Y1_N39
\outA2[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA2[4]$latch~combout\ = ( \outA2[4]$latch~combout\ & ( (\latchA~input_o\) # (\Mux17~0_combout\) ) ) # ( !\outA2[4]$latch~combout\ & ( (\Mux17~0_combout\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => \ALT_INV_outA2[4]$latch~combout\,
	combout => \outA2[4]$latch~combout\);

-- Location: LABCELL_X12_Y1_N21
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( A2(3) & ( (A2(2)) # (A2(1)) ) ) # ( !A2(3) & ( (A2(2) & (!A2(1) $ (!A2(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A2(1),
	datac => ALT_INV_A2(0),
	datad => ALT_INV_A2(2),
	dataf => ALT_INV_A2(3),
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X12_Y1_N18
\outA2[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA2[5]$latch~combout\ = ( \outA2[5]$latch~combout\ & ( (\latchA~input_o\) # (\Mux16~0_combout\) ) ) # ( !\outA2[5]$latch~combout\ & ( (\Mux16~0_combout\ & !\latchA~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux16~0_combout\,
	datad => \ALT_INV_latchA~input_o\,
	dataf => \ALT_INV_outA2[5]$latch~combout\,
	combout => \outA2[5]$latch~combout\);

-- Location: LABCELL_X12_Y1_N36
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( A2(3) & ( (A2(2)) # (A2(1)) ) ) # ( !A2(3) & ( (!A2(1) & (!A2(0) $ (!A2(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A2(0),
	datab => ALT_INV_A2(1),
	datac => ALT_INV_A2(2),
	dataf => ALT_INV_A2(3),
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X12_Y1_N27
\outA2[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outA2[6]$latch~combout\ = ( \Mux15~0_combout\ & ( (!\latchA~input_o\) # (\outA2[6]$latch~combout\) ) ) # ( !\Mux15~0_combout\ & ( (\latchA~input_o\ & \outA2[6]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchA~input_o\,
	datad => \ALT_INV_outA2[6]$latch~combout\,
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \outA2[6]$latch~combout\);

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

-- Location: LABCELL_X31_Y3_N39
\B1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- B1(2) = ( B1(2) & ( \latchB~input_o\ ) ) # ( B1(2) & ( !\latchB~input_o\ & ( \data1[2]~input_o\ ) ) ) # ( !B1(2) & ( !\latchB~input_o\ & ( \data1[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data1[2]~input_o\,
	datae => ALT_INV_B1(2),
	dataf => \ALT_INV_latchB~input_o\,
	combout => B1(2));

-- Location: LABCELL_X32_Y3_N57
\B1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- B1(1) = ( \latchB~input_o\ & ( B1(1) ) ) # ( !\latchB~input_o\ & ( \data1[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data1[1]~input_o\,
	datad => ALT_INV_B1(1),
	dataf => \ALT_INV_latchB~input_o\,
	combout => B1(1));

-- Location: LABCELL_X32_Y3_N18
\B1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- B1(0) = ( B1(0) & ( (\data1[0]~input_o\) # (\latchB~input_o\) ) ) # ( !B1(0) & ( (!\latchB~input_o\ & \data1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchB~input_o\,
	datad => \ALT_INV_data1[0]~input_o\,
	dataf => ALT_INV_B1(0),
	combout => B1(0));

-- Location: LABCELL_X32_Y3_N24
\B1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- B1(3) = ( B1(3) & ( (\data1[3]~input_o\) # (\latchB~input_o\) ) ) # ( !B1(3) & ( (!\latchB~input_o\ & \data1[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_latchB~input_o\,
	datac => \ALT_INV_data1[3]~input_o\,
	dataf => ALT_INV_B1(3),
	combout => B1(3));

-- Location: LABCELL_X32_Y3_N15
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!B1(2) & (!B1(1) $ (((!B1(3)))))) # (B1(2) & (!B1(3) & ((!B1(1)) # (!B1(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011010001000011101101000100001110110100010000111011010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(2),
	datab => ALT_INV_B1(1),
	datac => ALT_INV_B1(0),
	datad => ALT_INV_B1(3),
	combout => \Mux28~0_combout\);

-- Location: LABCELL_X32_Y3_N54
\outB1[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB1[0]$latch~combout\ = ( \Mux28~0_combout\ & ( (\latchB~input_o\ & \outB1[0]$latch~combout\) ) ) # ( !\Mux28~0_combout\ & ( (!\latchB~input_o\) # (\outB1[0]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchB~input_o\,
	datad => \ALT_INV_outB1[0]$latch~combout\,
	dataf => \ALT_INV_Mux28~0_combout\,
	combout => \outB1[0]$latch~combout\);

-- Location: LABCELL_X31_Y3_N12
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( B1(2) & ( ((B1(0) & B1(1))) # (B1(3)) ) ) # ( !B1(2) & ( ((B1(0) & !B1(3))) # (B1(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(0),
	datab => ALT_INV_B1(1),
	datac => ALT_INV_B1(3),
	dataf => ALT_INV_B1(2),
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X31_Y3_N51
\outB1[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB1[1]$latch~combout\ = ( \outB1[1]$latch~combout\ & ( \latchB~input_o\ ) ) # ( \outB1[1]$latch~combout\ & ( !\latchB~input_o\ & ( \Mux27~0_combout\ ) ) ) # ( !\outB1[1]$latch~combout\ & ( !\latchB~input_o\ & ( \Mux27~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux27~0_combout\,
	datae => \ALT_INV_outB1[1]$latch~combout\,
	dataf => \ALT_INV_latchB~input_o\,
	combout => \outB1[1]$latch~combout\);

-- Location: LABCELL_X31_Y3_N27
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( B1(2) & ( ((!B1(1)) # (B1(3))) # (B1(0)) ) ) # ( !B1(2) & ( ((B1(1) & B1(3))) # (B1(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011111011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(0),
	datab => ALT_INV_B1(1),
	datad => ALT_INV_B1(3),
	dataf => ALT_INV_B1(2),
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X31_Y3_N54
\outB1[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB1[2]$latch~combout\ = ( \outB1[2]$latch~combout\ & ( \latchB~input_o\ ) ) # ( \outB1[2]$latch~combout\ & ( !\latchB~input_o\ & ( \Mux26~0_combout\ ) ) ) # ( !\outB1[2]$latch~combout\ & ( !\latchB~input_o\ & ( \Mux26~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux26~0_combout\,
	datae => \ALT_INV_outB1[2]$latch~combout\,
	dataf => \ALT_INV_latchB~input_o\,
	combout => \outB1[2]$latch~combout\);

-- Location: LABCELL_X32_Y3_N3
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( B1(2) & ( (!B1(0) $ (B1(1))) # (B1(3)) ) ) # ( !B1(2) & ( (!B1(1) & (B1(0) & !B1(3))) # (B1(1) & ((B1(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001110011111100111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(0),
	datab => ALT_INV_B1(1),
	datac => ALT_INV_B1(3),
	dataf => ALT_INV_B1(2),
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X32_Y3_N48
\outB1[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB1[3]$latch~combout\ = ( \Mux25~0_combout\ & ( (!\latchB~input_o\) # (\outB1[3]$latch~combout\) ) ) # ( !\Mux25~0_combout\ & ( (\latchB~input_o\ & \outB1[3]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchB~input_o\,
	datad => \ALT_INV_outB1[3]$latch~combout\,
	dataf => \ALT_INV_Mux25~0_combout\,
	combout => \outB1[3]$latch~combout\);

-- Location: LABCELL_X32_Y3_N30
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( B1(2) & ( B1(3) ) ) # ( !B1(2) & ( (B1(1) & ((!B1(0)) # (B1(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(0),
	datab => ALT_INV_B1(1),
	datac => ALT_INV_B1(3),
	dataf => ALT_INV_B1(2),
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X32_Y3_N0
\outB1[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB1[4]$latch~combout\ = ( \Mux24~0_combout\ & ( (!\latchB~input_o\) # (\outB1[4]$latch~combout\) ) ) # ( !\Mux24~0_combout\ & ( (\latchB~input_o\ & \outB1[4]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchB~input_o\,
	datad => \ALT_INV_outB1[4]$latch~combout\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \outB1[4]$latch~combout\);

-- Location: LABCELL_X32_Y3_N51
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( B1(2) & ( (!B1(0) $ (!B1(1))) # (B1(3)) ) ) # ( !B1(2) & ( (B1(1) & B1(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(0),
	datab => ALT_INV_B1(1),
	datac => ALT_INV_B1(3),
	dataf => ALT_INV_B1(2),
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X32_Y3_N36
\outB1[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB1[5]$latch~combout\ = ( \outB1[5]$latch~combout\ & ( (\Mux23~0_combout\) # (\latchB~input_o\) ) ) # ( !\outB1[5]$latch~combout\ & ( (!\latchB~input_o\ & \Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchB~input_o\,
	datad => \ALT_INV_Mux23~0_combout\,
	dataf => \ALT_INV_outB1[5]$latch~combout\,
	combout => \outB1[5]$latch~combout\);

-- Location: LABCELL_X32_Y3_N39
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( B1(2) & ( ((!B1(0) & !B1(1))) # (B1(3)) ) ) # ( !B1(2) & ( (!B1(1) & (B1(0) & !B1(3))) # (B1(1) & ((B1(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001110001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(0),
	datab => ALT_INV_B1(1),
	datac => ALT_INV_B1(3),
	dataf => ALT_INV_B1(2),
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X32_Y3_N27
\outB1[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB1[6]$latch~combout\ = (!\latchB~input_o\ & (\Mux22~0_combout\)) # (\latchB~input_o\ & ((\outB1[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_latchB~input_o\,
	datab => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_outB1[6]$latch~combout\,
	combout => \outB1[6]$latch~combout\);

-- Location: MLABCELL_X34_Y3_N51
\B2[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- B2(3) = ( B2(3) & ( (\latchB~input_o\) # (\data2[3]~input_o\) ) ) # ( !B2(3) & ( (\data2[3]~input_o\ & !\latchB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data2[3]~input_o\,
	datad => \ALT_INV_latchB~input_o\,
	dataf => ALT_INV_B2(3),
	combout => B2(3));

-- Location: LABCELL_X35_Y3_N6
\B2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- B2(1) = ( B2(1) & ( (\latchB~input_o\) # (\data2[1]~input_o\) ) ) # ( !B2(1) & ( (\data2[1]~input_o\ & !\latchB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data2[1]~input_o\,
	datad => \ALT_INV_latchB~input_o\,
	dataf => ALT_INV_B2(1),
	combout => B2(1));

-- Location: MLABCELL_X34_Y3_N36
\B2[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- B2(0) = ( B2(0) & ( (\latchB~input_o\) # (\data2[0]~input_o\) ) ) # ( !B2(0) & ( (\data2[0]~input_o\ & !\latchB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data2[0]~input_o\,
	datad => \ALT_INV_latchB~input_o\,
	dataf => ALT_INV_B2(0),
	combout => B2(0));

-- Location: MLABCELL_X34_Y3_N18
\B2[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- B2(2) = ( B2(2) & ( (\data2[2]~input_o\) # (\latchB~input_o\) ) ) # ( !B2(2) & ( (!\latchB~input_o\ & \data2[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchB~input_o\,
	datad => \ALT_INV_data2[2]~input_o\,
	dataf => ALT_INV_B2(2),
	combout => B2(2));

-- Location: LABCELL_X35_Y3_N12
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( B2(2) & ( (!B2(3) & ((!B2(1)) # (!B2(0)))) ) ) # ( !B2(2) & ( !B2(3) $ (!B2(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(3),
	datab => ALT_INV_B2(1),
	datac => ALT_INV_B2(0),
	dataf => ALT_INV_B2(2),
	combout => \Mux35~0_combout\);

-- Location: LABCELL_X35_Y3_N27
\outB2[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB2[0]$latch~combout\ = ( \Mux35~0_combout\ & ( (\outB2[0]$latch~combout\ & \latchB~input_o\) ) ) # ( !\Mux35~0_combout\ & ( (!\latchB~input_o\) # (\outB2[0]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outB2[0]$latch~combout\,
	datad => \ALT_INV_latchB~input_o\,
	dataf => \ALT_INV_Mux35~0_combout\,
	combout => \outB2[0]$latch~combout\);

-- Location: MLABCELL_X34_Y3_N15
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( B2(3) & ( (B2(2)) # (B2(1)) ) ) # ( !B2(3) & ( (!B2(1) & (B2(0) & !B2(2))) # (B2(1) & ((!B2(2)) # (B2(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(1),
	datab => ALT_INV_B2(0),
	datac => ALT_INV_B2(2),
	dataf => ALT_INV_B2(3),
	combout => \Mux34~0_combout\);

-- Location: MLABCELL_X34_Y3_N39
\outB2[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB2[1]$latch~combout\ = ( \Mux34~0_combout\ & ( (!\latchB~input_o\) # (\outB2[1]$latch~combout\) ) ) # ( !\Mux34~0_combout\ & ( (\outB2[1]$latch~combout\ & \latchB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outB2[1]$latch~combout\,
	datad => \ALT_INV_latchB~input_o\,
	dataf => \ALT_INV_Mux34~0_combout\,
	combout => \outB2[1]$latch~combout\);

-- Location: MLABCELL_X34_Y3_N42
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ((!B2(1) & (B2(2))) # (B2(1) & ((B2(3))))) # (B2(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111101111111001011110111111100101111011111110010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(1),
	datab => ALT_INV_B2(2),
	datac => ALT_INV_B2(0),
	datad => ALT_INV_B2(3),
	combout => \Mux33~0_combout\);

-- Location: MLABCELL_X34_Y3_N21
\outB2[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB2[2]$latch~combout\ = ( \Mux33~0_combout\ & ( (!\latchB~input_o\) # (\outB2[2]$latch~combout\) ) ) # ( !\Mux33~0_combout\ & ( (\latchB~input_o\ & \outB2[2]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_latchB~input_o\,
	datad => \ALT_INV_outB2[2]$latch~combout\,
	dataf => \ALT_INV_Mux33~0_combout\,
	combout => \outB2[2]$latch~combout\);

-- Location: MLABCELL_X34_Y3_N54
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( B2(3) & ( (B2(2)) # (B2(1)) ) ) # ( !B2(3) & ( (!B2(1) & (!B2(2) $ (!B2(0)))) # (B2(1) & (B2(2) & B2(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(1),
	datab => ALT_INV_B2(2),
	datac => ALT_INV_B2(0),
	dataf => ALT_INV_B2(3),
	combout => \Mux32~0_combout\);

-- Location: MLABCELL_X34_Y3_N57
\outB2[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB2[3]$latch~combout\ = ( \latchB~input_o\ & ( \outB2[3]$latch~combout\ ) ) # ( !\latchB~input_o\ & ( \Mux32~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux32~0_combout\,
	datad => \ALT_INV_outB2[3]$latch~combout\,
	dataf => \ALT_INV_latchB~input_o\,
	combout => \outB2[3]$latch~combout\);

-- Location: MLABCELL_X34_Y3_N9
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( B2(3) & ( (B2(1)) # (B2(2)) ) ) # ( !B2(3) & ( (!B2(0) & (!B2(2) & B2(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(0),
	datab => ALT_INV_B2(2),
	datac => ALT_INV_B2(1),
	dataf => ALT_INV_B2(3),
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X34_Y3_N24
\outB2[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB2[4]$latch~combout\ = ( \Mux31~0_combout\ & ( (!\latchB~input_o\) # (\outB2[4]$latch~combout\) ) ) # ( !\Mux31~0_combout\ & ( (\outB2[4]$latch~combout\ & \latchB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outB2[4]$latch~combout\,
	datad => \ALT_INV_latchB~input_o\,
	dataf => \ALT_INV_Mux31~0_combout\,
	combout => \outB2[4]$latch~combout\);

-- Location: MLABCELL_X34_Y3_N3
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( B2(3) & ( (B2(1)) # (B2(2)) ) ) # ( !B2(3) & ( (B2(2) & (!B2(0) $ (!B2(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(0),
	datab => ALT_INV_B2(2),
	datac => ALT_INV_B2(1),
	dataf => ALT_INV_B2(3),
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X34_Y3_N0
\outB2[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB2[5]$latch~combout\ = ( \Mux30~0_combout\ & ( (!\latchB~input_o\) # (\outB2[5]$latch~combout\) ) ) # ( !\Mux30~0_combout\ & ( (\latchB~input_o\ & \outB2[5]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_latchB~input_o\,
	datad => \ALT_INV_outB2[5]$latch~combout\,
	dataf => \ALT_INV_Mux30~0_combout\,
	combout => \outB2[5]$latch~combout\);

-- Location: MLABCELL_X34_Y3_N30
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( B2(3) & ( (B2(2)) # (B2(1)) ) ) # ( !B2(3) & ( (!B2(1) & (!B2(0) $ (!B2(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000010101011111111100100010100010000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(1),
	datab => ALT_INV_B2(0),
	datad => ALT_INV_B2(2),
	datae => ALT_INV_B2(3),
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X34_Y3_N48
\outB2[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \outB2[6]$latch~combout\ = ( \outB2[6]$latch~combout\ & ( (\latchB~input_o\) # (\Mux29~0_combout\) ) ) # ( !\outB2[6]$latch~combout\ & ( (\Mux29~0_combout\ & !\latchB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \ALT_INV_latchB~input_o\,
	dataf => \ALT_INV_outB2[6]$latch~combout\,
	combout => \outB2[6]$latch~combout\);

-- Location: IOIBUF_X33_Y0_N75
\sub~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sub,
	o => \sub~input_o\);

-- Location: LABCELL_X35_Y3_N15
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( B2(1) & ( !B2(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B2(3),
	dataf => ALT_INV_B2(1),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X35_Y3_N48
\B2Comp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- B2Comp(1) = ( \Mux2~0_combout\ & ( (\sub~input_o\) # (B2Comp(1)) ) ) # ( !\Mux2~0_combout\ & ( (B2Comp(1) & !\sub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2Comp(1),
	datad => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => B2Comp(1));

-- Location: LABCELL_X35_Y3_N57
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( B2(0) ) # ( !B2(0) & ( (B2(3) & ((B2(2)) # (B2(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B2(1),
	datac => ALT_INV_B2(2),
	datad => ALT_INV_B2(3),
	dataf => ALT_INV_B2(0),
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X35_Y3_N0
\B2Comp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- B2Comp(0) = ( B2Comp(0) & ( \Mux3~0_combout\ & ( !\sub~input_o\ ) ) ) # ( B2Comp(0) & ( !\Mux3~0_combout\ ) ) # ( !B2Comp(0) & ( !\Mux3~0_combout\ & ( \sub~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_sub~input_o\,
	datae => ALT_INV_B2Comp(0),
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => B2Comp(0));

-- Location: LABCELL_X35_Y3_N30
\Add0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~22_cout\ = CARRY(( \sub~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sub~input_o\,
	cin => GND,
	cout => \Add0~22_cout\);

-- Location: LABCELL_X35_Y3_N33
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( (!\sub~input_o\ & (B2(0))) # (\sub~input_o\ & ((B2Comp(0)))) ) + ( A2(0) ) + ( \Add0~22_cout\ ))
-- \Add0~18\ = CARRY(( (!\sub~input_o\ & (B2(0))) # (\sub~input_o\ & ((B2Comp(0)))) ) + ( A2(0) ) + ( \Add0~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(0),
	datab => \ALT_INV_sub~input_o\,
	datad => ALT_INV_B2Comp(0),
	dataf => ALT_INV_A2(0),
	cin => \Add0~22_cout\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X35_Y3_N36
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( A2(1) ) + ( (!\sub~input_o\ & (B2(1))) # (\sub~input_o\ & ((B2Comp(1)))) ) + ( \Add0~18\ ))
-- \Add0~2\ = CARRY(( A2(1) ) + ( (!\sub~input_o\ & (B2(1))) # (\sub~input_o\ & ((B2Comp(1)))) ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sub~input_o\,
	datac => ALT_INV_B2(1),
	datad => ALT_INV_A2(1),
	dataf => ALT_INV_B2Comp(1),
	cin => \Add0~18\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X34_Y3_N27
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !B2(1) & ( (!B2(2) & !B2(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(2),
	datad => ALT_INV_B2(3),
	dataf => ALT_INV_B2(1),
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X34_Y3_N6
\B2Comp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- B2Comp(3) = ( \Mux0~0_combout\ & ( (\sub~input_o\) # (B2Comp(3)) ) ) # ( !\Mux0~0_combout\ & ( (B2Comp(3) & !\sub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B2Comp(3),
	datad => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => B2Comp(3));

-- Location: LABCELL_X35_Y3_N18
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!B2(3) & (!B2(1) $ (!B2(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2(1),
	datab => ALT_INV_B2(2),
	datac => ALT_INV_B2(3),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X35_Y3_N21
\B2Comp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- B2Comp(2) = ( \Mux1~0_combout\ & ( (B2Comp(2)) # (\sub~input_o\) ) ) # ( !\Mux1~0_combout\ & ( (!\sub~input_o\ & B2Comp(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sub~input_o\,
	datad => ALT_INV_B2Comp(2),
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => B2Comp(2));

-- Location: LABCELL_X35_Y3_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( (!\sub~input_o\ & (B2(2))) # (\sub~input_o\ & ((B2Comp(2)))) ) + ( A2(2) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( (!\sub~input_o\ & (B2(2))) # (\sub~input_o\ & ((B2Comp(2)))) ) + ( A2(2) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sub~input_o\,
	datac => ALT_INV_B2(2),
	datad => ALT_INV_B2Comp(2),
	dataf => ALT_INV_A2(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X35_Y3_N42
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( (!\sub~input_o\ & ((B2(3)))) # (\sub~input_o\ & (B2Comp(3))) ) + ( A2(3) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( (!\sub~input_o\ & ((B2(3)))) # (\sub~input_o\ & (B2Comp(3))) ) + ( A2(3) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B2Comp(3),
	datab => \ALT_INV_sub~input_o\,
	datac => ALT_INV_B2(3),
	dataf => ALT_INV_A2(3),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X35_Y3_N45
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( GND ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

-- Location: LABCELL_X35_Y3_N9
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \Add0~5_sumout\ & ( (\Add0~13_sumout\) # (\Add0~9_sumout\) ) ) # ( !\Add0~5_sumout\ & ( ((\Add0~1_sumout\ & \Add0~9_sumout\)) # (\Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X35_Y3_N24
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( \Add0~5_sumout\ & ( !\Add0~9_sumout\ $ (!\Add0~13_sumout\) ) ) # ( !\Add0~5_sumout\ & ( !\Add0~13_sumout\ $ (((!\Add0~9_sumout\) # (!\Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Add2~0_combout\);

-- Location: LABCELL_X32_Y3_N42
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !B1(3) & ( B1(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B1(1),
	dataf => ALT_INV_B1(3),
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X32_Y2_N39
\B1Comp[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- B1Comp(1) = ( \sub~input_o\ & ( \Mux6~0_combout\ ) ) # ( !\sub~input_o\ & ( \Mux6~0_combout\ & ( B1Comp(1) ) ) ) # ( !\sub~input_o\ & ( !\Mux6~0_combout\ & ( B1Comp(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1Comp(1),
	datae => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => B1Comp(1));

-- Location: LABCELL_X32_Y3_N12
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( B1(2) & ( (B1(0)) # (B1(3)) ) ) # ( !B1(2) & ( ((B1(1) & B1(3))) # (B1(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B1(1),
	datac => ALT_INV_B1(3),
	datad => ALT_INV_B1(0),
	dataf => ALT_INV_B1(2),
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X32_Y3_N45
\B1Comp[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- B1Comp(0) = ( \Mux7~0_combout\ & ( (!\sub~input_o\ & B1Comp(0)) ) ) # ( !\Mux7~0_combout\ & ( (B1Comp(0)) # (\sub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sub~input_o\,
	datad => ALT_INV_B1Comp(0),
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => B1Comp(0));

-- Location: MLABCELL_X34_Y4_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( A1(0) ) + ( B1Comp(0) ) + ( !VCC ))
-- \Add3~2\ = CARRY(( A1(0) ) + ( B1Comp(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1Comp(0),
	datad => ALT_INV_A1(0),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: MLABCELL_X34_Y4_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( B1Comp(1) ) + ( A1(1) ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( B1Comp(1) ) + ( A1(1) ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(1),
	datad => ALT_INV_B1Comp(1),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X34_Y3_N12
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_combout\ = ( \Add3~5_sumout\ & ( (\sub~input_o\) # (B1(1)) ) ) # ( !\Add3~5_sumout\ & ( (B1(1) & !\sub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B1(1),
	datad => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_Add3~5_sumout\,
	combout => \Add5~25_combout\);

-- Location: MLABCELL_X34_Y3_N45
\Add5~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = ( \Add3~1_sumout\ & ( (B1(0)) # (\sub~input_o\) ) ) # ( !\Add3~1_sumout\ & ( (!\sub~input_o\ & B1(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sub~input_o\,
	datad => ALT_INV_B1(0),
	dataf => \ALT_INV_Add3~1_sumout\,
	combout => \Add5~20_combout\);

-- Location: MLABCELL_X34_Y4_N30
\Add5~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~23_cout\ = CARRY(( (\LessThan0~0_combout\ & !\sub~input_o\) ) + ( !\sub~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_sub~input_o\,
	cin => GND,
	cout => \Add5~23_cout\);

-- Location: MLABCELL_X34_Y4_N33
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( (!\sub~input_o\ & (((A1(0))))) # (\sub~input_o\ & (\LessThan0~0_combout\ & (\Add2~0_combout\))) ) + ( \Add5~20_combout\ ) + ( \Add5~23_cout\ ))
-- \Add5~2\ = CARRY(( (!\sub~input_o\ & (((A1(0))))) # (\sub~input_o\ & (\LessThan0~0_combout\ & (\Add2~0_combout\))) ) + ( \Add5~20_combout\ ) + ( \Add5~23_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_Add2~0_combout\,
	datad => ALT_INV_A1(0),
	dataf => \ALT_INV_Add5~20_combout\,
	cin => \Add5~23_cout\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: MLABCELL_X34_Y4_N36
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( (!\sub~input_o\ & (((A1(1))))) # (\sub~input_o\ & ((!\LessThan0~0_combout\) # ((!\Add2~0_combout\)))) ) + ( \Add5~25_combout\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( (!\sub~input_o\ & (((A1(1))))) # (\sub~input_o\ & ((!\LessThan0~0_combout\) # ((!\Add2~0_combout\)))) ) + ( \Add5~25_combout\ ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101111101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_A1(1),
	datad => \ALT_INV_Add2~0_combout\,
	dataf => \ALT_INV_Add5~25_combout\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X32_Y3_N9
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !B1(2) & ( (!B1(1) & !B1(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(1),
	datac => ALT_INV_B1(3),
	dataf => ALT_INV_B1(2),
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X32_Y3_N6
\B1Comp[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- B1Comp(3) = ( \Mux4~0_combout\ & ( (\sub~input_o\) # (B1Comp(3)) ) ) # ( !\Mux4~0_combout\ & ( (B1Comp(3) & !\sub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B1Comp(3),
	datad => \ALT_INV_sub~input_o\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => B1Comp(3));

-- Location: LABCELL_X32_Y3_N21
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( B1(2) & ( (!B1(1) & !B1(3)) ) ) # ( !B1(2) & ( (B1(1) & !B1(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_B1(1),
	datad => ALT_INV_B1(3),
	dataf => ALT_INV_B1(2),
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X32_Y3_N33
\B1Comp[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- B1Comp(2) = ( \Mux5~0_combout\ & ( (B1Comp(2)) # (\sub~input_o\) ) ) # ( !\Mux5~0_combout\ & ( (!\sub~input_o\ & B1Comp(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sub~input_o\,
	datad => ALT_INV_B1Comp(2),
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => B1Comp(2));

-- Location: MLABCELL_X34_Y4_N6
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( B1Comp(2) ) + ( A1(2) ) + ( \Add3~6\ ))
-- \Add3~14\ = CARRY(( B1Comp(2) ) + ( A1(2) ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_A1(2),
	datac => ALT_INV_B1Comp(2),
	cin => \Add3~6\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: MLABCELL_X34_Y4_N9
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( A1(3) ) + ( B1Comp(3) ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( A1(3) ) + ( B1Comp(3) ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A1(3),
	dataf => ALT_INV_B1Comp(3),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: MLABCELL_X34_Y4_N39
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( (!\sub~input_o\ & (B1(2))) # (\sub~input_o\ & ((\Add3~13_sumout\))) ) + ( (!\sub~input_o\ & A1(2)) ) + ( \Add5~6\ ))
-- \Add5~14\ = CARRY(( (!\sub~input_o\ & (B1(2))) # (\sub~input_o\ & ((\Add3~13_sumout\))) ) + ( (!\sub~input_o\ & A1(2)) ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000000000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datac => ALT_INV_B1(2),
	datad => \ALT_INV_Add3~13_sumout\,
	dataf => ALT_INV_A1(2),
	cin => \Add5~6\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: MLABCELL_X34_Y4_N42
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( (!\sub~input_o\ & A1(3)) ) + ( (!\sub~input_o\ & (B1(3))) # (\sub~input_o\ & ((\Add3~17_sumout\))) ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( (!\sub~input_o\ & A1(3)) ) + ( (!\sub~input_o\ & (B1(3))) # (\sub~input_o\ & ((\Add3~17_sumout\))) ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datac => ALT_INV_B1(3),
	datad => ALT_INV_A1(3),
	dataf => \ALT_INV_Add3~17_sumout\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: MLABCELL_X34_Y4_N12
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( GND ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~18\,
	sumout => \Add3~9_sumout\);

-- Location: MLABCELL_X34_Y4_N45
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( (\sub~input_o\ & \Add3~9_sumout\) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sub~input_o\,
	datac => \ALT_INV_Add3~9_sumout\,
	cin => \Add5~18\,
	sumout => \Add5~9_sumout\);

-- Location: MLABCELL_X34_Y4_N48
\S1_temp2[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1_temp2[3]~2_combout\ = ( \Add5~9_sumout\ & ( \Add5~13_sumout\ & ( !\Add5~17_sumout\ $ (((!\LessThan0~0_combout\ & \sub~input_o\))) ) ) ) # ( !\Add5~9_sumout\ & ( \Add5~13_sumout\ & ( (\sub~input_o\ & (!\LessThan0~0_combout\ $ (!\Add5~17_sumout\))) ) ) 
-- ) # ( \Add5~9_sumout\ & ( !\Add5~13_sumout\ & ( !\Add5~17_sumout\ $ (((!\Add5~5_sumout\) # ((!\LessThan0~0_combout\ & \sub~input_o\)))) ) ) ) # ( !\Add5~9_sumout\ & ( !\Add5~13_sumout\ & ( (!\Add5~5_sumout\ & (((\Add5~17_sumout\)))) # (\Add5~5_sumout\ & 
-- (\sub~input_o\ & (!\LessThan0~0_combout\ $ (!\Add5~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101110010100011010111000000011000011001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_sub~input_o\,
	datad => \ALT_INV_Add5~17_sumout\,
	datae => \ALT_INV_Add5~9_sumout\,
	dataf => \ALT_INV_Add5~13_sumout\,
	combout => \S1_temp2[3]~2_combout\);

-- Location: MLABCELL_X34_Y4_N24
\S1_temp2[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1_temp2[2]~1_combout\ = ( \Add5~9_sumout\ & ( \Add5~13_sumout\ & ( ((!\LessThan0~0_combout\ & \sub~input_o\)) # (\Add5~5_sumout\) ) ) ) # ( !\Add5~9_sumout\ & ( \Add5~13_sumout\ & ( ((!\sub~input_o\ & ((!\Add5~17_sumout\))) # (\sub~input_o\ & 
-- (!\LessThan0~0_combout\))) # (\Add5~5_sumout\) ) ) ) # ( \Add5~9_sumout\ & ( !\Add5~13_sumout\ & ( (!\Add5~5_sumout\ & ((!\sub~input_o\) # (\LessThan0~0_combout\))) ) ) ) # ( !\Add5~9_sumout\ & ( !\Add5~13_sumout\ & ( (!\Add5~5_sumout\ & 
-- (\LessThan0~0_combout\ & \sub~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010101000101010001011111101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_sub~input_o\,
	datad => \ALT_INV_Add5~17_sumout\,
	datae => \ALT_INV_Add5~9_sumout\,
	dataf => \ALT_INV_Add5~13_sumout\,
	combout => \S1_temp2[2]~1_combout\);

-- Location: MLABCELL_X34_Y4_N54
\S1_temp2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1_temp2[1]~0_combout\ = ( \Add5~9_sumout\ & ( \Add5~13_sumout\ & ( !\Add5~5_sumout\ $ (((!\LessThan0~0_combout\ & \sub~input_o\))) ) ) ) # ( !\Add5~9_sumout\ & ( \Add5~13_sumout\ & ( !\Add5~5_sumout\ $ (((!\sub~input_o\ & ((!\Add5~17_sumout\))) # 
-- (\sub~input_o\ & (!\LessThan0~0_combout\)))) ) ) ) # ( \Add5~9_sumout\ & ( !\Add5~13_sumout\ & ( !\Add5~5_sumout\ $ (((!\LessThan0~0_combout\ & \sub~input_o\))) ) ) ) # ( !\Add5~9_sumout\ & ( !\Add5~13_sumout\ & ( (!\sub~input_o\ & (\Add5~5_sumout\ & 
-- ((!\Add5~17_sumout\)))) # (\sub~input_o\ & (!\Add5~5_sumout\ $ ((!\LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000000110101001101010011001010110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_sub~input_o\,
	datad => \ALT_INV_Add5~17_sumout\,
	datae => \ALT_INV_Add5~9_sumout\,
	dataf => \ALT_INV_Add5~13_sumout\,
	combout => \S1_temp2[1]~0_combout\);

-- Location: LABCELL_X41_Y2_N3
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( \Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ & ( (!\S1_temp2[3]~2_combout\ & !\S1_temp2[2]~1_combout\) ) ) ) # ( !\Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ & ( !\S1_temp2[3]~2_combout\ ) ) ) # ( \Add5~1_sumout\ & ( 
-- !\S1_temp2[1]~0_combout\ & ( !\S1_temp2[3]~2_combout\ $ (!\S1_temp2[2]~1_combout\) ) ) ) # ( !\Add5~1_sumout\ & ( !\S1_temp2[1]~0_combout\ & ( !\S1_temp2[3]~2_combout\ $ (!\S1_temp2[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010101010101010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1_temp2[3]~2_combout\,
	datac => \ALT_INV_S1_temp2[2]~1_combout\,
	datae => \ALT_INV_Add5~1_sumout\,
	dataf => \ALT_INV_S1_temp2[1]~0_combout\,
	combout => \Mux42~0_combout\);

-- Location: LABCELL_X41_Y2_N54
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ ) ) # ( !\Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ & ( (!\S1_temp2[2]~1_combout\) # (\S1_temp2[3]~2_combout\) ) ) ) # ( \Add5~1_sumout\ & ( !\S1_temp2[1]~0_combout\ & ( 
-- !\S1_temp2[2]~1_combout\ $ (\S1_temp2[3]~2_combout\) ) ) ) # ( !\Add5~1_sumout\ & ( !\S1_temp2[1]~0_combout\ & ( (\S1_temp2[2]~1_combout\ & \S1_temp2[3]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001111001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S1_temp2[2]~1_combout\,
	datac => \ALT_INV_S1_temp2[3]~2_combout\,
	datae => \ALT_INV_Add5~1_sumout\,
	dataf => \ALT_INV_S1_temp2[1]~0_combout\,
	combout => \Mux41~0_combout\);

-- Location: LABCELL_X41_Y2_N51
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ ) ) # ( !\Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ & ( \S1_temp2[3]~2_combout\ ) ) ) # ( \Add5~1_sumout\ & ( !\S1_temp2[1]~0_combout\ ) ) # ( !\Add5~1_sumout\ & ( !\S1_temp2[1]~0_combout\ 
-- & ( \S1_temp2[2]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1_temp2[3]~2_combout\,
	datac => \ALT_INV_S1_temp2[2]~1_combout\,
	datae => \ALT_INV_Add5~1_sumout\,
	dataf => \ALT_INV_S1_temp2[1]~0_combout\,
	combout => \Mux40~0_combout\);

-- Location: LABCELL_X41_Y2_N30
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ & ( (\S1_temp2[3]~2_combout\) # (\S1_temp2[2]~1_combout\) ) ) ) # ( !\Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ & ( \S1_temp2[3]~2_combout\ ) ) ) # ( \Add5~1_sumout\ & ( 
-- !\S1_temp2[1]~0_combout\ & ( !\S1_temp2[2]~1_combout\ $ (\S1_temp2[3]~2_combout\) ) ) ) # ( !\Add5~1_sumout\ & ( !\S1_temp2[1]~0_combout\ & ( \S1_temp2[2]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110000111100001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S1_temp2[2]~1_combout\,
	datac => \ALT_INV_S1_temp2[3]~2_combout\,
	datae => \ALT_INV_Add5~1_sumout\,
	dataf => \ALT_INV_S1_temp2[1]~0_combout\,
	combout => \Mux39~0_combout\);

-- Location: LABCELL_X41_Y2_N39
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ & ( \S1_temp2[3]~2_combout\ ) ) ) # ( !\Add5~1_sumout\ & ( \S1_temp2[1]~0_combout\ & ( (!\S1_temp2[2]~1_combout\) # (\S1_temp2[3]~2_combout\) ) ) ) # ( \Add5~1_sumout\ & ( 
-- !\S1_temp2[1]~0_combout\ & ( (\S1_temp2[3]~2_combout\ & \S1_temp2[2]~1_combout\) ) ) ) # ( !\Add5~1_sumout\ & ( !\S1_temp2[1]~0_combout\ & ( (\S1_temp2[3]~2_combout\ & \S1_temp2[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1_temp2[3]~2_combout\,
	datac => \ALT_INV_S1_temp2[2]~1_combout\,
	datae => \ALT_INV_Add5~1_sumout\,
	dataf => \ALT_INV_S1_temp2[1]~0_combout\,
	combout => \Mux38~0_combout\);

-- Location: LABCELL_X41_Y2_N9
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \S1_temp2[1]~0_combout\ & ( ((\S1_temp2[2]~1_combout\ & !\Add5~1_sumout\)) # (\S1_temp2[3]~2_combout\) ) ) # ( !\S1_temp2[1]~0_combout\ & ( (\S1_temp2[2]~1_combout\ & ((\Add5~1_sumout\) # (\S1_temp2[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1_temp2[3]~2_combout\,
	datab => \ALT_INV_S1_temp2[2]~1_combout\,
	datac => \ALT_INV_Add5~1_sumout\,
	dataf => \ALT_INV_S1_temp2[1]~0_combout\,
	combout => \Mux37~0_combout\);

-- Location: LABCELL_X41_Y2_N6
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( \S1_temp2[1]~0_combout\ & ( \S1_temp2[3]~2_combout\ ) ) # ( !\S1_temp2[1]~0_combout\ & ( !\S1_temp2[2]~1_combout\ $ (((!\Add5~1_sumout\) # (\S1_temp2[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110011001001100111001100101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S1_temp2[3]~2_combout\,
	datab => \ALT_INV_S1_temp2[2]~1_combout\,
	datad => \ALT_INV_Add5~1_sumout\,
	dataf => \ALT_INV_S1_temp2[1]~0_combout\,
	combout => \Mux36~0_combout\);

-- Location: MLABCELL_X37_Y3_N3
\S2_temp2[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2_temp2[1]~0_combout\ = ( \Add0~1_sumout\ & ( !\LessThan0~0_combout\ ) ) # ( !\Add0~1_sumout\ & ( \LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \S2_temp2[1]~0_combout\);

-- Location: LABCELL_X35_Y3_N51
\S2_temp2[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2_temp2[2]~1_combout\ = ( \Add0~5_sumout\ & ( (!\LessThan0~0_combout\) # (\Add0~1_sumout\) ) ) # ( !\Add0~5_sumout\ & ( (!\Add0~1_sumout\ & \LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \S2_temp2[2]~1_combout\);

-- Location: LABCELL_X35_Y3_N54
\S2_temp2[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \S2_temp2[3]~2_combout\ = ( \Add0~5_sumout\ & ( (\Add0~13_sumout\ & !\Add0~9_sumout\) ) ) # ( !\Add0~5_sumout\ & ( (!\Add0~1_sumout\ & ((\Add0~9_sumout\))) # (\Add0~1_sumout\ & (\Add0~13_sumout\ & !\Add0~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110000000001011111000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \S2_temp2[3]~2_combout\);

-- Location: LABCELL_X41_Y2_N24
\Mux49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ( \Add0~17_sumout\ & ( (!\S2_temp2[1]~0_combout\ & (!\S2_temp2[2]~1_combout\ $ (!\S2_temp2[3]~2_combout\))) # (\S2_temp2[1]~0_combout\ & (!\S2_temp2[2]~1_combout\ & !\S2_temp2[3]~2_combout\)) ) ) # ( !\Add0~17_sumout\ & ( 
-- !\S2_temp2[3]~2_combout\ $ (((!\S2_temp2[1]~0_combout\ & !\S2_temp2[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001101000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S2_temp2[1]~0_combout\,
	datab => \ALT_INV_S2_temp2[2]~1_combout\,
	datac => \ALT_INV_S2_temp2[3]~2_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux49~0_combout\);

-- Location: LABCELL_X41_Y2_N27
\Mux48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( \Add0~17_sumout\ & ( (!\S2_temp2[2]~1_combout\ $ (\S2_temp2[3]~2_combout\)) # (\S2_temp2[1]~0_combout\) ) ) # ( !\Add0~17_sumout\ & ( (!\S2_temp2[2]~1_combout\ & (\S2_temp2[1]~0_combout\)) # (\S2_temp2[2]~1_combout\ & 
-- ((\S2_temp2[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011111011101011101111101110101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S2_temp2[1]~0_combout\,
	datab => \ALT_INV_S2_temp2[2]~1_combout\,
	datad => \ALT_INV_S2_temp2[3]~2_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux48~0_combout\);

-- Location: LABCELL_X41_Y2_N42
\Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( \Add0~17_sumout\ ) # ( !\Add0~17_sumout\ & ( (!\S2_temp2[1]~0_combout\ & (\S2_temp2[2]~1_combout\)) # (\S2_temp2[1]~0_combout\ & ((\S2_temp2[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S2_temp2[1]~0_combout\,
	datab => \ALT_INV_S2_temp2[2]~1_combout\,
	datac => \ALT_INV_S2_temp2[3]~2_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux47~0_combout\);

-- Location: LABCELL_X41_Y2_N45
\Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( \Add0~17_sumout\ & ( (!\S2_temp2[1]~0_combout\ & (!\S2_temp2[2]~1_combout\ $ (\S2_temp2[3]~2_combout\))) # (\S2_temp2[1]~0_combout\ & ((\S2_temp2[3]~2_combout\) # (\S2_temp2[2]~1_combout\))) ) ) # ( !\Add0~17_sumout\ & ( 
-- (!\S2_temp2[1]~0_combout\ & (\S2_temp2[2]~1_combout\)) # (\S2_temp2[1]~0_combout\ & ((\S2_temp2[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011110011001011101111001100101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S2_temp2[1]~0_combout\,
	datab => \ALT_INV_S2_temp2[2]~1_combout\,
	datad => \ALT_INV_S2_temp2[3]~2_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux46~0_combout\);

-- Location: LABCELL_X41_Y2_N12
\Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( \Add0~17_sumout\ & ( (\S2_temp2[3]~2_combout\ & ((\S2_temp2[2]~1_combout\) # (\S2_temp2[1]~0_combout\))) ) ) # ( !\Add0~17_sumout\ & ( (!\S2_temp2[2]~1_combout\ & (\S2_temp2[1]~0_combout\)) # (\S2_temp2[2]~1_combout\ & 
-- ((\S2_temp2[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S2_temp2[1]~0_combout\,
	datab => \ALT_INV_S2_temp2[2]~1_combout\,
	datac => \ALT_INV_S2_temp2[3]~2_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux45~0_combout\);

-- Location: LABCELL_X41_Y2_N15
\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \Add0~17_sumout\ & ( (!\S2_temp2[1]~0_combout\ & (\S2_temp2[2]~1_combout\)) # (\S2_temp2[1]~0_combout\ & ((\S2_temp2[3]~2_combout\))) ) ) # ( !\Add0~17_sumout\ & ( (!\S2_temp2[1]~0_combout\ & (\S2_temp2[2]~1_combout\ & 
-- \S2_temp2[3]~2_combout\)) # (\S2_temp2[1]~0_combout\ & ((\S2_temp2[3]~2_combout\) # (\S2_temp2[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_S2_temp2[1]~0_combout\,
	datab => \ALT_INV_S2_temp2[2]~1_combout\,
	datad => \ALT_INV_S2_temp2[3]~2_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux44~0_combout\);

-- Location: LABCELL_X41_Y2_N18
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( \S2_temp2[1]~0_combout\ & ( \Add0~17_sumout\ & ( \S2_temp2[3]~2_combout\ ) ) ) # ( !\S2_temp2[1]~0_combout\ & ( \Add0~17_sumout\ & ( !\S2_temp2[2]~1_combout\ $ (\S2_temp2[3]~2_combout\) ) ) ) # ( \S2_temp2[1]~0_combout\ & ( 
-- !\Add0~17_sumout\ & ( \S2_temp2[3]~2_combout\ ) ) ) # ( !\S2_temp2[1]~0_combout\ & ( !\Add0~17_sumout\ & ( \S2_temp2[2]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111111000011110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_S2_temp2[2]~1_combout\,
	datac => \ALT_INV_S2_temp2[3]~2_combout\,
	datae => \ALT_INV_S2_temp2[1]~0_combout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Mux43~0_combout\);

-- Location: MLABCELL_X34_Y4_N18
\overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \overflow~0_combout\ = ( \Add5~9_sumout\ & ( \Add5~13_sumout\ & ( (!\sub~input_o\) # ((\LessThan0~0_combout\ & \Add5~17_sumout\)) ) ) ) # ( !\Add5~9_sumout\ & ( \Add5~13_sumout\ & ( (!\sub~input_o\ & ((\Add5~17_sumout\))) # (\sub~input_o\ & 
-- ((!\LessThan0~0_combout\) # (!\Add5~17_sumout\))) ) ) ) # ( \Add5~9_sumout\ & ( !\Add5~13_sumout\ & ( (!\sub~input_o\) # ((\Add5~5_sumout\ & (\LessThan0~0_combout\ & \Add5~17_sumout\))) ) ) ) # ( !\Add5~9_sumout\ & ( !\Add5~13_sumout\ & ( 
-- (!\Add5~5_sumout\ & (((\sub~input_o\)))) # (\Add5~5_sumout\ & ((!\sub~input_o\ & ((\Add5~17_sumout\))) # (\sub~input_o\ & ((!\LessThan0~0_combout\) # (!\Add5~17_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011110111100001111000100001111111111001111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_sub~input_o\,
	datad => \ALT_INV_Add5~17_sumout\,
	datae => \ALT_INV_Add5~9_sumout\,
	dataf => \ALT_INV_Add5~13_sumout\,
	combout => \overflow~0_combout\);

-- Location: LABCELL_X36_Y35_N3
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


