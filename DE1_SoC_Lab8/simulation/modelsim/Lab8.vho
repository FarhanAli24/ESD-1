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

-- DATE "12/05/2023 11:26:31"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab8 IS
    PORT (
	clk : IN std_logic;
	KEY : IN std_logic;
	filter_en : IN std_logic;
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out : OUT IEEE.NUMERIC_STD.signed(15 DOWNTO 0)
	);
END Lab8;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[8]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[9]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[10]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[11]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[12]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[13]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[14]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[15]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- filter_en	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_KEY : std_logic;
SIGNAL ww_filter_en : std_logic;
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \filter_en~input_o\ : std_logic;
SIGNAL \KEY~input_o\ : std_logic;
SIGNAL \key0_d1~feeder_combout\ : std_logic;
SIGNAL \key0_d1~q\ : std_logic;
SIGNAL \key0_d2~feeder_combout\ : std_logic;
SIGNAL \key0_d2~q\ : std_logic;
SIGNAL \key0_d3~q\ : std_logic;
SIGNAL \shifts[0][0]~0_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \shifts[0][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \shifts[0][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \shifts[0][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \shifts[0][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \shifts[0][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \shifts[0][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \shifts[0][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \shifts[0][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \shifts[0][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \shifts[0][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \shifts[0][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \shifts[0][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \shifts[0][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \shifts[0][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \shifts[0][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \shifts[0][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[12][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[15][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[14][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[15][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[8][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[13][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[15][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[14][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[15][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[15][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[13][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[15][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[7][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[8][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[10][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[1][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[6][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][13]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[9][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[0][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[1][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[1][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[2][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[2][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[3][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[3][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[4][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[4][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[5][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[5][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[6][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[6][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[7][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[7][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[8][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[8][15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \shifts[8][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[9][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[9][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[10][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[10][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[11][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[11][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[12][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[12][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[13][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[13][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[14][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[14][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[15][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \shifts[15][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \shifts[16][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Add15~1_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add11~65_sumout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add15~2\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add11~66\ : std_logic;
SIGNAL \Add11~67\ : std_logic;
SIGNAL \Add11~69_sumout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~67\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add11~70\ : std_logic;
SIGNAL \Add11~71\ : std_logic;
SIGNAL \Add11~73_sumout\ : std_logic;
SIGNAL \Add9~6\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9_sumout\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~71\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add15~6\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~9_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add15~10\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~13_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add9~10\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13_sumout\ : std_logic;
SIGNAL \Add11~74\ : std_logic;
SIGNAL \Add11~75\ : std_logic;
SIGNAL \Add11~77_sumout\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~75\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add15~14\ : std_logic;
SIGNAL \Add15~15\ : std_logic;
SIGNAL \Add15~17_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~79\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \Add11~78\ : std_logic;
SIGNAL \Add11~79\ : std_logic;
SIGNAL \Add11~81_sumout\ : std_logic;
SIGNAL \Add9~14\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~83\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~21_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add11~82\ : std_logic;
SIGNAL \Add11~83\ : std_logic;
SIGNAL \Add11~85_sumout\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add15~18\ : std_logic;
SIGNAL \Add15~19\ : std_logic;
SIGNAL \Add15~21_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add15~22\ : std_logic;
SIGNAL \Add15~23\ : std_logic;
SIGNAL \Add15~25_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add11~86\ : std_logic;
SIGNAL \Add11~87\ : std_logic;
SIGNAL \Add11~89_sumout\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~25_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~87\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add15~26\ : std_logic;
SIGNAL \Add15~27\ : std_logic;
SIGNAL \Add15~29_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add11~90\ : std_logic;
SIGNAL \Add11~91\ : std_logic;
SIGNAL \Add11~93_sumout\ : std_logic;
SIGNAL \Add9~26\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~29_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~91\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add15~30\ : std_logic;
SIGNAL \Add15~31\ : std_logic;
SIGNAL \Add15~33_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add9~30\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~33_sumout\ : std_logic;
SIGNAL \Add11~94\ : std_logic;
SIGNAL \Add11~95\ : std_logic;
SIGNAL \Add11~97_sumout\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~31\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~95\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add11~98\ : std_logic;
SIGNAL \Add11~99\ : std_logic;
SIGNAL \Add11~101_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add9~34\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~37_sumout\ : std_logic;
SIGNAL \Add11~34\ : std_logic;
SIGNAL \Add11~35\ : std_logic;
SIGNAL \Add11~37_sumout\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~99\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add15~34\ : std_logic;
SIGNAL \Add15~35\ : std_logic;
SIGNAL \Add15~37_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \Add15~38\ : std_logic;
SIGNAL \Add15~39\ : std_logic;
SIGNAL \Add15~41_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~103\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \Add9~38\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~41_sumout\ : std_logic;
SIGNAL \Add11~102\ : std_logic;
SIGNAL \Add11~103\ : std_logic;
SIGNAL \Add11~105_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Add11~38\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~41_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~107\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add15~42\ : std_logic;
SIGNAL \Add15~43\ : std_logic;
SIGNAL \Add15~45_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add11~106\ : std_logic;
SIGNAL \Add11~107\ : std_logic;
SIGNAL \Add11~109_sumout\ : std_logic;
SIGNAL \Add9~42\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~45_sumout\ : std_logic;
SIGNAL \Add11~42\ : std_logic;
SIGNAL \Add11~43\ : std_logic;
SIGNAL \Add11~45_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \Add11~110\ : std_logic;
SIGNAL \Add11~111\ : std_logic;
SIGNAL \Add11~113_sumout\ : std_logic;
SIGNAL \Add9~46\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~49_sumout\ : std_logic;
SIGNAL \Add11~46\ : std_logic;
SIGNAL \Add11~47\ : std_logic;
SIGNAL \Add11~49_sumout\ : std_logic;
SIGNAL \Add15~46\ : std_logic;
SIGNAL \Add15~47\ : std_logic;
SIGNAL \Add15~49_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~111\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add15~50\ : std_logic;
SIGNAL \Add15~51\ : std_logic;
SIGNAL \Add15~53_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add11~114\ : std_logic;
SIGNAL \Add11~115\ : std_logic;
SIGNAL \Add11~117_sumout\ : std_logic;
SIGNAL \Add9~50\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~53_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \Add11~50\ : std_logic;
SIGNAL \Add11~51\ : std_logic;
SIGNAL \Add11~53_sumout\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~115\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~119\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add11~118\ : std_logic;
SIGNAL \Add11~119\ : std_logic;
SIGNAL \Add11~121_sumout\ : std_logic;
SIGNAL \Add9~54\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~57_sumout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \Add11~54\ : std_logic;
SIGNAL \Add11~55\ : std_logic;
SIGNAL \Add11~57_sumout\ : std_logic;
SIGNAL \Add15~54\ : std_logic;
SIGNAL \Add15~55\ : std_logic;
SIGNAL \Add15~57_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add15~58\ : std_logic;
SIGNAL \Add15~59\ : std_logic;
SIGNAL \Add15~61_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add11~122\ : std_logic;
SIGNAL \Add11~123\ : std_logic;
SIGNAL \Add11~125_sumout\ : std_logic;
SIGNAL \Add9~58\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~61_sumout\ : std_logic;
SIGNAL \Add11~58\ : std_logic;
SIGNAL \Add11~59\ : std_logic;
SIGNAL \Add11~61_sumout\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~123\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \ALT_INV_Add15~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add15~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \ALT_INV_Add15~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \ALT_INV_shifts[15][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[15][9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[15][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[15][5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[15][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[15][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[14][6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[14][1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[13][11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[13][4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[12][0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[10][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[9][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[8][15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[8][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[8][3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[7][12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[6][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_shifts[1][13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \ALT_INV_KEY~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_filter_en~input_o\ : std_logic;
SIGNAL \ALT_INV_data_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key0_d1~q\ : std_logic;
SIGNAL \ALT_INV_key0_d3~q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[15][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[14][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[13][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[12][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[11][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[10][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[9][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[8][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[7][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[6][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[5][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[4][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[3][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[2][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_shifts[0][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);
SIGNAL \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\ : std_logic_vector(30 DOWNTO 15);

BEGIN

ww_clk <= clk;
ww_KEY <= KEY;
ww_filter_en <= filter_en;
ww_data_in <= data_in;
data_out <= IEEE.NUMERIC_STD.SIGNED(ww_data_out);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc & gnd & gnd & gnd & vcc);

\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[0][15]~SCLR_LUT_combout\ & \shifts[0][15]~SCLR_LUT_combout\ & \shifts[0][15]~SCLR_LUT_combout\ & \shifts[0][15]~SCLR_LUT_combout\ & \shifts[0][14]~SCLR_LUT_combout\
& \shifts[0][13]~SCLR_LUT_combout\ & \shifts[0][12]~SCLR_LUT_combout\ & \shifts[0][11]~SCLR_LUT_combout\ & \shifts[0][10]~SCLR_LUT_combout\ & \shifts[0][9]~SCLR_LUT_combout\ & \shifts[0][8]~SCLR_LUT_combout\ & \shifts[0][7]~SCLR_LUT_combout\ & 
\shifts[0][6]~SCLR_LUT_combout\ & \shifts[0][5]~SCLR_LUT_combout\ & \shifts[0][4]~SCLR_LUT_combout\ & \shifts[0][3]~SCLR_LUT_combout\ & \shifts[0][2]~SCLR_LUT_combout\ & \shifts[0][1]~SCLR_LUT_combout\ & \shifts[0][0]~SCLR_LUT_combout\);

\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc & vcc & vcc & gnd & vcc & gnd);

\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[1][15]~SCLR_LUT_combout\ & \shifts[1][15]~SCLR_LUT_combout\ & \shifts[1][15]~SCLR_LUT_combout\ & \shifts[1][15]~SCLR_LUT_combout\ & \shifts[1][14]~SCLR_LUT_combout\
& \shifts[1][13]~SCLR_LUT_combout\ & \shifts[1][12]~SCLR_LUT_combout\ & \shifts[1][11]~SCLR_LUT_combout\ & \shifts[1][10]~SCLR_LUT_combout\ & \shifts[1][9]~SCLR_LUT_combout\ & \shifts[1][8]~SCLR_LUT_combout\ & \shifts[1][7]~SCLR_LUT_combout\ & 
\shifts[1][6]~SCLR_LUT_combout\ & \shifts[1][5]~SCLR_LUT_combout\ & \shifts[1][4]~SCLR_LUT_combout\ & \shifts[1][3]~SCLR_LUT_combout\ & \shifts[1][2]~SCLR_LUT_combout\ & \shifts[1][1]~SCLR_LUT_combout\ & \shifts[1][0]~SCLR_LUT_combout\);

\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd & vcc);

\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[2][15]~SCLR_LUT_combout\ & \shifts[2][15]~SCLR_LUT_combout\ & \shifts[2][15]~SCLR_LUT_combout\ & \shifts[2][15]~SCLR_LUT_combout\ & \shifts[2][14]~SCLR_LUT_combout\
& \shifts[2][13]~SCLR_LUT_combout\ & \shifts[2][12]~SCLR_LUT_combout\ & \shifts[2][11]~SCLR_LUT_combout\ & \shifts[2][10]~SCLR_LUT_combout\ & \shifts[2][9]~SCLR_LUT_combout\ & \shifts[2][8]~SCLR_LUT_combout\ & \shifts[2][7]~SCLR_LUT_combout\ & 
\shifts[2][6]~SCLR_LUT_combout\ & \shifts[2][5]~SCLR_LUT_combout\ & \shifts[2][4]~SCLR_LUT_combout\ & \shifts[2][3]~SCLR_LUT_combout\ & \shifts[2][2]~SCLR_LUT_combout\ & \shifts[2][1]~SCLR_LUT_combout\ & \shifts[2][0]~SCLR_LUT_combout\);

\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & gnd & gnd);

\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[3][15]~SCLR_LUT_combout\ & \shifts[3][15]~SCLR_LUT_combout\ & \shifts[3][15]~SCLR_LUT_combout\ & \shifts[3][15]~SCLR_LUT_combout\ & \shifts[3][14]~SCLR_LUT_combout\
& \shifts[3][13]~SCLR_LUT_combout\ & \shifts[3][12]~SCLR_LUT_combout\ & \shifts[3][11]~SCLR_LUT_combout\ & \shifts[3][10]~SCLR_LUT_combout\ & \shifts[3][9]~SCLR_LUT_combout\ & \shifts[3][8]~SCLR_LUT_combout\ & \shifts[3][7]~SCLR_LUT_combout\ & 
\shifts[3][6]~SCLR_LUT_combout\ & \shifts[3][5]~SCLR_LUT_combout\ & \shifts[3][4]~SCLR_LUT_combout\ & \shifts[3][3]~SCLR_LUT_combout\ & \shifts[3][2]~SCLR_LUT_combout\ & \shifts[3][1]~SCLR_LUT_combout\ & \shifts[3][0]~SCLR_LUT_combout\);

\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & vcc & vcc & gnd & vcc & gnd);

\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[4][15]~SCLR_LUT_combout\ & \shifts[4][15]~SCLR_LUT_combout\ & \shifts[4][15]~SCLR_LUT_combout\ & \shifts[4][15]~SCLR_LUT_combout\ & \shifts[4][14]~SCLR_LUT_combout\
& \shifts[4][13]~SCLR_LUT_combout\ & \shifts[4][12]~SCLR_LUT_combout\ & \shifts[4][11]~SCLR_LUT_combout\ & \shifts[4][10]~SCLR_LUT_combout\ & \shifts[4][9]~SCLR_LUT_combout\ & \shifts[4][8]~SCLR_LUT_combout\ & \shifts[4][7]~SCLR_LUT_combout\ & 
\shifts[4][6]~SCLR_LUT_combout\ & \shifts[4][5]~SCLR_LUT_combout\ & \shifts[4][4]~SCLR_LUT_combout\ & \shifts[4][3]~SCLR_LUT_combout\ & \shifts[4][2]~SCLR_LUT_combout\ & \shifts[4][1]~SCLR_LUT_combout\ & \shifts[4][0]~SCLR_LUT_combout\);

\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & vcc & gnd & vcc & gnd & vcc & gnd & vcc & gnd & vcc & vcc & gnd & gnd);

\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[5][15]~SCLR_LUT_combout\ & \shifts[5][15]~SCLR_LUT_combout\ & \shifts[5][15]~SCLR_LUT_combout\ & \shifts[5][15]~SCLR_LUT_combout\ & \shifts[5][14]~SCLR_LUT_combout\
& \shifts[5][13]~SCLR_LUT_combout\ & \shifts[5][12]~SCLR_LUT_combout\ & \shifts[5][11]~SCLR_LUT_combout\ & \shifts[5][10]~SCLR_LUT_combout\ & \shifts[5][9]~SCLR_LUT_combout\ & \shifts[5][8]~SCLR_LUT_combout\ & \shifts[5][7]~SCLR_LUT_combout\ & 
\shifts[5][6]~SCLR_LUT_combout\ & \shifts[5][5]~SCLR_LUT_combout\ & \shifts[5][4]~SCLR_LUT_combout\ & \shifts[5][3]~SCLR_LUT_combout\ & \shifts[5][2]~SCLR_LUT_combout\ & \shifts[5][1]~SCLR_LUT_combout\ & \shifts[5][0]~SCLR_LUT_combout\);

\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & gnd & vcc);

\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[6][15]~SCLR_LUT_combout\ & \shifts[6][15]~SCLR_LUT_combout\ & \shifts[6][15]~SCLR_LUT_combout\ & \shifts[6][15]~SCLR_LUT_combout\ & \shifts[6][14]~SCLR_LUT_combout\
& \shifts[6][13]~SCLR_LUT_combout\ & \shifts[6][12]~SCLR_LUT_combout\ & \shifts[6][11]~SCLR_LUT_combout\ & \shifts[6][10]~SCLR_LUT_combout\ & \shifts[6][9]~SCLR_LUT_combout\ & \shifts[6][8]~SCLR_LUT_combout\ & \shifts[6][7]~SCLR_LUT_combout\ & 
\shifts[6][6]~SCLR_LUT_combout\ & \shifts[6][5]~SCLR_LUT_combout\ & \shifts[6][4]~SCLR_LUT_combout\ & \shifts[6][3]~SCLR_LUT_combout\ & \shifts[6][2]~SCLR_LUT_combout\ & \shifts[6][1]~SCLR_LUT_combout\ & \shifts[6][0]~SCLR_LUT_combout\);

\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[7][15]~SCLR_LUT_combout\ & \shifts[7][15]~SCLR_LUT_combout\ & \shifts[7][15]~SCLR_LUT_combout\ & \shifts[7][15]~SCLR_LUT_combout\ & \shifts[7][14]~SCLR_LUT_combout\
& \shifts[7][13]~SCLR_LUT_combout\ & \shifts[7][12]~SCLR_LUT_combout\ & \shifts[7][11]~SCLR_LUT_combout\ & \shifts[7][10]~SCLR_LUT_combout\ & \shifts[7][9]~SCLR_LUT_combout\ & \shifts[7][8]~SCLR_LUT_combout\ & \shifts[7][7]~SCLR_LUT_combout\ & 
\shifts[7][6]~SCLR_LUT_combout\ & \shifts[7][5]~SCLR_LUT_combout\ & \shifts[7][4]~SCLR_LUT_combout\ & \shifts[7][3]~SCLR_LUT_combout\ & \shifts[7][2]~SCLR_LUT_combout\ & \shifts[7][1]~SCLR_LUT_combout\ & \shifts[7][0]~SCLR_LUT_combout\);

\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & vcc & gnd & gnd & gnd & vcc & gnd & vcc & vcc & gnd & gnd & gnd & gnd & vcc);

\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[8][15]~SCLR_LUT_combout\ & \shifts[8][15]~SCLR_LUT_combout\ & \shifts[8][15]~SCLR_LUT_combout\ & \shifts[8][15]~SCLR_LUT_combout\ & \shifts[8][14]~SCLR_LUT_combout\
& \shifts[8][13]~SCLR_LUT_combout\ & \shifts[8][12]~SCLR_LUT_combout\ & \shifts[8][11]~SCLR_LUT_combout\ & \shifts[8][10]~SCLR_LUT_combout\ & \shifts[8][9]~SCLR_LUT_combout\ & \shifts[8][8]~SCLR_LUT_combout\ & \shifts[8][7]~SCLR_LUT_combout\ & 
\shifts[8][6]~SCLR_LUT_combout\ & \shifts[8][5]~SCLR_LUT_combout\ & \shifts[8][4]~SCLR_LUT_combout\ & \shifts[8][3]~SCLR_LUT_combout\ & \shifts[8][2]~SCLR_LUT_combout\ & \shifts[8][1]~SCLR_LUT_combout\ & \shifts[8][0]~SCLR_LUT_combout\);

\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[9][15]~SCLR_LUT_combout\ & \shifts[9][15]~SCLR_LUT_combout\ & \shifts[9][15]~SCLR_LUT_combout\ & \shifts[9][15]~SCLR_LUT_combout\ & \shifts[9][14]~SCLR_LUT_combout\
& \shifts[9][13]~SCLR_LUT_combout\ & \shifts[9][12]~SCLR_LUT_combout\ & \shifts[9][11]~SCLR_LUT_combout\ & \shifts[9][10]~SCLR_LUT_combout\ & \shifts[9][9]~SCLR_LUT_combout\ & \shifts[9][8]~SCLR_LUT_combout\ & \shifts[9][7]~SCLR_LUT_combout\ & 
\shifts[9][6]~SCLR_LUT_combout\ & \shifts[9][5]~SCLR_LUT_combout\ & \shifts[9][4]~SCLR_LUT_combout\ & \shifts[9][3]~SCLR_LUT_combout\ & \shifts[9][2]~SCLR_LUT_combout\ & \shifts[9][1]~SCLR_LUT_combout\ & \shifts[9][0]~SCLR_LUT_combout\);

\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & gnd & vcc);

\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[10][15]~SCLR_LUT_combout\ & \shifts[10][15]~SCLR_LUT_combout\ & \shifts[10][15]~SCLR_LUT_combout\ & \shifts[10][15]~SCLR_LUT_combout\ & 
\shifts[10][14]~SCLR_LUT_combout\ & \shifts[10][13]~SCLR_LUT_combout\ & \shifts[10][12]~SCLR_LUT_combout\ & \shifts[10][11]~SCLR_LUT_combout\ & \shifts[10][10]~SCLR_LUT_combout\ & \shifts[10][9]~SCLR_LUT_combout\ & \shifts[10][8]~SCLR_LUT_combout\ & 
\shifts[10][7]~SCLR_LUT_combout\ & \shifts[10][6]~SCLR_LUT_combout\ & \shifts[10][5]~SCLR_LUT_combout\ & \shifts[10][4]~SCLR_LUT_combout\ & \shifts[10][3]~SCLR_LUT_combout\ & \shifts[10][2]~SCLR_LUT_combout\ & \shifts[10][1]~SCLR_LUT_combout\ & 
\shifts[10][0]~SCLR_LUT_combout\);

\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & vcc & gnd & vcc & gnd & vcc & gnd & vcc & gnd & vcc & vcc & gnd & gnd);

\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[11][15]~SCLR_LUT_combout\ & \shifts[11][15]~SCLR_LUT_combout\ & \shifts[11][15]~SCLR_LUT_combout\ & \shifts[11][15]~SCLR_LUT_combout\ & 
\shifts[11][14]~SCLR_LUT_combout\ & \shifts[11][13]~SCLR_LUT_combout\ & \shifts[11][12]~SCLR_LUT_combout\ & \shifts[11][11]~SCLR_LUT_combout\ & \shifts[11][10]~SCLR_LUT_combout\ & \shifts[11][9]~SCLR_LUT_combout\ & \shifts[11][8]~SCLR_LUT_combout\ & 
\shifts[11][7]~SCLR_LUT_combout\ & \shifts[11][6]~SCLR_LUT_combout\ & \shifts[11][5]~SCLR_LUT_combout\ & \shifts[11][4]~SCLR_LUT_combout\ & \shifts[11][3]~SCLR_LUT_combout\ & \shifts[11][2]~SCLR_LUT_combout\ & \shifts[11][1]~SCLR_LUT_combout\ & 
\shifts[11][0]~SCLR_LUT_combout\);

\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & vcc & vcc & gnd & vcc & gnd);

\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[12][15]~SCLR_LUT_combout\ & \shifts[12][15]~SCLR_LUT_combout\ & \shifts[12][15]~SCLR_LUT_combout\ & \shifts[12][15]~SCLR_LUT_combout\ & 
\shifts[12][14]~SCLR_LUT_combout\ & \shifts[12][13]~SCLR_LUT_combout\ & \shifts[12][12]~SCLR_LUT_combout\ & \shifts[12][11]~SCLR_LUT_combout\ & \shifts[12][10]~SCLR_LUT_combout\ & \shifts[12][9]~SCLR_LUT_combout\ & \shifts[12][8]~SCLR_LUT_combout\ & 
\shifts[12][7]~SCLR_LUT_combout\ & \shifts[12][6]~SCLR_LUT_combout\ & \shifts[12][5]~SCLR_LUT_combout\ & \shifts[12][4]~SCLR_LUT_combout\ & \shifts[12][3]~SCLR_LUT_combout\ & \shifts[12][2]~SCLR_LUT_combout\ & \shifts[12][1]~SCLR_LUT_combout\ & 
\shifts[12][0]~SCLR_LUT_combout\);

\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & gnd & gnd);

\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[13][15]~SCLR_LUT_combout\ & \shifts[13][15]~SCLR_LUT_combout\ & \shifts[13][15]~SCLR_LUT_combout\ & \shifts[13][15]~SCLR_LUT_combout\ & 
\shifts[13][14]~SCLR_LUT_combout\ & \shifts[13][13]~SCLR_LUT_combout\ & \shifts[13][12]~SCLR_LUT_combout\ & \shifts[13][11]~SCLR_LUT_combout\ & \shifts[13][10]~SCLR_LUT_combout\ & \shifts[13][9]~SCLR_LUT_combout\ & \shifts[13][8]~SCLR_LUT_combout\ & 
\shifts[13][7]~SCLR_LUT_combout\ & \shifts[13][6]~SCLR_LUT_combout\ & \shifts[13][5]~SCLR_LUT_combout\ & \shifts[13][4]~SCLR_LUT_combout\ & \shifts[13][3]~SCLR_LUT_combout\ & \shifts[13][2]~SCLR_LUT_combout\ & \shifts[13][1]~SCLR_LUT_combout\ & 
\shifts[13][0]~SCLR_LUT_combout\);

\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd & vcc);

\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[14][15]~SCLR_LUT_combout\ & \shifts[14][15]~SCLR_LUT_combout\ & \shifts[14][15]~SCLR_LUT_combout\ & \shifts[14][15]~SCLR_LUT_combout\ & 
\shifts[14][14]~SCLR_LUT_combout\ & \shifts[14][13]~SCLR_LUT_combout\ & \shifts[14][12]~SCLR_LUT_combout\ & \shifts[14][11]~SCLR_LUT_combout\ & \shifts[14][10]~SCLR_LUT_combout\ & \shifts[14][9]~SCLR_LUT_combout\ & \shifts[14][8]~SCLR_LUT_combout\ & 
\shifts[14][7]~SCLR_LUT_combout\ & \shifts[14][6]~SCLR_LUT_combout\ & \shifts[14][5]~SCLR_LUT_combout\ & \shifts[14][4]~SCLR_LUT_combout\ & \shifts[14][3]~SCLR_LUT_combout\ & \shifts[14][2]~SCLR_LUT_combout\ & \shifts[14][1]~SCLR_LUT_combout\ & 
\shifts[14][0]~SCLR_LUT_combout\);

\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc & vcc & vcc & gnd & vcc & gnd);

\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[15][15]~SCLR_LUT_combout\ & \shifts[15][15]~SCLR_LUT_combout\ & \shifts[15][15]~SCLR_LUT_combout\ & \shifts[15][15]~SCLR_LUT_combout\ & 
\shifts[15][14]~SCLR_LUT_combout\ & \shifts[15][13]~SCLR_LUT_combout\ & \shifts[15][12]~SCLR_LUT_combout\ & \shifts[15][11]~SCLR_LUT_combout\ & \shifts[15][10]~SCLR_LUT_combout\ & \shifts[15][9]~SCLR_LUT_combout\ & \shifts[15][8]~SCLR_LUT_combout\ & 
\shifts[15][7]~SCLR_LUT_combout\ & \shifts[15][6]~SCLR_LUT_combout\ & \shifts[15][5]~SCLR_LUT_combout\ & \shifts[15][4]~SCLR_LUT_combout\ & \shifts[15][3]~SCLR_LUT_combout\ & \shifts[15][2]~SCLR_LUT_combout\ & \shifts[15][1]~SCLR_LUT_combout\ & 
\shifts[15][0]~SCLR_LUT_combout\);

\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);

\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\ <= (vcc & vcc & \shifts[0][0]~0_combout\);

\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & gnd & vcc & gnd & gnd & gnd & vcc);

\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\ <= (\shifts[16][15]~SCLR_LUT_combout\ & \shifts[16][15]~SCLR_LUT_combout\ & \shifts[16][15]~SCLR_LUT_combout\ & \shifts[16][15]~SCLR_LUT_combout\ & 
\shifts[16][14]~SCLR_LUT_combout\ & \shifts[16][13]~SCLR_LUT_combout\ & \shifts[16][12]~SCLR_LUT_combout\ & \shifts[16][11]~SCLR_LUT_combout\ & \shifts[16][10]~SCLR_LUT_combout\ & \shifts[16][9]~SCLR_LUT_combout\ & \shifts[16][8]~SCLR_LUT_combout\ & 
\shifts[16][7]~SCLR_LUT_combout\ & \shifts[16][6]~SCLR_LUT_combout\ & \shifts[16][5]~SCLR_LUT_combout\ & \shifts[16][4]~SCLR_LUT_combout\ & \shifts[16][3]~SCLR_LUT_combout\ & \shifts[16][2]~SCLR_LUT_combout\ & \shifts[16][1]~SCLR_LUT_combout\ & 
\shifts[16][0]~SCLR_LUT_combout\);

\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_resulta\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(0);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~9\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(1);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~10\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(2);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~11\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(3);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~12\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(4);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~13\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(5);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~14\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(6);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~15\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(7);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~16\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(8);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~17\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(9);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~18\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(10);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~19\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(11);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~20\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(12);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~21\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(13);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~22\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(14);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(15) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(15);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(16) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(16);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(17) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(17);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(18) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(18);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(19) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(19);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(20) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(20);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(21) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(21);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(22) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(22);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(23) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(23);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(24) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(24);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(25) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(25);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(26) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(26);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(27) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(27);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(28) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(28);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(29) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(29);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(30) <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(30);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~23\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(31);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~24\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(32);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~25\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(33);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~26\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(34);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~27\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(35);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~28\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(36);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~29\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(37);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~30\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(38);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~31\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(39);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~32\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(40);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~33\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(41);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~34\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(42);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~35\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(43);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~36\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(44);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~37\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(45);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~38\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(46);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~39\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(47);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~40\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(48);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~41\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(49);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~42\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(50);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~43\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(51);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~44\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(52);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~45\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(53);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~46\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(54);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~47\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(55);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~48\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(56);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~49\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(57);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~50\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(58);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~51\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(59);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~52\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(60);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~53\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(61);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~54\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(62);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~55\ <= \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\(63);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(15);
\ALT_INV_Add15~61_sumout\ <= NOT \Add15~61_sumout\;
\ALT_INV_Add11~125_sumout\ <= NOT \Add11~125_sumout\;
\ALT_INV_Add9~61_sumout\ <= NOT \Add9~61_sumout\;
\ALT_INV_Add5~61_sumout\ <= NOT \Add5~61_sumout\;
\ALT_INV_Add15~57_sumout\ <= NOT \Add15~57_sumout\;
\ALT_INV_Add11~121_sumout\ <= NOT \Add11~121_sumout\;
\ALT_INV_Add9~57_sumout\ <= NOT \Add9~57_sumout\;
\ALT_INV_Add5~57_sumout\ <= NOT \Add5~57_sumout\;
\ALT_INV_Add15~53_sumout\ <= NOT \Add15~53_sumout\;
\ALT_INV_Add11~117_sumout\ <= NOT \Add11~117_sumout\;
\ALT_INV_Add9~53_sumout\ <= NOT \Add9~53_sumout\;
\ALT_INV_Add5~53_sumout\ <= NOT \Add5~53_sumout\;
\ALT_INV_Add15~49_sumout\ <= NOT \Add15~49_sumout\;
\ALT_INV_Add11~113_sumout\ <= NOT \Add11~113_sumout\;
\ALT_INV_Add9~49_sumout\ <= NOT \Add9~49_sumout\;
\ALT_INV_Add5~49_sumout\ <= NOT \Add5~49_sumout\;
\ALT_INV_Add15~45_sumout\ <= NOT \Add15~45_sumout\;
\ALT_INV_Add11~109_sumout\ <= NOT \Add11~109_sumout\;
\ALT_INV_Add9~45_sumout\ <= NOT \Add9~45_sumout\;
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
\ALT_INV_Add15~41_sumout\ <= NOT \Add15~41_sumout\;
\ALT_INV_Add11~105_sumout\ <= NOT \Add11~105_sumout\;
\ALT_INV_Add9~41_sumout\ <= NOT \Add9~41_sumout\;
\ALT_INV_Add5~41_sumout\ <= NOT \Add5~41_sumout\;
\ALT_INV_Add15~37_sumout\ <= NOT \Add15~37_sumout\;
\ALT_INV_Add11~101_sumout\ <= NOT \Add11~101_sumout\;
\ALT_INV_Add9~37_sumout\ <= NOT \Add9~37_sumout\;
\ALT_INV_Add5~37_sumout\ <= NOT \Add5~37_sumout\;
\ALT_INV_Add15~33_sumout\ <= NOT \Add15~33_sumout\;
\ALT_INV_Add11~97_sumout\ <= NOT \Add11~97_sumout\;
\ALT_INV_Add9~33_sumout\ <= NOT \Add9~33_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add15~29_sumout\ <= NOT \Add15~29_sumout\;
\ALT_INV_Add11~93_sumout\ <= NOT \Add11~93_sumout\;
\ALT_INV_Add9~29_sumout\ <= NOT \Add9~29_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add15~25_sumout\ <= NOT \Add15~25_sumout\;
\ALT_INV_Add11~89_sumout\ <= NOT \Add11~89_sumout\;
\ALT_INV_Add9~25_sumout\ <= NOT \Add9~25_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add15~21_sumout\ <= NOT \Add15~21_sumout\;
\ALT_INV_Add11~85_sumout\ <= NOT \Add11~85_sumout\;
\ALT_INV_Add9~21_sumout\ <= NOT \Add9~21_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add15~17_sumout\ <= NOT \Add15~17_sumout\;
\ALT_INV_Add11~81_sumout\ <= NOT \Add11~81_sumout\;
\ALT_INV_Add9~17_sumout\ <= NOT \Add9~17_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add15~13_sumout\ <= NOT \Add15~13_sumout\;
\ALT_INV_Add11~77_sumout\ <= NOT \Add11~77_sumout\;
\ALT_INV_Add9~13_sumout\ <= NOT \Add9~13_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add15~9_sumout\ <= NOT \Add15~9_sumout\;
\ALT_INV_Add11~73_sumout\ <= NOT \Add11~73_sumout\;
\ALT_INV_Add9~9_sumout\ <= NOT \Add9~9_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add15~5_sumout\ <= NOT \Add15~5_sumout\;
\ALT_INV_Add11~69_sumout\ <= NOT \Add11~69_sumout\;
\ALT_INV_Add9~5_sumout\ <= NOT \Add9~5_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(15);
\ALT_INV_Add15~1_sumout\ <= NOT \Add15~1_sumout\;
\ALT_INV_Add11~65_sumout\ <= NOT \Add11~65_sumout\;
\ALT_INV_Add9~1_sumout\ <= NOT \Add9~1_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add3~125_sumout\ <= NOT \Add3~125_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add11~61_sumout\ <= NOT \Add11~61_sumout\;
\ALT_INV_Add3~121_sumout\ <= NOT \Add3~121_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add11~57_sumout\ <= NOT \Add11~57_sumout\;
\ALT_INV_Add3~117_sumout\ <= NOT \Add3~117_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add11~53_sumout\ <= NOT \Add11~53_sumout\;
\ALT_INV_Add3~113_sumout\ <= NOT \Add3~113_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add11~49_sumout\ <= NOT \Add11~49_sumout\;
\ALT_INV_Add3~109_sumout\ <= NOT \Add3~109_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add11~45_sumout\ <= NOT \Add11~45_sumout\;
\ALT_INV_Add3~105_sumout\ <= NOT \Add3~105_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add11~41_sumout\ <= NOT \Add11~41_sumout\;
\ALT_INV_Add3~101_sumout\ <= NOT \Add3~101_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add11~37_sumout\ <= NOT \Add11~37_sumout\;
\ALT_INV_Add3~97_sumout\ <= NOT \Add3~97_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add11~33_sumout\ <= NOT \Add11~33_sumout\;
\ALT_INV_Add3~93_sumout\ <= NOT \Add3~93_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add11~29_sumout\ <= NOT \Add11~29_sumout\;
\ALT_INV_Add3~89_sumout\ <= NOT \Add3~89_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add11~25_sumout\ <= NOT \Add11~25_sumout\;
\ALT_INV_Add3~85_sumout\ <= NOT \Add3~85_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add11~21_sumout\ <= NOT \Add11~21_sumout\;
\ALT_INV_Add3~81_sumout\ <= NOT \Add3~81_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add11~17_sumout\ <= NOT \Add11~17_sumout\;
\ALT_INV_Add3~77_sumout\ <= NOT \Add3~77_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add11~13_sumout\ <= NOT \Add11~13_sumout\;
\ALT_INV_Add3~73_sumout\ <= NOT \Add3~73_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add11~9_sumout\ <= NOT \Add11~9_sumout\;
\ALT_INV_Add3~69_sumout\ <= NOT \Add3~69_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add11~5_sumout\ <= NOT \Add11~5_sumout\;
\ALT_INV_Add3~65_sumout\ <= NOT \Add3~65_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add11~1_sumout\ <= NOT \Add11~1_sumout\;
\ALT_INV_shifts[15][11]~SCLR_LUT_combout\ <= NOT \shifts[15][11]~SCLR_LUT_combout\;
\ALT_INV_shifts[15][9]~SCLR_LUT_combout\ <= NOT \shifts[15][9]~SCLR_LUT_combout\;
\ALT_INV_shifts[15][6]~SCLR_LUT_combout\ <= NOT \shifts[15][6]~SCLR_LUT_combout\;
\ALT_INV_shifts[15][5]~SCLR_LUT_combout\ <= NOT \shifts[15][5]~SCLR_LUT_combout\;
\ALT_INV_shifts[15][1]~SCLR_LUT_combout\ <= NOT \shifts[15][1]~SCLR_LUT_combout\;
\ALT_INV_shifts[15][0]~SCLR_LUT_combout\ <= NOT \shifts[15][0]~SCLR_LUT_combout\;
\ALT_INV_shifts[14][6]~SCLR_LUT_combout\ <= NOT \shifts[14][6]~SCLR_LUT_combout\;
\ALT_INV_shifts[14][1]~SCLR_LUT_combout\ <= NOT \shifts[14][1]~SCLR_LUT_combout\;
\ALT_INV_shifts[13][11]~SCLR_LUT_combout\ <= NOT \shifts[13][11]~SCLR_LUT_combout\;
\ALT_INV_shifts[13][4]~SCLR_LUT_combout\ <= NOT \shifts[13][4]~SCLR_LUT_combout\;
\ALT_INV_shifts[12][0]~SCLR_LUT_combout\ <= NOT \shifts[12][0]~SCLR_LUT_combout\;
\ALT_INV_shifts[10][12]~SCLR_LUT_combout\ <= NOT \shifts[10][12]~SCLR_LUT_combout\;
\ALT_INV_shifts[9][13]~SCLR_LUT_combout\ <= NOT \shifts[9][13]~SCLR_LUT_combout\;
\ALT_INV_shifts[8][15]~SCLR_LUT_combout\ <= NOT \shifts[8][15]~SCLR_LUT_combout\;
\ALT_INV_shifts[8][12]~SCLR_LUT_combout\ <= NOT \shifts[8][12]~SCLR_LUT_combout\;
\ALT_INV_shifts[8][3]~SCLR_LUT_combout\ <= NOT \shifts[8][3]~SCLR_LUT_combout\;
\ALT_INV_shifts[7][12]~SCLR_LUT_combout\ <= NOT \shifts[7][12]~SCLR_LUT_combout\;
\ALT_INV_shifts[6][13]~SCLR_LUT_combout\ <= NOT \shifts[6][13]~SCLR_LUT_combout\;
\ALT_INV_shifts[1][13]~SCLR_LUT_combout\ <= NOT \shifts[1][13]~SCLR_LUT_combout\;
\ALT_INV_KEY~input_o\ <= NOT \KEY~input_o\;
\ALT_INV_data_in[15]~input_o\ <= NOT \data_in[15]~input_o\;
\ALT_INV_data_in[14]~input_o\ <= NOT \data_in[14]~input_o\;
\ALT_INV_data_in[13]~input_o\ <= NOT \data_in[13]~input_o\;
\ALT_INV_data_in[12]~input_o\ <= NOT \data_in[12]~input_o\;
\ALT_INV_data_in[11]~input_o\ <= NOT \data_in[11]~input_o\;
\ALT_INV_data_in[10]~input_o\ <= NOT \data_in[10]~input_o\;
\ALT_INV_data_in[9]~input_o\ <= NOT \data_in[9]~input_o\;
\ALT_INV_data_in[8]~input_o\ <= NOT \data_in[8]~input_o\;
\ALT_INV_data_in[7]~input_o\ <= NOT \data_in[7]~input_o\;
\ALT_INV_data_in[6]~input_o\ <= NOT \data_in[6]~input_o\;
\ALT_INV_data_in[5]~input_o\ <= NOT \data_in[5]~input_o\;
\ALT_INV_data_in[4]~input_o\ <= NOT \data_in[4]~input_o\;
\ALT_INV_data_in[3]~input_o\ <= NOT \data_in[3]~input_o\;
\ALT_INV_data_in[2]~input_o\ <= NOT \data_in[2]~input_o\;
\ALT_INV_data_in[1]~input_o\ <= NOT \data_in[1]~input_o\;
\ALT_INV_filter_en~input_o\ <= NOT \filter_en~input_o\;
\ALT_INV_data_in[0]~input_o\ <= NOT \data_in[0]~input_o\;
\ALT_INV_key0_d1~q\ <= NOT \key0_d1~q\;
\ALT_INV_key0_d3~q\ <= NOT \key0_d3~q\;
\ALT_INV_shifts[15][15]~_Duplicate_1_q\ <= NOT \shifts[15][15]~_Duplicate_1_q\;
\ALT_INV_shifts[15][14]~_Duplicate_1_q\ <= NOT \shifts[15][14]~_Duplicate_1_q\;
\ALT_INV_shifts[15][13]~_Duplicate_1_q\ <= NOT \shifts[15][13]~_Duplicate_1_q\;
\ALT_INV_shifts[15][12]~_Duplicate_1_q\ <= NOT \shifts[15][12]~_Duplicate_1_q\;
\ALT_INV_shifts[15][11]~_Duplicate_1_q\ <= NOT \shifts[15][11]~_Duplicate_1_q\;
\ALT_INV_shifts[15][10]~_Duplicate_1_q\ <= NOT \shifts[15][10]~_Duplicate_1_q\;
\ALT_INV_shifts[15][9]~_Duplicate_1_q\ <= NOT \shifts[15][9]~_Duplicate_1_q\;
\ALT_INV_shifts[15][8]~_Duplicate_1_q\ <= NOT \shifts[15][8]~_Duplicate_1_q\;
\ALT_INV_shifts[15][7]~_Duplicate_1_q\ <= NOT \shifts[15][7]~_Duplicate_1_q\;
\ALT_INV_shifts[15][6]~_Duplicate_1_q\ <= NOT \shifts[15][6]~_Duplicate_1_q\;
\ALT_INV_shifts[15][5]~_Duplicate_1_q\ <= NOT \shifts[15][5]~_Duplicate_1_q\;
\ALT_INV_shifts[15][4]~_Duplicate_1_q\ <= NOT \shifts[15][4]~_Duplicate_1_q\;
\ALT_INV_shifts[15][3]~_Duplicate_1_q\ <= NOT \shifts[15][3]~_Duplicate_1_q\;
\ALT_INV_shifts[15][2]~_Duplicate_1_q\ <= NOT \shifts[15][2]~_Duplicate_1_q\;
\ALT_INV_shifts[15][1]~_Duplicate_1_q\ <= NOT \shifts[15][1]~_Duplicate_1_q\;
\ALT_INV_shifts[15][0]~_Duplicate_1_q\ <= NOT \shifts[15][0]~_Duplicate_1_q\;
\ALT_INV_shifts[14][15]~_Duplicate_1_q\ <= NOT \shifts[14][15]~_Duplicate_1_q\;
\ALT_INV_shifts[14][14]~_Duplicate_1_q\ <= NOT \shifts[14][14]~_Duplicate_1_q\;
\ALT_INV_shifts[14][13]~_Duplicate_1_q\ <= NOT \shifts[14][13]~_Duplicate_1_q\;
\ALT_INV_shifts[14][12]~_Duplicate_1_q\ <= NOT \shifts[14][12]~_Duplicate_1_q\;
\ALT_INV_shifts[14][11]~_Duplicate_1_q\ <= NOT \shifts[14][11]~_Duplicate_1_q\;
\ALT_INV_shifts[14][10]~_Duplicate_1_q\ <= NOT \shifts[14][10]~_Duplicate_1_q\;
\ALT_INV_shifts[14][9]~_Duplicate_1_q\ <= NOT \shifts[14][9]~_Duplicate_1_q\;
\ALT_INV_shifts[14][8]~_Duplicate_1_q\ <= NOT \shifts[14][8]~_Duplicate_1_q\;
\ALT_INV_shifts[14][7]~_Duplicate_1_q\ <= NOT \shifts[14][7]~_Duplicate_1_q\;
\ALT_INV_shifts[14][6]~_Duplicate_1_q\ <= NOT \shifts[14][6]~_Duplicate_1_q\;
\ALT_INV_shifts[14][5]~_Duplicate_1_q\ <= NOT \shifts[14][5]~_Duplicate_1_q\;
\ALT_INV_shifts[14][4]~_Duplicate_1_q\ <= NOT \shifts[14][4]~_Duplicate_1_q\;
\ALT_INV_shifts[14][3]~_Duplicate_1_q\ <= NOT \shifts[14][3]~_Duplicate_1_q\;
\ALT_INV_shifts[14][2]~_Duplicate_1_q\ <= NOT \shifts[14][2]~_Duplicate_1_q\;
\ALT_INV_shifts[14][1]~_Duplicate_1_q\ <= NOT \shifts[14][1]~_Duplicate_1_q\;
\ALT_INV_shifts[14][0]~_Duplicate_1_q\ <= NOT \shifts[14][0]~_Duplicate_1_q\;
\ALT_INV_shifts[13][15]~_Duplicate_1_q\ <= NOT \shifts[13][15]~_Duplicate_1_q\;
\ALT_INV_shifts[13][14]~_Duplicate_1_q\ <= NOT \shifts[13][14]~_Duplicate_1_q\;
\ALT_INV_shifts[13][13]~_Duplicate_1_q\ <= NOT \shifts[13][13]~_Duplicate_1_q\;
\ALT_INV_shifts[13][12]~_Duplicate_1_q\ <= NOT \shifts[13][12]~_Duplicate_1_q\;
\ALT_INV_shifts[13][11]~_Duplicate_1_q\ <= NOT \shifts[13][11]~_Duplicate_1_q\;
\ALT_INV_shifts[13][10]~_Duplicate_1_q\ <= NOT \shifts[13][10]~_Duplicate_1_q\;
\ALT_INV_shifts[13][9]~_Duplicate_1_q\ <= NOT \shifts[13][9]~_Duplicate_1_q\;
\ALT_INV_shifts[13][8]~_Duplicate_1_q\ <= NOT \shifts[13][8]~_Duplicate_1_q\;
\ALT_INV_shifts[13][7]~_Duplicate_1_q\ <= NOT \shifts[13][7]~_Duplicate_1_q\;
\ALT_INV_shifts[13][6]~_Duplicate_1_q\ <= NOT \shifts[13][6]~_Duplicate_1_q\;
\ALT_INV_shifts[13][5]~_Duplicate_1_q\ <= NOT \shifts[13][5]~_Duplicate_1_q\;
\ALT_INV_shifts[13][4]~_Duplicate_1_q\ <= NOT \shifts[13][4]~_Duplicate_1_q\;
\ALT_INV_shifts[13][3]~_Duplicate_1_q\ <= NOT \shifts[13][3]~_Duplicate_1_q\;
\ALT_INV_shifts[13][2]~_Duplicate_1_q\ <= NOT \shifts[13][2]~_Duplicate_1_q\;
\ALT_INV_shifts[13][1]~_Duplicate_1_q\ <= NOT \shifts[13][1]~_Duplicate_1_q\;
\ALT_INV_shifts[13][0]~_Duplicate_1_q\ <= NOT \shifts[13][0]~_Duplicate_1_q\;
\ALT_INV_shifts[12][15]~_Duplicate_1_q\ <= NOT \shifts[12][15]~_Duplicate_1_q\;
\ALT_INV_shifts[12][14]~_Duplicate_1_q\ <= NOT \shifts[12][14]~_Duplicate_1_q\;
\ALT_INV_shifts[12][13]~_Duplicate_1_q\ <= NOT \shifts[12][13]~_Duplicate_1_q\;
\ALT_INV_shifts[12][12]~_Duplicate_1_q\ <= NOT \shifts[12][12]~_Duplicate_1_q\;
\ALT_INV_shifts[12][11]~_Duplicate_1_q\ <= NOT \shifts[12][11]~_Duplicate_1_q\;
\ALT_INV_shifts[12][10]~_Duplicate_1_q\ <= NOT \shifts[12][10]~_Duplicate_1_q\;
\ALT_INV_shifts[12][9]~_Duplicate_1_q\ <= NOT \shifts[12][9]~_Duplicate_1_q\;
\ALT_INV_shifts[12][8]~_Duplicate_1_q\ <= NOT \shifts[12][8]~_Duplicate_1_q\;
\ALT_INV_shifts[12][7]~_Duplicate_1_q\ <= NOT \shifts[12][7]~_Duplicate_1_q\;
\ALT_INV_shifts[12][6]~_Duplicate_1_q\ <= NOT \shifts[12][6]~_Duplicate_1_q\;
\ALT_INV_shifts[12][5]~_Duplicate_1_q\ <= NOT \shifts[12][5]~_Duplicate_1_q\;
\ALT_INV_shifts[12][4]~_Duplicate_1_q\ <= NOT \shifts[12][4]~_Duplicate_1_q\;
\ALT_INV_shifts[12][3]~_Duplicate_1_q\ <= NOT \shifts[12][3]~_Duplicate_1_q\;
\ALT_INV_shifts[12][2]~_Duplicate_1_q\ <= NOT \shifts[12][2]~_Duplicate_1_q\;
\ALT_INV_shifts[12][1]~_Duplicate_1_q\ <= NOT \shifts[12][1]~_Duplicate_1_q\;
\ALT_INV_shifts[12][0]~_Duplicate_1_q\ <= NOT \shifts[12][0]~_Duplicate_1_q\;
\ALT_INV_shifts[11][15]~_Duplicate_1_q\ <= NOT \shifts[11][15]~_Duplicate_1_q\;
\ALT_INV_shifts[11][14]~_Duplicate_1_q\ <= NOT \shifts[11][14]~_Duplicate_1_q\;
\ALT_INV_shifts[11][13]~_Duplicate_1_q\ <= NOT \shifts[11][13]~_Duplicate_1_q\;
\ALT_INV_shifts[11][12]~_Duplicate_1_q\ <= NOT \shifts[11][12]~_Duplicate_1_q\;
\ALT_INV_shifts[11][11]~_Duplicate_1_q\ <= NOT \shifts[11][11]~_Duplicate_1_q\;
\ALT_INV_shifts[11][10]~_Duplicate_1_q\ <= NOT \shifts[11][10]~_Duplicate_1_q\;
\ALT_INV_shifts[11][9]~_Duplicate_1_q\ <= NOT \shifts[11][9]~_Duplicate_1_q\;
\ALT_INV_shifts[11][8]~_Duplicate_1_q\ <= NOT \shifts[11][8]~_Duplicate_1_q\;
\ALT_INV_shifts[11][7]~_Duplicate_1_q\ <= NOT \shifts[11][7]~_Duplicate_1_q\;
\ALT_INV_shifts[11][6]~_Duplicate_1_q\ <= NOT \shifts[11][6]~_Duplicate_1_q\;
\ALT_INV_shifts[11][5]~_Duplicate_1_q\ <= NOT \shifts[11][5]~_Duplicate_1_q\;
\ALT_INV_shifts[11][4]~_Duplicate_1_q\ <= NOT \shifts[11][4]~_Duplicate_1_q\;
\ALT_INV_shifts[11][3]~_Duplicate_1_q\ <= NOT \shifts[11][3]~_Duplicate_1_q\;
\ALT_INV_shifts[11][2]~_Duplicate_1_q\ <= NOT \shifts[11][2]~_Duplicate_1_q\;
\ALT_INV_shifts[11][1]~_Duplicate_1_q\ <= NOT \shifts[11][1]~_Duplicate_1_q\;
\ALT_INV_shifts[11][0]~_Duplicate_1_q\ <= NOT \shifts[11][0]~_Duplicate_1_q\;
\ALT_INV_shifts[10][15]~_Duplicate_1_q\ <= NOT \shifts[10][15]~_Duplicate_1_q\;
\ALT_INV_shifts[10][14]~_Duplicate_1_q\ <= NOT \shifts[10][14]~_Duplicate_1_q\;
\ALT_INV_shifts[10][13]~_Duplicate_1_q\ <= NOT \shifts[10][13]~_Duplicate_1_q\;
\ALT_INV_shifts[10][12]~_Duplicate_1_q\ <= NOT \shifts[10][12]~_Duplicate_1_q\;
\ALT_INV_shifts[10][11]~_Duplicate_1_q\ <= NOT \shifts[10][11]~_Duplicate_1_q\;
\ALT_INV_shifts[10][10]~_Duplicate_1_q\ <= NOT \shifts[10][10]~_Duplicate_1_q\;
\ALT_INV_shifts[10][9]~_Duplicate_1_q\ <= NOT \shifts[10][9]~_Duplicate_1_q\;
\ALT_INV_shifts[10][8]~_Duplicate_1_q\ <= NOT \shifts[10][8]~_Duplicate_1_q\;
\ALT_INV_shifts[10][7]~_Duplicate_1_q\ <= NOT \shifts[10][7]~_Duplicate_1_q\;
\ALT_INV_shifts[10][6]~_Duplicate_1_q\ <= NOT \shifts[10][6]~_Duplicate_1_q\;
\ALT_INV_shifts[10][5]~_Duplicate_1_q\ <= NOT \shifts[10][5]~_Duplicate_1_q\;
\ALT_INV_shifts[10][4]~_Duplicate_1_q\ <= NOT \shifts[10][4]~_Duplicate_1_q\;
\ALT_INV_shifts[10][3]~_Duplicate_1_q\ <= NOT \shifts[10][3]~_Duplicate_1_q\;
\ALT_INV_shifts[10][2]~_Duplicate_1_q\ <= NOT \shifts[10][2]~_Duplicate_1_q\;
\ALT_INV_shifts[10][1]~_Duplicate_1_q\ <= NOT \shifts[10][1]~_Duplicate_1_q\;
\ALT_INV_shifts[10][0]~_Duplicate_1_q\ <= NOT \shifts[10][0]~_Duplicate_1_q\;
\ALT_INV_shifts[9][15]~_Duplicate_1_q\ <= NOT \shifts[9][15]~_Duplicate_1_q\;
\ALT_INV_shifts[9][14]~_Duplicate_1_q\ <= NOT \shifts[9][14]~_Duplicate_1_q\;
\ALT_INV_shifts[9][13]~_Duplicate_1_q\ <= NOT \shifts[9][13]~_Duplicate_1_q\;
\ALT_INV_shifts[9][12]~_Duplicate_1_q\ <= NOT \shifts[9][12]~_Duplicate_1_q\;
\ALT_INV_shifts[9][11]~_Duplicate_1_q\ <= NOT \shifts[9][11]~_Duplicate_1_q\;
\ALT_INV_shifts[9][10]~_Duplicate_1_q\ <= NOT \shifts[9][10]~_Duplicate_1_q\;
\ALT_INV_shifts[9][9]~_Duplicate_1_q\ <= NOT \shifts[9][9]~_Duplicate_1_q\;
\ALT_INV_shifts[9][8]~_Duplicate_1_q\ <= NOT \shifts[9][8]~_Duplicate_1_q\;
\ALT_INV_shifts[9][7]~_Duplicate_1_q\ <= NOT \shifts[9][7]~_Duplicate_1_q\;
\ALT_INV_shifts[9][6]~_Duplicate_1_q\ <= NOT \shifts[9][6]~_Duplicate_1_q\;
\ALT_INV_shifts[9][5]~_Duplicate_1_q\ <= NOT \shifts[9][5]~_Duplicate_1_q\;
\ALT_INV_shifts[9][4]~_Duplicate_1_q\ <= NOT \shifts[9][4]~_Duplicate_1_q\;
\ALT_INV_shifts[9][3]~_Duplicate_1_q\ <= NOT \shifts[9][3]~_Duplicate_1_q\;
\ALT_INV_shifts[9][2]~_Duplicate_1_q\ <= NOT \shifts[9][2]~_Duplicate_1_q\;
\ALT_INV_shifts[9][1]~_Duplicate_1_q\ <= NOT \shifts[9][1]~_Duplicate_1_q\;
\ALT_INV_shifts[9][0]~_Duplicate_1_q\ <= NOT \shifts[9][0]~_Duplicate_1_q\;
\ALT_INV_shifts[8][15]~_Duplicate_1_q\ <= NOT \shifts[8][15]~_Duplicate_1_q\;
\ALT_INV_shifts[8][14]~_Duplicate_1_q\ <= NOT \shifts[8][14]~_Duplicate_1_q\;
\ALT_INV_shifts[8][13]~_Duplicate_1_q\ <= NOT \shifts[8][13]~_Duplicate_1_q\;
\ALT_INV_shifts[8][12]~_Duplicate_1_q\ <= NOT \shifts[8][12]~_Duplicate_1_q\;
\ALT_INV_shifts[8][11]~_Duplicate_1_q\ <= NOT \shifts[8][11]~_Duplicate_1_q\;
\ALT_INV_shifts[8][10]~_Duplicate_1_q\ <= NOT \shifts[8][10]~_Duplicate_1_q\;
\ALT_INV_shifts[8][9]~_Duplicate_1_q\ <= NOT \shifts[8][9]~_Duplicate_1_q\;
\ALT_INV_shifts[8][8]~_Duplicate_1_q\ <= NOT \shifts[8][8]~_Duplicate_1_q\;
\ALT_INV_shifts[8][7]~_Duplicate_1_q\ <= NOT \shifts[8][7]~_Duplicate_1_q\;
\ALT_INV_shifts[8][6]~_Duplicate_1_q\ <= NOT \shifts[8][6]~_Duplicate_1_q\;
\ALT_INV_shifts[8][5]~_Duplicate_1_q\ <= NOT \shifts[8][5]~_Duplicate_1_q\;
\ALT_INV_shifts[8][4]~_Duplicate_1_q\ <= NOT \shifts[8][4]~_Duplicate_1_q\;
\ALT_INV_shifts[8][3]~_Duplicate_1_q\ <= NOT \shifts[8][3]~_Duplicate_1_q\;
\ALT_INV_shifts[8][2]~_Duplicate_1_q\ <= NOT \shifts[8][2]~_Duplicate_1_q\;
\ALT_INV_shifts[8][1]~_Duplicate_1_q\ <= NOT \shifts[8][1]~_Duplicate_1_q\;
\ALT_INV_shifts[8][0]~_Duplicate_1_q\ <= NOT \shifts[8][0]~_Duplicate_1_q\;
\ALT_INV_shifts[7][15]~_Duplicate_1_q\ <= NOT \shifts[7][15]~_Duplicate_1_q\;
\ALT_INV_shifts[7][14]~_Duplicate_1_q\ <= NOT \shifts[7][14]~_Duplicate_1_q\;
\ALT_INV_shifts[7][13]~_Duplicate_1_q\ <= NOT \shifts[7][13]~_Duplicate_1_q\;
\ALT_INV_shifts[7][12]~_Duplicate_1_q\ <= NOT \shifts[7][12]~_Duplicate_1_q\;
\ALT_INV_shifts[7][11]~_Duplicate_1_q\ <= NOT \shifts[7][11]~_Duplicate_1_q\;
\ALT_INV_shifts[7][10]~_Duplicate_1_q\ <= NOT \shifts[7][10]~_Duplicate_1_q\;
\ALT_INV_shifts[7][9]~_Duplicate_1_q\ <= NOT \shifts[7][9]~_Duplicate_1_q\;
\ALT_INV_shifts[7][8]~_Duplicate_1_q\ <= NOT \shifts[7][8]~_Duplicate_1_q\;
\ALT_INV_shifts[7][7]~_Duplicate_1_q\ <= NOT \shifts[7][7]~_Duplicate_1_q\;
\ALT_INV_shifts[7][6]~_Duplicate_1_q\ <= NOT \shifts[7][6]~_Duplicate_1_q\;
\ALT_INV_shifts[7][5]~_Duplicate_1_q\ <= NOT \shifts[7][5]~_Duplicate_1_q\;
\ALT_INV_shifts[7][4]~_Duplicate_1_q\ <= NOT \shifts[7][4]~_Duplicate_1_q\;
\ALT_INV_shifts[7][3]~_Duplicate_1_q\ <= NOT \shifts[7][3]~_Duplicate_1_q\;
\ALT_INV_shifts[7][2]~_Duplicate_1_q\ <= NOT \shifts[7][2]~_Duplicate_1_q\;
\ALT_INV_shifts[7][1]~_Duplicate_1_q\ <= NOT \shifts[7][1]~_Duplicate_1_q\;
\ALT_INV_shifts[7][0]~_Duplicate_1_q\ <= NOT \shifts[7][0]~_Duplicate_1_q\;
\ALT_INV_shifts[6][15]~_Duplicate_1_q\ <= NOT \shifts[6][15]~_Duplicate_1_q\;
\ALT_INV_shifts[6][14]~_Duplicate_1_q\ <= NOT \shifts[6][14]~_Duplicate_1_q\;
\ALT_INV_shifts[6][13]~_Duplicate_1_q\ <= NOT \shifts[6][13]~_Duplicate_1_q\;
\ALT_INV_shifts[6][12]~_Duplicate_1_q\ <= NOT \shifts[6][12]~_Duplicate_1_q\;
\ALT_INV_shifts[6][11]~_Duplicate_1_q\ <= NOT \shifts[6][11]~_Duplicate_1_q\;
\ALT_INV_shifts[6][10]~_Duplicate_1_q\ <= NOT \shifts[6][10]~_Duplicate_1_q\;
\ALT_INV_shifts[6][9]~_Duplicate_1_q\ <= NOT \shifts[6][9]~_Duplicate_1_q\;
\ALT_INV_shifts[6][8]~_Duplicate_1_q\ <= NOT \shifts[6][8]~_Duplicate_1_q\;
\ALT_INV_shifts[6][7]~_Duplicate_1_q\ <= NOT \shifts[6][7]~_Duplicate_1_q\;
\ALT_INV_shifts[6][6]~_Duplicate_1_q\ <= NOT \shifts[6][6]~_Duplicate_1_q\;
\ALT_INV_shifts[6][5]~_Duplicate_1_q\ <= NOT \shifts[6][5]~_Duplicate_1_q\;
\ALT_INV_shifts[6][4]~_Duplicate_1_q\ <= NOT \shifts[6][4]~_Duplicate_1_q\;
\ALT_INV_shifts[6][3]~_Duplicate_1_q\ <= NOT \shifts[6][3]~_Duplicate_1_q\;
\ALT_INV_shifts[6][2]~_Duplicate_1_q\ <= NOT \shifts[6][2]~_Duplicate_1_q\;
\ALT_INV_shifts[6][1]~_Duplicate_1_q\ <= NOT \shifts[6][1]~_Duplicate_1_q\;
\ALT_INV_shifts[6][0]~_Duplicate_1_q\ <= NOT \shifts[6][0]~_Duplicate_1_q\;
\ALT_INV_shifts[5][15]~_Duplicate_1_q\ <= NOT \shifts[5][15]~_Duplicate_1_q\;
\ALT_INV_shifts[5][14]~_Duplicate_1_q\ <= NOT \shifts[5][14]~_Duplicate_1_q\;
\ALT_INV_shifts[5][13]~_Duplicate_1_q\ <= NOT \shifts[5][13]~_Duplicate_1_q\;
\ALT_INV_shifts[5][12]~_Duplicate_1_q\ <= NOT \shifts[5][12]~_Duplicate_1_q\;
\ALT_INV_shifts[5][11]~_Duplicate_1_q\ <= NOT \shifts[5][11]~_Duplicate_1_q\;
\ALT_INV_shifts[5][10]~_Duplicate_1_q\ <= NOT \shifts[5][10]~_Duplicate_1_q\;
\ALT_INV_shifts[5][9]~_Duplicate_1_q\ <= NOT \shifts[5][9]~_Duplicate_1_q\;
\ALT_INV_shifts[5][8]~_Duplicate_1_q\ <= NOT \shifts[5][8]~_Duplicate_1_q\;
\ALT_INV_shifts[5][7]~_Duplicate_1_q\ <= NOT \shifts[5][7]~_Duplicate_1_q\;
\ALT_INV_shifts[5][6]~_Duplicate_1_q\ <= NOT \shifts[5][6]~_Duplicate_1_q\;
\ALT_INV_shifts[5][5]~_Duplicate_1_q\ <= NOT \shifts[5][5]~_Duplicate_1_q\;
\ALT_INV_shifts[5][4]~_Duplicate_1_q\ <= NOT \shifts[5][4]~_Duplicate_1_q\;
\ALT_INV_shifts[5][3]~_Duplicate_1_q\ <= NOT \shifts[5][3]~_Duplicate_1_q\;
\ALT_INV_shifts[5][2]~_Duplicate_1_q\ <= NOT \shifts[5][2]~_Duplicate_1_q\;
\ALT_INV_shifts[5][1]~_Duplicate_1_q\ <= NOT \shifts[5][1]~_Duplicate_1_q\;
\ALT_INV_shifts[5][0]~_Duplicate_1_q\ <= NOT \shifts[5][0]~_Duplicate_1_q\;
\ALT_INV_shifts[4][15]~_Duplicate_1_q\ <= NOT \shifts[4][15]~_Duplicate_1_q\;
\ALT_INV_shifts[4][14]~_Duplicate_1_q\ <= NOT \shifts[4][14]~_Duplicate_1_q\;
\ALT_INV_shifts[4][13]~_Duplicate_1_q\ <= NOT \shifts[4][13]~_Duplicate_1_q\;
\ALT_INV_shifts[4][12]~_Duplicate_1_q\ <= NOT \shifts[4][12]~_Duplicate_1_q\;
\ALT_INV_shifts[4][11]~_Duplicate_1_q\ <= NOT \shifts[4][11]~_Duplicate_1_q\;
\ALT_INV_shifts[4][10]~_Duplicate_1_q\ <= NOT \shifts[4][10]~_Duplicate_1_q\;
\ALT_INV_shifts[4][9]~_Duplicate_1_q\ <= NOT \shifts[4][9]~_Duplicate_1_q\;
\ALT_INV_shifts[4][8]~_Duplicate_1_q\ <= NOT \shifts[4][8]~_Duplicate_1_q\;
\ALT_INV_shifts[4][7]~_Duplicate_1_q\ <= NOT \shifts[4][7]~_Duplicate_1_q\;
\ALT_INV_shifts[4][6]~_Duplicate_1_q\ <= NOT \shifts[4][6]~_Duplicate_1_q\;
\ALT_INV_shifts[4][5]~_Duplicate_1_q\ <= NOT \shifts[4][5]~_Duplicate_1_q\;
\ALT_INV_shifts[4][4]~_Duplicate_1_q\ <= NOT \shifts[4][4]~_Duplicate_1_q\;
\ALT_INV_shifts[4][3]~_Duplicate_1_q\ <= NOT \shifts[4][3]~_Duplicate_1_q\;
\ALT_INV_shifts[4][2]~_Duplicate_1_q\ <= NOT \shifts[4][2]~_Duplicate_1_q\;
\ALT_INV_shifts[4][1]~_Duplicate_1_q\ <= NOT \shifts[4][1]~_Duplicate_1_q\;
\ALT_INV_shifts[4][0]~_Duplicate_1_q\ <= NOT \shifts[4][0]~_Duplicate_1_q\;
\ALT_INV_shifts[3][15]~_Duplicate_1_q\ <= NOT \shifts[3][15]~_Duplicate_1_q\;
\ALT_INV_shifts[3][14]~_Duplicate_1_q\ <= NOT \shifts[3][14]~_Duplicate_1_q\;
\ALT_INV_shifts[3][13]~_Duplicate_1_q\ <= NOT \shifts[3][13]~_Duplicate_1_q\;
\ALT_INV_shifts[3][12]~_Duplicate_1_q\ <= NOT \shifts[3][12]~_Duplicate_1_q\;
\ALT_INV_shifts[3][11]~_Duplicate_1_q\ <= NOT \shifts[3][11]~_Duplicate_1_q\;
\ALT_INV_shifts[3][10]~_Duplicate_1_q\ <= NOT \shifts[3][10]~_Duplicate_1_q\;
\ALT_INV_shifts[3][9]~_Duplicate_1_q\ <= NOT \shifts[3][9]~_Duplicate_1_q\;
\ALT_INV_shifts[3][8]~_Duplicate_1_q\ <= NOT \shifts[3][8]~_Duplicate_1_q\;
\ALT_INV_shifts[3][7]~_Duplicate_1_q\ <= NOT \shifts[3][7]~_Duplicate_1_q\;
\ALT_INV_shifts[3][6]~_Duplicate_1_q\ <= NOT \shifts[3][6]~_Duplicate_1_q\;
\ALT_INV_shifts[3][5]~_Duplicate_1_q\ <= NOT \shifts[3][5]~_Duplicate_1_q\;
\ALT_INV_shifts[3][4]~_Duplicate_1_q\ <= NOT \shifts[3][4]~_Duplicate_1_q\;
\ALT_INV_shifts[3][3]~_Duplicate_1_q\ <= NOT \shifts[3][3]~_Duplicate_1_q\;
\ALT_INV_shifts[3][2]~_Duplicate_1_q\ <= NOT \shifts[3][2]~_Duplicate_1_q\;
\ALT_INV_shifts[3][1]~_Duplicate_1_q\ <= NOT \shifts[3][1]~_Duplicate_1_q\;
\ALT_INV_shifts[3][0]~_Duplicate_1_q\ <= NOT \shifts[3][0]~_Duplicate_1_q\;
\ALT_INV_shifts[2][15]~_Duplicate_1_q\ <= NOT \shifts[2][15]~_Duplicate_1_q\;
\ALT_INV_shifts[2][14]~_Duplicate_1_q\ <= NOT \shifts[2][14]~_Duplicate_1_q\;
\ALT_INV_shifts[2][13]~_Duplicate_1_q\ <= NOT \shifts[2][13]~_Duplicate_1_q\;
\ALT_INV_shifts[2][12]~_Duplicate_1_q\ <= NOT \shifts[2][12]~_Duplicate_1_q\;
\ALT_INV_shifts[2][11]~_Duplicate_1_q\ <= NOT \shifts[2][11]~_Duplicate_1_q\;
\ALT_INV_shifts[2][10]~_Duplicate_1_q\ <= NOT \shifts[2][10]~_Duplicate_1_q\;
\ALT_INV_shifts[2][9]~_Duplicate_1_q\ <= NOT \shifts[2][9]~_Duplicate_1_q\;
\ALT_INV_shifts[2][8]~_Duplicate_1_q\ <= NOT \shifts[2][8]~_Duplicate_1_q\;
\ALT_INV_shifts[2][7]~_Duplicate_1_q\ <= NOT \shifts[2][7]~_Duplicate_1_q\;
\ALT_INV_shifts[2][6]~_Duplicate_1_q\ <= NOT \shifts[2][6]~_Duplicate_1_q\;
\ALT_INV_shifts[2][5]~_Duplicate_1_q\ <= NOT \shifts[2][5]~_Duplicate_1_q\;
\ALT_INV_shifts[2][4]~_Duplicate_1_q\ <= NOT \shifts[2][4]~_Duplicate_1_q\;
\ALT_INV_shifts[2][3]~_Duplicate_1_q\ <= NOT \shifts[2][3]~_Duplicate_1_q\;
\ALT_INV_shifts[2][2]~_Duplicate_1_q\ <= NOT \shifts[2][2]~_Duplicate_1_q\;
\ALT_INV_shifts[2][1]~_Duplicate_1_q\ <= NOT \shifts[2][1]~_Duplicate_1_q\;
\ALT_INV_shifts[2][0]~_Duplicate_1_q\ <= NOT \shifts[2][0]~_Duplicate_1_q\;
\ALT_INV_shifts[1][15]~_Duplicate_1_q\ <= NOT \shifts[1][15]~_Duplicate_1_q\;
\ALT_INV_shifts[1][14]~_Duplicate_1_q\ <= NOT \shifts[1][14]~_Duplicate_1_q\;
\ALT_INV_shifts[1][13]~_Duplicate_1_q\ <= NOT \shifts[1][13]~_Duplicate_1_q\;
\ALT_INV_shifts[1][12]~_Duplicate_1_q\ <= NOT \shifts[1][12]~_Duplicate_1_q\;
\ALT_INV_shifts[1][11]~_Duplicate_1_q\ <= NOT \shifts[1][11]~_Duplicate_1_q\;
\ALT_INV_shifts[1][10]~_Duplicate_1_q\ <= NOT \shifts[1][10]~_Duplicate_1_q\;
\ALT_INV_shifts[1][9]~_Duplicate_1_q\ <= NOT \shifts[1][9]~_Duplicate_1_q\;
\ALT_INV_shifts[1][8]~_Duplicate_1_q\ <= NOT \shifts[1][8]~_Duplicate_1_q\;
\ALT_INV_shifts[1][7]~_Duplicate_1_q\ <= NOT \shifts[1][7]~_Duplicate_1_q\;
\ALT_INV_shifts[1][6]~_Duplicate_1_q\ <= NOT \shifts[1][6]~_Duplicate_1_q\;
\ALT_INV_shifts[1][5]~_Duplicate_1_q\ <= NOT \shifts[1][5]~_Duplicate_1_q\;
\ALT_INV_shifts[1][4]~_Duplicate_1_q\ <= NOT \shifts[1][4]~_Duplicate_1_q\;
\ALT_INV_shifts[1][3]~_Duplicate_1_q\ <= NOT \shifts[1][3]~_Duplicate_1_q\;
\ALT_INV_shifts[1][2]~_Duplicate_1_q\ <= NOT \shifts[1][2]~_Duplicate_1_q\;
\ALT_INV_shifts[1][1]~_Duplicate_1_q\ <= NOT \shifts[1][1]~_Duplicate_1_q\;
\ALT_INV_shifts[1][0]~_Duplicate_1_q\ <= NOT \shifts[1][0]~_Duplicate_1_q\;
\ALT_INV_shifts[0][15]~_Duplicate_1_q\ <= NOT \shifts[0][15]~_Duplicate_1_q\;
\ALT_INV_shifts[0][14]~_Duplicate_1_q\ <= NOT \shifts[0][14]~_Duplicate_1_q\;
\ALT_INV_shifts[0][13]~_Duplicate_1_q\ <= NOT \shifts[0][13]~_Duplicate_1_q\;
\ALT_INV_shifts[0][12]~_Duplicate_1_q\ <= NOT \shifts[0][12]~_Duplicate_1_q\;
\ALT_INV_shifts[0][11]~_Duplicate_1_q\ <= NOT \shifts[0][11]~_Duplicate_1_q\;
\ALT_INV_shifts[0][10]~_Duplicate_1_q\ <= NOT \shifts[0][10]~_Duplicate_1_q\;
\ALT_INV_shifts[0][9]~_Duplicate_1_q\ <= NOT \shifts[0][9]~_Duplicate_1_q\;
\ALT_INV_shifts[0][8]~_Duplicate_1_q\ <= NOT \shifts[0][8]~_Duplicate_1_q\;
\ALT_INV_shifts[0][7]~_Duplicate_1_q\ <= NOT \shifts[0][7]~_Duplicate_1_q\;
\ALT_INV_shifts[0][6]~_Duplicate_1_q\ <= NOT \shifts[0][6]~_Duplicate_1_q\;
\ALT_INV_shifts[0][5]~_Duplicate_1_q\ <= NOT \shifts[0][5]~_Duplicate_1_q\;
\ALT_INV_shifts[0][4]~_Duplicate_1_q\ <= NOT \shifts[0][4]~_Duplicate_1_q\;
\ALT_INV_shifts[0][3]~_Duplicate_1_q\ <= NOT \shifts[0][3]~_Duplicate_1_q\;
\ALT_INV_shifts[0][2]~_Duplicate_1_q\ <= NOT \shifts[0][2]~_Duplicate_1_q\;
\ALT_INV_shifts[0][1]~_Duplicate_1_q\ <= NOT \shifts[0][1]~_Duplicate_1_q\;
\ALT_INV_shifts[0][0]~_Duplicate_1_q\ <= NOT \shifts[0][0]~_Duplicate_1_q\;
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(25);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(24);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(23);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(22);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(21);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(20);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(19);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(18);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(17);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(16);
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15) <= NOT \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(15);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(30);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(29);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(28);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(27);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(26);
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25) <= NOT \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(25);

-- Location: IOOBUF_X26_Y0_N59
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~1_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X34_Y0_N76
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~5_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X32_Y0_N53
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~9_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X34_Y0_N93
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~13_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X38_Y0_N2
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~17_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X36_Y0_N19
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~21_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X40_Y0_N53
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~25_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X54_Y0_N2
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~29_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOOBUF_X28_Y0_N19
\data_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~33_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(8));

-- Location: IOOBUF_X34_Y0_N59
\data_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~37_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(9));

-- Location: IOOBUF_X36_Y0_N36
\data_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~41_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(10));

-- Location: IOOBUF_X38_Y0_N19
\data_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~45_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(11));

-- Location: IOOBUF_X32_Y0_N36
\data_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~49_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(12));

-- Location: IOOBUF_X40_Y0_N2
\data_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~53_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(13));

-- Location: IOOBUF_X30_Y0_N53
\data_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~57_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(14));

-- Location: IOOBUF_X36_Y0_N53
\data_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~61_sumout\,
	devoe => ww_devoe,
	o => ww_data_out(15));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X34_Y0_N41
\filter_en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_filter_en,
	o => \filter_en~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\KEY~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY,
	o => \KEY~input_o\);

-- Location: MLABCELL_X28_Y5_N6
\key0_d1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key0_d1~feeder_combout\ = ( \KEY~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY~input_o\,
	combout => \key0_d1~feeder_combout\);

-- Location: FF_X28_Y5_N8
key0_d1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \key0_d1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_d1~q\);

-- Location: MLABCELL_X28_Y5_N39
\key0_d2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key0_d2~feeder_combout\ = \key0_d1~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d1~q\,
	combout => \key0_d2~feeder_combout\);

-- Location: FF_X28_Y5_N40
key0_d2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \key0_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_d2~q\);

-- Location: FF_X34_Y6_N53
key0_d3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \key0_d2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0_d3~q\);

-- Location: MLABCELL_X34_Y6_N6
\shifts[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][0]~0_combout\ = ( \key0_d3~q\ & ( \filter_en~input_o\ ) ) # ( !\key0_d3~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_filter_en~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][0]~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: MLABCELL_X28_Y6_N54
\shifts[0][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][0]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[0]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][0]~SCLR_LUT_combout\);

-- Location: IOIBUF_X38_Y0_N52
\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: MLABCELL_X34_Y6_N9
\shifts[0][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][1]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[1]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][1]~SCLR_LUT_combout\);

-- Location: IOIBUF_X50_Y0_N41
\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LABCELL_X30_Y6_N3
\shifts[0][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][2]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[2]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][2]~SCLR_LUT_combout\);

-- Location: IOIBUF_X36_Y0_N1
\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LABCELL_X33_Y4_N45
\shifts[0][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[3]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][3]~SCLR_LUT_combout\);

-- Location: IOIBUF_X26_Y0_N41
\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LABCELL_X33_Y4_N9
\shifts[0][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][4]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[4]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][4]~SCLR_LUT_combout\);

-- Location: IOIBUF_X30_Y0_N35
\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LABCELL_X30_Y6_N6
\shifts[0][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][5]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[5]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][5]~SCLR_LUT_combout\);

-- Location: IOIBUF_X26_Y0_N92
\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: MLABCELL_X28_Y6_N33
\shifts[0][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][6]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[6]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][6]~SCLR_LUT_combout\);

-- Location: IOIBUF_X28_Y0_N35
\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LABCELL_X30_Y6_N24
\shifts[0][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][7]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[7]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][7]~SCLR_LUT_combout\);

-- Location: IOIBUF_X30_Y0_N1
\data_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: LABCELL_X30_Y6_N18
\shifts[0][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][8]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[8]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][8]~SCLR_LUT_combout\);

-- Location: IOIBUF_X32_Y0_N18
\data_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: MLABCELL_X34_Y4_N15
\shifts[0][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][9]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_in[9]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][9]~SCLR_LUT_combout\);

-- Location: IOIBUF_X40_Y0_N35
\data_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: MLABCELL_X34_Y5_N0
\shifts[0][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][10]~SCLR_LUT_combout\ = ( \data_in[10]~input_o\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_data_in[10]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][10]~SCLR_LUT_combout\);

-- Location: IOIBUF_X24_Y0_N52
\data_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: LABCELL_X30_Y6_N39
\shifts[0][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data_in[11]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][11]~SCLR_LUT_combout\);

-- Location: IOIBUF_X32_Y0_N1
\data_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: LABCELL_X33_Y4_N48
\shifts[0][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][12]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[12]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][12]~SCLR_LUT_combout\);

-- Location: IOIBUF_X38_Y0_N35
\data_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: LABCELL_X36_Y6_N27
\shifts[0][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][13]~SCLR_LUT_combout\ = ( \data_in[13]~input_o\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_data_in[13]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][13]~SCLR_LUT_combout\);

-- Location: IOIBUF_X26_Y0_N75
\data_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: MLABCELL_X28_Y6_N48
\shifts[0][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][14]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[14]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][14]~SCLR_LUT_combout\);

-- Location: IOIBUF_X30_Y0_N18
\data_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: LABCELL_X31_Y4_N24
\shifts[0][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[0][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \data_in[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data_in[15]~input_o\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[0][15]~SCLR_LUT_combout\);

-- Location: DSP_X20_Y2_N0
\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: FF_X28_Y6_N14
\shifts[0][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[0][0]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][0]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N27
\shifts[1][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][0]~SCLR_LUT_combout\ = ( \shifts[0][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][0]~_Duplicate_1_q\,
	combout => \shifts[1][0]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N28
\shifts[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][0]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N12
\shifts[2][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][0]~SCLR_LUT_combout\ = ( \shifts[1][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][0]~_Duplicate_1_q\,
	combout => \shifts[2][0]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N13
\shifts[2][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][0]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N15
\shifts[3][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][0]~SCLR_LUT_combout\ = ( \shifts[2][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][0]~_Duplicate_1_q\,
	combout => \shifts[3][0]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N16
\shifts[3][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][0]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N15
\shifts[4][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][0]~SCLR_LUT_combout\ = ( \shifts[3][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][0]~_Duplicate_1_q\,
	combout => \shifts[4][0]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N5
\shifts[4][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[4][0]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][0]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N0
\shifts[5][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][0]~SCLR_LUT_combout\ = (\shifts[4][0]~_Duplicate_1_q\ & \key0_d3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[4][0]~_Duplicate_1_q\,
	datac => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][0]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N1
\shifts[5][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][0]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N3
\shifts[6][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][0]~SCLR_LUT_combout\ = ( \shifts[5][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[5][0]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[6][0]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N5
\shifts[6][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][0]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N45
\shifts[7][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][0]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[6][0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	datac => \ALT_INV_shifts[6][0]~_Duplicate_1_q\,
	combout => \shifts[7][0]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N46
\shifts[7][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][0]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N0
\shifts[8][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][0]~SCLR_LUT_combout\ = ( \shifts[7][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[7][0]~_Duplicate_1_q\,
	combout => \shifts[8][0]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N2
\shifts[8][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][0]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N3
\shifts[9][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][0]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][0]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[8][0]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][0]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N5
\shifts[9][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[9][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][0]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N30
\shifts[10][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][0]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][0]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[9][0]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[10][0]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N31
\shifts[10][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][0]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N51
\shifts[11][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][0]~SCLR_LUT_combout\ = ( \shifts[10][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][0]~_Duplicate_1_q\,
	combout => \shifts[11][0]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N49
\shifts[11][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][0]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][0]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y8_N24
\shifts[12][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][0]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[11][0]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][0]~_Duplicate_1_q\,
	combout => \shifts[12][0]~SCLR_LUT_combout\);

-- Location: MLABCELL_X34_Y8_N51
\shifts[12][0]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][0]~_Duplicate_1feeder_combout\ = ( \shifts[12][0]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[12][0]~SCLR_LUT_combout\,
	combout => \shifts[12][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X34_Y8_N52
\shifts[12][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][0]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][0]~_Duplicate_1_q\);

-- Location: LABCELL_X29_Y6_N27
\shifts[13][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][0]~SCLR_LUT_combout\ = ( \shifts[12][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][0]~_Duplicate_1_q\,
	combout => \shifts[13][0]~SCLR_LUT_combout\);

-- Location: FF_X29_Y6_N29
\shifts[13][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][0]~_Duplicate_1_q\);

-- Location: LABCELL_X29_Y6_N33
\shifts[14][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][0]~SCLR_LUT_combout\ = ( \shifts[13][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[13][0]~_Duplicate_1_q\,
	combout => \shifts[14][0]~SCLR_LUT_combout\);

-- Location: FF_X29_Y6_N35
\shifts[14][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[14][0]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][0]~_Duplicate_1_q\);

-- Location: MLABCELL_X28_Y6_N12
\shifts[15][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][0]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][0]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[14][0]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][0]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y6_N39
\shifts[15][0]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][0]~_Duplicate_1feeder_combout\ = ( \shifts[15][0]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[15][0]~SCLR_LUT_combout\,
	combout => \shifts[15][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X28_Y6_N40
\shifts[15][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[15][0]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][0]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y8_N15
\shifts[16][0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][0]~SCLR_LUT_combout\ = ( \shifts[15][0]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][0]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][0]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N55
\shifts[0][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[0][1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][1]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N15
\shifts[1][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][1]~SCLR_LUT_combout\ = ( \shifts[0][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][1]~_Duplicate_1_q\,
	combout => \shifts[1][1]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N16
\shifts[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][1]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N54
\shifts[2][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][1]~SCLR_LUT_combout\ = ( \shifts[1][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][1]~_Duplicate_1_q\,
	combout => \shifts[2][1]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N19
\shifts[2][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[2][1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][1]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N15
\shifts[3][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][1]~SCLR_LUT_combout\ = ( \shifts[2][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][1]~_Duplicate_1_q\,
	combout => \shifts[3][1]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N16
\shifts[3][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][1]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N57
\shifts[4][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][1]~SCLR_LUT_combout\ = ( \shifts[3][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][1]~_Duplicate_1_q\,
	combout => \shifts[4][1]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N58
\shifts[4][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[4][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][1]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N42
\shifts[5][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][1]~SCLR_LUT_combout\ = ( \shifts[4][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[4][1]~_Duplicate_1_q\,
	combout => \shifts[5][1]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N43
\shifts[5][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][1]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N42
\shifts[6][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][1]~SCLR_LUT_combout\ = ( \shifts[5][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][1]~_Duplicate_1_q\,
	combout => \shifts[6][1]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N43
\shifts[6][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][1]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N51
\shifts[7][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][1]~SCLR_LUT_combout\ = ( \shifts[6][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[6][1]~_Duplicate_1_q\,
	combout => \shifts[7][1]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N53
\shifts[7][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][1]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N48
\shifts[8][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][1]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][1]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[7][1]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][1]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N50
\shifts[8][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][1]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N36
\shifts[9][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][1]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][1]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[8][1]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][1]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N56
\shifts[9][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][1]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N15
\shifts[10][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][1]~SCLR_LUT_combout\ = ( \shifts[9][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[9][1]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[10][1]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N17
\shifts[10][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[10][1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][1]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N30
\shifts[11][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][1]~SCLR_LUT_combout\ = ( \shifts[10][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][1]~_Duplicate_1_q\,
	combout => \shifts[11][1]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N4
\shifts[11][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][1]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N12
\shifts[12][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][1]~SCLR_LUT_combout\ = ( \shifts[11][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][1]~_Duplicate_1_q\,
	combout => \shifts[12][1]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N13
\shifts[12][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][1]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N57
\shifts[13][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][1]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[12][1]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][1]~_Duplicate_1_q\,
	combout => \shifts[13][1]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N58
\shifts[13][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][1]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][1]~_Duplicate_1_q\);

-- Location: LABCELL_X29_Y6_N42
\shifts[14][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][1]~SCLR_LUT_combout\ = ( \shifts[13][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[13][1]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][1]~SCLR_LUT_combout\);

-- Location: LABCELL_X29_Y6_N39
\shifts[14][1]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][1]~_Duplicate_1feeder_combout\ = ( \shifts[14][1]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[14][1]~SCLR_LUT_combout\,
	combout => \shifts[14][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X29_Y6_N41
\shifts[14][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[14][1]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][1]~_Duplicate_1_q\);

-- Location: MLABCELL_X28_Y10_N18
\shifts[15][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][1]~SCLR_LUT_combout\ = ( \shifts[14][1]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[14][1]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][1]~SCLR_LUT_combout\);

-- Location: MLABCELL_X28_Y10_N36
\shifts[15][1]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][1]~_Duplicate_1feeder_combout\ = ( \shifts[15][1]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[15][1]~SCLR_LUT_combout\,
	combout => \shifts[15][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X28_Y10_N38
\shifts[15][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[15][1]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][1]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N0
\shifts[16][1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][1]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[15][1]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[15][1]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][1]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N4
\shifts[0][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][2]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][2]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N0
\shifts[1][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][2]~SCLR_LUT_combout\ = ( \shifts[0][2]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][2]~_Duplicate_1_q\,
	combout => \shifts[1][2]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N1
\shifts[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][2]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][2]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N3
\shifts[2][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][2]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[1][2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[1][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[2][2]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N5
\shifts[2][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][2]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][2]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N0
\shifts[3][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][2]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[2][2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[2][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[3][2]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N2
\shifts[3][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][2]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][2]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N33
\shifts[4][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][2]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[3][2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[3][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[4][2]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N34
\shifts[4][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[4][2]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][2]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N27
\shifts[5][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][2]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[4][2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[4][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][2]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N7
\shifts[5][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[5][2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][2]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y6_N45
\shifts[6][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][2]~SCLR_LUT_combout\ = ( \shifts[5][2]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[5][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[6][2]~SCLR_LUT_combout\);

-- Location: FF_X37_Y6_N43
\shifts[6][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[6][2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][2]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N18
\shifts[7][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][2]~SCLR_LUT_combout\ = ( \shifts[6][2]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[6][2]~_Duplicate_1_q\,
	combout => \shifts[7][2]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N20
\shifts[7][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][2]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][2]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N21
\shifts[8][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][2]~SCLR_LUT_combout\ = ( \shifts[7][2]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[7][2]~_Duplicate_1_q\,
	combout => \shifts[8][2]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N23
\shifts[8][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][2]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][2]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N57
\shifts[9][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][2]~SCLR_LUT_combout\ = ( \shifts[8][2]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[8][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][2]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N41
\shifts[9][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][2]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N24
\shifts[10][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][2]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][2]~_Duplicate_1_q\,
	combout => \shifts[10][2]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N25
\shifts[10][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][2]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][2]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N9
\shifts[11][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][2]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[10][2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[10][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[11][2]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N35
\shifts[11][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][2]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N3
\shifts[12][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][2]~SCLR_LUT_combout\ = ( \shifts[11][2]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][2]~_Duplicate_1_q\,
	combout => \shifts[12][2]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N1
\shifts[12][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[12][2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][2]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N6
\shifts[13][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][2]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[12][2]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	datac => \ALT_INV_shifts[12][2]~_Duplicate_1_q\,
	combout => \shifts[13][2]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N19
\shifts[13][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[13][2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][2]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N57
\shifts[14][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][2]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[13][2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[13][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][2]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N32
\shifts[14][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][2]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N24
\shifts[15][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][2]~SCLR_LUT_combout\ = ( \shifts[14][2]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[14][2]~_Duplicate_1_q\,
	combout => \shifts[15][2]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N44
\shifts[15][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][2]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N30
\shifts[16][2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][2]~SCLR_LUT_combout\ = ( \shifts[15][2]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][2]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][2]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N26
\shifts[0][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[0][3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][3]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N27
\shifts[1][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[0][3]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][3]~_Duplicate_1_q\,
	combout => \shifts[1][3]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N29
\shifts[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][3]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N42
\shifts[2][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[1][3]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[1][3]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[2][3]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N43
\shifts[2][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][3]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N12
\shifts[3][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][3]~SCLR_LUT_combout\ = ( \shifts[2][3]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][3]~_Duplicate_1_q\,
	combout => \shifts[3][3]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N14
\shifts[3][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][3]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N15
\shifts[4][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[3][3]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[3][3]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[4][3]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N17
\shifts[4][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[4][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][3]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N51
\shifts[5][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][3]~SCLR_LUT_combout\ = ( \shifts[4][3]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[4][3]~_Duplicate_1_q\,
	combout => \shifts[5][3]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N53
\shifts[5][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][3]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y6_N27
\shifts[6][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][3]~SCLR_LUT_combout\ = ( \shifts[5][3]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[5][3]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[6][3]~SCLR_LUT_combout\);

-- Location: FF_X37_Y6_N29
\shifts[6][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][3]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N48
\shifts[7][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][3]~SCLR_LUT_combout\ = ( \shifts[6][3]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[6][3]~_Duplicate_1_q\,
	combout => \shifts[7][3]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N2
\shifts[7][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[7][3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][3]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N3
\shifts[8][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][3]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[7][3]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][3]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y5_N6
\shifts[8][3]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][3]~_Duplicate_1feeder_combout\ = ( \shifts[8][3]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[8][3]~SCLR_LUT_combout\,
	combout => \shifts[8][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y5_N7
\shifts[8][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][3]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][3]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N12
\shifts[9][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][3]~SCLR_LUT_combout\ = ( \shifts[8][3]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[8][3]~_Duplicate_1_q\,
	combout => \shifts[9][3]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N23
\shifts[9][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][3]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N30
\shifts[10][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][3]~SCLR_LUT_combout\ = ( \shifts[9][3]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][3]~_Duplicate_1_q\,
	combout => \shifts[10][3]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N31
\shifts[10][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][3]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N30
\shifts[11][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][3]~SCLR_LUT_combout\ = ( \shifts[10][3]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][3]~_Duplicate_1_q\,
	combout => \shifts[11][3]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N22
\shifts[11][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][3]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y10_N15
\shifts[12][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[11][3]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[11][3]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[12][3]~SCLR_LUT_combout\);

-- Location: FF_X31_Y10_N17
\shifts[12][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][3]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y8_N27
\shifts[13][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[12][3]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][3]~_Duplicate_1_q\,
	combout => \shifts[13][3]~SCLR_LUT_combout\);

-- Location: FF_X30_Y8_N28
\shifts[13][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][3]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][3]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y8_N54
\shifts[14][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[13][3]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[13][3]~_Duplicate_1_q\,
	combout => \shifts[14][3]~SCLR_LUT_combout\);

-- Location: FF_X30_Y8_N43
\shifts[14][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][3]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N36
\shifts[15][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][3]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][3]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shifts[14][3]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][3]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N40
\shifts[15][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][3]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N24
\shifts[16][3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][3]~SCLR_LUT_combout\ = ( \shifts[15][3]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][3]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][3]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N11
\shifts[0][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][4]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][4]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N6
\shifts[1][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][4]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[0][4]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shifts[0][4]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[1][4]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N19
\shifts[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[1][4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][4]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N36
\shifts[2][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][4]~SCLR_LUT_combout\ = ( \shifts[1][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][4]~_Duplicate_1_q\,
	combout => \shifts[2][4]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N37
\shifts[2][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][4]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][4]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N39
\shifts[3][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][4]~SCLR_LUT_combout\ = ( \shifts[2][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][4]~_Duplicate_1_q\,
	combout => \shifts[3][4]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N41
\shifts[3][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][4]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][4]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N18
\shifts[4][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][4]~SCLR_LUT_combout\ = ( \shifts[3][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][4]~_Duplicate_1_q\,
	combout => \shifts[4][4]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N5
\shifts[4][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[4][4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][4]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N36
\shifts[5][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][4]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[4][4]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[4][4]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][4]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N58
\shifts[5][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[5][4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][4]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N42
\shifts[6][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][4]~SCLR_LUT_combout\ = ( \shifts[5][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][4]~_Duplicate_1_q\,
	combout => \shifts[6][4]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N44
\shifts[6][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][4]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][4]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N45
\shifts[7][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][4]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[6][4]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[6][4]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[7][4]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N47
\shifts[7][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][4]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][4]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N54
\shifts[8][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][4]~SCLR_LUT_combout\ = ( \shifts[7][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[7][4]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][4]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N53
\shifts[8][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[8][4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][4]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N30
\shifts[9][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][4]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][4]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[8][4]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][4]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N25
\shifts[9][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][4]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N9
\shifts[10][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][4]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][4]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][4]~_Duplicate_1_q\,
	combout => \shifts[10][4]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N11
\shifts[10][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][4]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][4]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N33
\shifts[11][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][4]~SCLR_LUT_combout\ = ( \shifts[10][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][4]~_Duplicate_1_q\,
	combout => \shifts[11][4]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N29
\shifts[11][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][4]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y9_N48
\shifts[12][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][4]~SCLR_LUT_combout\ = ( \shifts[11][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][4]~_Duplicate_1_q\,
	combout => \shifts[12][4]~SCLR_LUT_combout\);

-- Location: FF_X33_Y9_N50
\shifts[12][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][4]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][4]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y9_N51
\shifts[13][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][4]~SCLR_LUT_combout\ = ( \shifts[12][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][4]~_Duplicate_1_q\,
	combout => \shifts[13][4]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y9_N30
\shifts[13][4]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][4]~_Duplicate_1feeder_combout\ = ( \shifts[13][4]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[13][4]~SCLR_LUT_combout\,
	combout => \shifts[13][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y9_N32
\shifts[13][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][4]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][4]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N57
\shifts[14][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][4]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[13][4]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[13][4]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][4]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N56
\shifts[14][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][4]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N0
\shifts[15][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][4]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][4]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[14][4]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][4]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N5
\shifts[15][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][4]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N9
\shifts[16][4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][4]~SCLR_LUT_combout\ = ( \shifts[15][4]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][4]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][4]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N7
\shifts[0][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][5]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N9
\shifts[1][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][5]~SCLR_LUT_combout\ = ( \shifts[0][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][5]~_Duplicate_1_q\,
	combout => \shifts[1][5]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N10
\shifts[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N51
\shifts[2][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][5]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[1][5]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][5]~_Duplicate_1_q\,
	combout => \shifts[2][5]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N49
\shifts[2][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[2][5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][5]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N48
\shifts[3][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][5]~SCLR_LUT_combout\ = ( \shifts[2][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][5]~_Duplicate_1_q\,
	combout => \shifts[3][5]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N41
\shifts[3][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[3][5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][5]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N18
\shifts[4][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][5]~SCLR_LUT_combout\ = ( \shifts[3][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][5]~_Duplicate_1_q\,
	combout => \shifts[4][5]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N19
\shifts[4][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[4][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][5]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N0
\shifts[5][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][5]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[4][5]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	datac => \ALT_INV_shifts[4][5]~_Duplicate_1_q\,
	combout => \shifts[5][5]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N25
\shifts[5][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[5][5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][5]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N51
\shifts[6][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][5]~SCLR_LUT_combout\ = ( \shifts[5][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][5]~_Duplicate_1_q\,
	combout => \shifts[6][5]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N52
\shifts[6][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N39
\shifts[7][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][5]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[6][5]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	datac => \ALT_INV_shifts[6][5]~_Duplicate_1_q\,
	combout => \shifts[7][5]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N41
\shifts[7][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N3
\shifts[8][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][5]~SCLR_LUT_combout\ = ( \shifts[7][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[7][5]~_Duplicate_1_q\,
	combout => \shifts[8][5]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N16
\shifts[8][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[8][5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N21
\shifts[9][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][5]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][5]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[8][5]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][5]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N34
\shifts[9][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N27
\shifts[10][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][5]~SCLR_LUT_combout\ = ( \shifts[9][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][5]~_Duplicate_1_q\,
	combout => \shifts[10][5]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N28
\shifts[10][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N24
\shifts[11][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][5]~SCLR_LUT_combout\ = ( \shifts[10][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][5]~_Duplicate_1_q\,
	combout => \shifts[11][5]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N26
\shifts[11][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[11][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N33
\shifts[12][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][5]~SCLR_LUT_combout\ = ( \shifts[11][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][5]~_Duplicate_1_q\,
	combout => \shifts[12][5]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N58
\shifts[12][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[12][5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][5]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N51
\shifts[13][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][5]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[12][5]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][5]~_Duplicate_1_q\,
	combout => \shifts[13][5]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N52
\shifts[13][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][5]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y8_N51
\shifts[14][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][5]~SCLR_LUT_combout\ = ( \shifts[13][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[13][5]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][5]~SCLR_LUT_combout\);

-- Location: FF_X30_Y8_N52
\shifts[14][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[14][5]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N30
\shifts[15][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][5]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][5]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[14][5]~_Duplicate_1_q\,
	combout => \shifts[15][5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N9
\shifts[15][5]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][5]~_Duplicate_1feeder_combout\ = ( \shifts[15][5]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[15][5]~SCLR_LUT_combout\,
	combout => \shifts[15][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X31_Y8_N10
\shifts[15][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[15][5]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][5]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N36
\shifts[16][5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][5]~SCLR_LUT_combout\ = ( \shifts[15][5]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][5]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][5]~SCLR_LUT_combout\);

-- Location: FF_X28_Y6_N34
\shifts[0][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][6]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][6]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N18
\shifts[1][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][6]~SCLR_LUT_combout\ = ( \shifts[0][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][6]~_Duplicate_1_q\,
	combout => \shifts[1][6]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N19
\shifts[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][6]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][6]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N54
\shifts[2][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][6]~SCLR_LUT_combout\ = ( \shifts[1][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][6]~_Duplicate_1_q\,
	combout => \shifts[2][6]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N56
\shifts[2][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][6]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][6]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N57
\shifts[3][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][6]~SCLR_LUT_combout\ = ( \shifts[2][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][6]~_Duplicate_1_q\,
	combout => \shifts[3][6]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N22
\shifts[3][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[3][6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][6]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N36
\shifts[4][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][6]~SCLR_LUT_combout\ = ( \shifts[3][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][6]~_Duplicate_1_q\,
	combout => \shifts[4][6]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N31
\shifts[4][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[4][6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][6]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y6_N51
\shifts[5][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][6]~SCLR_LUT_combout\ = ( \shifts[4][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[4][6]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][6]~SCLR_LUT_combout\);

-- Location: FF_X37_Y6_N49
\shifts[5][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[5][6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][6]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y6_N57
\shifts[6][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][6]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[5][6]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][6]~_Duplicate_1_q\,
	combout => \shifts[6][6]~SCLR_LUT_combout\);

-- Location: FF_X37_Y6_N59
\shifts[6][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][6]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][6]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N9
\shifts[7][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][6]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[6][6]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[6][6]~_Duplicate_1_q\,
	datae => \ALT_INV_key0_d3~q\,
	combout => \shifts[7][6]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N11
\shifts[7][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][6]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][6]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N42
\shifts[8][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][6]~SCLR_LUT_combout\ = ( \shifts[7][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[7][6]~_Duplicate_1_q\,
	combout => \shifts[8][6]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N44
\shifts[8][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][6]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][6]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y8_N21
\shifts[9][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][6]~SCLR_LUT_combout\ = ( \shifts[8][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[8][6]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][6]~SCLR_LUT_combout\);

-- Location: FF_X37_Y8_N26
\shifts[9][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][6]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y8_N6
\shifts[10][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][6]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][6]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[9][6]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[10][6]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N59
\shifts[10][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[10][6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][6]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N24
\shifts[11][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][6]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[10][6]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	datac => \ALT_INV_shifts[10][6]~_Duplicate_1_q\,
	combout => \shifts[11][6]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N29
\shifts[11][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][6]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N42
\shifts[12][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][6]~SCLR_LUT_combout\ = ( \shifts[11][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][6]~_Duplicate_1_q\,
	combout => \shifts[12][6]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N43
\shifts[12][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][6]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][6]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N18
\shifts[13][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][6]~SCLR_LUT_combout\ = ( \shifts[12][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[12][6]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[13][6]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N49
\shifts[13][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[13][6]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][6]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y10_N24
\shifts[14][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][6]~SCLR_LUT_combout\ = ( \shifts[13][6]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[13][6]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][6]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y10_N6
\shifts[14][6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][6]~_Duplicate_1feeder_combout\ = ( \shifts[14][6]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[14][6]~SCLR_LUT_combout\,
	combout => \shifts[14][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X31_Y10_N8
\shifts[14][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[14][6]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][6]~_Duplicate_1_q\);

-- Location: MLABCELL_X25_Y6_N51
\shifts[15][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][6]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][6]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[14][6]~_Duplicate_1_q\,
	combout => \shifts[15][6]~SCLR_LUT_combout\);

-- Location: MLABCELL_X25_Y6_N24
\shifts[15][6]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][6]~_Duplicate_1feeder_combout\ = ( \shifts[15][6]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[15][6]~SCLR_LUT_combout\,
	combout => \shifts[15][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X25_Y6_N26
\shifts[15][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[15][6]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][6]~_Duplicate_1_q\);

-- Location: MLABCELL_X25_Y6_N30
\shifts[16][6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][6]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[15][6]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[15][6]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][6]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N25
\shifts[0][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][7]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N30
\shifts[1][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][7]~SCLR_LUT_combout\ = ( \shifts[0][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][7]~_Duplicate_1_q\,
	combout => \shifts[1][7]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N37
\shifts[1][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[1][7]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][7]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N12
\shifts[2][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][7]~SCLR_LUT_combout\ = ( \shifts[1][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][7]~_Duplicate_1_q\,
	combout => \shifts[2][7]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N14
\shifts[2][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][7]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N6
\shifts[3][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][7]~SCLR_LUT_combout\ = ( \shifts[2][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][7]~_Duplicate_1_q\,
	combout => \shifts[3][7]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N59
\shifts[3][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[3][7]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][7]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N24
\shifts[4][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][7]~SCLR_LUT_combout\ = ( \shifts[3][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][7]~_Duplicate_1_q\,
	combout => \shifts[4][7]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N26
\shifts[4][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[4][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][7]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N33
\shifts[5][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][7]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[4][7]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[4][7]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][7]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N35
\shifts[5][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][7]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N39
\shifts[6][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][7]~SCLR_LUT_combout\ = ( \shifts[5][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][7]~_Duplicate_1_q\,
	combout => \shifts[6][7]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N41
\shifts[6][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][7]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N36
\shifts[7][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][7]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[6][7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	datab => \ALT_INV_shifts[6][7]~_Duplicate_1_q\,
	combout => \shifts[7][7]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N38
\shifts[7][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][7]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y6_N21
\shifts[8][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][7]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][7]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[7][7]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][7]~SCLR_LUT_combout\);

-- Location: FF_X37_Y6_N5
\shifts[8][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[8][7]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][7]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y6_N36
\shifts[9][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][7]~SCLR_LUT_combout\ = ( \shifts[8][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[8][7]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][7]~SCLR_LUT_combout\);

-- Location: FF_X37_Y6_N31
\shifts[9][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][7]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][7]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y6_N15
\shifts[10][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][7]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][7]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][7]~_Duplicate_1_q\,
	combout => \shifts[10][7]~SCLR_LUT_combout\);

-- Location: FF_X37_Y6_N17
\shifts[10][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][7]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N57
\shifts[11][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][7]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[10][7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	datad => \ALT_INV_shifts[10][7]~_Duplicate_1_q\,
	combout => \shifts[11][7]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N59
\shifts[11][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[11][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][7]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N12
\shifts[12][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][7]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[11][7]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[11][7]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[12][7]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N13
\shifts[12][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][7]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N18
\shifts[13][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][7]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[12][7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	datac => \ALT_INV_shifts[12][7]~_Duplicate_1_q\,
	combout => \shifts[13][7]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N10
\shifts[13][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[13][7]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][7]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N45
\shifts[14][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][7]~SCLR_LUT_combout\ = ( \shifts[13][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[13][7]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][7]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N46
\shifts[14][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[14][7]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][7]~_Duplicate_1_q\);

-- Location: LABCELL_X29_Y6_N3
\shifts[15][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][7]~SCLR_LUT_combout\ = ( \shifts[14][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[14][7]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][7]~SCLR_LUT_combout\);

-- Location: FF_X29_Y6_N13
\shifts[15][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][7]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][7]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y10_N39
\shifts[16][7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][7]~SCLR_LUT_combout\ = ( \shifts[15][7]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][7]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][7]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N20
\shifts[0][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][8]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N21
\shifts[1][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][8]~SCLR_LUT_combout\ = ( \shifts[0][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][8]~_Duplicate_1_q\,
	combout => \shifts[1][8]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N34
\shifts[1][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[1][8]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N48
\shifts[2][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][8]~SCLR_LUT_combout\ = ( \shifts[1][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[1][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[2][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N50
\shifts[2][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N57
\shifts[3][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][8]~SCLR_LUT_combout\ = (\shifts[2][8]~_Duplicate_1_q\ & \key0_d3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[2][8]~_Duplicate_1_q\,
	datab => \ALT_INV_key0_d3~q\,
	combout => \shifts[3][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N58
\shifts[3][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N54
\shifts[4][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][8]~SCLR_LUT_combout\ = ( \shifts[3][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][8]~_Duplicate_1_q\,
	combout => \shifts[4][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N55
\shifts[4][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[4][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N42
\shifts[5][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][8]~SCLR_LUT_combout\ = ( \shifts[4][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[4][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N43
\shifts[5][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N15
\shifts[6][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][8]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[5][8]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][8]~_Duplicate_1_q\,
	combout => \shifts[6][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N16
\shifts[6][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N27
\shifts[7][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][8]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[6][8]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[6][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[7][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N14
\shifts[7][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[7][8]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N57
\shifts[8][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][8]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][8]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[7][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N55
\shifts[8][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[8][8]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N51
\shifts[9][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][8]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][8]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[8][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N29
\shifts[9][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][8]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N15
\shifts[10][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][8]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][8]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[9][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[10][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N17
\shifts[10][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N0
\shifts[11][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][8]~SCLR_LUT_combout\ = ( \shifts[10][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][8]~_Duplicate_1_q\,
	combout => \shifts[11][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N44
\shifts[11][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][8]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N45
\shifts[12][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][8]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[11][8]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[11][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[12][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N46
\shifts[12][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][8]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N39
\shifts[13][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][8]~SCLR_LUT_combout\ = ( \shifts[12][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][8]~_Duplicate_1_q\,
	combout => \shifts[13][8]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N40
\shifts[13][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][8]~_Duplicate_1_q\);

-- Location: LABCELL_X29_Y6_N57
\shifts[14][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][8]~SCLR_LUT_combout\ = ( \shifts[13][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[13][8]~_Duplicate_1_q\,
	combout => \shifts[14][8]~SCLR_LUT_combout\);

-- Location: FF_X29_Y6_N59
\shifts[14][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[14][8]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][8]~_Duplicate_1_q\);

-- Location: MLABCELL_X25_Y6_N54
\shifts[15][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][8]~SCLR_LUT_combout\ = ( \shifts[14][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[14][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][8]~SCLR_LUT_combout\);

-- Location: FF_X25_Y6_N38
\shifts[15][8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][8]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][8]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N54
\shifts[16][8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][8]~SCLR_LUT_combout\ = ( \shifts[15][8]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][8]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][8]~SCLR_LUT_combout\);

-- Location: FF_X34_Y4_N17
\shifts[0][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][9]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y4_N9
\shifts[1][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][9]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[0][9]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[0][9]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[1][9]~SCLR_LUT_combout\);

-- Location: FF_X34_Y4_N7
\shifts[1][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[1][9]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N57
\shifts[2][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][9]~SCLR_LUT_combout\ = ( \shifts[1][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][9]~_Duplicate_1_q\,
	combout => \shifts[2][9]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N59
\shifts[2][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N54
\shifts[3][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][9]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[2][9]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shifts[2][9]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[3][9]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N56
\shifts[3][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y4_N21
\shifts[4][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][9]~SCLR_LUT_combout\ = ( \shifts[3][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][9]~_Duplicate_1_q\,
	combout => \shifts[4][9]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N23
\shifts[4][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[4][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N9
\shifts[5][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][9]~SCLR_LUT_combout\ = ( \shifts[4][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[4][9]~_Duplicate_1_q\,
	combout => \shifts[5][9]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N10
\shifts[5][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][9]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N39
\shifts[6][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][9]~SCLR_LUT_combout\ = ( \shifts[5][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][9]~_Duplicate_1_q\,
	combout => \shifts[6][9]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N41
\shifts[6][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][9]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N21
\shifts[7][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][9]~SCLR_LUT_combout\ = ( \shifts[6][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[6][9]~_Duplicate_1_q\,
	combout => \shifts[7][9]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N14
\shifts[7][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[7][9]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][9]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N57
\shifts[8][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][9]~SCLR_LUT_combout\ = ( \shifts[7][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[7][9]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][9]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N7
\shifts[8][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[8][9]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][9]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N27
\shifts[9][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][9]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][9]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[8][9]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][9]~SCLR_LUT_combout\);

-- Location: FF_X34_Y10_N17
\shifts[9][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][9]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][9]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y10_N12
\shifts[10][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][9]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][9]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][9]~_Duplicate_1_q\,
	combout => \shifts[10][9]~SCLR_LUT_combout\);

-- Location: FF_X34_Y10_N14
\shifts[10][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N57
\shifts[11][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][9]~SCLR_LUT_combout\ = ( \shifts[10][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][9]~_Duplicate_1_q\,
	combout => \shifts[11][9]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N58
\shifts[11][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[11][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N54
\shifts[12][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][9]~SCLR_LUT_combout\ = ( \shifts[11][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][9]~_Duplicate_1_q\,
	combout => \shifts[12][9]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N55
\shifts[12][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N12
\shifts[13][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][9]~SCLR_LUT_combout\ = ( \shifts[12][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[12][9]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[13][9]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N13
\shifts[13][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][9]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y9_N45
\shifts[14][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][9]~SCLR_LUT_combout\ = ( \shifts[13][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[13][9]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][9]~SCLR_LUT_combout\);

-- Location: FF_X33_Y9_N44
\shifts[14][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][9]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][9]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y9_N18
\shifts[15][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][9]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][9]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[14][9]~_Duplicate_1_q\,
	combout => \shifts[15][9]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y9_N39
\shifts[15][9]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][9]~_Duplicate_1feeder_combout\ = ( \shifts[15][9]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[15][9]~SCLR_LUT_combout\,
	combout => \shifts[15][9]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y9_N41
\shifts[15][9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[15][9]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][9]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N48
\shifts[16][9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][9]~SCLR_LUT_combout\ = ( \shifts[15][9]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][9]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][9]~SCLR_LUT_combout\);

-- Location: FF_X34_Y7_N28
\shifts[0][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[0][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][10]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y7_N24
\shifts[1][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][10]~SCLR_LUT_combout\ = ( \shifts[0][10]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][10]~_Duplicate_1_q\,
	combout => \shifts[1][10]~SCLR_LUT_combout\);

-- Location: FF_X34_Y7_N26
\shifts[1][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][10]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][10]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y7_N0
\shifts[2][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][10]~SCLR_LUT_combout\ = ( \shifts[1][10]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][10]~_Duplicate_1_q\,
	combout => \shifts[2][10]~SCLR_LUT_combout\);

-- Location: FF_X34_Y7_N2
\shifts[2][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][10]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N9
\shifts[3][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][10]~SCLR_LUT_combout\ = (\shifts[2][10]~_Duplicate_1_q\ & \key0_d3~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[2][10]~_Duplicate_1_q\,
	datac => \ALT_INV_key0_d3~q\,
	combout => \shifts[3][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N8
\shifts[3][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[3][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N21
\shifts[4][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][10]~SCLR_LUT_combout\ = (\key0_d3~q\ & \shifts[3][10]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	datac => \ALT_INV_shifts[3][10]~_Duplicate_1_q\,
	combout => \shifts[4][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N56
\shifts[4][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[4][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N18
\shifts[5][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[4][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[4][10]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N23
\shifts[5][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[5][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N54
\shifts[6][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[5][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[5][10]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[6][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N10
\shifts[6][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[6][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N51
\shifts[7][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][10]~SCLR_LUT_combout\ = ( \shifts[6][10]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[6][10]~_Duplicate_1_q\,
	combout => \shifts[7][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N20
\shifts[7][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[7][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N36
\shifts[8][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[7][10]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N53
\shifts[8][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[8][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N48
\shifts[9][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[8][10]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N26
\shifts[9][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N15
\shifts[10][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][10]~_Duplicate_1_q\,
	combout => \shifts[10][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N17
\shifts[10][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][10]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][10]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N27
\shifts[11][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[10][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][10]~_Duplicate_1_q\,
	combout => \shifts[11][10]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N44
\shifts[11][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][10]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y7_N39
\shifts[12][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[11][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[11][10]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[12][10]~SCLR_LUT_combout\);

-- Location: FF_X31_Y7_N41
\shifts[12][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][10]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][10]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N27
\shifts[13][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][10]~SCLR_LUT_combout\ = ( \shifts[12][10]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][10]~_Duplicate_1_q\,
	combout => \shifts[13][10]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N28
\shifts[13][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][10]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][10]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N51
\shifts[14][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][10]~SCLR_LUT_combout\ = ( \shifts[13][10]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[13][10]~_Duplicate_1_q\,
	combout => \shifts[14][10]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N49
\shifts[14][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][10]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N45
\shifts[15][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[14][10]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][10]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N35
\shifts[15][10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][10]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][10]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y8_N33
\shifts[16][10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][10]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[15][10]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[15][10]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][10]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N40
\shifts[0][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][11]~_Duplicate_1_q\);

-- Location: LABCELL_X30_Y6_N36
\shifts[1][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][11]~SCLR_LUT_combout\ = ( \shifts[0][11]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][11]~_Duplicate_1_q\,
	combout => \shifts[1][11]~SCLR_LUT_combout\);

-- Location: FF_X30_Y6_N37
\shifts[1][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][11]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N54
\shifts[2][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][11]~SCLR_LUT_combout\ = ( \shifts[1][11]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][11]~_Duplicate_1_q\,
	combout => \shifts[2][11]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N56
\shifts[2][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][11]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N18
\shifts[3][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[2][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[2][11]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[3][11]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N20
\shifts[3][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][11]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N45
\shifts[4][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[3][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[3][11]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[4][11]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N46
\shifts[4][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[4][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][11]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N39
\shifts[5][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[4][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[4][11]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][11]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N41
\shifts[5][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][11]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N36
\shifts[6][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][11]~SCLR_LUT_combout\ = ( \shifts[5][11]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][11]~_Duplicate_1_q\,
	combout => \shifts[6][11]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N38
\shifts[6][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][11]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N9
\shifts[7][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[6][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[6][11]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[7][11]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N14
\shifts[7][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[7][11]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][11]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y8_N3
\shifts[8][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[7][11]~_Duplicate_1_q\,
	combout => \shifts[8][11]~SCLR_LUT_combout\);

-- Location: FF_X34_Y8_N5
\shifts[8][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][11]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y8_N54
\shifts[9][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[8][11]~_Duplicate_1_q\,
	datae => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][11]~SCLR_LUT_combout\);

-- Location: FF_X34_Y8_N35
\shifts[9][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][11]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][11]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y8_N39
\shifts[10][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][11]~_Duplicate_1_q\,
	combout => \shifts[10][11]~SCLR_LUT_combout\);

-- Location: FF_X34_Y8_N41
\shifts[10][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][11]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y8_N42
\shifts[11][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[10][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][11]~_Duplicate_1_q\,
	combout => \shifts[11][11]~SCLR_LUT_combout\);

-- Location: FF_X34_Y8_N44
\shifts[11][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[11][11]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][11]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y8_N21
\shifts[12][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[11][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[11][11]~_Duplicate_1_q\,
	datae => \ALT_INV_key0_d3~q\,
	combout => \shifts[12][11]~SCLR_LUT_combout\);

-- Location: FF_X31_Y7_N35
\shifts[12][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[12][11]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][11]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y7_N33
\shifts[13][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][11]~SCLR_LUT_combout\ = ( \shifts[12][11]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[12][11]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[13][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y7_N48
\shifts[13][11]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][11]~_Duplicate_1feeder_combout\ = ( \shifts[13][11]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[13][11]~SCLR_LUT_combout\,
	combout => \shifts[13][11]~_Duplicate_1feeder_combout\);

-- Location: FF_X31_Y7_N49
\shifts[13][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][11]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][11]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N48
\shifts[14][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[13][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[13][11]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][11]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N20
\shifts[14][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][11]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][11]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N12
\shifts[15][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][11]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][11]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[14][11]~_Duplicate_1_q\,
	combout => \shifts[15][11]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y8_N0
\shifts[15][11]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][11]~_Duplicate_1feeder_combout\ = ( \shifts[15][11]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[15][11]~SCLR_LUT_combout\,
	combout => \shifts[15][11]~_Duplicate_1feeder_combout\);

-- Location: FF_X31_Y8_N1
\shifts[15][11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[15][11]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][11]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y8_N15
\shifts[16][11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][11]~SCLR_LUT_combout\ = ( \shifts[15][11]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][11]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][11]~SCLR_LUT_combout\);

-- Location: FF_X33_Y4_N53
\shifts[0][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[0][12]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N42
\shifts[1][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][12]~SCLR_LUT_combout\ = ( \shifts[0][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][12]~_Duplicate_1_q\,
	combout => \shifts[1][12]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N50
\shifts[1][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[1][12]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N21
\shifts[2][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][12]~SCLR_LUT_combout\ = ( \shifts[1][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][12]~_Duplicate_1_q\,
	combout => \shifts[2][12]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N23
\shifts[2][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][12]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N3
\shifts[3][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][12]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[2][12]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[2][12]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[3][12]~SCLR_LUT_combout\);

-- Location: FF_X33_Y5_N5
\shifts[3][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][12]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y5_N39
\shifts[4][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][12]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[3][12]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[3][12]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[4][12]~SCLR_LUT_combout\);

-- Location: FF_X34_Y7_N23
\shifts[4][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[4][12]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N21
\shifts[5][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][12]~SCLR_LUT_combout\ = ( \shifts[4][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[4][12]~_Duplicate_1_q\,
	combout => \shifts[5][12]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N22
\shifts[5][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][12]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][12]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N3
\shifts[6][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][12]~SCLR_LUT_combout\ = ( \shifts[5][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][12]~_Duplicate_1_q\,
	combout => \shifts[6][12]~SCLR_LUT_combout\);

-- Location: FF_X35_Y7_N5
\shifts[6][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[6][12]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][12]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y7_N30
\shifts[7][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][12]~SCLR_LUT_combout\ = ( \shifts[6][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[6][12]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[7][12]~SCLR_LUT_combout\);

-- Location: MLABCELL_X39_Y6_N12
\shifts[7][12]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][12]~_Duplicate_1feeder_combout\ = ( \shifts[7][12]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[7][12]~SCLR_LUT_combout\,
	combout => \shifts[7][12]~_Duplicate_1feeder_combout\);

-- Location: FF_X39_Y6_N14
\shifts[7][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][12]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][12]~_Duplicate_1_q\);

-- Location: MLABCELL_X39_Y6_N24
\shifts[8][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][12]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][12]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[7][12]~_Duplicate_1_q\,
	combout => \shifts[8][12]~SCLR_LUT_combout\);

-- Location: MLABCELL_X39_Y6_N15
\shifts[8][12]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][12]~_Duplicate_1feeder_combout\ = ( \shifts[8][12]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[8][12]~SCLR_LUT_combout\,
	combout => \shifts[8][12]~_Duplicate_1feeder_combout\);

-- Location: FF_X39_Y6_N17
\shifts[8][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][12]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][12]~_Duplicate_1_q\);

-- Location: MLABCELL_X39_Y6_N54
\shifts[9][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][12]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][12]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[8][12]~_Duplicate_1_q\,
	combout => \shifts[9][12]~SCLR_LUT_combout\);

-- Location: FF_X39_Y6_N34
\shifts[9][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][12]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][12]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y10_N12
\shifts[10][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][12]~SCLR_LUT_combout\ = ( \shifts[9][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[9][12]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[10][12]~SCLR_LUT_combout\);

-- Location: LABCELL_X35_Y9_N48
\shifts[10][12]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][12]~_Duplicate_1feeder_combout\ = ( \shifts[10][12]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[10][12]~SCLR_LUT_combout\,
	combout => \shifts[10][12]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y9_N49
\shifts[10][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][12]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N33
\shifts[11][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][12]~SCLR_LUT_combout\ = ( \shifts[10][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][12]~_Duplicate_1_q\,
	combout => \shifts[11][12]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N34
\shifts[11][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[11][12]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N39
\shifts[12][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][12]~SCLR_LUT_combout\ = ( \shifts[11][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][12]~_Duplicate_1_q\,
	combout => \shifts[12][12]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N37
\shifts[12][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[12][12]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N30
\shifts[13][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][12]~SCLR_LUT_combout\ = ( \shifts[12][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][12]~_Duplicate_1_q\,
	combout => \shifts[13][12]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N32
\shifts[13][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][12]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][12]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N21
\shifts[14][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][12]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[13][12]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[13][12]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][12]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N7
\shifts[14][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][12]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][12]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y8_N15
\shifts[15][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][12]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][12]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[14][12]~_Duplicate_1_q\,
	combout => \shifts[15][12]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N56
\shifts[15][12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][12]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][12]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N21
\shifts[16][12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][12]~SCLR_LUT_combout\ = ( \shifts[15][12]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][12]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][12]~SCLR_LUT_combout\);

-- Location: FF_X36_Y6_N50
\shifts[0][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[0][13]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][13]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y7_N18
\shifts[1][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][13]~SCLR_LUT_combout\ = ( \shifts[0][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[0][13]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[1][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X34_Y7_N45
\shifts[1][13]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][13]~_Duplicate_1feeder_combout\ = ( \shifts[1][13]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[1][13]~SCLR_LUT_combout\,
	combout => \shifts[1][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X34_Y7_N46
\shifts[1][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[1][13]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N48
\shifts[2][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][13]~SCLR_LUT_combout\ = ( \shifts[1][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][13]~_Duplicate_1_q\,
	combout => \shifts[2][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N50
\shifts[2][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N27
\shifts[3][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][13]~SCLR_LUT_combout\ = ( \shifts[2][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][13]~_Duplicate_1_q\,
	combout => \shifts[3][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N26
\shifts[3][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[3][13]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N6
\shifts[4][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][13]~SCLR_LUT_combout\ = ( \shifts[3][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][13]~_Duplicate_1_q\,
	combout => \shifts[4][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N37
\shifts[4][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[4][13]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N39
\shifts[5][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][13]~SCLR_LUT_combout\ = ( \shifts[4][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[4][13]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N40
\shifts[5][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][13]~_Duplicate_1_q\);

-- Location: LABCELL_X36_Y6_N12
\shifts[6][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][13]~SCLR_LUT_combout\ = ( \shifts[5][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[5][13]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[6][13]~SCLR_LUT_combout\);

-- Location: LABCELL_X36_Y6_N18
\shifts[6][13]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][13]~_Duplicate_1feeder_combout\ = ( \shifts[6][13]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[6][13]~SCLR_LUT_combout\,
	combout => \shifts[6][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X36_Y6_N19
\shifts[6][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][13]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N45
\shifts[7][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][13]~SCLR_LUT_combout\ = ( \shifts[6][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[6][13]~_Duplicate_1_q\,
	combout => \shifts[7][13]~SCLR_LUT_combout\);

-- Location: FF_X40_Y8_N53
\shifts[7][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[7][13]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][13]~_Duplicate_1_q\);

-- Location: LABCELL_X40_Y8_N48
\shifts[8][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][13]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][13]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[7][13]~_Duplicate_1_q\,
	combout => \shifts[8][13]~SCLR_LUT_combout\);

-- Location: FF_X40_Y8_N49
\shifts[8][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][13]~_Duplicate_1_q\);

-- Location: LABCELL_X40_Y8_N21
\shifts[9][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][13]~SCLR_LUT_combout\ = ( \shifts[8][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[8][13]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][13]~SCLR_LUT_combout\);

-- Location: MLABCELL_X39_Y10_N36
\shifts[9][13]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][13]~_Duplicate_1feeder_combout\ = ( \shifts[9][13]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[9][13]~SCLR_LUT_combout\,
	combout => \shifts[9][13]~_Duplicate_1feeder_combout\);

-- Location: FF_X39_Y10_N37
\shifts[9][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[9][13]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][13]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y10_N45
\shifts[10][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][13]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][13]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[9][13]~_Duplicate_1_q\,
	combout => \shifts[10][13]~SCLR_LUT_combout\);

-- Location: FF_X34_Y10_N47
\shifts[10][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N39
\shifts[11][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][13]~SCLR_LUT_combout\ = ( \shifts[10][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[10][13]~_Duplicate_1_q\,
	combout => \shifts[11][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N40
\shifts[11][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[11][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N36
\shifts[12][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][13]~SCLR_LUT_combout\ = ( \shifts[11][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[11][13]~_Duplicate_1_q\,
	combout => \shifts[12][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N37
\shifts[12][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N42
\shifts[13][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][13]~SCLR_LUT_combout\ = ( \shifts[12][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[12][13]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[13][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N43
\shifts[13][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[13][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N27
\shifts[14][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][13]~SCLR_LUT_combout\ = ( \shifts[13][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[13][13]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N28
\shifts[14][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[14][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][13]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N51
\shifts[15][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][13]~SCLR_LUT_combout\ = ( \shifts[14][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[14][13]~_Duplicate_1_q\,
	combout => \shifts[15][13]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N52
\shifts[15][13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[15][13]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][13]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y12_N15
\shifts[16][13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][13]~SCLR_LUT_combout\ = ( \shifts[15][13]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][13]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][13]~SCLR_LUT_combout\);

-- Location: FF_X28_Y6_N50
\shifts[0][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[0][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][14]~_Duplicate_1_q\);

-- Location: MLABCELL_X28_Y6_N27
\shifts[1][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][14]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[0][14]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][14]~_Duplicate_1_q\,
	combout => \shifts[1][14]~SCLR_LUT_combout\);

-- Location: FF_X28_Y6_N46
\shifts[1][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[1][14]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][14]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N42
\shifts[2][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][14]~SCLR_LUT_combout\ = ( \shifts[1][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[1][14]~_Duplicate_1_q\,
	combout => \shifts[2][14]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N43
\shifts[2][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[2][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][14]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N33
\shifts[3][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][14]~SCLR_LUT_combout\ = ( \shifts[2][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[2][14]~_Duplicate_1_q\,
	combout => \shifts[3][14]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N35
\shifts[3][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[3][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][14]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y6_N51
\shifts[4][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][14]~SCLR_LUT_combout\ = ( \shifts[3][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[3][14]~_Duplicate_1_q\,
	combout => \shifts[4][14]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N55
\shifts[4][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[4][14]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][14]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N18
\shifts[5][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][14]~SCLR_LUT_combout\ = ( \shifts[4][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[4][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][14]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N20
\shifts[5][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][14]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y6_N45
\shifts[6][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][14]~SCLR_LUT_combout\ = ( \shifts[5][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[5][14]~_Duplicate_1_q\,
	combout => \shifts[6][14]~SCLR_LUT_combout\);

-- Location: FF_X35_Y6_N47
\shifts[6][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[6][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N12
\shifts[7][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][14]~SCLR_LUT_combout\ = ( \shifts[6][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[6][14]~_Duplicate_1_q\,
	combout => \shifts[7][14]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N14
\shifts[7][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[7][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N33
\shifts[8][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][14]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][14]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[7][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][14]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N11
\shifts[8][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[8][14]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N27
\shifts[9][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][14]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[8][14]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[8][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][14]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N25
\shifts[9][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][14]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N9
\shifts[10][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][14]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][14]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[9][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[10][14]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N11
\shifts[10][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N6
\shifts[11][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][14]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[10][14]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shifts[10][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[11][14]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N8
\shifts[11][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[11][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y10_N3
\shifts[12][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][14]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[11][14]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shifts[11][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[12][14]~SCLR_LUT_combout\);

-- Location: FF_X33_Y10_N4
\shifts[12][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[12][14]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N24
\shifts[13][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][14]~SCLR_LUT_combout\ = ( \shifts[12][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[12][14]~_Duplicate_1_q\,
	combout => \shifts[13][14]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N29
\shifts[13][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[13][14]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][14]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N33
\shifts[14][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][14]~SCLR_LUT_combout\ = ( \shifts[13][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[13][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][14]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N17
\shifts[14][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][14]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][14]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y8_N18
\shifts[15][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][14]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][14]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shifts[14][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][14]~SCLR_LUT_combout\);

-- Location: FF_X31_Y8_N23
\shifts[15][14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][14]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][14]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y12_N36
\shifts[16][14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][14]~SCLR_LUT_combout\ = ( \shifts[15][14]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[15][14]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][14]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N11
\shifts[0][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[0][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[0][15]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N45
\shifts[1][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[1][15]~SCLR_LUT_combout\ = ( \shifts[0][15]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[0][15]~_Duplicate_1_q\,
	combout => \shifts[1][15]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N8
\shifts[1][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[1][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[1][15]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y6_N9
\shifts[2][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[2][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[1][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[1][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[2][15]~SCLR_LUT_combout\);

-- Location: FF_X34_Y5_N14
\shifts[2][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[2][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[2][15]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y5_N12
\shifts[3][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[3][15]~SCLR_LUT_combout\ = ( \shifts[2][15]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[2][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[3][15]~SCLR_LUT_combout\);

-- Location: FF_X34_Y5_N8
\shifts[3][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[3][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[3][15]~_Duplicate_1_q\);

-- Location: MLABCELL_X34_Y5_N6
\shifts[4][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[4][15]~SCLR_LUT_combout\ = ( \shifts[3][15]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[3][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[4][15]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N35
\shifts[4][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[4][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[4][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N6
\shifts[5][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[5][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[4][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shifts[4][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[5][15]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N8
\shifts[5][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[5][15]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[5][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N33
\shifts[6][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[6][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[5][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[5][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[6][15]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N58
\shifts[6][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[6][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[6][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N54
\shifts[7][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[7][15]~SCLR_LUT_combout\ = ( \shifts[6][15]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key0_d3~q\,
	dataf => \ALT_INV_shifts[6][15]~_Duplicate_1_q\,
	combout => \shifts[7][15]~SCLR_LUT_combout\);

-- Location: FF_X33_Y7_N20
\shifts[7][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[7][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[7][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y7_N30
\shifts[8][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[7][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[7][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[8][15]~SCLR_LUT_combout\);

-- Location: LABCELL_X37_Y8_N0
\shifts[8][15]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[8][15]~_Duplicate_1feeder_combout\ = ( \shifts[8][15]~SCLR_LUT_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_shifts[8][15]~SCLR_LUT_combout\,
	combout => \shifts[8][15]~_Duplicate_1feeder_combout\);

-- Location: FF_X37_Y8_N2
\shifts[8][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[8][15]~_Duplicate_1feeder_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[8][15]~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y8_N15
\shifts[9][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[9][15]~SCLR_LUT_combout\ = ( \shifts[8][15]~_Duplicate_1_q\ & ( \key0_d3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shifts[8][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[9][15]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N8
\shifts[9][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[9][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[9][15]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N45
\shifts[10][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[10][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[9][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[9][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[10][15]~SCLR_LUT_combout\);

-- Location: FF_X35_Y8_N47
\shifts[10][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shifts[10][15]~SCLR_LUT_combout\,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[10][15]~_Duplicate_1_q\);

-- Location: LABCELL_X35_Y8_N0
\shifts[11][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[11][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[10][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[10][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[11][15]~SCLR_LUT_combout\);

-- Location: FF_X34_Y6_N8
\shifts[11][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[11][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[11][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N0
\shifts[12][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[12][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[11][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[11][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[12][15]~SCLR_LUT_combout\);

-- Location: FF_X33_Y6_N5
\shifts[12][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[12][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[12][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y6_N3
\shifts[13][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[13][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[12][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_shifts[12][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[13][15]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N23
\shifts[13][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[13][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[13][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N18
\shifts[14][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[14][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[13][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[13][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[14][15]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N41
\shifts[14][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[14][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[14][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N36
\shifts[15][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[15][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[14][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shifts[14][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[15][15]~SCLR_LUT_combout\);

-- Location: FF_X33_Y8_N53
\shifts[15][15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \shifts[15][15]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \shifts[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shifts[15][15]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y8_N48
\shifts[16][15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \shifts[16][15]~SCLR_LUT_combout\ = ( \key0_d3~q\ & ( \shifts[15][15]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shifts[15][15]~_Duplicate_1_q\,
	dataf => \ALT_INV_key0_d3~q\,
	combout => \shifts[16][15]~SCLR_LUT_combout\);

-- Location: DSP_X20_Y12_N0
\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X20_Y8_N0
\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X20_Y10_N0
\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X19_Y10_N30
\Add15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~1_sumout\ = SUM(( !\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(15) $ 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) + ( !VCC ) + ( !VCC ))
-- \Add15~2\ = CARRY(( !\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) + 
-- ( !VCC ) + ( !VCC ))
-- \Add15~3\ = SHARE((!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(15) & (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(15) & \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(15))) # 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(15) & ((\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(15)) # (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datac => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datad => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	cin => GND,
	sharein => GND,
	sumout => \Add15~1_sumout\,
	cout => \Add15~2\,
	shareout => \Add15~3\);

-- Location: DSP_X20_Y6_N0
\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X21_Y6_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Add15~1_sumout\ $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Add15~1_sumout\ $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(15) & (\Add15~1_sumout\ & \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(15))) # 
-- (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(15) & ((\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(15)) # (\Add15~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datac => \ALT_INV_Add15~1_sumout\,
	datad => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: DSP_X20_Y4_N0
\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X32_Y4_N0
\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X32_Y2_N0
\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X31_Y4_N30
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( !\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) 
-- + ( !VCC ) + ( !VCC ))
-- \Add3~66\ = CARRY(( !\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) + ( 
-- !VCC ) + ( !VCC ))
-- \Add3~67\ = SHARE((!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(15) & (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(15) & \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(15))) # 
-- (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(15) & ((\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(15)) # (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datac => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datad => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	cin => GND,
	sharein => GND,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\,
	shareout => \Add3~67\);

-- Location: DSP_X32_Y14_N0
\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X32_Y12_N0
\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X32_Y10_N0
\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X31_Y10_N30
\Add11~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~65_sumout\ = SUM(( !\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(15) $ 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) + ( !VCC ) + ( !VCC ))
-- \Add11~66\ = CARRY(( !\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) 
-- + ( !VCC ) + ( !VCC ))
-- \Add11~67\ = SHARE((!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(15) & (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(15) & \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(15))) # 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(15) & ((\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(15)) # (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datac => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datad => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	cin => GND,
	sharein => GND,
	sumout => \Add11~65_sumout\,
	cout => \Add11~66\,
	shareout => \Add11~67\);

-- Location: DSP_X32_Y8_N0
\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X54_Y4_N0
\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X32_Y6_N0
\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X37_Y8_N30
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) 
-- + ( !VCC ) + ( !VCC ))
-- \Add5~2\ = CARRY(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) + ( 
-- !VCC ) + ( !VCC ))
-- \Add5~3\ = SHARE((!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(15) & (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(15) & \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(15))) # 
-- (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(15) & ((\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(15)) # (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datac => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datad => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	cin => GND,
	sharein => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\,
	shareout => \Add5~3\);

-- Location: DSP_X54_Y8_N0
\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X54_Y6_N0
\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: DSP_X54_Y10_N0
\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 15,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ACLR_bus\,
	clk => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_CLK_bus\,
	ena => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_ENA_bus\,
	ax => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AX_bus\,
	ay => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_AY_bus\,
	resulta => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X53_Y8_N30
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( !\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) 
-- + ( !VCC ) + ( !VCC ))
-- \Add9~2\ = CARRY(( !\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(15) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(15))) ) + ( 
-- !VCC ) + ( !VCC ))
-- \Add9~3\ = SHARE((!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(15) & (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(15) & \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(15))) # 
-- (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(15) & ((\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(15)) # (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datac => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	datad => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(15),
	cin => GND,
	sharein => GND,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\,
	shareout => \Add9~3\);

-- Location: LABCELL_X36_Y8_N30
\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( !\Add11~65_sumout\ $ (!\Add5~1_sumout\ $ (\Add9~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add11~2\ = CARRY(( !\Add11~65_sumout\ $ (!\Add5~1_sumout\ $ (\Add9~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add11~3\ = SHARE((!\Add11~65_sumout\ & (\Add5~1_sumout\ & \Add9~1_sumout\)) # (\Add11~65_sumout\ & ((\Add9~1_sumout\) # (\Add5~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~65_sumout\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_Add9~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\,
	shareout => \Add11~3\);

-- Location: MLABCELL_X34_Y4_N30
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Add3~65_sumout\ $ (\Add11~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( !\Add0~1_sumout\ $ (!\Add3~65_sumout\ $ (\Add11~1_sumout\)) ) + ( !VCC ) + ( !VCC ))
-- \Add3~3\ = SHARE((!\Add0~1_sumout\ & (\Add3~65_sumout\ & \Add11~1_sumout\)) # (\Add0~1_sumout\ & ((\Add11~1_sumout\) # (\Add3~65_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add3~65_sumout\,
	datad => \ALT_INV_Add11~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\,
	shareout => \Add3~3\);

-- Location: LABCELL_X19_Y10_N33
\Add15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~5_sumout\ = SUM(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(16) $ 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) + ( \Add15~3\ ) + ( \Add15~2\ ))
-- \Add15~6\ = CARRY(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) + 
-- ( \Add15~3\ ) + ( \Add15~2\ ))
-- \Add15~7\ = SHARE((!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(16) & (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(16) & \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(16))) # 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(16) & ((\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(16)) # (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datac => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datad => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	cin => \Add15~2\,
	sharein => \Add15~3\,
	sumout => \Add15~5_sumout\,
	cout => \Add15~6\,
	shareout => \Add15~7\);

-- Location: MLABCELL_X21_Y6_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Add15~5_sumout\)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Add15~5_sumout\)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(16) & (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(16) & \Add15~5_sumout\)) # 
-- (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(16) & ((\Add15~5_sumout\) # (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datac => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datad => \ALT_INV_Add15~5_sumout\,
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X37_Y8_N33
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) 
-- + ( \Add5~3\ ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) + ( 
-- \Add5~3\ ) + ( \Add5~2\ ))
-- \Add5~7\ = SHARE((!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(16) & (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(16) & \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(16))) # 
-- (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(16) & ((\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(16)) # (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datac => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datad => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	cin => \Add5~2\,
	sharein => \Add5~3\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\,
	shareout => \Add5~7\);

-- Location: LABCELL_X31_Y10_N33
\Add11~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~69_sumout\ = SUM(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(16) $ 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) + ( \Add11~67\ ) + ( \Add11~66\ ))
-- \Add11~70\ = CARRY(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) 
-- + ( \Add11~67\ ) + ( \Add11~66\ ))
-- \Add11~71\ = SHARE((!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(16) & (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(16) & \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(16))) # 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(16) & ((\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(16)) # (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datac => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datad => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	cin => \Add11~66\,
	sharein => \Add11~67\,
	sumout => \Add11~69_sumout\,
	cout => \Add11~70\,
	shareout => \Add11~71\);

-- Location: LABCELL_X53_Y8_N33
\Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) 
-- + ( \Add9~3\ ) + ( \Add9~2\ ))
-- \Add9~6\ = CARRY(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) + ( 
-- \Add9~3\ ) + ( \Add9~2\ ))
-- \Add9~7\ = SHARE((!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(16) & (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(16) & \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(16))) # 
-- (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(16) & ((\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(16)) # (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datac => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datad => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	cin => \Add9~2\,
	sharein => \Add9~3\,
	sumout => \Add9~5_sumout\,
	cout => \Add9~6\,
	shareout => \Add9~7\);

-- Location: LABCELL_X36_Y8_N33
\Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( !\Add5~5_sumout\ $ (!\Add11~69_sumout\ $ (\Add9~5_sumout\)) ) + ( \Add11~3\ ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( !\Add5~5_sumout\ $ (!\Add11~69_sumout\ $ (\Add9~5_sumout\)) ) + ( \Add11~3\ ) + ( \Add11~2\ ))
-- \Add11~7\ = SHARE((!\Add5~5_sumout\ & (\Add11~69_sumout\ & \Add9~5_sumout\)) # (\Add5~5_sumout\ & ((\Add9~5_sumout\) # (\Add11~69_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datac => \ALT_INV_Add11~69_sumout\,
	datad => \ALT_INV_Add9~5_sumout\,
	cin => \Add11~2\,
	sharein => \Add11~3\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\,
	shareout => \Add11~7\);

-- Location: LABCELL_X31_Y4_N33
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) 
-- + ( \Add3~67\ ) + ( \Add3~66\ ))
-- \Add3~70\ = CARRY(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(16) $ (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(16))) ) + ( 
-- \Add3~67\ ) + ( \Add3~66\ ))
-- \Add3~71\ = SHARE((!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(16) & (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(16) & \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(16))) # 
-- (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(16) & ((\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(16)) # (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datac => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	datad => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(16),
	cin => \Add3~66\,
	sharein => \Add3~67\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\,
	shareout => \Add3~71\);

-- Location: MLABCELL_X34_Y4_N33
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( !\Add0~5_sumout\ $ (!\Add11~5_sumout\ $ (\Add3~69_sumout\)) ) + ( \Add3~3\ ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( !\Add0~5_sumout\ $ (!\Add11~5_sumout\ $ (\Add3~69_sumout\)) ) + ( \Add3~3\ ) + ( \Add3~2\ ))
-- \Add3~7\ = SHARE((!\Add0~5_sumout\ & (\Add11~5_sumout\ & \Add3~69_sumout\)) # (\Add0~5_sumout\ & ((\Add3~69_sumout\) # (\Add11~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add11~5_sumout\,
	datad => \ALT_INV_Add3~69_sumout\,
	cin => \Add3~2\,
	sharein => \Add3~3\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\,
	shareout => \Add3~7\);

-- Location: LABCELL_X37_Y8_N36
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( !\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) 
-- + ( \Add5~7\ ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( !\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) + ( 
-- \Add5~7\ ) + ( \Add5~6\ ))
-- \Add5~11\ = SHARE((!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(17) & (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(17) & \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(17))) # 
-- (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(17) & ((\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(17)) # (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datac => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datad => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	cin => \Add5~6\,
	sharein => \Add5~7\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\,
	shareout => \Add5~11\);

-- Location: LABCELL_X31_Y10_N36
\Add11~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~73_sumout\ = SUM(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(17) $ 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) + ( \Add11~71\ ) + ( \Add11~70\ ))
-- \Add11~74\ = CARRY(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) 
-- + ( \Add11~71\ ) + ( \Add11~70\ ))
-- \Add11~75\ = SHARE((!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(17) & (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(17) & \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(17))) # 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(17) & ((\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(17)) # (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datac => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datad => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	cin => \Add11~70\,
	sharein => \Add11~71\,
	sumout => \Add11~73_sumout\,
	cout => \Add11~74\,
	shareout => \Add11~75\);

-- Location: LABCELL_X53_Y8_N36
\Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~9_sumout\ = SUM(( !\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) 
-- + ( \Add9~7\ ) + ( \Add9~6\ ))
-- \Add9~10\ = CARRY(( !\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) + ( 
-- \Add9~7\ ) + ( \Add9~6\ ))
-- \Add9~11\ = SHARE((!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(17) & (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(17) & \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(17))) # 
-- (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(17) & ((\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(17)) # (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datac => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datad => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	cin => \Add9~6\,
	sharein => \Add9~7\,
	sumout => \Add9~9_sumout\,
	cout => \Add9~10\,
	shareout => \Add9~11\);

-- Location: LABCELL_X36_Y8_N36
\Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( !\Add5~9_sumout\ $ (!\Add11~73_sumout\ $ (\Add9~9_sumout\)) ) + ( \Add11~7\ ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( !\Add5~9_sumout\ $ (!\Add11~73_sumout\ $ (\Add9~9_sumout\)) ) + ( \Add11~7\ ) + ( \Add11~6\ ))
-- \Add11~11\ = SHARE((!\Add5~9_sumout\ & (\Add11~73_sumout\ & \Add9~9_sumout\)) # (\Add5~9_sumout\ & ((\Add9~9_sumout\) # (\Add11~73_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~9_sumout\,
	datac => \ALT_INV_Add11~73_sumout\,
	datad => \ALT_INV_Add9~9_sumout\,
	cin => \Add11~6\,
	sharein => \Add11~7\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\,
	shareout => \Add11~11\);

-- Location: LABCELL_X31_Y4_N36
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) 
-- + ( \Add3~71\ ) + ( \Add3~70\ ))
-- \Add3~74\ = CARRY(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) + ( 
-- \Add3~71\ ) + ( \Add3~70\ ))
-- \Add3~75\ = SHARE((!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(17) & (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(17) & \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(17))) # 
-- (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(17) & ((\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(17)) # (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datac => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datad => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	cin => \Add3~70\,
	sharein => \Add3~71\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\,
	shareout => \Add3~75\);

-- Location: LABCELL_X19_Y10_N36
\Add15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~9_sumout\ = SUM(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(17) $ 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) + ( \Add15~7\ ) + ( \Add15~6\ ))
-- \Add15~10\ = CARRY(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) 
-- + ( \Add15~7\ ) + ( \Add15~6\ ))
-- \Add15~11\ = SHARE((!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(17) & (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(17) & \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(17))) # 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(17) & ((\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(17)) # (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datac => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datad => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	cin => \Add15~6\,
	sharein => \Add15~7\,
	sumout => \Add15~9_sumout\,
	cout => \Add15~10\,
	shareout => \Add15~11\);

-- Location: MLABCELL_X21_Y6_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\Add15~9_sumout\ $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\Add15~9_sumout\ $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(17) $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(17))) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((!\Add15~9_sumout\ & (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(17) & \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(17))) # (\Add15~9_sumout\ & 
-- ((\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(17)) # (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(17)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add15~9_sumout\,
	datac => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	datad => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(17),
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: MLABCELL_X34_Y4_N36
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( !\Add11~9_sumout\ $ (!\Add3~73_sumout\ $ (\Add0~9_sumout\)) ) + ( \Add3~7\ ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( !\Add11~9_sumout\ $ (!\Add3~73_sumout\ $ (\Add0~9_sumout\)) ) + ( \Add3~7\ ) + ( \Add3~6\ ))
-- \Add3~11\ = SHARE((!\Add11~9_sumout\ & (\Add3~73_sumout\ & \Add0~9_sumout\)) # (\Add11~9_sumout\ & ((\Add0~9_sumout\) # (\Add3~73_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~9_sumout\,
	datac => \ALT_INV_Add3~73_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	cin => \Add3~6\,
	sharein => \Add3~7\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\,
	shareout => \Add3~11\);

-- Location: LABCELL_X19_Y10_N39
\Add15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~13_sumout\ = SUM(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(18) $ 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) + ( \Add15~11\ ) + ( \Add15~10\ ))
-- \Add15~14\ = CARRY(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) 
-- + ( \Add15~11\ ) + ( \Add15~10\ ))
-- \Add15~15\ = SHARE((!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(18) & (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(18) & \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(18))) # 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(18) & ((\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(18)) # (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datac => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datad => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	cin => \Add15~10\,
	sharein => \Add15~11\,
	sumout => \Add15~13_sumout\,
	cout => \Add15~14\,
	shareout => \Add15~15\);

-- Location: MLABCELL_X21_Y6_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\Add15~13_sumout\ $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\Add15~13_sumout\ $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!\Add15~13_sumout\ & (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(18) & \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(18))) # (\Add15~13_sumout\ & 
-- ((\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(18)) # (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add15~13_sumout\,
	datac => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datad => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LABCELL_X37_Y8_N39
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( !\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) 
-- + ( \Add5~11\ ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( !\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) + ( 
-- \Add5~11\ ) + ( \Add5~10\ ))
-- \Add5~15\ = SHARE((!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(18) & (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(18) & \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(18))) # 
-- (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(18) & ((\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(18)) # (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datac => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datad => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	cin => \Add5~10\,
	sharein => \Add5~11\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\,
	shareout => \Add5~15\);

-- Location: LABCELL_X53_Y8_N39
\Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~13_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(18))) 
-- ) + ( \Add9~11\ ) + ( \Add9~10\ ))
-- \Add9~14\ = CARRY(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) + ( 
-- \Add9~11\ ) + ( \Add9~10\ ))
-- \Add9~15\ = SHARE((!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(18) & (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(18) & \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(18))) # 
-- (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(18) & ((\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(18)) # (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datac => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datad => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	cin => \Add9~10\,
	sharein => \Add9~11\,
	sumout => \Add9~13_sumout\,
	cout => \Add9~14\,
	shareout => \Add9~15\);

-- Location: LABCELL_X31_Y10_N39
\Add11~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~77_sumout\ = SUM(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(18) $ 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) + ( \Add11~75\ ) + ( \Add11~74\ ))
-- \Add11~78\ = CARRY(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) 
-- + ( \Add11~75\ ) + ( \Add11~74\ ))
-- \Add11~79\ = SHARE((!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(18) & (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(18) & \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(18))) # 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(18) & ((\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(18)) # (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datac => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datad => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	cin => \Add11~74\,
	sharein => \Add11~75\,
	sumout => \Add11~77_sumout\,
	cout => \Add11~78\,
	shareout => \Add11~79\);

-- Location: LABCELL_X36_Y8_N39
\Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( !\Add5~13_sumout\ $ (!\Add9~13_sumout\ $ (\Add11~77_sumout\)) ) + ( \Add11~11\ ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( !\Add5~13_sumout\ $ (!\Add9~13_sumout\ $ (\Add11~77_sumout\)) ) + ( \Add11~11\ ) + ( \Add11~10\ ))
-- \Add11~15\ = SHARE((!\Add5~13_sumout\ & (\Add9~13_sumout\ & \Add11~77_sumout\)) # (\Add5~13_sumout\ & ((\Add11~77_sumout\) # (\Add9~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~13_sumout\,
	datac => \ALT_INV_Add9~13_sumout\,
	datad => \ALT_INV_Add11~77_sumout\,
	cin => \Add11~10\,
	sharein => \Add11~11\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\,
	shareout => \Add11~15\);

-- Location: LABCELL_X31_Y4_N39
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) 
-- + ( \Add3~75\ ) + ( \Add3~74\ ))
-- \Add3~78\ = CARRY(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(18) $ (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(18))) ) + ( 
-- \Add3~75\ ) + ( \Add3~74\ ))
-- \Add3~79\ = SHARE((!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(18) & (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(18) & \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(18))) # 
-- (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(18) & ((\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(18)) # (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(18)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datac => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	datad => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(18),
	cin => \Add3~74\,
	sharein => \Add3~75\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\,
	shareout => \Add3~79\);

-- Location: MLABCELL_X34_Y4_N39
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( !\Add0~13_sumout\ $ (!\Add11~13_sumout\ $ (\Add3~77_sumout\)) ) + ( \Add3~11\ ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( !\Add0~13_sumout\ $ (!\Add11~13_sumout\ $ (\Add3~77_sumout\)) ) + ( \Add3~11\ ) + ( \Add3~10\ ))
-- \Add3~15\ = SHARE((!\Add0~13_sumout\ & (\Add11~13_sumout\ & \Add3~77_sumout\)) # (\Add0~13_sumout\ & ((\Add3~77_sumout\) # (\Add11~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add11~13_sumout\,
	datad => \ALT_INV_Add3~77_sumout\,
	cin => \Add3~10\,
	sharein => \Add3~11\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\,
	shareout => \Add3~15\);

-- Location: LABCELL_X19_Y10_N42
\Add15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~17_sumout\ = SUM(( !\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(19) $ 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) + ( \Add15~15\ ) + ( \Add15~14\ ))
-- \Add15~18\ = CARRY(( !\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) 
-- + ( \Add15~15\ ) + ( \Add15~14\ ))
-- \Add15~19\ = SHARE((!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(19) & (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(19) & \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(19))) # 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(19) & ((\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(19)) # (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datac => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datad => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	cin => \Add15~14\,
	sharein => \Add15~15\,
	sumout => \Add15~17_sumout\,
	cout => \Add15~18\,
	shareout => \Add15~19\);

-- Location: MLABCELL_X21_Y6_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Add15~17_sumout\)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Add15~17_sumout\)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(19) & (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(19) & \Add15~17_sumout\)) # 
-- (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(19) & ((\Add15~17_sumout\) # (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datac => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datad => \ALT_INV_Add15~17_sumout\,
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: LABCELL_X31_Y4_N42
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) 
-- + ( \Add3~79\ ) + ( \Add3~78\ ))
-- \Add3~82\ = CARRY(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) + ( 
-- \Add3~79\ ) + ( \Add3~78\ ))
-- \Add3~83\ = SHARE((!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(19) & (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(19) & \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(19))) # 
-- (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(19) & ((\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(19)) # (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datac => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datad => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	cin => \Add3~78\,
	sharein => \Add3~79\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\,
	shareout => \Add3~83\);

-- Location: LABCELL_X31_Y10_N42
\Add11~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~81_sumout\ = SUM(( !\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(19) $ 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) + ( \Add11~79\ ) + ( \Add11~78\ ))
-- \Add11~82\ = CARRY(( !\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) 
-- + ( \Add11~79\ ) + ( \Add11~78\ ))
-- \Add11~83\ = SHARE((!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(19) & (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(19) & \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(19))) # 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(19) & ((\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(19)) # (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datac => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datad => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	cin => \Add11~78\,
	sharein => \Add11~79\,
	sumout => \Add11~81_sumout\,
	cout => \Add11~82\,
	shareout => \Add11~83\);

-- Location: LABCELL_X53_Y8_N42
\Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~17_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(19))) 
-- ) + ( \Add9~15\ ) + ( \Add9~14\ ))
-- \Add9~18\ = CARRY(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) + ( 
-- \Add9~15\ ) + ( \Add9~14\ ))
-- \Add9~19\ = SHARE((!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(19) & (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(19) & \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(19))) # 
-- (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(19) & ((\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(19)) # (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datac => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datad => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	cin => \Add9~14\,
	sharein => \Add9~15\,
	sumout => \Add9~17_sumout\,
	cout => \Add9~18\,
	shareout => \Add9~19\);

-- Location: LABCELL_X37_Y8_N42
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) 
-- + ( \Add5~15\ ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(19) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(19))) ) + ( 
-- \Add5~15\ ) + ( \Add5~14\ ))
-- \Add5~19\ = SHARE((!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(19) & (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(19) & \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(19))) # 
-- (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(19) & ((\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(19)) # (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(19)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datac => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	datad => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(19),
	cin => \Add5~14\,
	sharein => \Add5~15\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\,
	shareout => \Add5~19\);

-- Location: LABCELL_X36_Y8_N42
\Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( !\Add11~81_sumout\ $ (!\Add9~17_sumout\ $ (\Add5~17_sumout\)) ) + ( \Add11~15\ ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( !\Add11~81_sumout\ $ (!\Add9~17_sumout\ $ (\Add5~17_sumout\)) ) + ( \Add11~15\ ) + ( \Add11~14\ ))
-- \Add11~19\ = SHARE((!\Add11~81_sumout\ & (\Add9~17_sumout\ & \Add5~17_sumout\)) # (\Add11~81_sumout\ & ((\Add5~17_sumout\) # (\Add9~17_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~81_sumout\,
	datac => \ALT_INV_Add9~17_sumout\,
	datad => \ALT_INV_Add5~17_sumout\,
	cin => \Add11~14\,
	sharein => \Add11~15\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\,
	shareout => \Add11~19\);

-- Location: MLABCELL_X34_Y4_N42
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( !\Add0~17_sumout\ $ (!\Add3~81_sumout\ $ (\Add11~17_sumout\)) ) + ( \Add3~15\ ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( !\Add0~17_sumout\ $ (!\Add3~81_sumout\ $ (\Add11~17_sumout\)) ) + ( \Add3~15\ ) + ( \Add3~14\ ))
-- \Add3~19\ = SHARE((!\Add0~17_sumout\ & (\Add3~81_sumout\ & \Add11~17_sumout\)) # (\Add0~17_sumout\ & ((\Add11~17_sumout\) # (\Add3~81_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Add3~81_sumout\,
	datad => \ALT_INV_Add11~17_sumout\,
	cin => \Add3~14\,
	sharein => \Add3~15\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\,
	shareout => \Add3~19\);

-- Location: LABCELL_X31_Y4_N45
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) 
-- + ( \Add3~83\ ) + ( \Add3~82\ ))
-- \Add3~86\ = CARRY(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) + ( 
-- \Add3~83\ ) + ( \Add3~82\ ))
-- \Add3~87\ = SHARE((!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(20) & (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(20) & \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(20))) # 
-- (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(20) & ((\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(20)) # (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datac => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datad => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	cin => \Add3~82\,
	sharein => \Add3~83\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\,
	shareout => \Add3~87\);

-- Location: LABCELL_X53_Y8_N45
\Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~21_sumout\ = SUM(( !\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(20))) 
-- ) + ( \Add9~19\ ) + ( \Add9~18\ ))
-- \Add9~22\ = CARRY(( !\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) + ( 
-- \Add9~19\ ) + ( \Add9~18\ ))
-- \Add9~23\ = SHARE((!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(20) & (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(20) & \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(20))) # 
-- (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(20) & ((\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(20)) # (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datac => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datad => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	cin => \Add9~18\,
	sharein => \Add9~19\,
	sumout => \Add9~21_sumout\,
	cout => \Add9~22\,
	shareout => \Add9~23\);

-- Location: LABCELL_X37_Y8_N45
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) 
-- + ( \Add5~19\ ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) + ( 
-- \Add5~19\ ) + ( \Add5~18\ ))
-- \Add5~23\ = SHARE((!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(20) & (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(20) & \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(20))) # 
-- (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(20) & ((\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(20)) # (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datac => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datad => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	cin => \Add5~18\,
	sharein => \Add5~19\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\,
	shareout => \Add5~23\);

-- Location: LABCELL_X31_Y10_N45
\Add11~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~85_sumout\ = SUM(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(20) $ 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) + ( \Add11~83\ ) + ( \Add11~82\ ))
-- \Add11~86\ = CARRY(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) 
-- + ( \Add11~83\ ) + ( \Add11~82\ ))
-- \Add11~87\ = SHARE((!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(20) & (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(20) & \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(20))) # 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(20) & ((\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(20)) # (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datac => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datad => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	cin => \Add11~82\,
	sharein => \Add11~83\,
	sumout => \Add11~85_sumout\,
	cout => \Add11~86\,
	shareout => \Add11~87\);

-- Location: LABCELL_X36_Y8_N45
\Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( !\Add9~21_sumout\ $ (!\Add5~21_sumout\ $ (\Add11~85_sumout\)) ) + ( \Add11~19\ ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( !\Add9~21_sumout\ $ (!\Add5~21_sumout\ $ (\Add11~85_sumout\)) ) + ( \Add11~19\ ) + ( \Add11~18\ ))
-- \Add11~23\ = SHARE((!\Add9~21_sumout\ & (\Add5~21_sumout\ & \Add11~85_sumout\)) # (\Add9~21_sumout\ & ((\Add11~85_sumout\) # (\Add5~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add9~21_sumout\,
	datac => \ALT_INV_Add5~21_sumout\,
	datad => \ALT_INV_Add11~85_sumout\,
	cin => \Add11~18\,
	sharein => \Add11~19\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\,
	shareout => \Add11~23\);

-- Location: LABCELL_X19_Y10_N45
\Add15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~21_sumout\ = SUM(( !\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(20) $ 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) + ( \Add15~19\ ) + ( \Add15~18\ ))
-- \Add15~22\ = CARRY(( !\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) 
-- + ( \Add15~19\ ) + ( \Add15~18\ ))
-- \Add15~23\ = SHARE((!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(20) & (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(20) & \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(20))) # 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(20) & ((\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(20)) # (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datac => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datad => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	cin => \Add15~18\,
	sharein => \Add15~19\,
	sumout => \Add15~21_sumout\,
	cout => \Add15~22\,
	shareout => \Add15~23\);

-- Location: MLABCELL_X21_Y6_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\Add15~21_sumout\ $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\Add15~21_sumout\ $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(20) $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(20))) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((!\Add15~21_sumout\ & (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(20) & \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(20))) # (\Add15~21_sumout\ & 
-- ((\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(20)) # (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(20)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add15~21_sumout\,
	datac => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	datad => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(20),
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: MLABCELL_X34_Y4_N45
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( !\Add3~85_sumout\ $ (!\Add11~21_sumout\ $ (\Add0~21_sumout\)) ) + ( \Add3~19\ ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( !\Add3~85_sumout\ $ (!\Add11~21_sumout\ $ (\Add0~21_sumout\)) ) + ( \Add3~19\ ) + ( \Add3~18\ ))
-- \Add3~23\ = SHARE((!\Add3~85_sumout\ & (\Add11~21_sumout\ & \Add0~21_sumout\)) # (\Add3~85_sumout\ & ((\Add0~21_sumout\) # (\Add11~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~85_sumout\,
	datac => \ALT_INV_Add11~21_sumout\,
	datad => \ALT_INV_Add0~21_sumout\,
	cin => \Add3~18\,
	sharein => \Add3~19\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\,
	shareout => \Add3~23\);

-- Location: LABCELL_X19_Y10_N48
\Add15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~25_sumout\ = SUM(( !\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(21) $ 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) + ( \Add15~23\ ) + ( \Add15~22\ ))
-- \Add15~26\ = CARRY(( !\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) 
-- + ( \Add15~23\ ) + ( \Add15~22\ ))
-- \Add15~27\ = SHARE((!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(21) & (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(21) & \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(21))) # 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(21) & ((\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(21)) # (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datac => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datad => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	cin => \Add15~22\,
	sharein => \Add15~23\,
	sumout => \Add15~25_sumout\,
	cout => \Add15~26\,
	shareout => \Add15~27\);

-- Location: MLABCELL_X21_Y6_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\Add15~25_sumout\ $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\Add15~25_sumout\ $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((!\Add15~25_sumout\ & (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(21) & \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(21))) # (\Add15~25_sumout\ & 
-- ((\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(21)) # (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add15~25_sumout\,
	datac => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datad => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: LABCELL_X31_Y10_N48
\Add11~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~89_sumout\ = SUM(( !\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(21) $ 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) + ( \Add11~87\ ) + ( \Add11~86\ ))
-- \Add11~90\ = CARRY(( !\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) 
-- + ( \Add11~87\ ) + ( \Add11~86\ ))
-- \Add11~91\ = SHARE((!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(21) & (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(21) & \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(21))) # 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(21) & ((\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(21)) # (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datac => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datad => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	cin => \Add11~86\,
	sharein => \Add11~87\,
	sumout => \Add11~89_sumout\,
	cout => \Add11~90\,
	shareout => \Add11~91\);

-- Location: LABCELL_X53_Y8_N48
\Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~25_sumout\ = SUM(( !\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(21))) 
-- ) + ( \Add9~23\ ) + ( \Add9~22\ ))
-- \Add9~26\ = CARRY(( !\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) + ( 
-- \Add9~23\ ) + ( \Add9~22\ ))
-- \Add9~27\ = SHARE((!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(21) & (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(21) & \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(21))) # 
-- (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(21) & ((\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(21)) # (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datac => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datad => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	cin => \Add9~22\,
	sharein => \Add9~23\,
	sumout => \Add9~25_sumout\,
	cout => \Add9~26\,
	shareout => \Add9~27\);

-- Location: LABCELL_X37_Y8_N48
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) 
-- + ( \Add5~23\ ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) + ( 
-- \Add5~23\ ) + ( \Add5~22\ ))
-- \Add5~27\ = SHARE((!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(21) & (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(21) & \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(21))) # 
-- (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(21) & ((\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(21)) # (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datac => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datad => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	cin => \Add5~22\,
	sharein => \Add5~23\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\,
	shareout => \Add5~27\);

-- Location: LABCELL_X36_Y8_N48
\Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( !\Add11~89_sumout\ $ (!\Add9~25_sumout\ $ (\Add5~25_sumout\)) ) + ( \Add11~23\ ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( !\Add11~89_sumout\ $ (!\Add9~25_sumout\ $ (\Add5~25_sumout\)) ) + ( \Add11~23\ ) + ( \Add11~22\ ))
-- \Add11~27\ = SHARE((!\Add11~89_sumout\ & (\Add9~25_sumout\ & \Add5~25_sumout\)) # (\Add11~89_sumout\ & ((\Add5~25_sumout\) # (\Add9~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~89_sumout\,
	datac => \ALT_INV_Add9~25_sumout\,
	datad => \ALT_INV_Add5~25_sumout\,
	cin => \Add11~22\,
	sharein => \Add11~23\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\,
	shareout => \Add11~27\);

-- Location: LABCELL_X31_Y4_N48
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) 
-- + ( \Add3~87\ ) + ( \Add3~86\ ))
-- \Add3~90\ = CARRY(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(21) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(21))) ) + ( 
-- \Add3~87\ ) + ( \Add3~86\ ))
-- \Add3~91\ = SHARE((!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(21) & (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(21) & \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(21))) # 
-- (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(21) & ((\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(21)) # (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(21)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datac => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	datad => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(21),
	cin => \Add3~86\,
	sharein => \Add3~87\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\,
	shareout => \Add3~91\);

-- Location: MLABCELL_X34_Y4_N48
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( !\Add0~25_sumout\ $ (!\Add11~25_sumout\ $ (\Add3~89_sumout\)) ) + ( \Add3~23\ ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( !\Add0~25_sumout\ $ (!\Add11~25_sumout\ $ (\Add3~89_sumout\)) ) + ( \Add3~23\ ) + ( \Add3~22\ ))
-- \Add3~27\ = SHARE((!\Add0~25_sumout\ & (\Add11~25_sumout\ & \Add3~89_sumout\)) # (\Add0~25_sumout\ & ((\Add3~89_sumout\) # (\Add11~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_Add11~25_sumout\,
	datad => \ALT_INV_Add3~89_sumout\,
	cin => \Add3~22\,
	sharein => \Add3~23\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\,
	shareout => \Add3~27\);

-- Location: LABCELL_X19_Y10_N51
\Add15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~29_sumout\ = SUM(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(22) $ 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) + ( \Add15~27\ ) + ( \Add15~26\ ))
-- \Add15~30\ = CARRY(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) 
-- + ( \Add15~27\ ) + ( \Add15~26\ ))
-- \Add15~31\ = SHARE((!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(22) & (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(22) & \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(22))) # 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(22) & ((\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(22)) # (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datac => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datad => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	cin => \Add15~26\,
	sharein => \Add15~27\,
	sumout => \Add15~29_sumout\,
	cout => \Add15~30\,
	shareout => \Add15~31\);

-- Location: MLABCELL_X21_Y6_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\Add15~29_sumout\ $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\Add15~29_sumout\ $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((!\Add15~29_sumout\ & (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(22) & \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(22))) # (\Add15~29_sumout\ & 
-- ((\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(22)) # (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add15~29_sumout\,
	datac => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datad => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: LABCELL_X31_Y10_N51
\Add11~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~93_sumout\ = SUM(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(22) $ 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) + ( \Add11~91\ ) + ( \Add11~90\ ))
-- \Add11~94\ = CARRY(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) 
-- + ( \Add11~91\ ) + ( \Add11~90\ ))
-- \Add11~95\ = SHARE((!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(22) & (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(22) & \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(22))) # 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(22) & ((\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(22)) # (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datac => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datad => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	cin => \Add11~90\,
	sharein => \Add11~91\,
	sumout => \Add11~93_sumout\,
	cout => \Add11~94\,
	shareout => \Add11~95\);

-- Location: LABCELL_X53_Y8_N51
\Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~29_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(22))) 
-- ) + ( \Add9~27\ ) + ( \Add9~26\ ))
-- \Add9~30\ = CARRY(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) + ( 
-- \Add9~27\ ) + ( \Add9~26\ ))
-- \Add9~31\ = SHARE((!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(22) & (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(22) & \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(22))) # 
-- (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(22) & ((\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(22)) # (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datac => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datad => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	cin => \Add9~26\,
	sharein => \Add9~27\,
	sumout => \Add9~29_sumout\,
	cout => \Add9~30\,
	shareout => \Add9~31\);

-- Location: LABCELL_X37_Y8_N51
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( !\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) 
-- + ( \Add5~27\ ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( !\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) + ( 
-- \Add5~27\ ) + ( \Add5~26\ ))
-- \Add5~31\ = SHARE((!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(22) & (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(22) & \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(22))) # 
-- (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(22) & ((\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(22)) # (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datac => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datad => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	cin => \Add5~26\,
	sharein => \Add5~27\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\,
	shareout => \Add5~31\);

-- Location: LABCELL_X36_Y8_N51
\Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( !\Add11~93_sumout\ $ (!\Add9~29_sumout\ $ (\Add5~29_sumout\)) ) + ( \Add11~27\ ) + ( \Add11~26\ ))
-- \Add11~30\ = CARRY(( !\Add11~93_sumout\ $ (!\Add9~29_sumout\ $ (\Add5~29_sumout\)) ) + ( \Add11~27\ ) + ( \Add11~26\ ))
-- \Add11~31\ = SHARE((!\Add11~93_sumout\ & (\Add9~29_sumout\ & \Add5~29_sumout\)) # (\Add11~93_sumout\ & ((\Add5~29_sumout\) # (\Add9~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~93_sumout\,
	datac => \ALT_INV_Add9~29_sumout\,
	datad => \ALT_INV_Add5~29_sumout\,
	cin => \Add11~26\,
	sharein => \Add11~27\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\,
	shareout => \Add11~31\);

-- Location: LABCELL_X31_Y4_N51
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) 
-- + ( \Add3~91\ ) + ( \Add3~90\ ))
-- \Add3~94\ = CARRY(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(22) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(22))) ) + ( 
-- \Add3~91\ ) + ( \Add3~90\ ))
-- \Add3~95\ = SHARE((!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(22) & (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(22) & \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(22))) # 
-- (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(22) & ((\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(22)) # (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(22)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datac => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	datad => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(22),
	cin => \Add3~90\,
	sharein => \Add3~91\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\,
	shareout => \Add3~95\);

-- Location: MLABCELL_X34_Y4_N51
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( !\Add0~29_sumout\ $ (!\Add11~29_sumout\ $ (\Add3~93_sumout\)) ) + ( \Add3~27\ ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( !\Add0~29_sumout\ $ (!\Add11~29_sumout\ $ (\Add3~93_sumout\)) ) + ( \Add3~27\ ) + ( \Add3~26\ ))
-- \Add3~31\ = SHARE((!\Add0~29_sumout\ & (\Add11~29_sumout\ & \Add3~93_sumout\)) # (\Add0~29_sumout\ & ((\Add3~93_sumout\) # (\Add11~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_Add11~29_sumout\,
	datad => \ALT_INV_Add3~93_sumout\,
	cin => \Add3~26\,
	sharein => \Add3~27\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\,
	shareout => \Add3~31\);

-- Location: LABCELL_X19_Y10_N54
\Add15~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~33_sumout\ = SUM(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(23) $ 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) + ( \Add15~31\ ) + ( \Add15~30\ ))
-- \Add15~34\ = CARRY(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) 
-- + ( \Add15~31\ ) + ( \Add15~30\ ))
-- \Add15~35\ = SHARE((!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(23) & (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(23) & \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(23))) # 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(23) & ((\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(23)) # (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(23)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datac => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datad => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	cin => \Add15~30\,
	sharein => \Add15~31\,
	sumout => \Add15~33_sumout\,
	cout => \Add15~34\,
	shareout => \Add15~35\);

-- Location: MLABCELL_X21_Y6_N54
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Add15~33_sumout\ $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Add15~33_sumout\ $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~35\ = SHARE((!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(23) & (\Add15~33_sumout\ & \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(23))) # 
-- (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(23) & ((\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(23)) # (\Add15~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datac => \ALT_INV_Add15~33_sumout\,
	datad => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: LABCELL_X37_Y8_N54
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( !\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) 
-- + ( \Add5~31\ ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( !\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) + ( 
-- \Add5~31\ ) + ( \Add5~30\ ))
-- \Add5~35\ = SHARE((!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(23) & (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(23) & \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(23))) # 
-- (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(23) & ((\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(23)) # (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(23)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datac => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datad => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	cin => \Add5~30\,
	sharein => \Add5~31\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\,
	shareout => \Add5~35\);

-- Location: LABCELL_X53_Y8_N54
\Add9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~33_sumout\ = SUM(( !\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(23))) 
-- ) + ( \Add9~31\ ) + ( \Add9~30\ ))
-- \Add9~34\ = CARRY(( !\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) + ( 
-- \Add9~31\ ) + ( \Add9~30\ ))
-- \Add9~35\ = SHARE((!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(23) & (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(23) & \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(23))) # 
-- (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(23) & ((\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(23)) # (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(23)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datac => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datad => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	cin => \Add9~30\,
	sharein => \Add9~31\,
	sumout => \Add9~33_sumout\,
	cout => \Add9~34\,
	shareout => \Add9~35\);

-- Location: LABCELL_X31_Y10_N54
\Add11~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~97_sumout\ = SUM(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(23) $ 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) + ( \Add11~95\ ) + ( \Add11~94\ ))
-- \Add11~98\ = CARRY(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) 
-- + ( \Add11~95\ ) + ( \Add11~94\ ))
-- \Add11~99\ = SHARE((!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(23) & (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(23) & \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(23))) # 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(23) & ((\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(23)) # (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(23)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datac => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datad => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	cin => \Add11~94\,
	sharein => \Add11~95\,
	sumout => \Add11~97_sumout\,
	cout => \Add11~98\,
	shareout => \Add11~99\);

-- Location: LABCELL_X36_Y8_N54
\Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( !\Add5~33_sumout\ $ (!\Add9~33_sumout\ $ (\Add11~97_sumout\)) ) + ( \Add11~31\ ) + ( \Add11~30\ ))
-- \Add11~34\ = CARRY(( !\Add5~33_sumout\ $ (!\Add9~33_sumout\ $ (\Add11~97_sumout\)) ) + ( \Add11~31\ ) + ( \Add11~30\ ))
-- \Add11~35\ = SHARE((!\Add5~33_sumout\ & (\Add9~33_sumout\ & \Add11~97_sumout\)) # (\Add5~33_sumout\ & ((\Add11~97_sumout\) # (\Add9~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~33_sumout\,
	datac => \ALT_INV_Add9~33_sumout\,
	datad => \ALT_INV_Add11~97_sumout\,
	cin => \Add11~30\,
	sharein => \Add11~31\,
	sumout => \Add11~33_sumout\,
	cout => \Add11~34\,
	shareout => \Add11~35\);

-- Location: LABCELL_X31_Y4_N54
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( !\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) 
-- + ( \Add3~95\ ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( !\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(23) $ (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(23))) ) + ( 
-- \Add3~95\ ) + ( \Add3~94\ ))
-- \Add3~99\ = SHARE((!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(23) & (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(23) & \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(23))) # 
-- (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(23) & ((\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(23)) # (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(23)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datac => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	datad => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(23),
	cin => \Add3~94\,
	sharein => \Add3~95\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\,
	shareout => \Add3~99\);

-- Location: MLABCELL_X34_Y4_N54
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( !\Add0~33_sumout\ $ (!\Add11~33_sumout\ $ (\Add3~97_sumout\)) ) + ( \Add3~31\ ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( !\Add0~33_sumout\ $ (!\Add11~33_sumout\ $ (\Add3~97_sumout\)) ) + ( \Add3~31\ ) + ( \Add3~30\ ))
-- \Add3~35\ = SHARE((!\Add0~33_sumout\ & (\Add11~33_sumout\ & \Add3~97_sumout\)) # (\Add0~33_sumout\ & ((\Add3~97_sumout\) # (\Add11~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Add11~33_sumout\,
	datad => \ALT_INV_Add3~97_sumout\,
	cin => \Add3~30\,
	sharein => \Add3~31\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\,
	shareout => \Add3~35\);

-- Location: LABCELL_X31_Y10_N57
\Add11~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~101_sumout\ = SUM(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(24) $ 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) + ( \Add11~99\ ) + ( \Add11~98\ ))
-- \Add11~102\ = CARRY(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) 
-- + ( \Add11~99\ ) + ( \Add11~98\ ))
-- \Add11~103\ = SHARE((!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(24) & (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(24) & \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(24))) # 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(24) & ((\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(24)) # (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datac => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datad => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	cin => \Add11~98\,
	sharein => \Add11~99\,
	sumout => \Add11~101_sumout\,
	cout => \Add11~102\,
	shareout => \Add11~103\);

-- Location: LABCELL_X37_Y8_N57
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) 
-- + ( \Add5~35\ ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) + ( 
-- \Add5~35\ ) + ( \Add5~34\ ))
-- \Add5~39\ = SHARE((!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(24) & (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(24) & \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(24))) # 
-- (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(24) & ((\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(24)) # (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datac => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datad => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	cin => \Add5~34\,
	sharein => \Add5~35\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\,
	shareout => \Add5~39\);

-- Location: LABCELL_X53_Y8_N57
\Add9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~37_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(24))) 
-- ) + ( \Add9~35\ ) + ( \Add9~34\ ))
-- \Add9~38\ = CARRY(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) + ( 
-- \Add9~35\ ) + ( \Add9~34\ ))
-- \Add9~39\ = SHARE((!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(24) & (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(24) & \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(24))) # 
-- (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(24) & ((\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(24)) # (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datac => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datad => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	cin => \Add9~34\,
	sharein => \Add9~35\,
	sumout => \Add9~37_sumout\,
	cout => \Add9~38\,
	shareout => \Add9~39\);

-- Location: LABCELL_X36_Y8_N57
\Add11~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~37_sumout\ = SUM(( !\Add11~101_sumout\ $ (!\Add5~37_sumout\ $ (\Add9~37_sumout\)) ) + ( \Add11~35\ ) + ( \Add11~34\ ))
-- \Add11~38\ = CARRY(( !\Add11~101_sumout\ $ (!\Add5~37_sumout\ $ (\Add9~37_sumout\)) ) + ( \Add11~35\ ) + ( \Add11~34\ ))
-- \Add11~39\ = SHARE((!\Add11~101_sumout\ & (\Add5~37_sumout\ & \Add9~37_sumout\)) # (\Add11~101_sumout\ & ((\Add9~37_sumout\) # (\Add5~37_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~101_sumout\,
	datac => \ALT_INV_Add5~37_sumout\,
	datad => \ALT_INV_Add9~37_sumout\,
	cin => \Add11~34\,
	sharein => \Add11~35\,
	sumout => \Add11~37_sumout\,
	cout => \Add11~38\,
	shareout => \Add11~39\);

-- Location: LABCELL_X31_Y4_N57
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(24))) 
-- ) + ( \Add3~99\ ) + ( \Add3~98\ ))
-- \Add3~102\ = CARRY(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) + ( 
-- \Add3~99\ ) + ( \Add3~98\ ))
-- \Add3~103\ = SHARE((!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(24) & (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(24) & \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(24))) # 
-- (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(24) & ((\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(24)) # (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datac => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datad => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	cin => \Add3~98\,
	sharein => \Add3~99\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\,
	shareout => \Add3~103\);

-- Location: LABCELL_X19_Y10_N57
\Add15~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~37_sumout\ = SUM(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(24) $ 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) + ( \Add15~35\ ) + ( \Add15~34\ ))
-- \Add15~38\ = CARRY(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) 
-- + ( \Add15~35\ ) + ( \Add15~34\ ))
-- \Add15~39\ = SHARE((!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(24) & (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(24) & \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(24))) # 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(24) & ((\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(24)) # (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datac => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datad => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	cin => \Add15~34\,
	sharein => \Add15~35\,
	sumout => \Add15~37_sumout\,
	cout => \Add15~38\,
	shareout => \Add15~39\);

-- Location: MLABCELL_X21_Y6_N57
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !\Add15~37_sumout\ $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !\Add15~37_sumout\ $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(24) $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(24))) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~39\ = SHARE((!\Add15~37_sumout\ & (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(24) & \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(24))) # (\Add15~37_sumout\ & 
-- ((\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(24)) # (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(24)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add15~37_sumout\,
	datac => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	datad => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(24),
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: MLABCELL_X34_Y4_N57
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( !\Add11~37_sumout\ $ (!\Add3~101_sumout\ $ (\Add0~37_sumout\)) ) + ( \Add3~35\ ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( !\Add11~37_sumout\ $ (!\Add3~101_sumout\ $ (\Add0~37_sumout\)) ) + ( \Add3~35\ ) + ( \Add3~34\ ))
-- \Add3~39\ = SHARE((!\Add11~37_sumout\ & (\Add3~101_sumout\ & \Add0~37_sumout\)) # (\Add11~37_sumout\ & ((\Add0~37_sumout\) # (\Add3~101_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~37_sumout\,
	datac => \ALT_INV_Add3~101_sumout\,
	datad => \ALT_INV_Add0~37_sumout\,
	cin => \Add3~34\,
	sharein => \Add3~35\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\,
	shareout => \Add3~39\);

-- Location: LABCELL_X19_Y9_N30
\Add15~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~41_sumout\ = SUM(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(25) $ 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) + ( \Add15~39\ ) + ( \Add15~38\ ))
-- \Add15~42\ = CARRY(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) 
-- + ( \Add15~39\ ) + ( \Add15~38\ ))
-- \Add15~43\ = SHARE((!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(25) & (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(25) & \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(25))) # 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(25) & ((\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(25)) # (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(25)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datac => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datad => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	cin => \Add15~38\,
	sharein => \Add15~39\,
	sumout => \Add15~41_sumout\,
	cout => \Add15~42\,
	shareout => \Add15~43\);

-- Location: MLABCELL_X21_Y5_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !\Add15~41_sumout\ $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !\Add15~41_sumout\ $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~43\ = SHARE((!\Add15~41_sumout\ & (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(25) & \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(25))) # (\Add15~41_sumout\ & 
-- ((\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(25)) # (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(25)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add15~41_sumout\,
	datac => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datad => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\,
	shareout => \Add0~43\);

-- Location: LABCELL_X31_Y3_N30
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( !\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(25))) 
-- ) + ( \Add3~103\ ) + ( \Add3~102\ ))
-- \Add3~106\ = CARRY(( !\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) + ( 
-- \Add3~103\ ) + ( \Add3~102\ ))
-- \Add3~107\ = SHARE((!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(25) & (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(25) & \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(25))) # 
-- (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(25) & ((\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(25)) # (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(25)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datac => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datad => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	cin => \Add3~102\,
	sharein => \Add3~103\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\,
	shareout => \Add3~107\);

-- Location: LABCELL_X53_Y7_N30
\Add9~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~41_sumout\ = SUM(( !\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(25))) 
-- ) + ( \Add9~39\ ) + ( \Add9~38\ ))
-- \Add9~42\ = CARRY(( !\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) + ( 
-- \Add9~39\ ) + ( \Add9~38\ ))
-- \Add9~43\ = SHARE((!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(25) & (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(25) & \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(25))) # 
-- (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(25) & ((\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(25)) # (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(25)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datac => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datad => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	cin => \Add9~38\,
	sharein => \Add9~39\,
	sumout => \Add9~41_sumout\,
	cout => \Add9~42\,
	shareout => \Add9~43\);

-- Location: LABCELL_X31_Y9_N30
\Add11~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~105_sumout\ = SUM(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(25) $ 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) + ( \Add11~103\ ) + ( \Add11~102\ ))
-- \Add11~106\ = CARRY(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) 
-- + ( \Add11~103\ ) + ( \Add11~102\ ))
-- \Add11~107\ = SHARE((!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(25) & (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(25) & \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(25))) # 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(25) & ((\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(25)) # (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(25)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datac => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datad => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	cin => \Add11~102\,
	sharein => \Add11~103\,
	sumout => \Add11~105_sumout\,
	cout => \Add11~106\,
	shareout => \Add11~107\);

-- Location: LABCELL_X37_Y7_N30
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( !\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) 
-- + ( \Add5~39\ ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( !\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(25) $ (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(25))) ) + ( 
-- \Add5~39\ ) + ( \Add5~38\ ))
-- \Add5~43\ = SHARE((!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(25) & (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(25) & \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(25))) # 
-- (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(25) & ((\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(25)) # (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(25)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datac => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	datad => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(25),
	cin => \Add5~38\,
	sharein => \Add5~39\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\,
	shareout => \Add5~43\);

-- Location: LABCELL_X36_Y7_N0
\Add11~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~41_sumout\ = SUM(( !\Add9~41_sumout\ $ (!\Add11~105_sumout\ $ (\Add5~41_sumout\)) ) + ( \Add11~39\ ) + ( \Add11~38\ ))
-- \Add11~42\ = CARRY(( !\Add9~41_sumout\ $ (!\Add11~105_sumout\ $ (\Add5~41_sumout\)) ) + ( \Add11~39\ ) + ( \Add11~38\ ))
-- \Add11~43\ = SHARE((!\Add9~41_sumout\ & (\Add11~105_sumout\ & \Add5~41_sumout\)) # (\Add9~41_sumout\ & ((\Add5~41_sumout\) # (\Add11~105_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add9~41_sumout\,
	datac => \ALT_INV_Add11~105_sumout\,
	datad => \ALT_INV_Add5~41_sumout\,
	cin => \Add11~38\,
	sharein => \Add11~39\,
	sumout => \Add11~41_sumout\,
	cout => \Add11~42\,
	shareout => \Add11~43\);

-- Location: MLABCELL_X34_Y3_N0
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( !\Add0~41_sumout\ $ (!\Add3~105_sumout\ $ (\Add11~41_sumout\)) ) + ( \Add3~39\ ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( !\Add0~41_sumout\ $ (!\Add3~105_sumout\ $ (\Add11~41_sumout\)) ) + ( \Add3~39\ ) + ( \Add3~38\ ))
-- \Add3~43\ = SHARE((!\Add0~41_sumout\ & (\Add3~105_sumout\ & \Add11~41_sumout\)) # (\Add0~41_sumout\ & ((\Add11~41_sumout\) # (\Add3~105_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~41_sumout\,
	datac => \ALT_INV_Add3~105_sumout\,
	datad => \ALT_INV_Add11~41_sumout\,
	cin => \Add3~38\,
	sharein => \Add3~39\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\,
	shareout => \Add3~43\);

-- Location: LABCELL_X31_Y3_N33
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(26))) 
-- ) + ( \Add3~107\ ) + ( \Add3~106\ ))
-- \Add3~110\ = CARRY(( !\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(26))) ) + ( 
-- \Add3~107\ ) + ( \Add3~106\ ))
-- \Add3~111\ = SHARE((!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(26) & (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(26) & \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(26))) # 
-- (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(26) & ((\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(26)) # (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(26)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datac => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datad => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	cin => \Add3~106\,
	sharein => \Add3~107\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\,
	shareout => \Add3~111\);

-- Location: LABCELL_X19_Y9_N33
\Add15~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~45_sumout\ = SUM(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(26) $ 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(26))) ) + ( \Add15~43\ ) + ( \Add15~42\ ))
-- \Add15~46\ = CARRY(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(26))) ) 
-- + ( \Add15~43\ ) + ( \Add15~42\ ))
-- \Add15~47\ = SHARE((!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(26) & (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(26) & \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(26))) # 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(26) & ((\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(26)) # (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(26)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datac => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datad => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	cin => \Add15~42\,
	sharein => \Add15~43\,
	sumout => \Add15~45_sumout\,
	cout => \Add15~46\,
	shareout => \Add15~47\);

-- Location: MLABCELL_X21_Y5_N3
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Add15~45_sumout\)) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Add15~45_sumout\)) ) + ( \Add0~43\ ) + ( \Add0~42\ ))
-- \Add0~47\ = SHARE((!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(26) & (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(26) & \Add15~45_sumout\)) # 
-- (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(26) & ((\Add15~45_sumout\) # (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(26)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datac => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datad => \ALT_INV_Add15~45_sumout\,
	cin => \Add0~42\,
	sharein => \Add0~43\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\,
	shareout => \Add0~47\);

-- Location: LABCELL_X37_Y7_N33
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(26))) ) 
-- + ( \Add5~43\ ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(26))) ) + ( 
-- \Add5~43\ ) + ( \Add5~42\ ))
-- \Add5~47\ = SHARE((!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(26) & (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(26) & \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(26))) # 
-- (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(26) & ((\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(26)) # (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(26)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datac => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datad => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	cin => \Add5~42\,
	sharein => \Add5~43\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\,
	shareout => \Add5~47\);

-- Location: LABCELL_X31_Y9_N33
\Add11~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~109_sumout\ = SUM(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(26) $ 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(26))) ) + ( \Add11~107\ ) + ( \Add11~106\ ))
-- \Add11~110\ = CARRY(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(26))) ) 
-- + ( \Add11~107\ ) + ( \Add11~106\ ))
-- \Add11~111\ = SHARE((!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(26) & (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(26) & \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(26))) # 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(26) & ((\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(26)) # (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(26)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datac => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datad => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	cin => \Add11~106\,
	sharein => \Add11~107\,
	sumout => \Add11~109_sumout\,
	cout => \Add11~110\,
	shareout => \Add11~111\);

-- Location: LABCELL_X53_Y7_N33
\Add9~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~45_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(26))) 
-- ) + ( \Add9~43\ ) + ( \Add9~42\ ))
-- \Add9~46\ = CARRY(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(26) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(26))) ) + ( 
-- \Add9~43\ ) + ( \Add9~42\ ))
-- \Add9~47\ = SHARE((!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(26) & (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(26) & \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(26))) # 
-- (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(26) & ((\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(26)) # (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(26)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datac => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	datad => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(26),
	cin => \Add9~42\,
	sharein => \Add9~43\,
	sumout => \Add9~45_sumout\,
	cout => \Add9~46\,
	shareout => \Add9~47\);

-- Location: LABCELL_X36_Y7_N3
\Add11~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~45_sumout\ = SUM(( !\Add5~45_sumout\ $ (!\Add11~109_sumout\ $ (\Add9~45_sumout\)) ) + ( \Add11~43\ ) + ( \Add11~42\ ))
-- \Add11~46\ = CARRY(( !\Add5~45_sumout\ $ (!\Add11~109_sumout\ $ (\Add9~45_sumout\)) ) + ( \Add11~43\ ) + ( \Add11~42\ ))
-- \Add11~47\ = SHARE((!\Add5~45_sumout\ & (\Add11~109_sumout\ & \Add9~45_sumout\)) # (\Add5~45_sumout\ & ((\Add9~45_sumout\) # (\Add11~109_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~45_sumout\,
	datac => \ALT_INV_Add11~109_sumout\,
	datad => \ALT_INV_Add9~45_sumout\,
	cin => \Add11~42\,
	sharein => \Add11~43\,
	sumout => \Add11~45_sumout\,
	cout => \Add11~46\,
	shareout => \Add11~47\);

-- Location: MLABCELL_X34_Y3_N3
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( !\Add3~109_sumout\ $ (!\Add0~45_sumout\ $ (\Add11~45_sumout\)) ) + ( \Add3~43\ ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( !\Add3~109_sumout\ $ (!\Add0~45_sumout\ $ (\Add11~45_sumout\)) ) + ( \Add3~43\ ) + ( \Add3~42\ ))
-- \Add3~47\ = SHARE((!\Add3~109_sumout\ & (\Add0~45_sumout\ & \Add11~45_sumout\)) # (\Add3~109_sumout\ & ((\Add11~45_sumout\) # (\Add0~45_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~109_sumout\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_Add11~45_sumout\,
	cin => \Add3~42\,
	sharein => \Add3~43\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\,
	shareout => \Add3~47\);

-- Location: LABCELL_X37_Y7_N36
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) 
-- + ( \Add5~47\ ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) + ( 
-- \Add5~47\ ) + ( \Add5~46\ ))
-- \Add5~51\ = SHARE((!\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(27) & (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(27) & \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(27))) # 
-- (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(27) & ((\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(27)) # (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(27)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datac => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datad => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	cin => \Add5~46\,
	sharein => \Add5~47\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\,
	shareout => \Add5~51\);

-- Location: LABCELL_X31_Y9_N36
\Add11~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~113_sumout\ = SUM(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(27) $ 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) + ( \Add11~111\ ) + ( \Add11~110\ ))
-- \Add11~114\ = CARRY(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) 
-- + ( \Add11~111\ ) + ( \Add11~110\ ))
-- \Add11~115\ = SHARE((!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(27) & (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(27) & \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(27))) # 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(27) & ((\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(27)) # (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(27)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datac => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datad => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	cin => \Add11~110\,
	sharein => \Add11~111\,
	sumout => \Add11~113_sumout\,
	cout => \Add11~114\,
	shareout => \Add11~115\);

-- Location: LABCELL_X53_Y7_N36
\Add9~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~49_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(27))) 
-- ) + ( \Add9~47\ ) + ( \Add9~46\ ))
-- \Add9~50\ = CARRY(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) + ( 
-- \Add9~47\ ) + ( \Add9~46\ ))
-- \Add9~51\ = SHARE((!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(27) & (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(27) & \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(27))) # 
-- (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(27) & ((\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(27)) # (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(27)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datac => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datad => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	cin => \Add9~46\,
	sharein => \Add9~47\,
	sumout => \Add9~49_sumout\,
	cout => \Add9~50\,
	shareout => \Add9~51\);

-- Location: LABCELL_X36_Y7_N6
\Add11~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~49_sumout\ = SUM(( !\Add5~49_sumout\ $ (!\Add11~113_sumout\ $ (\Add9~49_sumout\)) ) + ( \Add11~47\ ) + ( \Add11~46\ ))
-- \Add11~50\ = CARRY(( !\Add5~49_sumout\ $ (!\Add11~113_sumout\ $ (\Add9~49_sumout\)) ) + ( \Add11~47\ ) + ( \Add11~46\ ))
-- \Add11~51\ = SHARE((!\Add5~49_sumout\ & (\Add11~113_sumout\ & \Add9~49_sumout\)) # (\Add5~49_sumout\ & ((\Add9~49_sumout\) # (\Add11~113_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add5~49_sumout\,
	datac => \ALT_INV_Add11~113_sumout\,
	datad => \ALT_INV_Add9~49_sumout\,
	cin => \Add11~46\,
	sharein => \Add11~47\,
	sumout => \Add11~49_sumout\,
	cout => \Add11~50\,
	shareout => \Add11~51\);

-- Location: LABCELL_X19_Y9_N36
\Add15~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~49_sumout\ = SUM(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(27) $ 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) + ( \Add15~47\ ) + ( \Add15~46\ ))
-- \Add15~50\ = CARRY(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) 
-- + ( \Add15~47\ ) + ( \Add15~46\ ))
-- \Add15~51\ = SHARE((!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(27) & (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(27) & \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(27))) # 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(27) & ((\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(27)) # (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(27)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datac => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datad => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	cin => \Add15~46\,
	sharein => \Add15~47\,
	sumout => \Add15~49_sumout\,
	cout => \Add15~50\,
	shareout => \Add15~51\);

-- Location: MLABCELL_X21_Y5_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Add15~49_sumout\ $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Add15~49_sumout\ $ (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) + ( \Add0~47\ ) + ( \Add0~46\ ))
-- \Add0~51\ = SHARE((!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(27) & (\Add15~49_sumout\ & \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(27))) # 
-- (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(27) & ((\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(27)) # (\Add15~49_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datac => \ALT_INV_Add15~49_sumout\,
	datad => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	cin => \Add0~46\,
	sharein => \Add0~47\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\,
	shareout => \Add0~51\);

-- Location: LABCELL_X31_Y3_N36
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(27))) 
-- ) + ( \Add3~111\ ) + ( \Add3~110\ ))
-- \Add3~114\ = CARRY(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(27) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(27))) ) + ( 
-- \Add3~111\ ) + ( \Add3~110\ ))
-- \Add3~115\ = SHARE((!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(27) & (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(27) & \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(27))) # 
-- (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(27) & ((\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(27)) # (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(27)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datac => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	datad => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(27),
	cin => \Add3~110\,
	sharein => \Add3~111\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\,
	shareout => \Add3~115\);

-- Location: MLABCELL_X34_Y3_N6
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( !\Add11~49_sumout\ $ (!\Add0~49_sumout\ $ (\Add3~113_sumout\)) ) + ( \Add3~47\ ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( !\Add11~49_sumout\ $ (!\Add0~49_sumout\ $ (\Add3~113_sumout\)) ) + ( \Add3~47\ ) + ( \Add3~46\ ))
-- \Add3~51\ = SHARE((!\Add11~49_sumout\ & (\Add0~49_sumout\ & \Add3~113_sumout\)) # (\Add11~49_sumout\ & ((\Add3~113_sumout\) # (\Add0~49_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~49_sumout\,
	datac => \ALT_INV_Add0~49_sumout\,
	datad => \ALT_INV_Add3~113_sumout\,
	cin => \Add3~46\,
	sharein => \Add3~47\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\,
	shareout => \Add3~51\);

-- Location: LABCELL_X19_Y9_N39
\Add15~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~53_sumout\ = SUM(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(28) $ 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) + ( \Add15~51\ ) + ( \Add15~50\ ))
-- \Add15~54\ = CARRY(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) 
-- + ( \Add15~51\ ) + ( \Add15~50\ ))
-- \Add15~55\ = SHARE((!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(28) & (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(28) & \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(28))) # 
-- (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(28) & ((\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(28)) # (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(28)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datac => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datad => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	cin => \Add15~50\,
	sharein => \Add15~51\,
	sumout => \Add15~53_sumout\,
	cout => \Add15~54\,
	shareout => \Add15~55\);

-- Location: MLABCELL_X21_Y5_N9
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( !\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Add15~53_sumout\ $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( !\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Add15~53_sumout\ $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) + ( \Add0~51\ ) + ( \Add0~50\ ))
-- \Add0~55\ = SHARE((!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(28) & (\Add15~53_sumout\ & \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(28))) # 
-- (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(28) & ((\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(28)) # (\Add15~53_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datac => \ALT_INV_Add15~53_sumout\,
	datad => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	cin => \Add0~50\,
	sharein => \Add0~51\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\,
	shareout => \Add0~55\);

-- Location: LABCELL_X31_Y9_N39
\Add11~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~117_sumout\ = SUM(( !\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(28) $ 
-- (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) + ( \Add11~115\ ) + ( \Add11~114\ ))
-- \Add11~118\ = CARRY(( !\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) 
-- + ( \Add11~115\ ) + ( \Add11~114\ ))
-- \Add11~119\ = SHARE((!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(28) & (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(28) & \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(28))) # 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(28) & ((\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(28)) # (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(28)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datac => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datad => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	cin => \Add11~114\,
	sharein => \Add11~115\,
	sumout => \Add11~117_sumout\,
	cout => \Add11~118\,
	shareout => \Add11~119\);

-- Location: LABCELL_X53_Y7_N39
\Add9~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~53_sumout\ = SUM(( !\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(28))) 
-- ) + ( \Add9~51\ ) + ( \Add9~50\ ))
-- \Add9~54\ = CARRY(( !\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) + ( 
-- \Add9~51\ ) + ( \Add9~50\ ))
-- \Add9~55\ = SHARE((!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(28) & (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(28) & \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(28))) # 
-- (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(28) & ((\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(28)) # (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(28)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datac => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datad => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	cin => \Add9~50\,
	sharein => \Add9~51\,
	sumout => \Add9~53_sumout\,
	cout => \Add9~54\,
	shareout => \Add9~55\);

-- Location: LABCELL_X37_Y7_N39
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( !\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) 
-- + ( \Add5~51\ ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( !\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) + ( 
-- \Add5~51\ ) + ( \Add5~50\ ))
-- \Add5~55\ = SHARE((!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(28) & (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(28) & \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(28))) # 
-- (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(28) & ((\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(28)) # (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(28)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datac => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datad => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	cin => \Add5~50\,
	sharein => \Add5~51\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\,
	shareout => \Add5~55\);

-- Location: LABCELL_X36_Y7_N9
\Add11~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~53_sumout\ = SUM(( !\Add11~117_sumout\ $ (!\Add9~53_sumout\ $ (\Add5~53_sumout\)) ) + ( \Add11~51\ ) + ( \Add11~50\ ))
-- \Add11~54\ = CARRY(( !\Add11~117_sumout\ $ (!\Add9~53_sumout\ $ (\Add5~53_sumout\)) ) + ( \Add11~51\ ) + ( \Add11~50\ ))
-- \Add11~55\ = SHARE((!\Add11~117_sumout\ & (\Add9~53_sumout\ & \Add5~53_sumout\)) # (\Add11~117_sumout\ & ((\Add5~53_sumout\) # (\Add9~53_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~117_sumout\,
	datac => \ALT_INV_Add9~53_sumout\,
	datad => \ALT_INV_Add5~53_sumout\,
	cin => \Add11~50\,
	sharein => \Add11~51\,
	sumout => \Add11~53_sumout\,
	cout => \Add11~54\,
	shareout => \Add11~55\);

-- Location: LABCELL_X31_Y3_N39
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(28))) 
-- ) + ( \Add3~115\ ) + ( \Add3~114\ ))
-- \Add3~118\ = CARRY(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(28) $ (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(28))) ) + ( 
-- \Add3~115\ ) + ( \Add3~114\ ))
-- \Add3~119\ = SHARE((!\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(28) & (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(28) & \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(28))) # 
-- (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(28) & ((\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(28)) # (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(28)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datac => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	datad => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(28),
	cin => \Add3~114\,
	sharein => \Add3~115\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\,
	shareout => \Add3~119\);

-- Location: MLABCELL_X34_Y3_N9
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( !\Add0~53_sumout\ $ (!\Add11~53_sumout\ $ (\Add3~117_sumout\)) ) + ( \Add3~51\ ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( !\Add0~53_sumout\ $ (!\Add11~53_sumout\ $ (\Add3~117_sumout\)) ) + ( \Add3~51\ ) + ( \Add3~50\ ))
-- \Add3~55\ = SHARE((!\Add0~53_sumout\ & (\Add11~53_sumout\ & \Add3~117_sumout\)) # (\Add0~53_sumout\ & ((\Add3~117_sumout\) # (\Add11~53_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~53_sumout\,
	datac => \ALT_INV_Add11~53_sumout\,
	datad => \ALT_INV_Add3~117_sumout\,
	cin => \Add3~50\,
	sharein => \Add3~51\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\,
	shareout => \Add3~55\);

-- Location: LABCELL_X31_Y3_N42
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( !\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(29))) 
-- ) + ( \Add3~119\ ) + ( \Add3~118\ ))
-- \Add3~122\ = CARRY(( !\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(29))) ) + ( 
-- \Add3~119\ ) + ( \Add3~118\ ))
-- \Add3~123\ = SHARE((!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(29) & (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(29) & \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(29))) # 
-- (\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(29) & ((\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(29)) # (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(29)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datac => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datad => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	cin => \Add3~118\,
	sharein => \Add3~119\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\,
	shareout => \Add3~123\);

-- Location: LABCELL_X31_Y9_N42
\Add11~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~121_sumout\ = SUM(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(29) $ 
-- (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(29))) ) + ( \Add11~119\ ) + ( \Add11~118\ ))
-- \Add11~122\ = CARRY(( !\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(29))) ) 
-- + ( \Add11~119\ ) + ( \Add11~118\ ))
-- \Add11~123\ = SHARE((!\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(29) & (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(29) & \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(29))) # 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(29) & ((\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(29)) # (\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(29)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datac => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datad => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	cin => \Add11~118\,
	sharein => \Add11~119\,
	sumout => \Add11~121_sumout\,
	cout => \Add11~122\,
	shareout => \Add11~123\);

-- Location: LABCELL_X53_Y7_N42
\Add9~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~57_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(29))) 
-- ) + ( \Add9~55\ ) + ( \Add9~54\ ))
-- \Add9~58\ = CARRY(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(29))) ) + ( 
-- \Add9~55\ ) + ( \Add9~54\ ))
-- \Add9~59\ = SHARE((!\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(29) & (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(29) & \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(29))) # 
-- (\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(29) & ((\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(29)) # (\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(29)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datac => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datad => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	cin => \Add9~54\,
	sharein => \Add9~55\,
	sumout => \Add9~57_sumout\,
	cout => \Add9~58\,
	shareout => \Add9~59\);

-- Location: LABCELL_X37_Y7_N42
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( !\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(29))) ) 
-- + ( \Add5~55\ ) + ( \Add5~54\ ))
-- \Add5~58\ = CARRY(( !\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(29))) ) + ( 
-- \Add5~55\ ) + ( \Add5~54\ ))
-- \Add5~59\ = SHARE((!\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(29) & (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(29) & \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(29))) # 
-- (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(29) & ((\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(29)) # (\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(29)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datac => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datad => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	cin => \Add5~54\,
	sharein => \Add5~55\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\,
	shareout => \Add5~59\);

-- Location: LABCELL_X36_Y7_N12
\Add11~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~57_sumout\ = SUM(( !\Add11~121_sumout\ $ (!\Add9~57_sumout\ $ (\Add5~57_sumout\)) ) + ( \Add11~55\ ) + ( \Add11~54\ ))
-- \Add11~58\ = CARRY(( !\Add11~121_sumout\ $ (!\Add9~57_sumout\ $ (\Add5~57_sumout\)) ) + ( \Add11~55\ ) + ( \Add11~54\ ))
-- \Add11~59\ = SHARE((!\Add11~121_sumout\ & (\Add9~57_sumout\ & \Add5~57_sumout\)) # (\Add11~121_sumout\ & ((\Add5~57_sumout\) # (\Add9~57_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add11~121_sumout\,
	datac => \ALT_INV_Add9~57_sumout\,
	datad => \ALT_INV_Add5~57_sumout\,
	cin => \Add11~54\,
	sharein => \Add11~55\,
	sumout => \Add11~57_sumout\,
	cout => \Add11~58\,
	shareout => \Add11~59\);

-- Location: LABCELL_X19_Y9_N42
\Add15~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~57_sumout\ = SUM(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(29) $ 
-- (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(29))) ) + ( \Add15~55\ ) + ( \Add15~54\ ))
-- \Add15~58\ = CARRY(( !\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(29))) ) 
-- + ( \Add15~55\ ) + ( \Add15~54\ ))
-- \Add15~59\ = SHARE((!\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(29) & (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(29) & \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(29))) # 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(29) & ((\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(29)) # (\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(29)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datac => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datad => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	cin => \Add15~54\,
	sharein => \Add15~55\,
	sumout => \Add15~57_sumout\,
	cout => \Add15~58\,
	shareout => \Add15~59\);

-- Location: MLABCELL_X21_Y5_N12
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( !\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Add15~57_sumout\)) ) + ( \Add0~55\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( !\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (!\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(29) $ (\Add15~57_sumout\)) ) + ( \Add0~55\ ) + ( \Add0~54\ ))
-- \Add0~59\ = SHARE((!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(29) & (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(29) & \Add15~57_sumout\)) # 
-- (\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(29) & ((\Add15~57_sumout\) # (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(29)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datac => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(29),
	datad => \ALT_INV_Add15~57_sumout\,
	cin => \Add0~54\,
	sharein => \Add0~55\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\,
	shareout => \Add0~59\);

-- Location: MLABCELL_X34_Y3_N12
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( !\Add3~121_sumout\ $ (!\Add11~57_sumout\ $ (\Add0~57_sumout\)) ) + ( \Add3~55\ ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( !\Add3~121_sumout\ $ (!\Add11~57_sumout\ $ (\Add0~57_sumout\)) ) + ( \Add3~55\ ) + ( \Add3~54\ ))
-- \Add3~59\ = SHARE((!\Add3~121_sumout\ & (\Add11~57_sumout\ & \Add0~57_sumout\)) # (\Add3~121_sumout\ & ((\Add0~57_sumout\) # (\Add11~57_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add3~121_sumout\,
	datac => \ALT_INV_Add11~57_sumout\,
	datad => \ALT_INV_Add0~57_sumout\,
	cin => \Add3~54\,
	sharein => \Add3~55\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\,
	shareout => \Add3~59\);

-- Location: LABCELL_X19_Y9_N45
\Add15~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add15~61_sumout\ = SUM(( !\Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (!\Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|result\(30) $ 
-- (\Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|result\(30))) ) + ( \Add15~59\ ) + ( \Add15~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:15:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datac => \Low_PassFilter:16:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datad => \Low_PassFilter:14:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	cin => \Add15~58\,
	sharein => \Add15~59\,
	sumout => \Add15~61_sumout\);

-- Location: MLABCELL_X21_Y5_N15
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( !\Add15~61_sumout\ $ (!\Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (\Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|result\(30))) ) + ( \Add0~59\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add15~61_sumout\,
	datac => \Low_PassFilter:1:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datad => \Low_PassFilter:0:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	cin => \Add0~58\,
	sharein => \Add0~59\,
	sumout => \Add0~61_sumout\);

-- Location: LABCELL_X37_Y7_N45
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( !\Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (!\Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (\Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|result\(30))) ) 
-- + ( \Add5~59\ ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:7:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datac => \Low_PassFilter:6:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datad => \Low_PassFilter:5:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	cin => \Add5~58\,
	sharein => \Add5~59\,
	sumout => \Add5~61_sumout\);

-- Location: LABCELL_X31_Y9_N45
\Add11~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~125_sumout\ = SUM(( !\Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (!\Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|result\(30) $ 
-- (\Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|result\(30))) ) + ( \Add11~123\ ) + ( \Add11~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:11:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datac => \Low_PassFilter:13:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datad => \Low_PassFilter:12:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	cin => \Add11~122\,
	sharein => \Add11~123\,
	sumout => \Add11~125_sumout\);

-- Location: LABCELL_X53_Y7_N45
\Add9~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~61_sumout\ = SUM(( !\Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (!\Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (\Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|result\(30))) 
-- ) + ( \Add9~59\ ) + ( \Add9~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \Low_PassFilter:8:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datac => \Low_PassFilter:9:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datad => \Low_PassFilter:10:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	cin => \Add9~58\,
	sharein => \Add9~59\,
	sumout => \Add9~61_sumout\);

-- Location: LABCELL_X36_Y7_N15
\Add11~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~61_sumout\ = SUM(( !\Add5~61_sumout\ $ (!\Add11~125_sumout\ $ (\Add9~61_sumout\)) ) + ( \Add11~59\ ) + ( \Add11~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~61_sumout\,
	datac => \ALT_INV_Add11~125_sumout\,
	datad => \ALT_INV_Add9~61_sumout\,
	cin => \Add11~58\,
	sharein => \Add11~59\,
	sumout => \Add11~61_sumout\);

-- Location: LABCELL_X31_Y3_N45
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( !\Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (!\Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|result\(30) $ (\Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|result\(30))) 
-- ) + ( \Add3~123\ ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \Low_PassFilter:4:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datac => \Low_PassFilter:2:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	datad => \Low_PassFilter:3:low_Pass|lpm_mult_component|auto_generated|ALT_INV_result\(30),
	cin => \Add3~122\,
	sharein => \Add3~123\,
	sumout => \Add3~125_sumout\);

-- Location: MLABCELL_X34_Y3_N15
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( !\Add0~61_sumout\ $ (!\Add11~61_sumout\ $ (\Add3~125_sumout\)) ) + ( \Add3~59\ ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~61_sumout\,
	datac => \ALT_INV_Add11~61_sumout\,
	datad => \ALT_INV_Add3~125_sumout\,
	cin => \Add3~58\,
	sharein => \Add3~59\,
	sumout => \Add3~61_sumout\);

-- Location: MLABCELL_X34_Y37_N0
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


