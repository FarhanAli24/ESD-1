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

-- DATE "10/30/2023 10:36:59"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	lab4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	reset : IN std_logic;
	irq : OUT std_logic;
	out_wave_export : OUT std_logic
	);
END lab4;

-- Design Ports Information
-- irq	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_wave_export	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_irq : std_logic;
SIGNAL ww_out_wave_export : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \current_angle[6]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \current_angle[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \current_angle[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \current_angle[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \current_angle[31]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \current_angle[25]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \current_angle[17]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \state.INT_RIGHT~0_combout\ : std_logic;
SIGNAL \current_state.INT_RIGHT~q\ : std_logic;
SIGNAL \current_state.SWEEP_LEFT~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \current_state.SWEEP_LEFT~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \periodCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \periodCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \periodCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \periodCount[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \periodCount[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \periodCount[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \periodCount[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \periodCount[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \periodCount[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \periodCount[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \periodCount[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \periodCount[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \periodCount[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \periodCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \periodCount[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \current_angle[31]~1_combout\ : std_logic;
SIGNAL \current_angle[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \current_angle[6]~6_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \current_angle[8]~5_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \current_angle[9]~4_combout\ : std_logic;
SIGNAL \current_angle[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \current_angle[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \current_angle[14]~3_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \state.INT_LEFT~0_combout\ : std_logic;
SIGNAL \current_state.INT_LEFT~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.SWEEP_RIGHT~q\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \current_angle[15]~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \irq_process~1_combout\ : std_logic;
SIGNAL \irq~reg0_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~23_combout\ : std_logic;
SIGNAL \LessThan0~24_combout\ : std_logic;
SIGNAL \LessThan0~25_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~27_combout\ : std_logic;
SIGNAL \LessThan0~28_combout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \LessThan0~29_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \periodCount[24]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \LessThan0~22_combout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \out_wave_export~reg0_q\ : std_logic;
SIGNAL periodCount : std_logic_vector(31 DOWNTO 0);
SIGNAL current_angle : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_current_angle[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_angle[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_state.SWEEP_LEFT~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_periodCount[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_current_state.INT_LEFT~q\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.SWEEP_RIGHT~q\ : std_logic;
SIGNAL \ALT_INV_current_state.INT_RIGHT~q\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL ALT_INV_current_angle : std_logic_vector(31 DOWNTO 5);
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.SWEEP_LEFT~q\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL ALT_INV_periodCount : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_reset <= reset;
irq <= ww_irq;
out_wave_export <= ww_out_wave_export;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_current_angle[21]~DUPLICATE_q\ <= NOT \current_angle[21]~DUPLICATE_q\;
\ALT_INV_current_angle[25]~DUPLICATE_q\ <= NOT \current_angle[25]~DUPLICATE_q\;
\ALT_INV_current_angle[30]~DUPLICATE_q\ <= NOT \current_angle[30]~DUPLICATE_q\;
\ALT_INV_current_angle[31]~DUPLICATE_q\ <= NOT \current_angle[31]~DUPLICATE_q\;
\ALT_INV_current_angle[17]~DUPLICATE_q\ <= NOT \current_angle[17]~DUPLICATE_q\;
\ALT_INV_current_angle[18]~DUPLICATE_q\ <= NOT \current_angle[18]~DUPLICATE_q\;
\ALT_INV_current_angle[11]~DUPLICATE_q\ <= NOT \current_angle[11]~DUPLICATE_q\;
\ALT_INV_current_angle[5]~DUPLICATE_q\ <= NOT \current_angle[5]~DUPLICATE_q\;
\ALT_INV_current_angle[6]~DUPLICATE_q\ <= NOT \current_angle[6]~DUPLICATE_q\;
\ALT_INV_current_angle[9]~DUPLICATE_q\ <= NOT \current_angle[9]~DUPLICATE_q\;
\ALT_INV_current_state.SWEEP_LEFT~DUPLICATE_q\ <= NOT \current_state.SWEEP_LEFT~DUPLICATE_q\;
\ALT_INV_periodCount[1]~DUPLICATE_q\ <= NOT \periodCount[1]~DUPLICATE_q\;
\ALT_INV_periodCount[2]~DUPLICATE_q\ <= NOT \periodCount[2]~DUPLICATE_q\;
\ALT_INV_periodCount[3]~DUPLICATE_q\ <= NOT \periodCount[3]~DUPLICATE_q\;
\ALT_INV_periodCount[27]~DUPLICATE_q\ <= NOT \periodCount[27]~DUPLICATE_q\;
\ALT_INV_periodCount[19]~DUPLICATE_q\ <= NOT \periodCount[19]~DUPLICATE_q\;
\ALT_INV_periodCount[20]~DUPLICATE_q\ <= NOT \periodCount[20]~DUPLICATE_q\;
\ALT_INV_periodCount[21]~DUPLICATE_q\ <= NOT \periodCount[21]~DUPLICATE_q\;
\ALT_INV_periodCount[24]~DUPLICATE_q\ <= NOT \periodCount[24]~DUPLICATE_q\;
\ALT_INV_periodCount[22]~DUPLICATE_q\ <= NOT \periodCount[22]~DUPLICATE_q\;
\ALT_INV_periodCount[8]~DUPLICATE_q\ <= NOT \periodCount[8]~DUPLICATE_q\;
\ALT_INV_periodCount[10]~DUPLICATE_q\ <= NOT \periodCount[10]~DUPLICATE_q\;
\ALT_INV_periodCount[9]~DUPLICATE_q\ <= NOT \periodCount[9]~DUPLICATE_q\;
\ALT_INV_periodCount[4]~DUPLICATE_q\ <= NOT \periodCount[4]~DUPLICATE_q\;
\ALT_INV_periodCount[7]~DUPLICATE_q\ <= NOT \periodCount[7]~DUPLICATE_q\;
\ALT_INV_periodCount[14]~DUPLICATE_q\ <= NOT \periodCount[14]~DUPLICATE_q\;
\ALT_INV_periodCount[16]~DUPLICATE_q\ <= NOT \periodCount[16]~DUPLICATE_q\;
\ALT_INV_current_state.INT_LEFT~q\ <= NOT \current_state.INT_LEFT~q\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan1~5_combout\ <= NOT \LessThan1~5_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_LessThan0~29_combout\ <= NOT \LessThan0~29_combout\;
\ALT_INV_LessThan0~28_combout\ <= NOT \LessThan0~28_combout\;
\ALT_INV_LessThan0~27_combout\ <= NOT \LessThan0~27_combout\;
\ALT_INV_LessThan0~26_combout\ <= NOT \LessThan0~26_combout\;
\ALT_INV_LessThan0~25_combout\ <= NOT \LessThan0~25_combout\;
\ALT_INV_LessThan0~24_combout\ <= NOT \LessThan0~24_combout\;
\ALT_INV_LessThan0~23_combout\ <= NOT \LessThan0~23_combout\;
\ALT_INV_LessThan0~22_combout\ <= NOT \LessThan0~22_combout\;
\ALT_INV_LessThan0~21_combout\ <= NOT \LessThan0~21_combout\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_current_state.SWEEP_RIGHT~q\ <= NOT \current_state.SWEEP_RIGHT~q\;
\ALT_INV_current_state.INT_RIGHT~q\ <= NOT \current_state.INT_RIGHT~q\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
ALT_INV_current_angle(21) <= NOT current_angle(21);
ALT_INV_current_angle(22) <= NOT current_angle(22);
ALT_INV_current_angle(23) <= NOT current_angle(23);
ALT_INV_current_angle(24) <= NOT current_angle(24);
ALT_INV_current_angle(25) <= NOT current_angle(25);
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
ALT_INV_current_angle(27) <= NOT current_angle(27);
ALT_INV_current_angle(28) <= NOT current_angle(28);
ALT_INV_current_angle(29) <= NOT current_angle(29);
ALT_INV_current_angle(30) <= NOT current_angle(30);
ALT_INV_current_angle(31) <= NOT current_angle(31);
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
ALT_INV_current_angle(17) <= NOT current_angle(17);
ALT_INV_current_angle(18) <= NOT current_angle(18);
ALT_INV_current_angle(19) <= NOT current_angle(19);
ALT_INV_current_angle(20) <= NOT current_angle(20);
ALT_INV_current_angle(26) <= NOT current_angle(26);
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
ALT_INV_current_angle(11) <= NOT current_angle(11);
ALT_INV_current_angle(12) <= NOT current_angle(12);
ALT_INV_current_angle(13) <= NOT current_angle(13);
ALT_INV_current_angle(10) <= NOT current_angle(10);
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
ALT_INV_current_angle(5) <= NOT current_angle(5);
ALT_INV_current_angle(6) <= NOT current_angle(6);
ALT_INV_current_angle(7) <= NOT current_angle(7);
ALT_INV_current_angle(8) <= NOT current_angle(8);
ALT_INV_current_angle(9) <= NOT current_angle(9);
ALT_INV_current_angle(14) <= NOT current_angle(14);
ALT_INV_current_angle(15) <= NOT current_angle(15);
\ALT_INV_current_state.SWEEP_LEFT~q\ <= NOT \current_state.SWEEP_LEFT~q\;
ALT_INV_current_angle(16) <= NOT current_angle(16);
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
ALT_INV_periodCount(0) <= NOT periodCount(0);
ALT_INV_periodCount(1) <= NOT periodCount(1);
ALT_INV_periodCount(2) <= NOT periodCount(2);
ALT_INV_periodCount(3) <= NOT periodCount(3);
ALT_INV_periodCount(26) <= NOT periodCount(26);
ALT_INV_periodCount(27) <= NOT periodCount(27);
ALT_INV_periodCount(29) <= NOT periodCount(29);
ALT_INV_periodCount(30) <= NOT periodCount(30);
ALT_INV_periodCount(31) <= NOT periodCount(31);
ALT_INV_periodCount(28) <= NOT periodCount(28);
ALT_INV_periodCount(19) <= NOT periodCount(19);
ALT_INV_periodCount(20) <= NOT periodCount(20);
ALT_INV_periodCount(21) <= NOT periodCount(21);
ALT_INV_periodCount(23) <= NOT periodCount(23);
ALT_INV_periodCount(24) <= NOT periodCount(24);
ALT_INV_periodCount(25) <= NOT periodCount(25);
ALT_INV_periodCount(22) <= NOT periodCount(22);
ALT_INV_periodCount(8) <= NOT periodCount(8);
ALT_INV_periodCount(10) <= NOT periodCount(10);
ALT_INV_periodCount(11) <= NOT periodCount(11);
ALT_INV_periodCount(9) <= NOT periodCount(9);
ALT_INV_periodCount(4) <= NOT periodCount(4);
ALT_INV_periodCount(5) <= NOT periodCount(5);
ALT_INV_periodCount(6) <= NOT periodCount(6);
ALT_INV_periodCount(7) <= NOT periodCount(7);
ALT_INV_periodCount(12) <= NOT periodCount(12);
ALT_INV_periodCount(13) <= NOT periodCount(13);
ALT_INV_periodCount(14) <= NOT periodCount(14);
ALT_INV_periodCount(16) <= NOT periodCount(16);
ALT_INV_periodCount(17) <= NOT periodCount(17);
ALT_INV_periodCount(18) <= NOT periodCount(18);
ALT_INV_periodCount(15) <= NOT periodCount(15);

-- Location: IOOBUF_X52_Y0_N2
\irq~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \irq~reg0_q\,
	devoe => ww_devoe,
	o => ww_irq);

-- Location: IOOBUF_X56_Y0_N19
\out_wave_export~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_wave_export~reg0_q\,
	devoe => ww_devoe,
	o => ww_out_wave_export);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X39_Y3_N0
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \current_angle[5]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add1~30\ = CARRY(( \current_angle[5]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_current_angle[5]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: IOIBUF_X36_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X39_Y3_N55
\current_angle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[9]~4_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(9));

-- Location: FF_X39_Y3_N19
\current_angle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(11));

-- Location: MLABCELL_X39_Y4_N3
\LessThan1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ( !current_angle(12) & ( !current_angle(13) & ( (current_angle(14) & !current_angle(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(14),
	datac => ALT_INV_current_angle(11),
	datae => ALT_INV_current_angle(12),
	dataf => ALT_INV_current_angle(13),
	combout => \LessThan1~5_combout\);

-- Location: FF_X39_Y3_N46
\current_angle[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[6]~6_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[6]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y4_N9
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( current_angle(8) & ( (!current_angle(7)) # ((!\current_angle[5]~DUPLICATE_q\ & \current_angle[6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[5]~DUPLICATE_q\,
	datac => ALT_INV_current_angle(7),
	datad => \ALT_INV_current_angle[6]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(8),
	combout => \LessThan1~4_combout\);

-- Location: MLABCELL_X39_Y4_N18
\LessThan1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ( \LessThan1~5_combout\ & ( \LessThan1~4_combout\ ) ) # ( \LessThan1~5_combout\ & ( !\LessThan1~4_combout\ & ( (!current_angle(10)) # (current_angle(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(10),
	datac => ALT_INV_current_angle(9),
	datae => \ALT_INV_LessThan1~5_combout\,
	dataf => \ALT_INV_LessThan1~4_combout\,
	combout => \LessThan1~6_combout\);

-- Location: MLABCELL_X39_Y2_N3
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(16) ) + ( \Add1~6\ ))
-- \Add1~2\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(16) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(16),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: MLABCELL_X39_Y2_N6
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(17) ) + ( \Add1~2\ ))
-- \Add1~66\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(17) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(17),
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~2\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X39_Y2_N8
\current_angle[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(17));

-- Location: MLABCELL_X39_Y2_N9
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[18]~DUPLICATE_q\ ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[18]~DUPLICATE_q\ ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_angle[18]~DUPLICATE_q\,
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X39_Y2_N11
\current_angle[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[18]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y2_N12
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(19) ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(19) ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(19),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X39_Y2_N14
\current_angle[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(19));

-- Location: MLABCELL_X39_Y2_N15
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(20) ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(20) ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(20),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X39_Y2_N16
\current_angle[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(20));

-- Location: MLABCELL_X39_Y2_N18
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[21]~DUPLICATE_q\ ) + ( \Add1~54\ ))
-- \Add1~106\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[21]~DUPLICATE_q\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_angle[21]~DUPLICATE_q\,
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~54\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X39_Y2_N20
\current_angle[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[21]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y2_N21
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(22) ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(22) ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(22),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X39_Y2_N22
\current_angle[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(22));

-- Location: MLABCELL_X39_Y2_N24
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(23) ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(23) ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(23),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X39_Y2_N26
\current_angle[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(23));

-- Location: MLABCELL_X39_Y2_N27
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(24) ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(24) ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(24),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X39_Y2_N28
\current_angle[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(24));

-- Location: MLABCELL_X39_Y2_N30
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(25) ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(25) ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(25),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X39_Y2_N32
\current_angle[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(25));

-- Location: MLABCELL_X39_Y2_N33
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(26) ) + ( \Add1~90\ ))
-- \Add1~50\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(26) ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(26),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~90\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X39_Y2_N35
\current_angle[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(26));

-- Location: MLABCELL_X39_Y2_N36
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( current_angle(27) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~50\ ))
-- \Add1~86\ = CARRY(( current_angle(27) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(27),
	cin => \Add1~50\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X39_Y2_N38
\current_angle[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(27));

-- Location: MLABCELL_X39_Y2_N39
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(28) ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(28) ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(28),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X39_Y2_N41
\current_angle[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(28));

-- Location: MLABCELL_X39_Y2_N42
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( current_angle(29) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( current_angle(29) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(29),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X39_Y2_N43
\current_angle[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(29));

-- Location: MLABCELL_X39_Y2_N45
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[30]~DUPLICATE_q\ ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[30]~DUPLICATE_q\ ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_angle[30]~DUPLICATE_q\,
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X39_Y2_N47
\current_angle[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[30]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y2_N48
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[31]~DUPLICATE_q\ ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[31]~DUPLICATE_q\,
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\);

-- Location: FF_X39_Y2_N50
\current_angle[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[31]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y2_N54
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( !current_angle(28) & ( (!\current_angle[31]~DUPLICATE_q\ & (!\current_angle[30]~DUPLICATE_q\ & (!current_angle(27) & !current_angle(29)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[31]~DUPLICATE_q\,
	datab => \ALT_INV_current_angle[30]~DUPLICATE_q\,
	datac => ALT_INV_current_angle(27),
	datad => ALT_INV_current_angle(29),
	dataf => ALT_INV_current_angle(28),
	combout => \LessThan1~1_combout\);

-- Location: FF_X39_Y2_N19
\current_angle[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(21));

-- Location: FF_X39_Y2_N31
\current_angle[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[25]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N6
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( !\current_angle[25]~DUPLICATE_q\ & ( (!current_angle(24) & (!current_angle(23) & (!current_angle(22) & !current_angle(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(24),
	datab => ALT_INV_current_angle(23),
	datac => ALT_INV_current_angle(22),
	datad => ALT_INV_current_angle(21),
	dataf => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	combout => \LessThan1~2_combout\);

-- Location: FF_X39_Y2_N7
\current_angle[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[17]~DUPLICATE_q\);

-- Location: FF_X39_Y2_N10
\current_angle[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(18));

-- Location: LABCELL_X40_Y4_N39
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( !current_angle(18) & ( !current_angle(19) & ( !\current_angle[17]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_angle[17]~DUPLICATE_q\,
	datae => ALT_INV_current_angle(18),
	dataf => ALT_INV_current_angle(19),
	combout => \LessThan1~0_combout\);

-- Location: MLABCELL_X39_Y4_N30
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( \LessThan1~2_combout\ & ( \LessThan1~0_combout\ & ( (!current_angle(20) & (\LessThan1~1_combout\ & !current_angle(26))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(20),
	datac => \ALT_INV_LessThan1~1_combout\,
	datad => ALT_INV_current_angle(26),
	datae => \ALT_INV_LessThan1~2_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~3_combout\);

-- Location: MLABCELL_X39_Y4_N15
\state.INT_RIGHT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.INT_RIGHT~0_combout\ = ( !current_angle(15) & ( \LessThan1~3_combout\ & ( (!\LessThan1~6_combout\ & (current_angle(16) & !\current_state.SWEEP_RIGHT~q\)) ) ) ) # ( current_angle(15) & ( !\LessThan1~3_combout\ & ( !\current_state.SWEEP_RIGHT~q\ ) ) 
-- ) # ( !current_angle(15) & ( !\LessThan1~3_combout\ & ( !\current_state.SWEEP_RIGHT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~6_combout\,
	datab => ALT_INV_current_angle(16),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datae => ALT_INV_current_angle(15),
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \state.INT_RIGHT~0_combout\);

-- Location: FF_X39_Y4_N16
\current_state.INT_RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state.INT_RIGHT~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INT_RIGHT~q\);

-- Location: FF_X39_Y4_N44
\current_state.SWEEP_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SWEEP_LEFT~q\);

-- Location: MLABCELL_X39_Y4_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \current_state.SWEEP_LEFT~q\ & ( \LessThan1~3_combout\ & ( ((\current_state.INT_RIGHT~q\) # (\LessThan2~2_combout\)) # (current_angle(16)) ) ) ) # ( !\current_state.SWEEP_LEFT~q\ & ( \LessThan1~3_combout\ & ( 
-- \current_state.INT_RIGHT~q\ ) ) ) # ( \current_state.SWEEP_LEFT~q\ & ( !\LessThan1~3_combout\ ) ) # ( !\current_state.SWEEP_LEFT~q\ & ( !\LessThan1~3_combout\ & ( \current_state.INT_RIGHT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(16),
	datac => \ALT_INV_LessThan2~2_combout\,
	datad => \ALT_INV_current_state.INT_RIGHT~q\,
	datae => \ALT_INV_current_state.SWEEP_LEFT~q\,
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X39_Y4_N43
\current_state.SWEEP_LEFT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SWEEP_LEFT~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N0
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( periodCount(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~126\ = CARRY(( periodCount(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(0),
	cin => GND,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: FF_X40_Y3_N2
\periodCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~125_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(0));

-- Location: LABCELL_X40_Y3_N3
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( periodCount(1) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~122\ = CARRY(( periodCount(1) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(1),
	cin => \Add0~126\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X40_Y3_N5
\periodCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(1));

-- Location: LABCELL_X40_Y3_N6
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \periodCount[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( \periodCount[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_periodCount[2]~DUPLICATE_q\,
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X40_Y3_N7
\periodCount[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[2]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N9
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \periodCount[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( \periodCount[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[3]~DUPLICATE_q\,
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X40_Y3_N11
\periodCount[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N12
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \periodCount[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~42\ = CARRY(( \periodCount[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_periodCount[4]~DUPLICATE_q\,
	cin => \Add0~114\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X40_Y3_N14
\periodCount[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[4]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N15
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( periodCount(5) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( periodCount(5) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(5),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X40_Y3_N17
\periodCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(5));

-- Location: LABCELL_X40_Y3_N18
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( periodCount(6) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( periodCount(6) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(6),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X40_Y3_N20
\periodCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(6));

-- Location: LABCELL_X40_Y3_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( periodCount(7) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( periodCount(7) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(7),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X40_Y3_N23
\periodCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(7));

-- Location: LABCELL_X40_Y3_N24
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \periodCount[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~58\ = CARRY(( \periodCount[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[8]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X40_Y3_N26
\periodCount[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[8]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N27
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \periodCount[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~46\ = CARRY(( \periodCount[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[9]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X40_Y1_N14
\periodCount[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[9]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N30
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \periodCount[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~54\ = CARRY(( \periodCount[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[10]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X40_Y3_N31
\periodCount[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[10]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N33
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( periodCount(11) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( periodCount(11) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(11),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X40_Y3_N35
\periodCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(11));

-- Location: LABCELL_X40_Y3_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( periodCount(12) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~26\ = CARRY(( periodCount(12) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(12),
	cin => \Add0~50\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X40_Y3_N38
\periodCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(12));

-- Location: LABCELL_X40_Y3_N39
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( periodCount(13) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( periodCount(13) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(13),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X40_Y3_N41
\periodCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(13));

-- Location: LABCELL_X40_Y3_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \periodCount[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( \periodCount[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_periodCount[14]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X40_Y3_N44
\periodCount[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[14]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N45
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( periodCount(15) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~2\ = CARRY(( periodCount(15) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(15),
	cin => \Add0~18\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X40_Y3_N47
\periodCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(15));

-- Location: LABCELL_X40_Y3_N48
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \periodCount[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~14\ = CARRY(( \periodCount[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[16]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X40_Y3_N50
\periodCount[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[16]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N51
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( periodCount(17) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( periodCount(17) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(17),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X40_Y3_N53
\periodCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(17));

-- Location: FF_X40_Y2_N5
\periodCount[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[21]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N54
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( periodCount(18) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( periodCount(18) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(18),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X40_Y3_N56
\periodCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(18));

-- Location: LABCELL_X40_Y3_N57
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( periodCount(19) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~86\ = CARRY(( periodCount(19) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(19),
	cin => \Add0~6\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X40_Y3_N59
\periodCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(19));

-- Location: LABCELL_X40_Y2_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \periodCount[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( \periodCount[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_periodCount[20]~DUPLICATE_q\,
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X40_Y2_N2
\periodCount[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[20]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N3
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \periodCount[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( \periodCount[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_periodCount[21]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X40_Y2_N4
\periodCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(21));

-- Location: FF_X40_Y3_N58
\periodCount[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[19]~DUPLICATE_q\);

-- Location: FF_X40_Y3_N49
\periodCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(16));

-- Location: LABCELL_X40_Y2_N36
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( periodCount(18) & ( periodCount(16) & ( (periodCount(17) & (!periodCount(21) & (!\periodCount[20]~DUPLICATE_q\ & \periodCount[19]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(17),
	datab => ALT_INV_periodCount(21),
	datac => \ALT_INV_periodCount[20]~DUPLICATE_q\,
	datad => \ALT_INV_periodCount[19]~DUPLICATE_q\,
	datae => ALT_INV_periodCount(18),
	dataf => ALT_INV_periodCount(16),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X40_Y2_N6
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \periodCount[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~62\ = CARRY(( \periodCount[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_periodCount[22]~DUPLICATE_q\,
	cin => \Add0~78\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X40_Y2_N8
\periodCount[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[22]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N9
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( periodCount(23) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~74\ = CARRY(( periodCount(23) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(23),
	cin => \Add0~62\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X40_Y2_N10
\periodCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(23));

-- Location: LABCELL_X40_Y2_N12
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( periodCount(24) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( periodCount(24) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_periodCount(24),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X40_Y2_N14
\periodCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(24));

-- Location: LABCELL_X40_Y2_N15
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( periodCount(25) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( periodCount(25) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(25),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X40_Y2_N16
\periodCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(25));

-- Location: LABCELL_X40_Y2_N18
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( periodCount(26) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~110\ = CARRY(( periodCount(26) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(26),
	cin => \Add0~66\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X40_Y2_N20
\periodCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(26));

-- Location: LABCELL_X40_Y2_N21
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \periodCount[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( \periodCount[27]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_periodCount[27]~DUPLICATE_q\,
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X40_Y2_N23
\periodCount[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[27]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N24
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( periodCount(28) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~90\ = CARRY(( periodCount(28) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(28),
	cin => \Add0~106\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X40_Y2_N26
\periodCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(28));

-- Location: LABCELL_X40_Y2_N27
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( periodCount(29) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~102\ = CARRY(( periodCount(29) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(29),
	cin => \Add0~90\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X40_Y2_N29
\periodCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(29));

-- Location: LABCELL_X40_Y2_N45
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !periodCount(28) & ( !periodCount(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_periodCount(29),
	dataf => ALT_INV_periodCount(28),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X40_Y2_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\periodCount[27]~DUPLICATE_q\ & ( !periodCount(25) & ( (!periodCount(23) & (!periodCount(24) & (!periodCount(26) & !\periodCount[22]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(23),
	datab => ALT_INV_periodCount(24),
	datac => ALT_INV_periodCount(26),
	datad => \ALT_INV_periodCount[22]~DUPLICATE_q\,
	datae => \ALT_INV_periodCount[27]~DUPLICATE_q\,
	dataf => ALT_INV_periodCount(25),
	combout => \Equal0~1_combout\);

-- Location: FF_X40_Y3_N8
\periodCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(2));

-- Location: FF_X40_Y3_N10
\periodCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(3));

-- Location: FF_X40_Y3_N4
\periodCount[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N30
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( periodCount(30) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( periodCount(30) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_periodCount(30),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X40_Y2_N31
\periodCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(30));

-- Location: LABCELL_X40_Y2_N33
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( periodCount(31) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(31),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\);

-- Location: FF_X40_Y2_N35
\periodCount[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(31));

-- Location: FF_X40_Y3_N13
\periodCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(4));

-- Location: LABCELL_X40_Y1_N24
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !periodCount(31) & ( !periodCount(4) & ( (!periodCount(2) & (!periodCount(3) & (!\periodCount[1]~DUPLICATE_q\ & !periodCount(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(2),
	datab => ALT_INV_periodCount(3),
	datac => \ALT_INV_periodCount[1]~DUPLICATE_q\,
	datad => ALT_INV_periodCount(30),
	datae => ALT_INV_periodCount(31),
	dataf => ALT_INV_periodCount(4),
	combout => \Equal0~4_combout\);

-- Location: FF_X40_Y3_N32
\periodCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(10));

-- Location: MLABCELL_X39_Y3_N33
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !periodCount(10) & ( !periodCount(13) & ( (!periodCount(15) & (!periodCount(12) & (\periodCount[14]~DUPLICATE_q\ & !periodCount(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(15),
	datab => ALT_INV_periodCount(12),
	datac => \ALT_INV_periodCount[14]~DUPLICATE_q\,
	datad => ALT_INV_periodCount(11),
	datae => ALT_INV_periodCount(10),
	dataf => ALT_INV_periodCount(13),
	combout => \Equal0~3_combout\);

-- Location: FF_X40_Y3_N25
\periodCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(8));

-- Location: FF_X40_Y3_N22
\periodCount[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[7]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N30
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\periodCount[7]~DUPLICATE_q\ & ( periodCount(6) & ( (!periodCount(5) & (\periodCount[9]~DUPLICATE_q\ & (!periodCount(8) & !periodCount(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(5),
	datab => \ALT_INV_periodCount[9]~DUPLICATE_q\,
	datac => ALT_INV_periodCount(8),
	datad => ALT_INV_periodCount(0),
	datae => \ALT_INV_periodCount[7]~DUPLICATE_q\,
	dataf => ALT_INV_periodCount(6),
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X40_Y2_N48
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~3_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X40_Y2_N42
\current_angle[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[31]~1_combout\ = ( \Equal0~6_combout\ & ( (!\current_state.SWEEP_RIGHT~q\) # (\current_state.SWEEP_LEFT~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => \ALT_INV_current_state.SWEEP_LEFT~DUPLICATE_q\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \current_angle[31]~1_combout\);

-- Location: FF_X40_Y2_N58
\current_angle[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add1~29_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[5]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y3_N3
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(6) ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(6) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(6),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: MLABCELL_X39_Y3_N45
\current_angle[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[6]~6_combout\ = !\Add1~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~25_sumout\,
	combout => \current_angle[6]~6_combout\);

-- Location: FF_X39_Y3_N47
\current_angle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[6]~6_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(6));

-- Location: MLABCELL_X39_Y3_N6
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(7) ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(7) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(7),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X39_Y3_N7
\current_angle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(7));

-- Location: MLABCELL_X39_Y3_N9
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(8) ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( !\current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(8) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(8),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X39_Y3_N48
\current_angle[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[8]~5_combout\ = ( !\Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \current_angle[8]~5_combout\);

-- Location: FF_X39_Y3_N49
\current_angle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[8]~5_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(8));

-- Location: MLABCELL_X39_Y3_N12
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\current_angle[9]~DUPLICATE_q\ ) + ( !\current_state.SWEEP_RIGHT~q\ ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( !\current_angle[9]~DUPLICATE_q\ ) + ( !\current_state.SWEEP_RIGHT~q\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => \ALT_INV_current_angle[9]~DUPLICATE_q\,
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X39_Y3_N54
\current_angle[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[9]~4_combout\ = ( !\Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \current_angle[9]~4_combout\);

-- Location: FF_X39_Y3_N56
\current_angle[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[9]~4_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[9]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y3_N15
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(10) ) + ( \Add1~14\ ))
-- \Add1~34\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(10) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(10),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~14\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X39_Y3_N17
\current_angle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(10));

-- Location: MLABCELL_X39_Y3_N18
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[11]~DUPLICATE_q\ ) + ( \Add1~34\ ))
-- \Add1~46\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( \current_angle[11]~DUPLICATE_q\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_angle[11]~DUPLICATE_q\,
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~34\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X39_Y3_N20
\current_angle[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_angle[11]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y3_N21
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( current_angle(12) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( current_angle(12) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(12),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X39_Y3_N23
\current_angle[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(12));

-- Location: MLABCELL_X39_Y3_N24
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(13) ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( current_angle(13) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(13),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X39_Y3_N26
\current_angle[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(13));

-- Location: MLABCELL_X39_Y3_N27
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(14) ) + ( \Add1~38\ ))
-- \Add1~10\ = CARRY(( \current_state.SWEEP_RIGHT~q\ ) + ( !current_angle(14) ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(14),
	datad => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	cin => \Add1~38\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: MLABCELL_X39_Y3_N57
\current_angle[14]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[14]~3_combout\ = ( !\Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \current_angle[14]~3_combout\);

-- Location: FF_X39_Y3_N59
\current_angle[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[14]~3_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(14));

-- Location: MLABCELL_X39_Y2_N0
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !current_angle(15) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( !current_angle(15) ) + ( \current_state.SWEEP_RIGHT~q\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => ALT_INV_current_angle(15),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X39_Y2_N5
\current_angle[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(16));

-- Location: MLABCELL_X39_Y4_N6
\state.INT_LEFT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.INT_LEFT~0_combout\ = ( \current_state.SWEEP_LEFT~q\ & ( (\LessThan1~3_combout\ & (!\LessThan2~2_combout\ & !current_angle(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan1~3_combout\,
	datac => \ALT_INV_LessThan2~2_combout\,
	datad => ALT_INV_current_angle(16),
	dataf => \ALT_INV_current_state.SWEEP_LEFT~q\,
	combout => \state.INT_LEFT~0_combout\);

-- Location: FF_X39_Y4_N7
\current_state.INT_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \state.INT_LEFT~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INT_LEFT~q\);

-- Location: MLABCELL_X39_Y3_N36
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \current_state.SWEEP_RIGHT~q\ & ( \LessThan1~3_combout\ & ( !\current_state.INT_LEFT~q\ ) ) ) # ( !\current_state.SWEEP_RIGHT~q\ & ( \LessThan1~3_combout\ & ( (!current_angle(15) & (current_angle(16) & (!\LessThan1~6_combout\ & 
-- !\current_state.INT_LEFT~q\))) ) ) ) # ( \current_state.SWEEP_RIGHT~q\ & ( !\LessThan1~3_combout\ & ( !\current_state.INT_LEFT~q\ ) ) ) # ( !\current_state.SWEEP_RIGHT~q\ & ( !\LessThan1~3_combout\ & ( !\current_state.INT_LEFT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000100000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(15),
	datab => ALT_INV_current_angle(16),
	datac => \ALT_INV_LessThan1~6_combout\,
	datad => \ALT_INV_current_state.INT_LEFT~q\,
	datae => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X39_Y3_N38
\current_state.SWEEP_RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SWEEP_RIGHT~q\);

-- Location: MLABCELL_X39_Y2_N57
\current_angle[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_angle[15]~2_combout\ = !\Add1~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add1~5_sumout\,
	combout => \current_angle[15]~2_combout\);

-- Location: FF_X39_Y2_N59
\current_angle[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \current_angle[15]~2_combout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(15));

-- Location: MLABCELL_X39_Y4_N57
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !current_angle(12) & ( !current_angle(10) & ( (!current_angle(11) & !current_angle(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(11),
	datac => ALT_INV_current_angle(13),
	datae => ALT_INV_current_angle(12),
	dataf => ALT_INV_current_angle(10),
	combout => \LessThan2~1_combout\);

-- Location: MLABCELL_X39_Y4_N24
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \current_angle[6]~DUPLICATE_q\ & ( !current_angle(8) & ( (!current_angle(9) & current_angle(7)) ) ) ) # ( !\current_angle[6]~DUPLICATE_q\ & ( !current_angle(8) & ( (!current_angle(9) & ((\current_angle[5]~DUPLICATE_q\) # 
-- (current_angle(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(9),
	datab => ALT_INV_current_angle(7),
	datac => \ALT_INV_current_angle[5]~DUPLICATE_q\,
	datae => \ALT_INV_current_angle[6]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(8),
	combout => \LessThan2~0_combout\);

-- Location: MLABCELL_X39_Y4_N36
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( \LessThan2~1_combout\ & ( \LessThan2~0_combout\ & ( (!current_angle(15) & !current_angle(14)) ) ) ) # ( !\LessThan2~1_combout\ & ( \LessThan2~0_combout\ & ( (!current_angle(15) & !current_angle(14)) ) ) ) # ( 
-- !\LessThan2~1_combout\ & ( !\LessThan2~0_combout\ & ( (!current_angle(15) & !current_angle(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(15),
	datac => ALT_INV_current_angle(14),
	datae => \ALT_INV_LessThan2~1_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~2_combout\);

-- Location: MLABCELL_X39_Y4_N48
\irq_process~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \irq_process~1_combout\ = ( \current_state.SWEEP_LEFT~DUPLICATE_q\ & ( \LessThan1~3_combout\ & ( (((!\current_state.SWEEP_RIGHT~q\) # (\current_state.INT_RIGHT~q\)) # (current_angle(16))) # (\LessThan2~2_combout\) ) ) ) # ( 
-- !\current_state.SWEEP_LEFT~DUPLICATE_q\ & ( \LessThan1~3_combout\ & ( (!\current_state.SWEEP_RIGHT~q\) # (\current_state.INT_RIGHT~q\) ) ) ) # ( \current_state.SWEEP_LEFT~DUPLICATE_q\ & ( !\LessThan1~3_combout\ ) ) # ( 
-- !\current_state.SWEEP_LEFT~DUPLICATE_q\ & ( !\LessThan1~3_combout\ & ( (!\current_state.SWEEP_RIGHT~q\) # (\current_state.INT_RIGHT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111111111111111111110000111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~2_combout\,
	datab => ALT_INV_current_angle(16),
	datac => \ALT_INV_current_state.SWEEP_RIGHT~q\,
	datad => \ALT_INV_current_state.INT_RIGHT~q\,
	datae => \ALT_INV_current_state.SWEEP_LEFT~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan1~3_combout\,
	combout => \irq_process~1_combout\);

-- Location: FF_X39_Y4_N49
\irq~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \irq_process~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \irq~reg0_q\);

-- Location: MLABCELL_X39_Y1_N18
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( periodCount(16) & ( periodCount(17) & ( (\current_angle[17]~DUPLICATE_q\ & (current_angle(16) & (!periodCount(18) $ (current_angle(18))))) ) ) ) # ( !periodCount(16) & ( periodCount(17) & ( (\current_angle[17]~DUPLICATE_q\ & 
-- (!current_angle(16) & (!periodCount(18) $ (current_angle(18))))) ) ) ) # ( periodCount(16) & ( !periodCount(17) & ( (!\current_angle[17]~DUPLICATE_q\ & (current_angle(16) & (!periodCount(18) $ (current_angle(18))))) ) ) ) # ( !periodCount(16) & ( 
-- !periodCount(17) & ( (!\current_angle[17]~DUPLICATE_q\ & (!current_angle(16) & (!periodCount(18) $ (current_angle(18))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(18),
	datab => \ALT_INV_current_angle[17]~DUPLICATE_q\,
	datac => ALT_INV_current_angle(18),
	datad => ALT_INV_current_angle(16),
	datae => ALT_INV_periodCount(16),
	dataf => ALT_INV_periodCount(17),
	combout => \LessThan0~0_combout\);

-- Location: FF_X40_Y3_N43
\periodCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(14));

-- Location: MLABCELL_X39_Y1_N27
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !current_angle(15) & ( periodCount(15) & ( (\LessThan0~0_combout\ & (!periodCount(14) $ (!current_angle(14)))) ) ) ) # ( current_angle(15) & ( !periodCount(15) & ( (\LessThan0~0_combout\ & (!periodCount(14) $ 
-- (!current_angle(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101000000000101010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datac => ALT_INV_periodCount(14),
	datad => ALT_INV_current_angle(14),
	datae => ALT_INV_current_angle(15),
	dataf => ALT_INV_periodCount(15),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X40_Y1_N18
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( periodCount(12) & ( !current_angle(12) ) ) # ( !periodCount(12) & ( current_angle(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(12),
	dataf => ALT_INV_periodCount(12),
	combout => \LessThan0~3_combout\);

-- Location: FF_X40_Y2_N59
\current_angle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add1~29_sumout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(5));

-- Location: LABCELL_X40_Y1_N42
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( current_angle(5) & ( periodCount(5) & ( !periodCount(4) ) ) ) # ( current_angle(5) & ( !periodCount(5) ) ) # ( !current_angle(5) & ( !periodCount(5) & ( !periodCount(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_periodCount(4),
	datae => ALT_INV_current_angle(5),
	dataf => ALT_INV_periodCount(5),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X40_Y1_N57
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( periodCount(6) & ( (!\periodCount[7]~DUPLICATE_q\ & (((!\current_angle[6]~DUPLICATE_q\ & \LessThan0~4_combout\)) # (current_angle(7)))) # (\periodCount[7]~DUPLICATE_q\ & (!\current_angle[6]~DUPLICATE_q\ & (\LessThan0~4_combout\ & 
-- current_angle(7)))) ) ) # ( !periodCount(6) & ( (!\periodCount[7]~DUPLICATE_q\ & ((!\current_angle[6]~DUPLICATE_q\) # ((current_angle(7)) # (\LessThan0~4_combout\)))) # (\periodCount[7]~DUPLICATE_q\ & (current_angle(7) & ((!\current_angle[6]~DUPLICATE_q\) 
-- # (\LessThan0~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011111011101100001111101100100000111100100010000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[6]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_periodCount[7]~DUPLICATE_q\,
	datad => ALT_INV_current_angle(7),
	dataf => ALT_INV_periodCount(6),
	combout => \LessThan0~5_combout\);

-- Location: FF_X40_Y1_N13
\periodCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(9));

-- Location: MLABCELL_X39_Y3_N51
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( periodCount(11) & ( (\current_angle[11]~DUPLICATE_q\ & (!current_angle(10) $ (periodCount(10)))) ) ) # ( !periodCount(11) & ( (!\current_angle[11]~DUPLICATE_q\ & (!current_angle(10) $ (periodCount(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_current_angle[11]~DUPLICATE_q\,
	datac => ALT_INV_current_angle(10),
	datad => ALT_INV_periodCount(10),
	dataf => ALT_INV_periodCount(11),
	combout => \LessThan0~6_combout\);

-- Location: MLABCELL_X39_Y1_N36
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \LessThan0~6_combout\ & ( current_angle(8) & ( (!periodCount(8) & (!current_angle(9) $ (!periodCount(9)))) ) ) ) # ( \LessThan0~6_combout\ & ( !current_angle(8) & ( (periodCount(8) & (!current_angle(9) $ (!periodCount(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100000011000000000000000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(9),
	datab => ALT_INV_periodCount(9),
	datac => ALT_INV_periodCount(8),
	datae => \ALT_INV_LessThan0~6_combout\,
	dataf => ALT_INV_current_angle(8),
	combout => \LessThan0~7_combout\);

-- Location: MLABCELL_X39_Y1_N54
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( periodCount(13) & ( !current_angle(13) ) ) # ( !periodCount(13) & ( current_angle(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(13),
	dataf => ALT_INV_periodCount(13),
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X39_Y3_N42
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \current_angle[11]~DUPLICATE_q\ & ( (!periodCount(11)) # ((current_angle(10) & !periodCount(10))) ) ) # ( !\current_angle[11]~DUPLICATE_q\ & ( (current_angle(10) & (!periodCount(11) & !periodCount(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(10),
	datac => ALT_INV_periodCount(11),
	datad => ALT_INV_periodCount(10),
	dataf => \ALT_INV_current_angle[11]~DUPLICATE_q\,
	combout => \LessThan0~8_combout\);

-- Location: MLABCELL_X39_Y1_N30
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \LessThan0~6_combout\ & ( !\LessThan0~8_combout\ & ( (!current_angle(9) & (periodCount(9) & ((current_angle(8)) # (periodCount(8))))) # (current_angle(9) & (((current_angle(8)) # (periodCount(8))) # (periodCount(9)))) ) ) ) # ( 
-- !\LessThan0~6_combout\ & ( !\LessThan0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000101110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(9),
	datab => ALT_INV_periodCount(9),
	datac => ALT_INV_periodCount(8),
	datad => ALT_INV_current_angle(8),
	datae => \ALT_INV_LessThan0~6_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: MLABCELL_X39_Y1_N3
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( !\LessThan0~2_combout\ & ( \LessThan0~9_combout\ & ( (\LessThan0~1_combout\ & (!\LessThan0~3_combout\ & (\LessThan0~5_combout\ & \LessThan0~7_combout\))) ) ) ) # ( !\LessThan0~2_combout\ & ( !\LessThan0~9_combout\ & ( 
-- (\LessThan0~1_combout\ & !\LessThan0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~7_combout\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X39_Y2_N49
\current_angle[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(31));

-- Location: FF_X39_Y2_N46
\current_angle[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \reset~input_o\,
	ena => \current_angle[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_angle(30));

-- Location: LABCELL_X40_Y1_N36
\LessThan0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~23_combout\ = ( current_angle(30) & ( periodCount(29) & ( (current_angle(29) & (periodCount(30) & (!current_angle(31) $ (periodCount(31))))) ) ) ) # ( !current_angle(30) & ( periodCount(29) & ( (current_angle(29) & (!periodCount(30) & 
-- (!current_angle(31) $ (periodCount(31))))) ) ) ) # ( current_angle(30) & ( !periodCount(29) & ( (!current_angle(29) & (periodCount(30) & (!current_angle(31) $ (periodCount(31))))) ) ) ) # ( !current_angle(30) & ( !periodCount(29) & ( (!current_angle(29) & 
-- (!periodCount(30) & (!current_angle(31) $ (periodCount(31))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(31),
	datab => ALT_INV_periodCount(31),
	datac => ALT_INV_current_angle(29),
	datad => ALT_INV_periodCount(30),
	datae => ALT_INV_current_angle(30),
	dataf => ALT_INV_periodCount(29),
	combout => \LessThan0~23_combout\);

-- Location: LABCELL_X40_Y1_N54
\LessThan0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~24_combout\ = ( periodCount(26) & ( !current_angle(26) ) ) # ( !periodCount(26) & ( current_angle(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(26),
	dataf => ALT_INV_periodCount(26),
	combout => \LessThan0~24_combout\);

-- Location: FF_X40_Y2_N22
\periodCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(27));

-- Location: LABCELL_X40_Y1_N15
\LessThan0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~25_combout\ = ( periodCount(28) & ( periodCount(27) & ( (\LessThan0~23_combout\ & (current_angle(28) & (current_angle(27) & !\LessThan0~24_combout\))) ) ) ) # ( !periodCount(28) & ( periodCount(27) & ( (\LessThan0~23_combout\ & 
-- (!current_angle(28) & (current_angle(27) & !\LessThan0~24_combout\))) ) ) ) # ( periodCount(28) & ( !periodCount(27) & ( (\LessThan0~23_combout\ & (current_angle(28) & (!current_angle(27) & !\LessThan0~24_combout\))) ) ) ) # ( !periodCount(28) & ( 
-- !periodCount(27) & ( (\LessThan0~23_combout\ & (!current_angle(28) & (!current_angle(27) & !\LessThan0~24_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000100000000000000000100000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~23_combout\,
	datab => ALT_INV_current_angle(28),
	datac => ALT_INV_current_angle(27),
	datad => \ALT_INV_LessThan0~24_combout\,
	datae => ALT_INV_periodCount(28),
	dataf => ALT_INV_periodCount(27),
	combout => \LessThan0~25_combout\);

-- Location: MLABCELL_X39_Y1_N6
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( periodCount(16) & ( periodCount(17) & ( (!periodCount(18) & current_angle(18)) ) ) ) # ( !periodCount(16) & ( periodCount(17) & ( (!periodCount(18) & (((\current_angle[17]~DUPLICATE_q\ & current_angle(16))) # 
-- (current_angle(18)))) # (periodCount(18) & (\current_angle[17]~DUPLICATE_q\ & (current_angle(18) & current_angle(16)))) ) ) ) # ( periodCount(16) & ( !periodCount(17) & ( (!periodCount(18) & ((current_angle(18)) # (\current_angle[17]~DUPLICATE_q\))) # 
-- (periodCount(18) & (\current_angle[17]~DUPLICATE_q\ & current_angle(18))) ) ) ) # ( !periodCount(16) & ( !periodCount(17) & ( (!periodCount(18) & (((current_angle(16)) # (current_angle(18))) # (\current_angle[17]~DUPLICATE_q\))) # (periodCount(18) & 
-- (current_angle(18) & ((current_angle(16)) # (\current_angle[17]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101110101111001010110010101100001010001010110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(18),
	datab => \ALT_INV_current_angle[17]~DUPLICATE_q\,
	datac => ALT_INV_current_angle(18),
	datad => ALT_INV_current_angle(16),
	datae => ALT_INV_periodCount(16),
	dataf => ALT_INV_periodCount(17),
	combout => \LessThan0~11_combout\);

-- Location: MLABCELL_X39_Y1_N12
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( current_angle(15) & ( \LessThan0~0_combout\ & ( (!\LessThan0~11_combout\ & (((current_angle(14)) # (periodCount(14))) # (periodCount(15)))) ) ) ) # ( !current_angle(15) & ( \LessThan0~0_combout\ & ( (periodCount(15) & 
-- (!\LessThan0~11_combout\ & ((current_angle(14)) # (periodCount(14))))) ) ) ) # ( current_angle(15) & ( !\LessThan0~0_combout\ & ( !\LessThan0~11_combout\ ) ) ) # ( !current_angle(15) & ( !\LessThan0~0_combout\ & ( !\LessThan0~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000010101000000000111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(15),
	datab => ALT_INV_periodCount(14),
	datac => ALT_INV_current_angle(14),
	datad => \ALT_INV_LessThan0~11_combout\,
	datae => ALT_INV_current_angle(15),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~12_combout\);

-- Location: MLABCELL_X39_Y1_N42
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~12_combout\ & ( (!periodCount(13) & (!current_angle(13) & ((!current_angle(12)) # (periodCount(12))))) # (periodCount(13) & (((!current_angle(12)) # (!current_angle(13))) # 
-- (periodCount(12)))) ) ) ) # ( !\LessThan0~1_combout\ & ( \LessThan0~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111101111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(12),
	datab => ALT_INV_current_angle(12),
	datac => ALT_INV_periodCount(13),
	datad => ALT_INV_current_angle(13),
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

-- Location: LABCELL_X40_Y1_N48
\LessThan0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~27_combout\ = ( current_angle(29) & ( periodCount(29) & ( (!current_angle(31) & (!periodCount(31) & (current_angle(30) & !periodCount(30)))) # (current_angle(31) & ((!periodCount(31)) # ((current_angle(30) & !periodCount(30))))) ) ) ) # ( 
-- !current_angle(29) & ( periodCount(29) & ( (!current_angle(31) & (!periodCount(31) & (current_angle(30) & !periodCount(30)))) # (current_angle(31) & ((!periodCount(31)) # ((current_angle(30) & !periodCount(30))))) ) ) ) # ( current_angle(29) & ( 
-- !periodCount(29) & ( (!current_angle(31) & (!periodCount(31) & ((!periodCount(30)) # (current_angle(30))))) # (current_angle(31) & ((!periodCount(31)) # ((!periodCount(30)) # (current_angle(30))))) ) ) ) # ( !current_angle(29) & ( !periodCount(29) & ( 
-- (!current_angle(31) & (!periodCount(31) & (current_angle(30) & !periodCount(30)))) # (current_angle(31) & ((!periodCount(31)) # ((current_angle(30) & !periodCount(30))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101000100110111010100110101001101010001000100110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(31),
	datab => ALT_INV_periodCount(31),
	datac => ALT_INV_current_angle(30),
	datad => ALT_INV_periodCount(30),
	datae => ALT_INV_current_angle(29),
	dataf => ALT_INV_periodCount(29),
	combout => \LessThan0~27_combout\);

-- Location: LABCELL_X40_Y1_N6
\LessThan0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~28_combout\ = ( \LessThan0~23_combout\ & ( periodCount(28) & ( !\LessThan0~27_combout\ ) ) ) # ( !\LessThan0~23_combout\ & ( periodCount(28) & ( !\LessThan0~27_combout\ ) ) ) # ( \LessThan0~23_combout\ & ( !periodCount(28) & ( 
-- (!current_angle(28) & !\LessThan0~27_combout\) ) ) ) # ( !\LessThan0~23_combout\ & ( !periodCount(28) & ( !\LessThan0~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000110000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_current_angle(28),
	datac => \ALT_INV_LessThan0~27_combout\,
	datae => \ALT_INV_LessThan0~23_combout\,
	dataf => ALT_INV_periodCount(28),
	combout => \LessThan0~28_combout\);

-- Location: LABCELL_X40_Y1_N21
\LessThan0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = ( periodCount(28) & ( (current_angle(28) & \LessThan0~23_combout\) ) ) # ( !periodCount(28) & ( (!current_angle(28) & \LessThan0~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_current_angle(28),
	datad => \ALT_INV_LessThan0~23_combout\,
	dataf => ALT_INV_periodCount(28),
	combout => \LessThan0~26_combout\);

-- Location: LABCELL_X40_Y1_N0
\LessThan0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~29_combout\ = ( \LessThan0~26_combout\ & ( periodCount(26) & ( (\LessThan0~28_combout\ & ((!current_angle(27)) # (periodCount(27)))) ) ) ) # ( !\LessThan0~26_combout\ & ( periodCount(26) & ( \LessThan0~28_combout\ ) ) ) # ( 
-- \LessThan0~26_combout\ & ( !periodCount(26) & ( (\LessThan0~28_combout\ & ((!current_angle(26) & ((!current_angle(27)) # (periodCount(27)))) # (current_angle(26) & (!current_angle(27) & periodCount(27))))) ) ) ) # ( !\LessThan0~26_combout\ & ( 
-- !periodCount(26) & ( \LessThan0~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001000111000000000111111110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(26),
	datab => ALT_INV_current_angle(27),
	datac => ALT_INV_periodCount(27),
	datad => \ALT_INV_LessThan0~28_combout\,
	datae => \ALT_INV_LessThan0~26_combout\,
	dataf => ALT_INV_periodCount(26),
	combout => \LessThan0~29_combout\);

-- Location: FF_X40_Y2_N7
\periodCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(22));

-- Location: FF_X40_Y2_N1
\periodCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => periodCount(20));

-- Location: LABCELL_X40_Y4_N9
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( periodCount(20) & ( !current_angle(20) ) ) # ( !periodCount(20) & ( current_angle(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_current_angle(20),
	dataf => ALT_INV_periodCount(20),
	combout => \LessThan0~16_combout\);

-- Location: LABCELL_X40_Y4_N12
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( !\periodCount[19]~DUPLICATE_q\ & ( current_angle(19) ) ) # ( \periodCount[19]~DUPLICATE_q\ & ( !current_angle(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_periodCount[19]~DUPLICATE_q\,
	dataf => ALT_INV_current_angle(19),
	combout => \LessThan0~17_combout\);

-- Location: LABCELL_X40_Y4_N21
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( !current_angle(21) & ( periodCount(21) ) ) # ( current_angle(21) & ( !periodCount(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_current_angle(21),
	dataf => ALT_INV_periodCount(21),
	combout => \LessThan0~15_combout\);

-- Location: FF_X40_Y2_N13
\periodCount[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \periodCount[24]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N48
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( current_angle(24) & ( \current_angle[25]~DUPLICATE_q\ & ( (\periodCount[24]~DUPLICATE_q\ & (periodCount(25) & (!current_angle(23) $ (periodCount(23))))) ) ) ) # ( !current_angle(24) & ( \current_angle[25]~DUPLICATE_q\ & ( 
-- (!\periodCount[24]~DUPLICATE_q\ & (periodCount(25) & (!current_angle(23) $ (periodCount(23))))) ) ) ) # ( current_angle(24) & ( !\current_angle[25]~DUPLICATE_q\ & ( (\periodCount[24]~DUPLICATE_q\ & (!periodCount(25) & (!current_angle(23) $ 
-- (periodCount(23))))) ) ) ) # ( !current_angle(24) & ( !\current_angle[25]~DUPLICATE_q\ & ( (!\periodCount[24]~DUPLICATE_q\ & (!periodCount(25) & (!current_angle(23) $ (periodCount(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_periodCount[24]~DUPLICATE_q\,
	datab => ALT_INV_current_angle(23),
	datac => ALT_INV_periodCount(25),
	datad => ALT_INV_periodCount(23),
	datae => ALT_INV_current_angle(24),
	dataf => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	combout => \LessThan0~14_combout\);

-- Location: LABCELL_X40_Y4_N54
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( !\LessThan0~15_combout\ & ( \LessThan0~14_combout\ & ( (!\LessThan0~16_combout\ & (!\LessThan0~17_combout\ & (!periodCount(22) $ (current_angle(22))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(22),
	datab => \ALT_INV_LessThan0~16_combout\,
	datac => ALT_INV_current_angle(22),
	datad => \ALT_INV_LessThan0~17_combout\,
	datae => \ALT_INV_LessThan0~15_combout\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~18_combout\);

-- Location: LABCELL_X40_Y4_N0
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( !\LessThan0~15_combout\ & ( \LessThan0~14_combout\ & ( !current_angle(22) $ (periodCount(22)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(22),
	datac => ALT_INV_periodCount(22),
	datae => \ALT_INV_LessThan0~15_combout\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~19_combout\);

-- Location: LABCELL_X40_Y4_N42
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( \periodCount[24]~DUPLICATE_q\ & ( \current_angle[25]~DUPLICATE_q\ & ( (!periodCount(25)) # ((current_angle(24) & (current_angle(23) & !periodCount(23)))) ) ) ) # ( !\periodCount[24]~DUPLICATE_q\ & ( 
-- \current_angle[25]~DUPLICATE_q\ & ( ((!periodCount(25)) # ((current_angle(23) & !periodCount(23)))) # (current_angle(24)) ) ) ) # ( \periodCount[24]~DUPLICATE_q\ & ( !\current_angle[25]~DUPLICATE_q\ & ( (current_angle(24) & (current_angle(23) & 
-- (!periodCount(25) & !periodCount(23)))) ) ) ) # ( !\periodCount[24]~DUPLICATE_q\ & ( !\current_angle[25]~DUPLICATE_q\ & ( (!periodCount(25) & (((current_angle(23) & !periodCount(23))) # (current_angle(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001010000000100000000000011110111111101011111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(24),
	datab => ALT_INV_current_angle(23),
	datac => ALT_INV_periodCount(25),
	datad => ALT_INV_periodCount(23),
	datae => \ALT_INV_periodCount[24]~DUPLICATE_q\,
	dataf => \ALT_INV_current_angle[25]~DUPLICATE_q\,
	combout => \LessThan0~20_combout\);

-- Location: LABCELL_X40_Y4_N24
\LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = ( current_angle(21) & ( \LessThan0~14_combout\ & ( (!\LessThan0~20_combout\ & ((!periodCount(22) & (periodCount(21) & !current_angle(22))) # (periodCount(22) & ((!current_angle(22)) # (periodCount(21)))))) ) ) ) # ( 
-- !current_angle(21) & ( \LessThan0~14_combout\ & ( (!\LessThan0~20_combout\ & ((!current_angle(22)) # (periodCount(22)))) ) ) ) # ( current_angle(21) & ( !\LessThan0~14_combout\ & ( !\LessThan0~20_combout\ ) ) ) # ( !current_angle(21) & ( 
-- !\LessThan0~14_combout\ & ( !\LessThan0~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110101000000000111000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_periodCount(22),
	datab => ALT_INV_periodCount(21),
	datac => ALT_INV_current_angle(22),
	datad => \ALT_INV_LessThan0~20_combout\,
	datae => ALT_INV_current_angle(21),
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~21_combout\);

-- Location: LABCELL_X40_Y4_N30
\LessThan0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~22_combout\ = ( \LessThan0~19_combout\ & ( \LessThan0~21_combout\ & ( (!current_angle(20) & ((!current_angle(19)) # ((periodCount(20)) # (\periodCount[19]~DUPLICATE_q\)))) # (current_angle(20) & (periodCount(20) & ((!current_angle(19)) # 
-- (\periodCount[19]~DUPLICATE_q\)))) ) ) ) # ( !\LessThan0~19_combout\ & ( \LessThan0~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000110011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_current_angle(19),
	datab => ALT_INV_current_angle(20),
	datac => \ALT_INV_periodCount[19]~DUPLICATE_q\,
	datad => ALT_INV_periodCount(20),
	datae => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_LessThan0~21_combout\,
	combout => \LessThan0~22_combout\);

-- Location: MLABCELL_X39_Y1_N51
\LessThan0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = ( \LessThan0~18_combout\ & ( \LessThan0~22_combout\ & ( (!\LessThan0~29_combout\) # ((\LessThan0~25_combout\ & ((!\LessThan0~13_combout\) # (\LessThan0~10_combout\)))) ) ) ) # ( !\LessThan0~18_combout\ & ( \LessThan0~22_combout\ & 
-- ( !\LessThan0~29_combout\ ) ) ) # ( \LessThan0~18_combout\ & ( !\LessThan0~22_combout\ & ( (!\LessThan0~29_combout\) # (\LessThan0~25_combout\) ) ) ) # ( !\LessThan0~18_combout\ & ( !\LessThan0~22_combout\ & ( (!\LessThan0~29_combout\) # 
-- (\LessThan0~25_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001111111111000000001111111100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~10_combout\,
	datab => \ALT_INV_LessThan0~25_combout\,
	datac => \ALT_INV_LessThan0~13_combout\,
	datad => \ALT_INV_LessThan0~29_combout\,
	datae => \ALT_INV_LessThan0~18_combout\,
	dataf => \ALT_INV_LessThan0~22_combout\,
	combout => \LessThan0~30_combout\);

-- Location: FF_X39_Y1_N53
\out_wave_export~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \LessThan0~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_wave_export~reg0_q\);

-- Location: MLABCELL_X21_Y25_N3
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


