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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/22/2024 01:03:01"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Matriz_ubicacion IS
    PORT (
	ADC_SCLK : OUT std_logic;
	CLK : IN std_logic;
	Reset1 : IN std_logic;
	SENSOR_LINEA : IN std_logic;
	SENSOR_MURO : IN std_logic;
	ADC_DOUT : IN std_logic;
	ADC_CS_N : OUT std_logic;
	ADC_DIN : OUT std_logic;
	MD0 : OUT std_logic;
	MD1 : OUT std_logic;
	MI0 : OUT std_logic;
	MI1 : OUT std_logic;
	VELD : OUT std_logic;
	VELI : OUT std_logic;
	GIROO : OUT std_logic;
	SENTIDOO : OUT std_logic;
	MUROO : OUT std_logic;
	CUENTAA : OUT std_logic;
	pos_act : OUT std_logic_vector(3 DOWNTO 0);
	sent_act : OUT std_logic_vector(1 DOWNTO 0)
	);
END Matriz_ubicacion;

-- Design Ports Information
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DIN	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MD0	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MD1	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MI0	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MI1	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VELD	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VELI	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GIROO	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENTIDOO	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUROO	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CUENTAA	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_act[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_act[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_act[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pos_act[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sent_act[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sent_act[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset1	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_MURO	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SENSOR_LINEA	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DOUT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Matriz_ubicacion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset1 : std_logic;
SIGNAL ww_SENSOR_LINEA : std_logic;
SIGNAL ww_SENSOR_MURO : std_logic;
SIGNAL ww_ADC_DOUT : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_DIN : std_logic;
SIGNAL ww_MD0 : std_logic;
SIGNAL ww_MD1 : std_logic;
SIGNAL ww_MI0 : std_logic;
SIGNAL ww_MI1 : std_logic;
SIGNAL ww_VELD : std_logic;
SIGNAL ww_VELI : std_logic;
SIGNAL ww_GIROO : std_logic;
SIGNAL ww_SENTIDOO : std_logic;
SIGNAL ww_MUROO : std_logic;
SIGNAL ww_CUENTAA : std_logic;
SIGNAL ww_pos_act : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sent_act : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst30|fstate.girando~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|fstate.nueva_celda~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~17\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~19\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~18_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~21\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~20_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~23\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~22_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[7]~24_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~29\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~31\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst28|cnt[1]~12_combout\ : std_logic;
SIGNAL \inst28|cnt[2]~14_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst|inst3|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux0~5_combout\ : std_logic;
SIGNAL \inst33|inst4|min_value~0_combout\ : std_logic;
SIGNAL \inst4|inst11|estado~q\ : std_logic;
SIGNAL \inst12|inst11|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux2~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~8_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux1~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux1~4_combout\ : std_logic;
SIGNAL \inst12|inst5|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[2]~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[2]~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[2]~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[2]~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[2]~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[1]~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[1]~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[0]~10_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[0]~11_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[0]~12_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[0]~13_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan1~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[0]~12_combout\ : std_logic;
SIGNAL \inst4|inst8|estado~q\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~8_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~9_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~3_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~4_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~10_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~4_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~7_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~10_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst1|inst|Min_Out[0]~5_combout\ : std_logic;
SIGNAL \inst2|inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst2|inst|LessThan5~1_combout\ : std_logic;
SIGNAL \inst2|inst|LessThan5~3_combout\ : std_logic;
SIGNAL \inst2|inst|Min_Out[2]~2_combout\ : std_logic;
SIGNAL \inst14|inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst14|inst|Min_Out[2]~7_combout\ : std_logic;
SIGNAL \inst14|inst|Min_Out[0]~8_combout\ : std_logic;
SIGNAL \inst15|inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst15|inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst15|inst|LessThan2~2_combout\ : std_logic;
SIGNAL \inst5|inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst5|inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst5|inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~9_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~10_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[2]~7_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[2]~8_combout\ : std_logic;
SIGNAL \inst|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst11|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst12|inst|Min_Out[2]~1_combout\ : std_logic;
SIGNAL \inst12|inst|Min_Out[2]~2_combout\ : std_logic;
SIGNAL \inst12|inst|Min_Out[2]~3_combout\ : std_logic;
SIGNAL \inst12|inst|Min_Out[0]~5_combout\ : std_logic;
SIGNAL \inst13|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst13|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst13|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst13|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst13|inst|Min_Out[2]~7_combout\ : std_logic;
SIGNAL \inst13|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst13|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~9_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan6~4_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst7|inst|Min_Out[0]~3_combout\ : std_logic;
SIGNAL \inst7|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~13_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[0]~1_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan8~0_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst6|inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~9_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[0]~1_combout\ : std_logic;
SIGNAL \inst6|inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[2]~5_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[2]~6_combout\ : std_logic;
SIGNAL \inst35|inst3|Mux0~5_combout\ : std_logic;
SIGNAL \inst|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst4|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst12|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst12|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst4|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst28|btn_out~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~5_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~7_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~10_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~15_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador[16]~17_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~4_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~19_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\ : std_logic;
SIGNAL \inst33|inst1|inst5|Y[2]~5_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~12_combout\ : std_logic;
SIGNAL \inst1|inst|Min_Out[0]~10_combout\ : std_logic;
SIGNAL \inst14|inst|Min_Out[2]~10_combout\ : std_logic;
SIGNAL \inst5|inst|LessThan6~2_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[0]~13_combout\ : std_logic;
SIGNAL \inst13|inst|Min_Out[2]~10_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan6~5_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ : std_logic;
SIGNAL \inst30|fstate.girando~clkctrl_outclk\ : std_logic;
SIGNAL \inst30|fstate.nueva_celda~clkctrl_outclk\ : std_logic;
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[10]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[6]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|tiempo_limite[1]~feeder_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[0]~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~1_combout\ : std_logic;
SIGNAL \Reset1~input_o\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|go~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|go~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|go~q\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~11\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~13\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~15\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~16_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|cs_n~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~0_combout\ : std_logic;
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~3_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~5_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~6_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0[5]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~9_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~8_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~11_combout\ : std_logic;
SIGNAL \inst33|inst3|inst9|LessThan0~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst9|LessThan0~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst9|LessThan0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst9|LessThan0~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst2|Q[0]~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst2|Q[0]~5\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst2|Q[1]~6_combout\ : std_logic;
SIGNAL \SENSOR_LINEA~input_o\ : std_logic;
SIGNAL \inst28|btn_stable~feeder_combout\ : std_logic;
SIGNAL \inst28|cnt[0]~10_combout\ : std_logic;
SIGNAL \inst28|btn_reg~feeder_combout\ : std_logic;
SIGNAL \inst28|btn_reg~q\ : std_logic;
SIGNAL \inst28|process_0~0_combout\ : std_logic;
SIGNAL \inst28|cnt[0]~11\ : std_logic;
SIGNAL \inst28|cnt[1]~13\ : std_logic;
SIGNAL \inst28|cnt[2]~15\ : std_logic;
SIGNAL \inst28|cnt[3]~16_combout\ : std_logic;
SIGNAL \inst28|cnt[3]~17\ : std_logic;
SIGNAL \inst28|cnt[4]~18_combout\ : std_logic;
SIGNAL \inst28|cnt[4]~19\ : std_logic;
SIGNAL \inst28|cnt[5]~20_combout\ : std_logic;
SIGNAL \inst28|cnt[5]~21\ : std_logic;
SIGNAL \inst28|cnt[6]~22_combout\ : std_logic;
SIGNAL \inst28|cnt[6]~23\ : std_logic;
SIGNAL \inst28|cnt[7]~24_combout\ : std_logic;
SIGNAL \inst28|btn_out~1_combout\ : std_logic;
SIGNAL \inst28|cnt[7]~25\ : std_logic;
SIGNAL \inst28|cnt[8]~26_combout\ : std_logic;
SIGNAL \inst28|cnt[8]~27\ : std_logic;
SIGNAL \inst28|cnt[9]~28_combout\ : std_logic;
SIGNAL \inst28|btn_out~2_combout\ : std_logic;
SIGNAL \inst28|btn_stable~q\ : std_logic;
SIGNAL \inst28|btn_out~feeder_combout\ : std_logic;
SIGNAL \inst28|btn_out~q\ : std_logic;
SIGNAL \SENSOR_MURO~input_o\ : std_logic;
SIGNAL \inst30|Selector1~0_combout\ : std_logic;
SIGNAL \inst30|fstate.cruzando~q\ : std_logic;
SIGNAL \inst30|Selector2~0_combout\ : std_logic;
SIGNAL \inst30|fstate.nueva_celda~q\ : std_logic;
SIGNAL \inst33|inst5|seleccion[1]~7_combout\ : std_logic;
SIGNAL \inst35|inst3|Mux0~13_combout\ : std_logic;
SIGNAL \inst6|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst6|inst8|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~14_combout\ : std_logic;
SIGNAL \inst35|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst7|inst3|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~9_combout\ : std_logic;
SIGNAL \inst1|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst1|inst11|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~11_combout\ : std_logic;
SIGNAL \inst|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst|inst5|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~12_combout\ : std_logic;
SIGNAL \inst5|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst5|inst11|estado~q\ : std_logic;
SIGNAL \inst5|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst5|inst8|estado~q\ : std_logic;
SIGNAL \inst1|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst1|inst8|estado~q\ : std_logic;
SIGNAL \inst7|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst7|inst11|estado~q\ : std_logic;
SIGNAL \inst7|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst7|inst5|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~3_combout\ : std_logic;
SIGNAL \inst11|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst11|inst11|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~6_combout\ : std_logic;
SIGNAL \inst14|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst14|inst3|estado~q\ : std_logic;
SIGNAL \inst10|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst10|inst8|estado~q\ : std_logic;
SIGNAL \inst10|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst14|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst14|inst11|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~8_combout\ : std_logic;
SIGNAL \inst12|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst12|inst3|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~4_combout\ : std_logic;
SIGNAL \inst8|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst8|inst5|estado~q\ : std_logic;
SIGNAL \inst8|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst35|inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst9|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst9|inst3|estado~q\ : std_logic;
SIGNAL \inst9|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst9|inst5|estado~q\ : std_logic;
SIGNAL \inst9|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst12|inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst12|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst12|inst8|estado~q\ : std_logic;
SIGNAL \inst13|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst12|inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst9|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst9|inst11|estado~q\ : std_logic;
SIGNAL \inst8|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst35|inst3|Mux0~15_combout\ : std_logic;
SIGNAL \inst4|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst4|inst3|estado~q\ : std_logic;
SIGNAL \inst4|inst2|reg_val[0]~0_combout\ : std_logic;
SIGNAL \inst8|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst8|inst8|estado~q\ : std_logic;
SIGNAL \inst9|inst|Min_Out[1]~9_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[1]~10_combout\ : std_logic;
SIGNAL \inst9|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst8|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst8|inst3|estado~q\ : std_logic;
SIGNAL \inst8|inst|Min_Out[1]~2_combout\ : std_logic;
SIGNAL \inst8|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst9|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst9|inst8|estado~q\ : std_logic;
SIGNAL \inst9|inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~9_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[0]~0_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[0]~7_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[0]~8_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~9_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~10_combout\ : std_logic;
SIGNAL \inst8|inst|Min_Out[2]~0_combout\ : std_logic;
SIGNAL \inst8|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst12|inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst12|inst|Min_Out[1]~4_combout\ : std_logic;
SIGNAL \inst12|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst13|inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst14|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst13|inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst13|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst13|inst3|estado~q\ : std_logic;
SIGNAL \inst13|inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst13|inst|Min_Out[2]~6_combout\ : std_logic;
SIGNAL \inst13|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst13|inst11|estado~q\ : std_logic;
SIGNAL \inst13|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst13|inst|Min_Out[0]~8_combout\ : std_logic;
SIGNAL \inst13|inst|Min_Out[0]~11_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst9|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan6~4_combout\ : std_logic;
SIGNAL \inst9|inst|LessThan6~5_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[0]~3_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[0]~4_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[2]~5_combout\ : std_logic;
SIGNAL \inst9|inst|Min_Out[2]~6_combout\ : std_logic;
SIGNAL \inst9|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~11_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~12_combout\ : std_logic;
SIGNAL \inst8|inst|process_0~14_combout\ : std_logic;
SIGNAL \inst8|inst|Min_Out[0]~1_combout\ : std_logic;
SIGNAL \inst8|inst|Min_Out[0]~3_combout\ : std_logic;
SIGNAL \inst12|inst|Min_Out[0]~6_combout\ : std_logic;
SIGNAL \inst12|inst|Min_Out[2]~0_combout\ : std_logic;
SIGNAL \inst12|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst13|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst13|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst13|inst|Min_Out[1]~9_combout\ : std_logic;
SIGNAL \inst13|inst|Min_Out[1]~12_combout\ : std_logic;
SIGNAL \inst13|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst14|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst14|inst8|estado~q\ : std_logic;
SIGNAL \inst11|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst11|inst3|estado~q\ : std_logic;
SIGNAL \inst35|inst3|Mux0~10_combout\ : std_logic;
SIGNAL \inst2|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst2|inst11|estado~q\ : std_logic;
SIGNAL \inst2|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst2|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst2|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst7|inst|Min_Out[1]~4_combout\ : std_logic;
SIGNAL \inst7|inst16|Add0~2_combout\ : std_logic;
SIGNAL \inst11|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst11|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst11|inst5|estado~q\ : std_logic;
SIGNAL \inst11|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst11|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst11|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst11|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst11|inst|Min_Out[0]~3_combout\ : std_logic;
SIGNAL \inst11|inst|Min_Out[0]~5_combout\ : std_logic;
SIGNAL \inst15|inst|LessThan2~3_combout\ : std_logic;
SIGNAL \inst15|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst15|inst11|estado~q\ : std_logic;
SIGNAL \inst15|inst|Min_Out[0]~2_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst14|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst35|inst3|Mux0~7_combout\ : std_logic;
SIGNAL \inst15|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst15|inst3|estado~q\ : std_logic;
SIGNAL \inst15|inst|Min_Out[2]~0_combout\ : std_logic;
SIGNAL \inst11|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst11|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst11|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst11|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst11|inst|Min_Out[1]~4_combout\ : std_logic;
SIGNAL \inst11|inst16|Add0~2_combout\ : std_logic;
SIGNAL \inst15|inst|Min_Out[1]~1_combout\ : std_logic;
SIGNAL \inst15|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst14|inst|LessThan4~0_combout\ : std_logic;
SIGNAL \inst14|inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst14|inst|Min_Out[2]~6_combout\ : std_logic;
SIGNAL \inst15|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst14|inst|Min_Out[1]~9_combout\ : std_logic;
SIGNAL \inst14|inst|Min_Out[1]~12_combout\ : std_logic;
SIGNAL \inst14|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst35|inst3|Mux0~2_combout\ : std_logic;
SIGNAL \inst10|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst10|inst5|estado~q\ : std_logic;
SIGNAL \inst10|inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst10|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst10|inst11|estado~q\ : std_logic;
SIGNAL \inst10|inst|LessThan8~0_combout\ : std_logic;
SIGNAL \inst10|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst10|inst3|estado~q\ : std_logic;
SIGNAL \inst10|inst|Min_Out[2]~1_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[2]~2_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[2]~3_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[2]~4_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[0]~9_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[0]~10_combout\ : std_logic;
SIGNAL \inst14|inst|Min_Out[0]~11_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst10|inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst10|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[2]~0_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[1]~7_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[1]~8_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[2]~5_combout\ : std_logic;
SIGNAL \inst10|inst|Min_Out[2]~6_combout\ : std_logic;
SIGNAL \inst10|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst11|inst|Min_Out[2]~2_combout\ : std_logic;
SIGNAL \inst11|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst7|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst7|inst|Min_Out[2]~2_combout\ : std_logic;
SIGNAL \inst7|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst2|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst2|inst5|estado~q\ : std_logic;
SIGNAL \inst2|inst|LessThan5~2_combout\ : std_logic;
SIGNAL \inst2|inst|Min_Out[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst1|inst|Min_Out[2]~6_combout\ : std_logic;
SIGNAL \inst1|inst|Min_Out[2]~7_combout\ : std_logic;
SIGNAL \inst1|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst6|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst6|inst3|estado~q\ : std_logic;
SIGNAL \inst6|inst|LessThan6~4_combout\ : std_logic;
SIGNAL \inst6|inst|LessThan6~5_combout\ : std_logic;
SIGNAL \inst6|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst6|inst5|estado~q\ : std_logic;
SIGNAL \inst6|inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst6|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst6|inst11|estado~q\ : std_logic;
SIGNAL \inst6|inst|LessThan8~0_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[0]~2_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[0]~3_combout\ : std_logic;
SIGNAL \inst6|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst6|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|inst|LessThan1~4_combout\ : std_logic;
SIGNAL \inst6|inst|LessThan1~5_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst6|inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst6|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[0]~0_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[0]~4_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[1]~9_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[1]~10_combout\ : std_logic;
SIGNAL \inst6|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst5|inst|LessThan8~2_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[0]~14_combout\ : std_logic;
SIGNAL \inst5|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst5|inst5|estado~q\ : std_logic;
SIGNAL \inst5|inst|LessThan7~2_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[0]~5_combout\ : std_logic;
SIGNAL \inst5|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst5|inst3|estado~q\ : std_logic;
SIGNAL \inst5|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst5|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst5|inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[0]~6_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[0]~9_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[0]~10_combout\ : std_logic;
SIGNAL \inst5|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst|inst11|estado~q\ : std_logic;
SIGNAL \inst|inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst|inst8|estado~q\ : std_logic;
SIGNAL \inst|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|inst|Min_Out[1]~4_combout\ : std_logic;
SIGNAL \inst|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|inst|process_0~9_combout\ : std_logic;
SIGNAL \inst|inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|inst|Min_Out[1]~5_combout\ : std_logic;
SIGNAL \inst|inst7|$00000|auto_generated|result_node[2]~0_combout\ : std_logic;
SIGNAL \inst|inst|Min_Out[2]~9_combout\ : std_logic;
SIGNAL \inst|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst5|inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~11_combout\ : std_logic;
SIGNAL \inst5|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[0]~4_combout\ : std_logic;
SIGNAL \inst|inst|Min_Out[0]~6_combout\ : std_logic;
SIGNAL \inst|inst|Min_Out[0]~7_combout\ : std_logic;
SIGNAL \inst|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[1]~11_combout\ : std_logic;
SIGNAL \inst5|inst|Min_Out[1]~12_combout\ : std_logic;
SIGNAL \inst5|inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|inst|Min_Out[0]~8_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~1_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~3_combout\ : std_logic;
SIGNAL \inst1|inst|Min_Out[0]~8_combout\ : std_logic;
SIGNAL \inst2|inst|Min_Out[0]~1_combout\ : std_logic;
SIGNAL \inst2|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst2|inst|Min_Out[0]~3_combout\ : std_logic;
SIGNAL \inst7|inst|Min_Out[0]~5_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[0]~7_combout\ : std_logic;
SIGNAL \inst6|inst|Min_Out[0]~8_combout\ : std_logic;
SIGNAL \inst6|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst1|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst1|inst5|estado~q\ : std_logic;
SIGNAL \inst1|inst|process_0~7_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~4_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~5_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~6_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~8_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~9_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~10_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~11_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~12_combout\ : std_logic;
SIGNAL \inst1|inst|Min_Out[1]~4_combout\ : std_logic;
SIGNAL \inst1|inst|Min_Out[1]~9_combout\ : std_logic;
SIGNAL \inst1|inst16|Add0~1_combout\ : std_logic;
SIGNAL \inst1|inst2|reg_val[1]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~10_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~9_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux1~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst5|Y[1]~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst6|Y[1]~11_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~7_combout\ : std_logic;
SIGNAL \inst8|inst11|estado~0_combout\ : std_logic;
SIGNAL \inst8|inst11|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~9_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~10_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux3~3_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux2~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst5|Y[0]~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst6|Y[0]~10_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst2|Add3~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst6|Y[2]~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst6|Y[2]~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst6|Y[2]~9_combout\ : std_logic;
SIGNAL \inst33|inst1|inst6|Y[2]~8_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux0~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux0~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst2|Add1~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux0~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[2]~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[2]~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux1~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux1~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[1]~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[1]~9_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux1~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux1~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux1~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[1]~10_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[1]~11_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux0~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux0~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[2]~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux0~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[2]~1_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst33|inst4|min_value~1_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux2~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux2~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux2~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux2~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[0]~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[0]~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux2~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst6|Mux2~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[0]~4_combout\ : std_logic;
SIGNAL \inst33|inst1|inst4|Y[0]~5_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan0~8_combout\ : std_logic;
SIGNAL \inst33|inst4|min_value~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst2|Add0~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~1_combout\ : std_logic;
SIGNAL \inst13|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst13|inst5|estado~q\ : std_logic;
SIGNAL \inst15|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst15|inst5|estado~q\ : std_logic;
SIGNAL \inst14|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst14|inst5|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~4_combout\ : std_logic;
SIGNAL \inst4|inst5|estado~0_combout\ : std_logic;
SIGNAL \inst4|inst5|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux1~9_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[1]~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[1]~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst3|Y[1]~9_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan1~1_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan1~2_combout\ : std_logic;
SIGNAL \inst33|inst5|seleccion[0]~9_combout\ : std_logic;
SIGNAL \inst33|inst5|seleccion[1]~6_combout\ : std_logic;
SIGNAL \inst33|inst5|seleccion[1]~8_combout\ : std_logic;
SIGNAL \inst30|Selector4~0_combout\ : std_logic;
SIGNAL \inst30|fstate.decide~q\ : std_logic;
SIGNAL \inst33|inst5|seleccion[0]~4_combout\ : std_logic;
SIGNAL \inst33|inst5|seleccion[0]~5_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|fstate.Gira_90_der~q\ : std_logic;
SIGNAL \inst33|inst3|inst|WideOr6~combout\ : std_logic;
SIGNAL \inst30|Selector5~0_combout\ : std_logic;
SIGNAL \inst30|fstate.girando~q\ : std_logic;
SIGNAL \inst30|Selector0~0_combout\ : std_logic;
SIGNAL \inst30|Selector0~1_combout\ : std_logic;
SIGNAL \inst30|fstate.MUEVE~q\ : std_logic;
SIGNAL \inst30|Selector3~0_combout\ : std_logic;
SIGNAL \inst30|fstate.se_choca~q\ : std_logic;
SIGNAL \inst13|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst13|inst8|estado~q\ : std_logic;
SIGNAL \inst15|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst15|inst8|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~3_combout\ : std_logic;
SIGNAL \inst11|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst11|inst8|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst2|inst8|estado~q\ : std_logic;
SIGNAL \inst7|inst8|estado~0_combout\ : std_logic;
SIGNAL \inst7|inst8|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux2~9_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst5|Mux0~11_combout\ : std_logic;
SIGNAL \inst33|inst1|inst5|Y[2]~4_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~11_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~4_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~5_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~6_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~7_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan2~10_combout\ : std_logic;
SIGNAL \inst33|inst4|menor_cod[1]~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst2|Q[1]~7\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst2|Q[2]~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~2_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~3_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~4_combout\ : std_logic;
SIGNAL \inst2|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst2|inst3|estado~q\ : std_logic;
SIGNAL \inst1|inst3|estado~0_combout\ : std_logic;
SIGNAL \inst1|inst3|estado~q\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~5_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~6_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~7_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~8_combout\ : std_logic;
SIGNAL \inst33|inst1|inst13|Mux0~9_combout\ : std_logic;
SIGNAL \inst33|inst4|min_value~2_combout\ : std_logic;
SIGNAL \inst33|inst4|LessThan1~3_combout\ : std_logic;
SIGNAL \inst33|inst4|menor_cod[0]~1_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst2|Q[2]~9\ : std_logic;
SIGNAL \inst33|inst1|inst|inst|inst2|Q[3]~10_combout\ : std_logic;
SIGNAL \inst35|inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[5]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~9_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[7]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~11_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~8_combout\ : std_logic;
SIGNAL \inst33|inst3|inst10|LessThan0~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[2]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~5_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[0]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~6_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~7_combout\ : std_logic;
SIGNAL \inst33|inst3|inst10|LessThan0~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[9]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~3_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[8]~feeder_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst10|LessThan0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|fstate.Corrige_der~q\ : std_logic;
SIGNAL \inst33|inst3|inst10|LessThan0~3_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector0~4_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|fstate.Avanza~q\ : std_logic;
SIGNAL \inst33|inst3|inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|fstate.Gira_180~q\ : std_logic;
SIGNAL \inst33|inst3|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador[15]~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador[14]~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~1\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~3\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~12_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador[14]~3_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~5\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~11_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~7\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~13_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~9\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~11\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~9_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~13\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~8_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~15\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~14_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~17\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~19\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~16_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|tiempo_limite[10]~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|tiempo_limite[10]~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~21\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~6_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~23\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~25\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~4_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~27\ : std_logic;
SIGNAL \inst33|inst3|inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|contador[16]~18_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|fin_reg~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst2|fin_reg~q\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|fstate.Gira_90_izq~q\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|fstate.Corrige_izq~q\ : std_logic;
SIGNAL \inst33|inst3|inst|WideOr8~combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|fstate.Ganamos~q\ : std_logic;
SIGNAL \inst33|inst3|inst|WideOr7~combout\ : std_logic;
SIGNAL \inst33|inst3|inst|WideOr7~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst11|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst11|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst11|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst7|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|inst9|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|inst6|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|inst7|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|CH0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst33|inst3|inst2|tiempo_limite\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst33|inst3|inst2|contador\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst33|inst6|q_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst33|inst1|inst|inst|inst2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst28|cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst15|inst2|reg_val\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|inst17|$00000|auto_generated|result_node\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Reset1~input_o\ : std_logic;
SIGNAL \inst28|ALT_INV_btn_out~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \inst33|inst3|inst|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ : std_logic;
SIGNAL \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ : std_logic;

BEGIN

ADC_SCLK <= ww_ADC_SCLK;
ww_CLK <= CLK;
ww_Reset1 <= Reset1;
ww_SENSOR_LINEA <= SENSOR_LINEA;
ww_SENSOR_MURO <= SENSOR_MURO;
ww_ADC_DOUT <= ADC_DOUT;
ADC_CS_N <= ww_ADC_CS_N;
ADC_DIN <= ww_ADC_DIN;
MD0 <= ww_MD0;
MD1 <= ww_MD1;
MI0 <= ww_MI0;
MI1 <= ww_MI1;
VELD <= ww_VELD;
VELI <= ww_VELI;
GIROO <= ww_GIROO;
SENTIDOO <= ww_SENTIDOO;
MUROO <= ww_MUROO;
CUENTAA <= ww_CUENTAA;
pos_act <= ww_pos_act;
sent_act <= ww_sent_act;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst33|inst3|inst4|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst33|inst3|inst4|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst33|inst3|inst4|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst33|inst3|inst4|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst33|inst3|inst4|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst33|inst3|inst4|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst30|fstate.girando~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst30|fstate.girando~q\);

\inst30|fstate.nueva_celda~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst30|fstate.nueva_celda~q\);

\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\(2));

\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\(0));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk\(1));
\ALT_INV_Reset1~input_o\ <= NOT \Reset1~input_o\;
\inst28|ALT_INV_btn_out~2_combout\ <= NOT \inst28|btn_out~2_combout\;
\inst33|inst3|inst|ALT_INV_WideOr7~0_combout\ <= NOT \inst33|inst3|inst|WideOr7~0_combout\;
\inst33|inst3|inst|ALT_INV_WideOr7~combout\ <= NOT \inst33|inst3|inst|WideOr7~combout\;
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ <= NOT \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|cs_n~2_combout\;
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ <= NOT \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\;

-- Location: PLL_4
\inst33|inst3|inst4|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 163,
	c0_initial => 1,
	c0_low => 162,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 12,
	c1_initial => 1,
	c1_low => 13,
	c1_mode => "odd",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 244,
	c2_initial => 1,
	c2_low => 81,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "on",
	c3_high => 32,
	c3_initial => 1,
	c3_low => 33,
	c3_mode => "odd",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 250,
	c4_initial => 1,
	c4_low => 250,
	c4_mode => "even",
	c4_ph => 0,
	c4_use_casc_in => "on",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 50,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c2",
	clk1_divide_by => 1250,
	clk1_duty_cycle => 75,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_counter => "c4",
	clk2_divide_by => 5000,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 1,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 13,
	m_initial => 1,
	m_ph => 0,
	n => 2,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5561,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 384,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_Reset1~input_o\,
	fbin => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst33|inst3|inst4|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: FF_X40_Y22_N13
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \Reset1~input_o\,
	sload => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(2));

-- Location: FF_X40_Y22_N17
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \Reset1~input_o\,
	sload => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(4));

-- Location: FF_X40_Y22_N19
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \Reset1~input_o\,
	sload => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(5));

-- Location: FF_X40_Y22_N21
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \Reset1~input_o\,
	sload => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(6));

-- Location: FF_X40_Y22_N23
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[7]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \Reset1~input_o\,
	sload => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(7));

-- Location: LCCOMB_X40_Y22_N12
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(2) & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~13\)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(2) & 
-- ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~13\) # (GND)))
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~15\ = CARRY((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~13\) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(2),
	datad => VCC,
	cin => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~13\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~14_combout\,
	cout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~15\);

-- Location: LCCOMB_X40_Y22_N14
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~16_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(3) & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~15\ & VCC)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(3) & 
-- (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~15\))
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~17\ = CARRY((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(3) & !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(3),
	datad => VCC,
	cin => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[2]~15\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~16_combout\,
	cout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~17\);

-- Location: LCCOMB_X40_Y22_N16
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~18_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(4) & ((GND) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~17\))) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(4) & 
-- (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~17\ $ (GND)))
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~19\ = CARRY((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(4)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(4),
	datad => VCC,
	cin => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~17\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~18_combout\,
	cout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~19\);

-- Location: LCCOMB_X40_Y22_N18
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~20_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(5) & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~19\ & VCC)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(5) & 
-- (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~19\))
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~21\ = CARRY((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(5) & !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(5),
	datad => VCC,
	cin => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~19\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~20_combout\,
	cout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~21\);

-- Location: LCCOMB_X40_Y22_N20
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~22_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(6) & ((GND) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~21\))) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(6) & 
-- (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~21\ $ (GND)))
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~23\ = CARRY((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(6)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(6),
	datad => VCC,
	cin => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[5]~21\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~22_combout\,
	cout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~23\);

-- Location: LCCOMB_X40_Y22_N22
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[7]~24_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(7) $ (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(7),
	cin => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[6]~23\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[7]~24_combout\);

-- Location: LCCOMB_X36_Y23_N16
\inst33|inst3|inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~0_combout\ = \inst33|inst3|inst2|contador\(0) $ (VCC)
-- \inst33|inst3|inst2|Add0~1\ = CARRY(\inst33|inst3|inst2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(0),
	datad => VCC,
	combout => \inst33|inst3|inst2|Add0~0_combout\,
	cout => \inst33|inst3|inst2|Add0~1\);

-- Location: LCCOMB_X36_Y23_N18
\inst33|inst3|inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~2_combout\ = (\inst33|inst3|inst2|contador\(1) & (!\inst33|inst3|inst2|Add0~1\)) # (!\inst33|inst3|inst2|contador\(1) & ((\inst33|inst3|inst2|Add0~1\) # (GND)))
-- \inst33|inst3|inst2|Add0~3\ = CARRY((!\inst33|inst3|inst2|Add0~1\) # (!\inst33|inst3|inst2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(1),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~1\,
	combout => \inst33|inst3|inst2|Add0~2_combout\,
	cout => \inst33|inst3|inst2|Add0~3\);

-- Location: LCCOMB_X36_Y23_N26
\inst33|inst3|inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~10_combout\ = (\inst33|inst3|inst2|contador\(5) & (!\inst33|inst3|inst2|Add0~9\)) # (!\inst33|inst3|inst2|contador\(5) & ((\inst33|inst3|inst2|Add0~9\) # (GND)))
-- \inst33|inst3|inst2|Add0~11\ = CARRY((!\inst33|inst3|inst2|Add0~9\) # (!\inst33|inst3|inst2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(5),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~9\,
	combout => \inst33|inst3|inst2|Add0~10_combout\,
	cout => \inst33|inst3|inst2|Add0~11\);

-- Location: LCCOMB_X36_Y22_N2
\inst33|inst3|inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~18_combout\ = (\inst33|inst3|inst2|contador\(9) & (!\inst33|inst3|inst2|Add0~17\)) # (!\inst33|inst3|inst2|contador\(9) & ((\inst33|inst3|inst2|Add0~17\) # (GND)))
-- \inst33|inst3|inst2|Add0~19\ = CARRY((!\inst33|inst3|inst2|Add0~17\) # (!\inst33|inst3|inst2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(9),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~17\,
	combout => \inst33|inst3|inst2|Add0~18_combout\,
	cout => \inst33|inst3|inst2|Add0~19\);

-- Location: LCCOMB_X36_Y22_N8
\inst33|inst3|inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~24_combout\ = (\inst33|inst3|inst2|contador\(12) & (\inst33|inst3|inst2|Add0~23\ $ (GND))) # (!\inst33|inst3|inst2|contador\(12) & (!\inst33|inst3|inst2|Add0~23\ & VCC))
-- \inst33|inst3|inst2|Add0~25\ = CARRY((\inst33|inst3|inst2|contador\(12) & !\inst33|inst3|inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(12),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~23\,
	combout => \inst33|inst3|inst2|Add0~24_combout\,
	cout => \inst33|inst3|inst2|Add0~25\);

-- Location: LCCOMB_X36_Y22_N12
\inst33|inst3|inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~28_combout\ = (\inst33|inst3|inst2|contador\(14) & (\inst33|inst3|inst2|Add0~27\ $ (GND))) # (!\inst33|inst3|inst2|contador\(14) & (!\inst33|inst3|inst2|Add0~27\ & VCC))
-- \inst33|inst3|inst2|Add0~29\ = CARRY((\inst33|inst3|inst2|contador\(14) & !\inst33|inst3|inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(14),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~27\,
	combout => \inst33|inst3|inst2|Add0~28_combout\,
	cout => \inst33|inst3|inst2|Add0~29\);

-- Location: LCCOMB_X36_Y22_N14
\inst33|inst3|inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~30_combout\ = (\inst33|inst3|inst2|contador\(15) & (!\inst33|inst3|inst2|Add0~29\)) # (!\inst33|inst3|inst2|contador\(15) & ((\inst33|inst3|inst2|Add0~29\) # (GND)))
-- \inst33|inst3|inst2|Add0~31\ = CARRY((!\inst33|inst3|inst2|Add0~29\) # (!\inst33|inst3|inst2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(15),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~29\,
	combout => \inst33|inst3|inst2|Add0~30_combout\,
	cout => \inst33|inst3|inst2|Add0~31\);

-- Location: LCCOMB_X36_Y22_N16
\inst33|inst3|inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~32_combout\ = \inst33|inst3|inst2|Add0~31\ $ (!\inst33|inst3|inst2|contador\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst2|contador\(16),
	cin => \inst33|inst3|inst2|Add0~31\,
	combout => \inst33|inst3|inst2|Add0~32_combout\);

-- Location: FF_X34_Y18_N13
\inst28|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[2]~14_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(2));

-- Location: FF_X34_Y18_N11
\inst28|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[1]~12_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(1));

-- Location: LCCOMB_X34_Y18_N10
\inst28|cnt[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[1]~12_combout\ = (\inst28|cnt\(1) & (!\inst28|cnt[0]~11\)) # (!\inst28|cnt\(1) & ((\inst28|cnt[0]~11\) # (GND)))
-- \inst28|cnt[1]~13\ = CARRY((!\inst28|cnt[0]~11\) # (!\inst28|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(1),
	datad => VCC,
	cin => \inst28|cnt[0]~11\,
	combout => \inst28|cnt[1]~12_combout\,
	cout => \inst28|cnt[1]~13\);

-- Location: LCCOMB_X34_Y18_N12
\inst28|cnt[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[2]~14_combout\ = (\inst28|cnt\(2) & (\inst28|cnt[1]~13\ $ (GND))) # (!\inst28|cnt\(2) & (!\inst28|cnt[1]~13\ & VCC))
-- \inst28|cnt[2]~15\ = CARRY((\inst28|cnt\(2) & !\inst28|cnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(2),
	datad => VCC,
	cin => \inst28|cnt[1]~13\,
	combout => \inst28|cnt[2]~14_combout\,
	cout => \inst28|cnt[2]~15\);

-- Location: LCCOMB_X40_Y22_N6
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(5)) # ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(6)) # ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(7)) # 
-- (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(5),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(6),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(7),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(4),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\);

-- Location: FF_X39_Y22_N1
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(2));

-- Location: FF_X39_Y22_N19
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0));

-- Location: FF_X39_Y22_N13
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(1));

-- Location: LCCOMB_X39_Y22_N22
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(1) & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(2) & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\);

-- Location: FF_X39_Y21_N23
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~3_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0));

-- Location: FF_X39_Y20_N13
\inst33|inst3|inst8|adc_mega_0|CH1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~2_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(10));

-- Location: FF_X39_Y20_N7
\inst33|inst3|inst8|adc_mega_0|CH1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~4_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(3));

-- Location: FF_X36_Y20_N13
\inst33|inst3|inst8|adc_mega_0|CH1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~10_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(6));

-- Location: FF_X41_Y20_N13
\inst33|inst3|inst8|adc_mega_0|CH0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~2_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(11));

-- Location: FF_X41_Y20_N11
\inst33|inst3|inst8|adc_mega_0|CH0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~4_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(7));

-- Location: FF_X40_Y20_N11
\inst33|inst3|inst8|adc_mega_0|CH0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~7_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(4));

-- Location: FF_X40_Y20_N13
\inst33|inst3|inst8|adc_mega_0|CH0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~10_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(2));

-- Location: LCCOMB_X29_Y21_N12
\inst33|inst1|inst|inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst1|inst2|reg_val\(2))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst2|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|reg_val\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst2|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst5|Mux0~0_combout\);

-- Location: FF_X31_Y21_N21
\inst|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|estado~q\);

-- Location: LCCOMB_X28_Y21_N10
\inst33|inst1|inst|inst6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux0~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst11|inst2|reg_val\(2))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst10|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst2|reg_val\(2),
	datac => \inst10|inst2|reg_val\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y19_N12
\inst33|inst1|inst|inst6|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux0~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst2|inst2|reg_val\(2))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst1|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|reg_val\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst1|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst6|Mux0~5_combout\);

-- Location: LCCOMB_X29_Y19_N6
\inst33|inst4|min_value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|min_value~0_combout\ = (\inst33|inst1|inst|inst2|Add1~0_combout\ & ((!\inst33|inst1|inst4|Y[2]~3_combout\))) # (!\inst33|inst1|inst|inst2|Add1~0_combout\ & (!\inst33|inst1|inst4|Y[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~0_combout\,
	datac => \inst33|inst1|inst4|Y[2]~1_combout\,
	datad => \inst33|inst1|inst4|Y[2]~3_combout\,
	combout => \inst33|inst4|min_value~0_combout\);

-- Location: FF_X31_Y18_N13
\inst4|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst11|estado~q\);

-- Location: FF_X34_Y21_N31
\inst12|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst11|estado~q\);

-- Location: LCCOMB_X30_Y20_N30
\inst33|inst1|inst|inst6|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux2~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst15|inst2|reg_val\(0))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst14|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst2|reg_val\(0),
	datac => \inst14|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux2~3_combout\);

-- Location: LCCOMB_X30_Y20_N26
\inst33|inst1|inst|inst5|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~3_combout\ = (\inst|inst2|reg_val\(0) & (\inst33|inst1|inst|inst|inst2|Q\(1) & !\inst33|inst1|inst|inst|inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg_val\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst5|Mux2~3_combout\);

-- Location: LCCOMB_X31_Y20_N10
\inst33|inst1|inst|inst5|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~7_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst8|inst2|reg_val\(0)) # ((\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (((\inst9|inst2|reg_val\(0) & 
-- !\inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|reg_val\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst9|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst|inst5|Mux2~7_combout\);

-- Location: LCCOMB_X31_Y20_N22
\inst33|inst1|inst|inst5|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~8_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst5|Mux2~7_combout\ & (\inst6|inst2|reg_val\(0))) # (!\inst33|inst1|inst|inst5|Mux2~7_combout\ & ((\inst7|inst2|reg_val\(0)))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst5|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|reg_val\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst7|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst5|Mux2~7_combout\,
	combout => \inst33|inst1|inst|inst5|Mux2~8_combout\);

-- Location: LCCOMB_X30_Y19_N26
\inst33|inst4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~2_combout\ = (\inst33|inst4|min_value~0_combout\ & (!\inst33|inst1|inst6|Y[1]~11_combout\ & (!\inst33|inst1|inst6|Y[2]~8_combout\ & \inst33|inst4|LessThan0~1_combout\))) # (!\inst33|inst4|min_value~0_combout\ & 
-- (((!\inst33|inst1|inst6|Y[1]~11_combout\ & \inst33|inst4|LessThan0~1_combout\)) # (!\inst33|inst1|inst6|Y[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst6|Y[1]~11_combout\,
	datab => \inst33|inst4|min_value~0_combout\,
	datac => \inst33|inst1|inst6|Y[2]~8_combout\,
	datad => \inst33|inst4|LessThan0~1_combout\,
	combout => \inst33|inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y22_N26
\inst33|inst1|inst|inst6|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux1~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst15|inst2|reg_val\(1))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst14|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2|reg_val\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst14|inst2|reg_val\(1),
	combout => \inst33|inst1|inst|inst6|Mux1~3_combout\);

-- Location: LCCOMB_X29_Y20_N22
\inst33|inst1|inst|inst6|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux1~4_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst11|inst2|reg_val\(1))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst10|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst2|reg_val\(1),
	datac => \inst10|inst2|reg_val\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux1~4_combout\);

-- Location: FF_X32_Y21_N21
\inst12|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst5|estado~q\);

-- Location: LCCOMB_X29_Y22_N10
\inst33|inst1|inst3|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[2]~0_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & ((\inst33|inst1|inst|inst6|Mux0~0_combout\) # ((\inst33|inst1|inst|inst2|Add0~0_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (((!\inst33|inst1|inst|inst2|Add0~0_combout\ & \inst33|inst1|inst|inst6|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux0~0_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datac => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datad => \inst33|inst1|inst|inst6|Mux0~3_combout\,
	combout => \inst33|inst1|inst3|Y[2]~0_combout\);

-- Location: LCCOMB_X30_Y22_N22
\inst33|inst1|inst3|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[2]~1_combout\ = (\inst33|inst1|inst|inst2|Add0~0_combout\ & ((\inst33|inst1|inst3|Y[2]~0_combout\ & (\inst33|inst1|inst|inst6|Mux0~2_combout\)) # (!\inst33|inst1|inst3|Y[2]~0_combout\ & ((\inst33|inst1|inst|inst6|Mux0~1_combout\))))) 
-- # (!\inst33|inst1|inst|inst2|Add0~0_combout\ & (((\inst33|inst1|inst3|Y[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datab => \inst33|inst1|inst|inst6|Mux0~2_combout\,
	datac => \inst33|inst1|inst|inst6|Mux0~1_combout\,
	datad => \inst33|inst1|inst3|Y[2]~0_combout\,
	combout => \inst33|inst1|inst3|Y[2]~1_combout\);

-- Location: LCCOMB_X29_Y19_N8
\inst33|inst1|inst3|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[2]~2_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & (((\inst33|inst1|inst|inst2|Add0~0_combout\) # (\inst33|inst1|inst|inst6|Mux0~4_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (\inst33|inst1|inst|inst6|Mux0~7_combout\ & (!\inst33|inst1|inst|inst2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux0~7_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datac => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datad => \inst33|inst1|inst|inst6|Mux0~4_combout\,
	combout => \inst33|inst1|inst3|Y[2]~2_combout\);

-- Location: LCCOMB_X29_Y19_N18
\inst33|inst1|inst3|Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[2]~3_combout\ = (\inst33|inst1|inst3|Y[2]~2_combout\ & (((\inst33|inst1|inst|inst6|Mux0~6_combout\) # (!\inst33|inst1|inst|inst2|Add0~0_combout\)))) # (!\inst33|inst1|inst3|Y[2]~2_combout\ & (\inst33|inst1|inst|inst6|Mux0~5_combout\ 
-- & (\inst33|inst1|inst|inst2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux0~5_combout\,
	datab => \inst33|inst1|inst3|Y[2]~2_combout\,
	datac => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datad => \inst33|inst1|inst|inst6|Mux0~6_combout\,
	combout => \inst33|inst1|inst3|Y[2]~3_combout\);

-- Location: LCCOMB_X31_Y19_N26
\inst33|inst1|inst3|Y[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[2]~4_combout\ = (\inst33|inst1|inst13|Mux1~9_combout\) # ((\inst33|inst1|inst|inst2|Add0~1_combout\ & (\inst33|inst1|inst3|Y[2]~1_combout\)) # (!\inst33|inst1|inst|inst2|Add0~1_combout\ & ((\inst33|inst1|inst3|Y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst3|Y[2]~1_combout\,
	datab => \inst33|inst1|inst3|Y[2]~3_combout\,
	datac => \inst33|inst1|inst13|Mux1~9_combout\,
	datad => \inst33|inst1|inst|inst2|Add0~1_combout\,
	combout => \inst33|inst1|inst3|Y[2]~4_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst33|inst1|inst3|Y[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[1]~5_combout\ = (\inst33|inst1|inst|inst2|Add0~0_combout\ & (((\inst33|inst1|inst|inst2|Add1~2_combout\)))) # (!\inst33|inst1|inst|inst2|Add0~0_combout\ & ((\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (\inst33|inst1|inst|inst6|Mux1~4_combout\)) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & ((\inst33|inst1|inst|inst6|Mux1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux1~4_combout\,
	datab => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datac => \inst33|inst1|inst|inst6|Mux1~7_combout\,
	datad => \inst33|inst1|inst|inst2|Add1~2_combout\,
	combout => \inst33|inst1|inst3|Y[1]~5_combout\);

-- Location: LCCOMB_X29_Y20_N6
\inst33|inst1|inst3|Y[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[1]~6_combout\ = (\inst33|inst1|inst|inst2|Add0~0_combout\ & ((\inst33|inst1|inst3|Y[1]~5_combout\ & ((\inst33|inst1|inst|inst6|Mux1~6_combout\))) # (!\inst33|inst1|inst3|Y[1]~5_combout\ & (\inst33|inst1|inst|inst6|Mux1~5_combout\)))) 
-- # (!\inst33|inst1|inst|inst2|Add0~0_combout\ & (\inst33|inst1|inst3|Y[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datab => \inst33|inst1|inst3|Y[1]~5_combout\,
	datac => \inst33|inst1|inst|inst6|Mux1~5_combout\,
	datad => \inst33|inst1|inst|inst6|Mux1~6_combout\,
	combout => \inst33|inst1|inst3|Y[1]~6_combout\);

-- Location: LCCOMB_X30_Y20_N14
\inst33|inst1|inst3|Y[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[0]~10_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & ((\inst33|inst1|inst|inst6|Mux2~0_combout\) # ((\inst33|inst1|inst|inst2|Add0~0_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (((!\inst33|inst1|inst|inst2|Add0~0_combout\ & \inst33|inst1|inst|inst6|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datab => \inst33|inst1|inst|inst6|Mux2~0_combout\,
	datac => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datad => \inst33|inst1|inst|inst6|Mux2~3_combout\,
	combout => \inst33|inst1|inst3|Y[0]~10_combout\);

-- Location: LCCOMB_X30_Y20_N16
\inst33|inst1|inst3|Y[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[0]~11_combout\ = (\inst33|inst1|inst|inst2|Add0~0_combout\ & ((\inst33|inst1|inst3|Y[0]~10_combout\ & ((\inst33|inst1|inst|inst6|Mux2~2_combout\))) # (!\inst33|inst1|inst3|Y[0]~10_combout\ & 
-- (\inst33|inst1|inst|inst6|Mux2~1_combout\)))) # (!\inst33|inst1|inst|inst2|Add0~0_combout\ & (((\inst33|inst1|inst3|Y[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux2~1_combout\,
	datab => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datac => \inst33|inst1|inst3|Y[0]~10_combout\,
	datad => \inst33|inst1|inst|inst6|Mux2~2_combout\,
	combout => \inst33|inst1|inst3|Y[0]~11_combout\);

-- Location: LCCOMB_X31_Y20_N20
\inst33|inst1|inst3|Y[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[0]~12_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & ((\inst33|inst1|inst|inst6|Mux2~4_combout\) # ((\inst33|inst1|inst|inst2|Add0~0_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (((!\inst33|inst1|inst|inst2|Add0~0_combout\ & \inst33|inst1|inst|inst6|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datab => \inst33|inst1|inst|inst6|Mux2~4_combout\,
	datac => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datad => \inst33|inst1|inst|inst6|Mux2~7_combout\,
	combout => \inst33|inst1|inst3|Y[0]~12_combout\);

-- Location: LCCOMB_X31_Y19_N4
\inst33|inst1|inst3|Y[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[0]~13_combout\ = (\inst33|inst1|inst|inst2|Add0~0_combout\ & ((\inst33|inst1|inst3|Y[0]~12_combout\ & ((\inst33|inst1|inst|inst6|Mux2~6_combout\))) # (!\inst33|inst1|inst3|Y[0]~12_combout\ & 
-- (\inst33|inst1|inst|inst6|Mux2~5_combout\)))) # (!\inst33|inst1|inst|inst2|Add0~0_combout\ & (((\inst33|inst1|inst3|Y[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datab => \inst33|inst1|inst|inst6|Mux2~5_combout\,
	datac => \inst33|inst1|inst|inst6|Mux2~6_combout\,
	datad => \inst33|inst1|inst3|Y[0]~12_combout\,
	combout => \inst33|inst1|inst3|Y[0]~13_combout\);

-- Location: LCCOMB_X31_Y19_N30
\inst33|inst4|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan1~0_combout\ = (!\inst33|inst1|inst13|Mux1~9_combout\ & ((\inst33|inst1|inst|inst2|Add0~1_combout\ & ((!\inst33|inst1|inst3|Y[0]~13_combout\))) # (!\inst33|inst1|inst|inst2|Add0~1_combout\ & (!\inst33|inst1|inst3|Y[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst3|Y[0]~11_combout\,
	datab => \inst33|inst1|inst3|Y[0]~13_combout\,
	datac => \inst33|inst1|inst13|Mux1~9_combout\,
	datad => \inst33|inst1|inst|inst2|Add0~1_combout\,
	combout => \inst33|inst4|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y20_N26
\inst33|inst1|inst4|Y[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[0]~12_combout\ = (\inst33|inst1|inst|inst2|Add1~0_combout\ & (\inst33|inst1|inst4|Y[0]~5_combout\)) # (!\inst33|inst1|inst|inst2|Add1~0_combout\ & ((\inst33|inst1|inst4|Y[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~0_combout\,
	datac => \inst33|inst1|inst4|Y[0]~5_combout\,
	datad => \inst33|inst1|inst4|Y[0]~7_combout\,
	combout => \inst33|inst1|inst4|Y[0]~12_combout\);

-- Location: FF_X31_Y18_N9
\inst4|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst8|estado~q\);

-- Location: LCCOMB_X31_Y19_N12
\inst33|inst4|LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~8_combout\ = (\inst33|inst4|LessThan2~11_combout\ & ((\inst33|inst1|inst3|Y[1]~9_combout\) # ((!\inst33|inst4|LessThan2~12_combout\ & !\inst33|inst4|LessThan1~0_combout\)))) # (!\inst33|inst4|LessThan2~11_combout\ & 
-- (!\inst33|inst4|LessThan2~12_combout\ & (!\inst33|inst4|LessThan1~0_combout\ & \inst33|inst1|inst3|Y[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|LessThan2~12_combout\,
	datab => \inst33|inst4|LessThan2~11_combout\,
	datac => \inst33|inst4|LessThan1~0_combout\,
	datad => \inst33|inst1|inst3|Y[1]~9_combout\,
	combout => \inst33|inst4|LessThan2~8_combout\);

-- Location: LCCOMB_X31_Y19_N10
\inst33|inst4|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~9_combout\ = (\inst33|inst1|inst3|Y[2]~4_combout\ & ((\inst33|inst4|LessThan2~8_combout\) # ((!\inst33|inst1|inst5|Y[2]~5_combout\ & !\inst33|inst1|inst5|Y[2]~4_combout\)))) # (!\inst33|inst1|inst3|Y[2]~4_combout\ & 
-- (!\inst33|inst1|inst5|Y[2]~5_combout\ & (!\inst33|inst1|inst5|Y[2]~4_combout\ & \inst33|inst4|LessThan2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst5|Y[2]~5_combout\,
	datab => \inst33|inst1|inst5|Y[2]~4_combout\,
	datac => \inst33|inst1|inst3|Y[2]~4_combout\,
	datad => \inst33|inst4|LessThan2~8_combout\,
	combout => \inst33|inst4|LessThan2~9_combout\);

-- Location: LCCOMB_X34_Y19_N10
\inst33|inst3|inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector4~0_combout\ = (\inst33|inst3|inst|fstate.Gira_90_der~q\ & !\inst33|inst3|inst2|fin_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst|fstate.Gira_90_der~q\,
	datad => \inst33|inst3|inst2|fin_reg~q\,
	combout => \inst33|inst3|inst|Selector4~0_combout\);

-- Location: LCCOMB_X39_Y22_N0
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(2) $ (((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(1) & 
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\);

-- Location: LCCOMB_X39_Y22_N18
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0) & 
-- !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\);

-- Location: LCCOMB_X39_Y22_N12
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\ & 
-- (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0) $ (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\);

-- Location: FF_X39_Y21_N7
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(1));

-- Location: FF_X39_Y21_N25
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(0));

-- Location: LCCOMB_X39_Y21_N22
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~3_combout\ = ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(0) & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(0),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~3_combout\);

-- Location: FF_X39_Y20_N9
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[10]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(10));

-- Location: LCCOMB_X39_Y20_N12
\inst33|inst3|inst8|adc_mega_0|CH1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~2_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(10),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~2_combout\);

-- Location: FF_X39_Y20_N27
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(2),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(3));

-- Location: LCCOMB_X39_Y20_N6
\inst33|inst3|inst8|adc_mega_0|CH1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~4_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(3),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~4_combout\);

-- Location: FF_X36_Y20_N9
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[6]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(6));

-- Location: LCCOMB_X36_Y20_N12
\inst33|inst3|inst8|adc_mega_0|CH1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~10_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(6),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~10_combout\);

-- Location: FF_X41_Y20_N5
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(11));

-- Location: LCCOMB_X41_Y20_N12
\inst33|inst3|inst8|adc_mega_0|CH0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~2_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(11),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~2_combout\);

-- Location: FF_X40_Y20_N25
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(7));

-- Location: LCCOMB_X41_Y20_N10
\inst33|inst3|inst8|adc_mega_0|CH0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~4_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset1~input_o\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(7),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~4_combout\);

-- Location: FF_X40_Y20_N15
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(4));

-- Location: LCCOMB_X40_Y20_N10
\inst33|inst3|inst8|adc_mega_0|CH0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~7_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(4),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~7_combout\);

-- Location: FF_X40_Y20_N5
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(2));

-- Location: LCCOMB_X40_Y20_N12
\inst33|inst3|inst8|adc_mega_0|CH0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~10_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(2),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~10_combout\);

-- Location: LCCOMB_X28_Y19_N30
\inst1|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~2_combout\ = (\inst1|inst5|estado~q\) # ((\inst6|inst2|reg_val\(1) & (\inst6|inst2|reg_val\(0) & \inst6|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|reg_val\(1),
	datab => \inst6|inst2|reg_val\(0),
	datac => \inst1|inst5|estado~q\,
	datad => \inst6|inst2|reg_val\(2),
	combout => \inst1|inst|process_0~2_combout\);

-- Location: LCCOMB_X34_Y20_N10
\inst1|inst7|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst7|$00000|auto_generated|result_node\(1) = (\inst1|inst8|estado~q\) # (\inst2|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|estado~q\,
	datad => \inst2|inst2|reg_val\(1),
	combout => \inst1|inst7|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X35_Y20_N30
\inst1|inst|Min_Out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|Min_Out[0]~5_combout\ = (\inst1|inst|process_0~8_combout\ & ((\inst1|inst|process_0~12_combout\ & (!\inst1|inst|process_0~4_combout\)) # (!\inst1|inst|process_0~12_combout\ & ((\inst1|inst7|$00000|auto_generated|result_node\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|process_0~12_combout\,
	datab => \inst1|inst|process_0~4_combout\,
	datac => \inst1|inst|process_0~8_combout\,
	datad => \inst1|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst1|inst|Min_Out[0]~5_combout\);

-- Location: LCCOMB_X31_Y22_N8
\inst2|inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|LessThan5~0_combout\ = (!\inst1|inst2|reg_val\(0) & (!\inst2|inst11|estado~q\ & ((\inst7|inst2|reg_val\(0)) # (\inst2|inst5|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|reg_val\(0),
	datab => \inst1|inst2|reg_val\(0),
	datac => \inst2|inst11|estado~q\,
	datad => \inst2|inst5|estado~q\,
	combout => \inst2|inst|LessThan5~0_combout\);

-- Location: LCCOMB_X32_Y20_N28
\inst2|inst|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|LessThan5~1_combout\ = (\inst2|inst6|$00000|auto_generated|result_node\(1) & ((\inst2|inst|LessThan5~0_combout\) # ((!\inst2|inst11|estado~q\ & !\inst1|inst2|reg_val\(1))))) # (!\inst2|inst6|$00000|auto_generated|result_node\(1) & 
-- (!\inst2|inst11|estado~q\ & (!\inst1|inst2|reg_val\(1) & \inst2|inst|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst2|inst11|estado~q\,
	datac => \inst1|inst2|reg_val\(1),
	datad => \inst2|inst|LessThan5~0_combout\,
	combout => \inst2|inst|LessThan5~1_combout\);

-- Location: LCCOMB_X34_Y21_N26
\inst2|inst|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|LessThan5~3_combout\ = (\inst2|inst5|estado~q\) # (\inst7|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst5|estado~q\,
	datad => \inst7|inst2|reg_val\(0),
	combout => \inst2|inst|LessThan5~3_combout\);

-- Location: LCCOMB_X31_Y22_N16
\inst2|inst|Min_Out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Min_Out[2]~2_combout\ = (\inst2|inst5|estado~q\ & ((\inst1|inst2|reg_val\(2)) # ((\inst2|inst11|estado~q\)))) # (!\inst2|inst5|estado~q\ & (\inst7|inst2|reg_val\(2) & ((\inst1|inst2|reg_val\(2)) # (\inst2|inst11|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|estado~q\,
	datab => \inst1|inst2|reg_val\(2),
	datac => \inst7|inst2|reg_val\(2),
	datad => \inst2|inst11|estado~q\,
	combout => \inst2|inst|Min_Out[2]~2_combout\);

-- Location: LCCOMB_X26_Y20_N22
\inst14|inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|LessThan3~0_combout\ = (!\inst14|inst3|estado~q\ & (((!\inst10|inst2|reg_val\(0)) # (!\inst10|inst2|reg_val\(1))) # (!\inst10|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|reg_val\(2),
	datab => \inst10|inst2|reg_val\(1),
	datac => \inst14|inst3|estado~q\,
	datad => \inst10|inst2|reg_val\(0),
	combout => \inst14|inst|LessThan3~0_combout\);

-- Location: LCCOMB_X26_Y19_N22
\inst14|inst7|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst7|$00000|auto_generated|result_node\(2) = (\inst14|inst8|estado~q\) # (\inst15|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst8|estado~q\,
	datac => \inst15|inst2|reg_val\(2),
	combout => \inst14|inst7|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X27_Y19_N16
\inst14|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~1_combout\ = (\inst14|inst9|$00000|auto_generated|result_node\(1) & (\inst14|inst7|$00000|auto_generated|result_node\(0) & (\inst14|inst|process_0~0_combout\ & \inst14|inst7|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst14|inst9|$00000|auto_generated|result_node\(1) & ((\inst14|inst7|$00000|auto_generated|result_node\(1)) # ((\inst14|inst7|$00000|auto_generated|result_node\(0) & \inst14|inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7|$00000|auto_generated|result_node\(0),
	datab => \inst14|inst|process_0~0_combout\,
	datac => \inst14|inst9|$00000|auto_generated|result_node\(1),
	datad => \inst14|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst14|inst|process_0~1_combout\);

-- Location: LCCOMB_X26_Y19_N18
\inst14|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~2_combout\ = (\inst14|inst7|$00000|auto_generated|result_node\(2) & (((\inst14|inst|process_0~1_combout\) # (!\inst14|inst9|$00000|auto_generated|result_node\(2))) # (!\inst14|inst17|$00000|auto_generated|result_node\(2)))) # 
-- (!\inst14|inst7|$00000|auto_generated|result_node\(2) & (((!\inst14|inst9|$00000|auto_generated|result_node\(2) & \inst14|inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst14|inst17|$00000|auto_generated|result_node\(2),
	datac => \inst14|inst9|$00000|auto_generated|result_node\(2),
	datad => \inst14|inst|process_0~1_combout\,
	combout => \inst14|inst|process_0~2_combout\);

-- Location: LCCOMB_X26_Y19_N4
\inst14|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~3_combout\ = (\inst14|inst7|$00000|auto_generated|result_node\(1) & (((\inst14|inst7|$00000|auto_generated|result_node\(0) & !\inst14|inst17|$00000|auto_generated|result_node\(0))) # 
-- (!\inst14|inst17|$00000|auto_generated|result_node\(1)))) # (!\inst14|inst7|$00000|auto_generated|result_node\(1) & (\inst14|inst7|$00000|auto_generated|result_node\(0) & (!\inst14|inst17|$00000|auto_generated|result_node\(0) & 
-- !\inst14|inst17|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst14|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst14|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst14|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst14|inst|process_0~3_combout\);

-- Location: LCCOMB_X26_Y19_N26
\inst14|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~4_combout\ = (\inst14|inst|process_0~2_combout\) # ((\inst14|inst|process_0~3_combout\ & (\inst14|inst7|$00000|auto_generated|result_node\(2) $ (!\inst14|inst17|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst14|inst|process_0~2_combout\,
	datac => \inst14|inst|process_0~3_combout\,
	datad => \inst14|inst17|$00000|auto_generated|result_node\(2),
	combout => \inst14|inst|process_0~4_combout\);

-- Location: LCCOMB_X26_Y19_N28
\inst14|inst|Min_Out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|Min_Out[2]~7_combout\ = (\inst14|inst|Min_Out[2]~6_combout\) # ((\inst14|inst|process_0~4_combout\ & ((\inst14|inst9|$00000|auto_generated|result_node\(2)))) # (!\inst14|inst|process_0~4_combout\ & 
-- (\inst14|inst7|$00000|auto_generated|result_node\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst14|inst|Min_Out[2]~6_combout\,
	datac => \inst14|inst9|$00000|auto_generated|result_node\(2),
	datad => \inst14|inst|process_0~4_combout\,
	combout => \inst14|inst|Min_Out[2]~7_combout\);

-- Location: LCCOMB_X26_Y19_N14
\inst14|inst|Min_Out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|Min_Out[0]~8_combout\ = (\inst14|inst|Min_Out[2]~6_combout\) # ((\inst14|inst|process_0~4_combout\ & ((!\inst14|inst|process_0~0_combout\))) # (!\inst14|inst|process_0~4_combout\ & (\inst14|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst|Min_Out[2]~6_combout\,
	datab => \inst14|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst14|inst|process_0~4_combout\,
	datad => \inst14|inst|process_0~0_combout\,
	combout => \inst14|inst|Min_Out[0]~8_combout\);

-- Location: LCCOMB_X30_Y20_N10
\inst15|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst17|$00000|auto_generated|result_node\(2) = (\inst11|inst2|reg_val\(2)) # (\inst15|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst2|reg_val\(2),
	datad => \inst15|inst3|estado~q\,
	combout => \inst15|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X31_Y22_N0
\inst15|inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst|LessThan2~0_combout\ = (!\inst15|inst11|estado~q\ & (!\inst14|inst2|reg_val\(0) & ((\inst15|inst3|estado~q\) # (\inst11|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst11|estado~q\,
	datab => \inst15|inst3|estado~q\,
	datac => \inst11|inst2|reg_val\(0),
	datad => \inst14|inst2|reg_val\(0),
	combout => \inst15|inst|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y22_N18
\inst15|inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst|LessThan2~1_combout\ = (\inst15|inst|LessThan2~0_combout\ & ((\inst15|inst17|$00000|auto_generated|result_node\(1)) # ((!\inst15|inst11|estado~q\ & !\inst14|inst2|reg_val\(1))))) # (!\inst15|inst|LessThan2~0_combout\ & 
-- (!\inst15|inst11|estado~q\ & (!\inst14|inst2|reg_val\(1) & \inst15|inst17|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst11|estado~q\,
	datab => \inst14|inst2|reg_val\(1),
	datac => \inst15|inst|LessThan2~0_combout\,
	datad => \inst15|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst15|inst|LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y22_N12
\inst15|inst|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst|LessThan2~2_combout\ = (\inst15|inst|LessThan2~1_combout\ & ((\inst15|inst17|$00000|auto_generated|result_node\(2)) # ((!\inst14|inst2|reg_val\(2) & !\inst15|inst11|estado~q\)))) # (!\inst15|inst|LessThan2~1_combout\ & 
-- (!\inst14|inst2|reg_val\(2) & (\inst15|inst17|$00000|auto_generated|result_node\(2) & !\inst15|inst11|estado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst2|reg_val\(2),
	datab => \inst15|inst|LessThan2~1_combout\,
	datac => \inst15|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst15|inst11|estado~q\,
	combout => \inst15|inst|LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y18_N6
\inst5|inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan2~1_combout\ = (\inst5|inst17|$00000|auto_generated|result_node\(1) & (((!\inst5|inst9|$00000|auto_generated|result_node\(0) & \inst5|inst17|$00000|auto_generated|result_node\(0))) # 
-- (!\inst5|inst9|$00000|auto_generated|result_node\(1)))) # (!\inst5|inst17|$00000|auto_generated|result_node\(1) & (!\inst5|inst9|$00000|auto_generated|result_node\(0) & (!\inst5|inst9|$00000|auto_generated|result_node\(1) & 
-- \inst5|inst17|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst5|inst9|$00000|auto_generated|result_node\(0),
	datac => \inst5|inst9|$00000|auto_generated|result_node\(1),
	datad => \inst5|inst17|$00000|auto_generated|result_node\(0),
	combout => \inst5|inst|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y18_N28
\inst5|inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan1~1_combout\ = (!\inst5|inst8|estado~q\ & ((\inst|inst2|reg_val\(1)) # ((\inst|inst2|reg_val\(0) & !\inst4|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg_val\(0),
	datab => \inst5|inst8|estado~q\,
	datac => \inst|inst2|reg_val\(1),
	datad => \inst4|inst2|reg_val\(0),
	combout => \inst5|inst|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y21_N14
\inst5|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~3_combout\ = (\inst5|inst|LessThan1~0_combout\ & (((!\inst5|inst|LessThan1~1_combout\)))) # (!\inst5|inst|LessThan1~0_combout\ & (\inst5|inst6|$00000|auto_generated|result_node\(2) & 
-- ((\inst5|inst9|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst5|inst|LessThan1~1_combout\,
	datac => \inst5|inst9|$00000|auto_generated|result_node\(2),
	datad => \inst5|inst|LessThan1~0_combout\,
	combout => \inst5|inst|process_0~3_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst5|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~5_combout\ = (!\inst5|inst|LessThan0~0_combout\ & (!\inst5|inst17|$00000|auto_generated|result_node\(0) & (\inst5|inst17|$00000|auto_generated|result_node\(1) $ (!\inst5|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst5|inst|LessThan0~0_combout\,
	datac => \inst5|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst5|inst17|$00000|auto_generated|result_node\(0),
	combout => \inst5|inst|process_0~5_combout\);

-- Location: LCCOMB_X28_Y20_N2
\inst5|inst7|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst7|$00000|auto_generated|result_node\(0) = (\inst5|inst8|estado~q\) # (\inst4|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|estado~q\,
	datad => \inst4|inst2|reg_val\(0),
	combout => \inst5|inst7|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X30_Y17_N22
\inst5|inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan5~0_combout\ = (\inst5|inst11|estado~q\ & (!\inst5|inst5|estado~q\ & (!\inst9|inst2|reg_val\(2)))) # (!\inst5|inst11|estado~q\ & (\inst6|inst2|reg_val\(2) $ (((\inst5|inst5|estado~q\) # (\inst9|inst2|reg_val\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst11|estado~q\,
	datab => \inst5|inst5|estado~q\,
	datac => \inst9|inst2|reg_val\(2),
	datad => \inst6|inst2|reg_val\(2),
	combout => \inst5|inst|LessThan5~0_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst5|inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~9_combout\ = (\inst5|inst9|$00000|auto_generated|result_node\(1) & (!\inst5|inst|LessThan0~0_combout\ & ((!\inst5|inst17|$00000|auto_generated|result_node\(1))))) # (!\inst5|inst9|$00000|auto_generated|result_node\(1) & 
-- (((!\inst5|inst|LessThan0~0_combout\ & !\inst5|inst17|$00000|auto_generated|result_node\(1))) # (!\inst5|inst|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst9|$00000|auto_generated|result_node\(1),
	datab => \inst5|inst|LessThan0~0_combout\,
	datac => \inst5|inst|LessThan5~0_combout\,
	datad => \inst5|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst5|inst|process_0~9_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst5|inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~10_combout\ = (\inst5|inst6|$00000|auto_generated|result_node\(1) & ((\inst5|inst|process_0~9_combout\) # ((!\inst5|inst6|$00000|auto_generated|result_node\(2) & !\inst5|inst8|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst5|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst5|inst|process_0~9_combout\,
	datad => \inst5|inst8|estado~q\,
	combout => \inst5|inst|process_0~10_combout\);

-- Location: LCCOMB_X28_Y20_N16
\inst5|inst|Min_Out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[2]~7_combout\ = (\inst5|inst|Min_Out[0]~4_combout\ & (((\inst5|inst|Min_Out[0]~6_combout\) # (\inst5|inst9|$00000|auto_generated|result_node\(2))))) # (!\inst5|inst|Min_Out[0]~4_combout\ & 
-- (\inst5|inst6|$00000|auto_generated|result_node\(2) & (!\inst5|inst|Min_Out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst5|inst|Min_Out[0]~4_combout\,
	datac => \inst5|inst|Min_Out[0]~6_combout\,
	datad => \inst5|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst5|inst|Min_Out[2]~7_combout\);

-- Location: LCCOMB_X28_Y22_N24
\inst5|inst|Min_Out[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[2]~8_combout\ = (\inst5|inst|Min_Out[0]~6_combout\ & ((\inst5|inst|Min_Out[2]~7_combout\ & (\inst5|inst8|estado~q\)) # (!\inst5|inst|Min_Out[2]~7_combout\ & ((!\inst5|inst|LessThan1~0_combout\))))) # (!\inst5|inst|Min_Out[0]~6_combout\ 
-- & (((\inst5|inst|Min_Out[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|Min_Out[0]~6_combout\,
	datab => \inst5|inst8|estado~q\,
	datac => \inst5|inst|LessThan1~0_combout\,
	datad => \inst5|inst|Min_Out[2]~7_combout\,
	combout => \inst5|inst|Min_Out[2]~8_combout\);

-- Location: LCCOMB_X29_Y17_N10
\inst|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~6_combout\ = (\inst|inst5|estado~q\) # ((\inst5|inst2|reg_val\(1) & ((\inst5|inst2|reg_val\(0)) # (!\inst1|inst2|reg_val\(1)))) # (!\inst5|inst2|reg_val\(1) & (!\inst1|inst2|reg_val\(1) & \inst5|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|estado~q\,
	datab => \inst5|inst2|reg_val\(1),
	datac => \inst1|inst2|reg_val\(1),
	datad => \inst5|inst2|reg_val\(0),
	combout => \inst|inst|process_0~6_combout\);

-- Location: LCCOMB_X27_Y21_N6
\inst11|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst6|$00000|auto_generated|result_node\(1) = (\inst15|inst2|reg_val\(1)) # (\inst11|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst2|reg_val\(1),
	datad => \inst11|inst5|estado~q\,
	combout => \inst11|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X27_Y21_N16
\inst11|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst16|Add0~0_combout\ = (!\inst11|inst|Min_Out[0]~5_combout\ & ((\inst11|inst|Min_Out[1]~4_combout\) # ((!\inst11|inst|process_0~4_combout\ & \inst11|inst17|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|process_0~4_combout\,
	datab => \inst11|inst|Min_Out[1]~4_combout\,
	datac => \inst11|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst11|inst|Min_Out[0]~5_combout\,
	combout => \inst11|inst16|Add0~0_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst12|inst|Min_Out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|Min_Out[2]~1_combout\ = (\inst8|inst2|reg_val\(1) & (\inst13|inst2|reg_val\(0) & (!\inst8|inst2|reg_val\(0) & \inst13|inst2|reg_val\(1)))) # (!\inst8|inst2|reg_val\(1) & ((\inst13|inst2|reg_val\(1)) # ((\inst13|inst2|reg_val\(0) & 
-- !\inst8|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|reg_val\(0),
	datab => \inst8|inst2|reg_val\(1),
	datac => \inst8|inst2|reg_val\(0),
	datad => \inst13|inst2|reg_val\(1),
	combout => \inst12|inst|Min_Out[2]~1_combout\);

-- Location: LCCOMB_X27_Y20_N26
\inst12|inst|Min_Out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|Min_Out[2]~2_combout\ = (\inst12|inst|Min_Out[2]~1_combout\ & (((!\inst8|inst2|reg_val\(1) & \inst13|inst2|reg_val\(2))) # (!\inst8|inst2|reg_val\(2)))) # (!\inst12|inst|Min_Out[2]~1_combout\ & (((!\inst8|inst2|reg_val\(2) & 
-- \inst13|inst2|reg_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|Min_Out[2]~1_combout\,
	datab => \inst8|inst2|reg_val\(1),
	datac => \inst8|inst2|reg_val\(2),
	datad => \inst13|inst2|reg_val\(2),
	combout => \inst12|inst|Min_Out[2]~2_combout\);

-- Location: LCCOMB_X27_Y20_N20
\inst12|inst|Min_Out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|Min_Out[2]~3_combout\ = (\inst12|inst8|estado~q\) # (((!\inst12|inst3|estado~q\ & \inst12|inst|Min_Out[2]~2_combout\)) # (!\inst14|inst|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst8|estado~q\,
	datab => \inst12|inst3|estado~q\,
	datac => \inst12|inst|Min_Out[2]~2_combout\,
	datad => \inst14|inst|LessThan5~0_combout\,
	combout => \inst12|inst|Min_Out[2]~3_combout\);

-- Location: LCCOMB_X27_Y20_N10
\inst12|inst|Min_Out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|Min_Out[0]~5_combout\ = (\inst12|inst|LessThan1~2_combout\ & ((\inst13|inst2|reg_val\(0)) # ((\inst12|inst|Min_Out[2]~3_combout\) # (\inst12|inst8|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|reg_val\(0),
	datab => \inst12|inst|Min_Out[2]~3_combout\,
	datac => \inst12|inst8|estado~q\,
	datad => \inst12|inst|LessThan1~2_combout\,
	combout => \inst12|inst|Min_Out[0]~5_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst13|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~1_combout\ = (\inst13|inst9|$00000|auto_generated|result_node\(1) & (\inst13|inst|process_0~0_combout\ & (\inst13|inst7|$00000|auto_generated|result_node\(0) & \inst13|inst7|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst13|inst9|$00000|auto_generated|result_node\(1) & ((\inst13|inst7|$00000|auto_generated|result_node\(1)) # ((\inst13|inst|process_0~0_combout\ & \inst13|inst7|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~0_combout\,
	datab => \inst13|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst13|inst7|$00000|auto_generated|result_node\(0),
	datad => \inst13|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst13|inst|process_0~1_combout\);

-- Location: LCCOMB_X26_Y18_N12
\inst13|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~2_combout\ = (\inst13|inst|process_0~1_combout\ & (((\inst13|inst7|$00000|auto_generated|result_node\(2))) # (!\inst13|inst9|$00000|auto_generated|result_node\(2)))) # (!\inst13|inst|process_0~1_combout\ & 
-- (\inst13|inst7|$00000|auto_generated|result_node\(2) & ((!\inst13|inst17|$00000|auto_generated|result_node\(2)) # (!\inst13|inst9|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~1_combout\,
	datab => \inst13|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst13|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst13|inst7|$00000|auto_generated|result_node\(2),
	combout => \inst13|inst|process_0~2_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst13|inst17|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst17|$00000|auto_generated|result_node\(0) = (\inst9|inst2|reg_val\(0)) # (\inst13|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|reg_val\(0),
	datad => \inst13|inst3|estado~q\,
	combout => \inst13|inst17|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X28_Y17_N0
\inst13|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst17|$00000|auto_generated|result_node\(1) = (\inst9|inst2|reg_val\(1)) # (\inst13|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|reg_val\(1),
	datac => \inst13|inst3|estado~q\,
	combout => \inst13|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X26_Y18_N4
\inst13|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~3_combout\ = (\inst13|inst17|$00000|auto_generated|result_node\(1) & (!\inst13|inst17|$00000|auto_generated|result_node\(0) & (\inst13|inst7|$00000|auto_generated|result_node\(0) & 
-- \inst13|inst7|$00000|auto_generated|result_node\(1)))) # (!\inst13|inst17|$00000|auto_generated|result_node\(1) & ((\inst13|inst7|$00000|auto_generated|result_node\(1)) # ((!\inst13|inst17|$00000|auto_generated|result_node\(0) & 
-- \inst13|inst7|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst13|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst13|inst7|$00000|auto_generated|result_node\(0),
	datad => \inst13|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst13|inst|process_0~3_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst13|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~4_combout\ = (\inst13|inst|process_0~2_combout\) # ((\inst13|inst|process_0~3_combout\ & (\inst13|inst17|$00000|auto_generated|result_node\(2) $ (!\inst13|inst7|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~2_combout\,
	datab => \inst13|inst|process_0~3_combout\,
	datac => \inst13|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst13|inst7|$00000|auto_generated|result_node\(2),
	combout => \inst13|inst|process_0~4_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst13|inst|Min_Out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|Min_Out[2]~7_combout\ = (\inst13|inst|Min_Out[2]~6_combout\) # ((\inst13|inst|process_0~4_combout\ & (\inst13|inst9|$00000|auto_generated|result_node\(2))) # (!\inst13|inst|process_0~4_combout\ & 
-- ((\inst13|inst7|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~4_combout\,
	datab => \inst13|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst13|inst|Min_Out[2]~6_combout\,
	datad => \inst13|inst7|$00000|auto_generated|result_node\(2),
	combout => \inst13|inst|Min_Out[2]~7_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst13|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~5_combout\ = (\inst13|inst17|$00000|auto_generated|result_node\(1) & (((\inst13|inst|process_0~0_combout\ & \inst13|inst17|$00000|auto_generated|result_node\(0))) # (!\inst13|inst9|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst13|inst17|$00000|auto_generated|result_node\(1) & (\inst13|inst|process_0~0_combout\ & (!\inst13|inst9|$00000|auto_generated|result_node\(1) & \inst13|inst17|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~0_combout\,
	datab => \inst13|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst13|inst9|$00000|auto_generated|result_node\(1),
	datad => \inst13|inst17|$00000|auto_generated|result_node\(0),
	combout => \inst13|inst|process_0~5_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst13|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~7_combout\ = (\inst13|inst17|$00000|auto_generated|result_node\(1) & (((\inst13|inst17|$00000|auto_generated|result_node\(0) & !\inst13|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst13|inst7|$00000|auto_generated|result_node\(1)))) # (!\inst13|inst17|$00000|auto_generated|result_node\(1) & (\inst13|inst17|$00000|auto_generated|result_node\(0) & (!\inst13|inst7|$00000|auto_generated|result_node\(0) & 
-- !\inst13|inst7|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst13|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst13|inst7|$00000|auto_generated|result_node\(0),
	datad => \inst13|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst13|inst|process_0~7_combout\);

-- Location: LCCOMB_X28_Y18_N28
\inst10|inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan1~4_combout\ = (\inst10|inst17|$00000|auto_generated|result_node\(1) & (((\inst10|inst17|$00000|auto_generated|result_node\(0) & !\inst10|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst10|inst7|$00000|auto_generated|result_node\(1)))) # (!\inst10|inst17|$00000|auto_generated|result_node\(1) & (\inst10|inst17|$00000|auto_generated|result_node\(0) & (!\inst10|inst7|$00000|auto_generated|result_node\(1) & 
-- !\inst10|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst7|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst10|inst|LessThan1~4_combout\);

-- Location: LCCOMB_X32_Y20_N24
\inst10|inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan5~0_combout\ = (\inst14|inst2|reg_val\(2) & (!\inst9|inst2|reg_val\(2) & (!\inst10|inst11|estado~q\))) # (!\inst14|inst2|reg_val\(2) & (\inst10|inst5|estado~q\ $ (((\inst9|inst2|reg_val\(2)) # (\inst10|inst11|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst2|reg_val\(2),
	datab => \inst9|inst2|reg_val\(2),
	datac => \inst10|inst11|estado~q\,
	datad => \inst10|inst5|estado~q\,
	combout => \inst10|inst|LessThan5~0_combout\);

-- Location: LCCOMB_X32_Y20_N30
\inst10|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~5_combout\ = (!\inst10|inst9|$00000|auto_generated|result_node\(0) & (!\inst10|inst|LessThan5~0_combout\ & (\inst10|inst6|$00000|auto_generated|result_node\(1) $ (!\inst10|inst9|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst10|inst9|$00000|auto_generated|result_node\(0),
	datad => \inst10|inst|LessThan5~0_combout\,
	combout => \inst10|inst|process_0~5_combout\);

-- Location: LCCOMB_X32_Y20_N6
\inst10|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~8_combout\ = (\inst10|inst17|$00000|auto_generated|result_node\(1) & (!\inst10|inst7|$00000|auto_generated|result_node\(1) & ((!\inst10|inst|LessThan7~0_combout\)))) # (!\inst10|inst17|$00000|auto_generated|result_node\(1) & 
-- (((!\inst10|inst7|$00000|auto_generated|result_node\(1) & !\inst10|inst|LessThan7~0_combout\)) # (!\inst10|inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst7|$00000|auto_generated|result_node\(1),
	datac => \inst10|inst|LessThan0~0_combout\,
	datad => \inst10|inst|LessThan7~0_combout\,
	combout => \inst10|inst|process_0~8_combout\);

-- Location: LCCOMB_X32_Y20_N12
\inst10|inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~9_combout\ = (\inst10|inst6|$00000|auto_generated|result_node\(1) & ((\inst10|inst|process_0~8_combout\) # ((!\inst10|inst9|$00000|auto_generated|result_node\(1) & !\inst10|inst|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|process_0~8_combout\,
	datab => \inst10|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst10|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst|LessThan5~0_combout\,
	combout => \inst10|inst|process_0~9_combout\);

-- Location: LCCOMB_X28_Y18_N20
\inst10|inst|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan6~4_combout\ = (\inst10|inst17|$00000|auto_generated|result_node\(1) & (!\inst10|inst17|$00000|auto_generated|result_node\(0) & (\inst10|inst7|$00000|auto_generated|result_node\(1) & 
-- \inst10|inst7|$00000|auto_generated|result_node\(0)))) # (!\inst10|inst17|$00000|auto_generated|result_node\(1) & ((\inst10|inst7|$00000|auto_generated|result_node\(1)) # ((!\inst10|inst17|$00000|auto_generated|result_node\(0) & 
-- \inst10|inst7|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst7|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst10|inst|LessThan6~4_combout\);

-- Location: LCCOMB_X30_Y17_N12
\inst7|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~0_combout\ = (!\inst7|inst11|estado~q\ & !\inst6|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst11|estado~q\,
	datac => \inst6|inst2|reg_val\(0),
	combout => \inst7|inst|process_0~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\inst7|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~1_combout\ = (\inst7|inst17|$00000|auto_generated|result_node\(1) & (((\inst7|inst|process_0~0_combout\ & \inst7|inst17|$00000|auto_generated|result_node\(0))) # (!\inst7|inst9|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst7|inst17|$00000|auto_generated|result_node\(1) & (\inst7|inst|process_0~0_combout\ & (\inst7|inst17|$00000|auto_generated|result_node\(0) & !\inst7|inst9|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|process_0~0_combout\,
	datab => \inst7|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst7|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst7|inst9|$00000|auto_generated|result_node\(1),
	combout => \inst7|inst|process_0~1_combout\);

-- Location: LCCOMB_X27_Y18_N12
\inst7|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~2_combout\ = (\inst7|inst|process_0~1_combout\ & (((\inst7|inst17|$00000|auto_generated|result_node\(2)) # (!\inst7|inst9|$00000|auto_generated|result_node\(2))))) # (!\inst7|inst|process_0~1_combout\ & 
-- (\inst7|inst17|$00000|auto_generated|result_node\(2) & ((!\inst7|inst9|$00000|auto_generated|result_node\(2)) # (!\inst7|inst6|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|process_0~1_combout\,
	datab => \inst7|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst7|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst7|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst7|inst|process_0~2_combout\);

-- Location: LCCOMB_X27_Y18_N26
\inst7|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst6|$00000|auto_generated|result_node\(1) = (\inst7|inst5|estado~q\) # (\inst11|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst5|estado~q\,
	datad => \inst11|inst2|reg_val\(1),
	combout => \inst7|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X27_Y18_N4
\inst7|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~5_combout\ = (\inst7|inst9|$00000|auto_generated|result_node\(1) & (\inst7|inst6|$00000|auto_generated|result_node\(0) & (\inst7|inst6|$00000|auto_generated|result_node\(1) & \inst7|inst|process_0~0_combout\))) # 
-- (!\inst7|inst9|$00000|auto_generated|result_node\(1) & ((\inst7|inst6|$00000|auto_generated|result_node\(1)) # ((\inst7|inst6|$00000|auto_generated|result_node\(0) & \inst7|inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst7|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst7|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst7|inst|process_0~0_combout\,
	combout => \inst7|inst|process_0~5_combout\);

-- Location: LCCOMB_X27_Y18_N30
\inst7|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~6_combout\ = (\inst7|inst6|$00000|auto_generated|result_node\(2) & (((\inst7|inst|process_0~5_combout\) # (!\inst7|inst9|$00000|auto_generated|result_node\(2))) # (!\inst7|inst17|$00000|auto_generated|result_node\(2)))) # 
-- (!\inst7|inst6|$00000|auto_generated|result_node\(2) & (((\inst7|inst|process_0~5_combout\ & !\inst7|inst9|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst17|$00000|auto_generated|result_node\(2),
	datab => \inst7|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst7|inst|process_0~5_combout\,
	datad => \inst7|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst7|inst|process_0~6_combout\);

-- Location: LCCOMB_X27_Y18_N14
\inst7|inst|Min_Out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|Min_Out[0]~3_combout\ = (\inst7|inst|process_0~8_combout\ & ((\inst6|inst2|reg_val\(0)) # ((\inst7|inst11|estado~q\)))) # (!\inst7|inst|process_0~8_combout\ & (((\inst7|inst6|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|process_0~8_combout\,
	datab => \inst6|inst2|reg_val\(0),
	datac => \inst7|inst11|estado~q\,
	datad => \inst7|inst6|$00000|auto_generated|result_node\(0),
	combout => \inst7|inst|Min_Out[0]~3_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst7|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst16|Add0~0_combout\ = (!\inst7|inst|Min_Out[0]~5_combout\ & ((\inst7|inst|Min_Out[1]~4_combout\) # ((!\inst7|inst|process_0~4_combout\ & \inst7|inst17|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|process_0~4_combout\,
	datab => \inst7|inst|Min_Out[1]~4_combout\,
	datac => \inst7|inst|Min_Out[0]~5_combout\,
	datad => \inst7|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst7|inst16|Add0~0_combout\);

-- Location: LCCOMB_X29_Y22_N4
\inst8|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~0_combout\ = (!\inst8|inst8|estado~q\ & (((!\inst9|inst2|reg_val\(0)) # (!\inst9|inst2|reg_val\(1))) # (!\inst9|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|reg_val\(2),
	datab => \inst8|inst8|estado~q\,
	datac => \inst9|inst2|reg_val\(1),
	datad => \inst9|inst2|reg_val\(0),
	combout => \inst8|inst|process_0~0_combout\);

-- Location: LCCOMB_X28_Y22_N26
\inst8|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~1_combout\ = (\inst8|inst3|estado~q\ & ((\inst8|inst|process_0~0_combout\) # ((!\inst8|inst5|estado~q\ & \inst13|inst|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst5|estado~q\,
	datab => \inst13|inst|LessThan5~0_combout\,
	datac => \inst8|inst3|estado~q\,
	datad => \inst8|inst|process_0~0_combout\,
	combout => \inst8|inst|process_0~1_combout\);

-- Location: LCCOMB_X27_Y17_N14
\inst8|inst7|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst7|$00000|auto_generated|result_node\(1) = (\inst9|inst2|reg_val\(1)) # (\inst8|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|reg_val\(1),
	datad => \inst8|inst8|estado~q\,
	combout => \inst8|inst7|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X28_Y17_N12
\inst8|inst|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~13_combout\ = (\inst8|inst7|$00000|auto_generated|result_node\(1) & (((!\inst8|inst6|$00000|auto_generated|result_node\(0) & \inst8|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst8|inst6|$00000|auto_generated|result_node\(1)))) # (!\inst8|inst7|$00000|auto_generated|result_node\(1) & (!\inst8|inst6|$00000|auto_generated|result_node\(0) & (!\inst8|inst6|$00000|auto_generated|result_node\(1) & 
-- \inst8|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst8|inst6|$00000|auto_generated|result_node\(0),
	datac => \inst8|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst8|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst8|inst|process_0~13_combout\);

-- Location: LCCOMB_X27_Y19_N24
\inst9|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst9|$00000|auto_generated|result_node\(2) = (\inst9|inst11|estado~q\) # (\inst8|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst11|estado~q\,
	datad => \inst8|inst2|reg_val\(2),
	combout => \inst9|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X25_Y19_N28
\inst9|inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan1~4_combout\ = (\inst9|inst7|$00000|auto_generated|result_node\(1) & (\inst9|inst17|$00000|auto_generated|result_node\(1) & (\inst9|inst17|$00000|auto_generated|result_node\(0) & !\inst9|inst7|$00000|auto_generated|result_node\(0)))) # 
-- (!\inst9|inst7|$00000|auto_generated|result_node\(1) & ((\inst9|inst17|$00000|auto_generated|result_node\(1)) # ((\inst9|inst17|$00000|auto_generated|result_node\(0) & !\inst9|inst7|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst9|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst9|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst9|inst|LessThan1~4_combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst9|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~3_combout\ = (!\inst9|inst17|$00000|auto_generated|result_node\(0) & (!\inst9|inst|LessThan0~0_combout\ & (\inst9|inst17|$00000|auto_generated|result_node\(1) $ (!\inst9|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst9|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst9|inst|LessThan0~0_combout\,
	datad => \inst9|inst6|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|process_0~3_combout\);

-- Location: LCCOMB_X25_Y19_N30
\inst9|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~4_combout\ = (!\inst9|inst|LessThan7~0_combout\ & (!\inst9|inst7|$00000|auto_generated|result_node\(0) & (\inst9|inst7|$00000|auto_generated|result_node\(1) $ (!\inst9|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|LessThan7~0_combout\,
	datab => \inst9|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst9|inst7|$00000|auto_generated|result_node\(1),
	datad => \inst9|inst6|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|process_0~4_combout\);

-- Location: LCCOMB_X26_Y19_N6
\inst9|inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan5~0_combout\ = (\inst9|inst11|estado~q\ & (((!\inst13|inst2|reg_val\(2) & !\inst9|inst5|estado~q\)))) # (!\inst9|inst11|estado~q\ & (\inst8|inst2|reg_val\(2) $ (((\inst13|inst2|reg_val\(2)) # (\inst9|inst5|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst11|estado~q\,
	datab => \inst8|inst2|reg_val\(2),
	datac => \inst13|inst2|reg_val\(2),
	datad => \inst9|inst5|estado~q\,
	combout => \inst9|inst|LessThan5~0_combout\);

-- Location: LCCOMB_X25_Y19_N20
\inst9|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~5_combout\ = (!\inst9|inst|LessThan5~0_combout\ & (!\inst9|inst9|$00000|auto_generated|result_node\(0) & (\inst9|inst6|$00000|auto_generated|result_node\(1) $ (!\inst9|inst9|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|LessThan5~0_combout\,
	datab => \inst9|inst6|$00000|auto_generated|result_node\(1),
	datac => \inst9|inst9|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst9|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|process_0~5_combout\);

-- Location: LCCOMB_X25_Y19_N18
\inst9|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~6_combout\ = (\inst9|inst6|$00000|auto_generated|result_node\(0) & ((\inst9|inst|process_0~4_combout\) # ((\inst9|inst|process_0~5_combout\) # (\inst9|inst|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|process_0~4_combout\,
	datab => \inst9|inst|process_0~5_combout\,
	datac => \inst9|inst6|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst|process_0~3_combout\,
	combout => \inst9|inst|process_0~6_combout\);

-- Location: LCCOMB_X27_Y19_N20
\inst9|inst|Min_Out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[0]~1_combout\ = ((\inst9|inst9|$00000|auto_generated|result_node\(2) & (\inst9|inst17|$00000|auto_generated|result_node\(2) & \inst9|inst6|$00000|auto_generated|result_node\(2)))) # (!\inst9|inst7|$00000|auto_generated|result_node\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst9|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst9|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst9|inst6|$00000|auto_generated|result_node\(2),
	combout => \inst9|inst|Min_Out[0]~1_combout\);

-- Location: LCCOMB_X25_Y19_N12
\inst9|inst|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan8~0_combout\ = (\inst9|inst7|$00000|auto_generated|result_node\(1) & (((!\inst9|inst9|$00000|auto_generated|result_node\(0) & \inst9|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst9|inst9|$00000|auto_generated|result_node\(1)))) # (!\inst9|inst7|$00000|auto_generated|result_node\(1) & (!\inst9|inst9|$00000|auto_generated|result_node\(0) & (\inst9|inst7|$00000|auto_generated|result_node\(0) & 
-- !\inst9|inst9|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst9|$00000|auto_generated|result_node\(0),
	datab => \inst9|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst9|inst7|$00000|auto_generated|result_node\(1),
	datad => \inst9|inst9|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|LessThan8~0_combout\);

-- Location: LCCOMB_X27_Y19_N10
\inst9|inst|Min_Out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[0]~2_combout\ = (\inst9|inst|Min_Out[0]~1_combout\ & ((\inst9|inst7|$00000|auto_generated|result_node\(2) $ (\inst9|inst9|$00000|auto_generated|result_node\(2))) # (!\inst9|inst|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst9|inst|Min_Out[0]~1_combout\,
	datac => \inst9|inst|LessThan8~0_combout\,
	datad => \inst9|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst9|inst|Min_Out[0]~2_combout\);

-- Location: LCCOMB_X31_Y16_N6
\inst6|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst6|$00000|auto_generated|result_node\(2) = (\inst10|inst2|reg_val\(2)) # (\inst6|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst2|reg_val\(2),
	datad => \inst6|inst5|estado~q\,
	combout => \inst6|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X31_Y16_N12
\inst6|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~0_combout\ = ((\inst6|inst9|$00000|auto_generated|result_node\(2) & (\inst6|inst7|$00000|auto_generated|result_node\(2) & \inst6|inst6|$00000|auto_generated|result_node\(2)))) # (!\inst6|inst17|$00000|auto_generated|result_node\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst9|$00000|auto_generated|result_node\(2),
	datab => \inst6|inst7|$00000|auto_generated|result_node\(2),
	datac => \inst6|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst6|inst6|$00000|auto_generated|result_node\(2),
	combout => \inst6|inst|process_0~0_combout\);

-- Location: LCCOMB_X30_Y16_N24
\inst6|inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan2~0_combout\ = (\inst6|inst9|$00000|auto_generated|result_node\(1) & (\inst6|inst17|$00000|auto_generated|result_node\(1) & (\inst6|inst17|$00000|auto_generated|result_node\(0) & !\inst6|inst9|$00000|auto_generated|result_node\(0)))) # 
-- (!\inst6|inst9|$00000|auto_generated|result_node\(1) & ((\inst6|inst17|$00000|auto_generated|result_node\(1)) # ((\inst6|inst17|$00000|auto_generated|result_node\(0) & !\inst6|inst9|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst9|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst6|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst6|inst9|$00000|auto_generated|result_node\(0),
	combout => \inst6|inst|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y16_N18
\inst6|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~1_combout\ = (\inst6|inst|process_0~0_combout\ & ((\inst6|inst17|$00000|auto_generated|result_node\(2) $ (\inst6|inst9|$00000|auto_generated|result_node\(2))) # (!\inst6|inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst17|$00000|auto_generated|result_node\(2),
	datab => \inst6|inst|LessThan2~0_combout\,
	datac => \inst6|inst9|$00000|auto_generated|result_node\(2),
	datad => \inst6|inst|process_0~0_combout\,
	combout => \inst6|inst|process_0~1_combout\);

-- Location: LCCOMB_X28_Y16_N12
\inst6|inst6|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst6|$00000|auto_generated|result_node\(0) = (\inst10|inst2|reg_val\(0)) # (\inst6|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst2|reg_val\(0),
	datad => \inst6|inst5|estado~q\,
	combout => \inst6|inst6|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X30_Y16_N16
\inst6|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~8_combout\ = (\inst6|inst|LessThan0~0_combout\ & (((!\inst6|inst|LessThan7~0_combout\ & !\inst6|inst7|$00000|auto_generated|result_node\(1))))) # (!\inst6|inst|LessThan0~0_combout\ & (((!\inst6|inst|LessThan7~0_combout\ & 
-- !\inst6|inst7|$00000|auto_generated|result_node\(1))) # (!\inst6|inst17|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LessThan0~0_combout\,
	datab => \inst6|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst6|inst|LessThan7~0_combout\,
	datad => \inst6|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst6|inst|process_0~8_combout\);

-- Location: LCCOMB_X30_Y16_N30
\inst6|inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~9_combout\ = (\inst6|inst6|$00000|auto_generated|result_node\(1) & ((\inst6|inst|process_0~8_combout\) # ((!\inst6|inst9|$00000|auto_generated|result_node\(1) & !\inst6|inst|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst9|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst|LessThan5~0_combout\,
	datac => \inst6|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst6|inst|process_0~8_combout\,
	combout => \inst6|inst|process_0~9_combout\);

-- Location: LCCOMB_X31_Y16_N30
\inst6|inst|Min_Out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[0]~1_combout\ = ((\inst6|inst9|$00000|auto_generated|result_node\(2) & (\inst6|inst17|$00000|auto_generated|result_node\(2) & \inst6|inst6|$00000|auto_generated|result_node\(2)))) # (!\inst6|inst7|$00000|auto_generated|result_node\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst9|$00000|auto_generated|result_node\(2),
	datab => \inst6|inst7|$00000|auto_generated|result_node\(2),
	datac => \inst6|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst6|inst6|$00000|auto_generated|result_node\(2),
	combout => \inst6|inst|Min_Out[0]~1_combout\);

-- Location: LCCOMB_X28_Y16_N14
\inst6|inst|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan7~1_combout\ = (\inst6|inst6|$00000|auto_generated|result_node\(1) & (!\inst6|inst6|$00000|auto_generated|result_node\(0) & (\inst6|inst7|$00000|auto_generated|result_node\(0) & \inst6|inst7|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst6|inst6|$00000|auto_generated|result_node\(1) & ((\inst6|inst7|$00000|auto_generated|result_node\(1)) # ((!\inst6|inst6|$00000|auto_generated|result_node\(0) & \inst6|inst7|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst6|inst6|$00000|auto_generated|result_node\(1),
	datac => \inst6|inst7|$00000|auto_generated|result_node\(0),
	datad => \inst6|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst6|inst|LessThan7~1_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst6|inst|Min_Out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[2]~5_combout\ = (\inst6|inst|Min_Out[0]~4_combout\ & (((\inst6|inst|Min_Out[0]~0_combout\)))) # (!\inst6|inst|Min_Out[0]~4_combout\ & ((\inst6|inst|Min_Out[0]~0_combout\ & ((\inst6|inst9|$00000|auto_generated|result_node\(2)))) # 
-- (!\inst6|inst|Min_Out[0]~0_combout\ & (\inst6|inst6|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst6|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst6|inst|Min_Out[0]~4_combout\,
	datad => \inst6|inst|Min_Out[0]~0_combout\,
	combout => \inst6|inst|Min_Out[2]~5_combout\);

-- Location: LCCOMB_X30_Y16_N22
\inst6|inst|Min_Out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[2]~6_combout\ = (\inst6|inst|Min_Out[0]~4_combout\ & ((\inst6|inst|Min_Out[2]~5_combout\ & (\inst6|inst7|$00000|auto_generated|result_node\(2))) # (!\inst6|inst|Min_Out[2]~5_combout\ & 
-- ((\inst6|inst17|$00000|auto_generated|result_node\(2)))))) # (!\inst6|inst|Min_Out[0]~4_combout\ & (((\inst6|inst|Min_Out[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst6|inst17|$00000|auto_generated|result_node\(2),
	datac => \inst6|inst|Min_Out[0]~4_combout\,
	datad => \inst6|inst|Min_Out[2]~5_combout\,
	combout => \inst6|inst|Min_Out[2]~6_combout\);

-- Location: LCCOMB_X30_Y21_N24
\inst35|inst3|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~5_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst|inst2|Q\(1) & !\inst33|inst1|inst|inst|inst2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst35|inst3|Mux0~5_combout\);

-- Location: LCCOMB_X31_Y21_N20
\inst|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|estado~0_combout\ = (\inst|inst3|estado~q\) # ((\inst35|inst|Mux0~0_combout\ & \inst35|inst3|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst|Mux0~0_combout\,
	datac => \inst|inst3|estado~q\,
	datad => \inst35|inst3|Mux0~11_combout\,
	combout => \inst|inst3|estado~0_combout\);

-- Location: LCCOMB_X31_Y18_N12
\inst4|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst11|estado~0_combout\ = (\inst4|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst1|inst|inst|inst|Mux2~1_combout\ & \inst35|inst3|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	datac => \inst4|inst11|estado~q\,
	datad => \inst35|inst3|Mux0~15_combout\,
	combout => \inst4|inst11|estado~0_combout\);

-- Location: LCCOMB_X34_Y21_N30
\inst12|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst11|estado~0_combout\ = (\inst12|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~8_combout\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~8_combout\,
	datac => \inst12|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst12|inst11|estado~0_combout\);

-- Location: LCCOMB_X32_Y21_N20
\inst12|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst5|estado~0_combout\ = (\inst12|inst5|estado~q\) # ((\inst33|inst5|seleccion[1]~7_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst5|seleccion[1]~7_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst12|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~8_combout\,
	combout => \inst12|inst5|estado~0_combout\);

-- Location: LCCOMB_X31_Y18_N8
\inst4|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst8|estado~0_combout\ = (\inst4|inst8|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst4|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~15_combout\,
	combout => \inst4|inst8|estado~0_combout\);

-- Location: FF_X36_Y22_N31
\inst33|inst3|inst2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~5_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(12));

-- Location: FF_X35_Y19_N7
\inst33|inst3|inst2|tiempo_limite[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|tiempo_limite[1]~feeder_combout\,
	ena => \inst33|inst3|inst2|tiempo_limite[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|tiempo_limite\(1));

-- Location: FF_X36_Y23_N13
\inst33|inst3|inst2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~7_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(5));

-- Location: FF_X36_Y23_N7
\inst33|inst3|inst2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~10_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(1));

-- Location: LCCOMB_X35_Y23_N8
\inst33|inst3|inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|LessThan0~1_combout\ = (((\inst33|inst3|inst2|tiempo_limite\(1) & !\inst33|inst3|inst2|contador\(1))) # (!\inst33|inst3|inst2|contador\(3))) # (!\inst33|inst3|inst2|contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|tiempo_limite\(1),
	datab => \inst33|inst3|inst2|contador\(2),
	datac => \inst33|inst3|inst2|contador\(3),
	datad => \inst33|inst3|inst2|contador\(1),
	combout => \inst33|inst3|inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y23_N22
\inst33|inst3|inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|LessThan0~2_combout\ = (\inst33|inst3|inst2|tiempo_limite\(10) & ((\inst33|inst3|inst2|LessThan0~1_combout\) # (!\inst33|inst3|inst2|contador\(4)))) # (!\inst33|inst3|inst2|tiempo_limite\(10) & (\inst33|inst3|inst2|LessThan0~1_combout\ 
-- & !\inst33|inst3|inst2|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|tiempo_limite\(10),
	datab => \inst33|inst3|inst2|LessThan0~1_combout\,
	datac => \inst33|inst3|inst2|contador\(4),
	combout => \inst33|inst3|inst2|LessThan0~2_combout\);

-- Location: FF_X36_Y22_N23
\inst33|inst3|inst2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~15_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(9));

-- Location: LCCOMB_X35_Y23_N12
\inst33|inst3|inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|LessThan0~3_combout\ = (\inst33|inst3|inst2|tiempo_limite\(1) & ((\inst33|inst3|inst2|LessThan0~7_combout\) # (!\inst33|inst3|inst2|contador\(9)))) # (!\inst33|inst3|inst2|tiempo_limite\(1) & (!\inst33|inst3|inst2|contador\(9) & 
-- \inst33|inst3|inst2|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|tiempo_limite\(1),
	datac => \inst33|inst3|inst2|contador\(9),
	datad => \inst33|inst3|inst2|LessThan0~7_combout\,
	combout => \inst33|inst3|inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X34_Y18_N6
\inst28|btn_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|btn_out~0_combout\ = (\inst28|cnt\(3) & (\SENSOR_LINEA~input_o\ $ ((\inst28|btn_reg~q\)))) # (!\inst28|cnt\(3) & ((\SENSOR_LINEA~input_o\ $ (\inst28|btn_reg~q\)) # (!\inst28|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_LINEA~input_o\,
	datab => \inst28|btn_reg~q\,
	datac => \inst28|cnt\(3),
	datad => \inst28|cnt\(4),
	combout => \inst28|btn_out~0_combout\);

-- Location: LCCOMB_X39_Y21_N6
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~1_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0) $ (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~1_combout\);

-- Location: FF_X40_Y21_N11
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(2));

-- Location: FF_X36_Y23_N11
\inst33|inst3|inst2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~19_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(0));

-- Location: LCCOMB_X36_Y22_N30
\inst33|inst3|inst2|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~5_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador[14]~1_combout\,
	datac => \inst33|inst3|inst2|Add0~24_combout\,
	combout => \inst33|inst3|inst2|contador~5_combout\);

-- Location: LCCOMB_X36_Y23_N12
\inst33|inst3|inst2|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~7_combout\ = (\inst33|inst3|inst2|Add0~10_combout\ & \inst33|inst3|inst2|contador[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|Add0~10_combout\,
	datad => \inst33|inst3|inst2|contador[14]~1_combout\,
	combout => \inst33|inst3|inst2|contador~7_combout\);

-- Location: LCCOMB_X36_Y23_N6
\inst33|inst3|inst2|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~10_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~2_combout\,
	combout => \inst33|inst3|inst2|contador~10_combout\);

-- Location: LCCOMB_X36_Y22_N22
\inst33|inst3|inst2|contador~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~15_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~18_combout\,
	combout => \inst33|inst3|inst2|contador~15_combout\);

-- Location: LCCOMB_X35_Y23_N10
\inst33|inst3|inst2|contador[16]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador[16]~17_combout\ = (!\inst33|inst3|inst2|contador\(15) & \inst33|inst3|inst2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|contador\(15),
	datad => \inst33|inst3|inst2|Add0~32_combout\,
	combout => \inst33|inst3|inst2|contador[16]~17_combout\);

-- Location: FF_X40_Y21_N17
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(1));

-- Location: LCCOMB_X40_Y21_N26
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~4_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~4_combout\);

-- Location: LCCOMB_X39_Y21_N16
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2))) # 
-- (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\);

-- Location: LCCOMB_X40_Y21_N10
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\ & ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~4_combout\) # 
-- ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(2),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~4_combout\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\);

-- Location: LCCOMB_X36_Y23_N10
\inst33|inst3|inst2|contador~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~19_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~0_combout\,
	combout => \inst33|inst3|inst2|contador~19_combout\);

-- Location: FF_X40_Y21_N21
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(0));

-- Location: LCCOMB_X40_Y21_N14
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\);

-- Location: LCCOMB_X40_Y21_N16
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\ & ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\) # 
-- ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(1),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\);

-- Location: LCCOMB_X40_Y21_N12
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ = (\inst33|inst3|inst8|adc_mega_0|go~q\ & ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\) # ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(0) & 
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\)))) # (!\inst33|inst3|inst8|adc_mega_0|go~q\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(0) & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|go~q\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(0),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\);

-- Location: LCCOMB_X40_Y21_N20
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\) # ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ & 
-- ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\) # (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~2_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\);

-- Location: LCCOMB_X29_Y21_N22
\inst33|inst1|inst5|Y[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst5|Y[2]~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & (!\inst33|inst1|inst|inst|inst2|Q\(3) & (\inst33|inst1|inst|inst5|Mux0~6_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst|inst2|Q\(3) & 
-- ((\inst33|inst1|inst|inst5|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst|inst5|Mux0~6_combout\,
	datad => \inst33|inst1|inst|inst5|Mux0~8_combout\,
	combout => \inst33|inst1|inst5|Y[2]~5_combout\);

-- Location: LCCOMB_X31_Y19_N22
\inst33|inst4|LessThan2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~12_combout\ = (\inst33|inst1|inst|inst5|Mux2~4_combout\ & ((\inst33|inst1|inst5|Y[0]~2_combout\) # (\inst33|inst1|inst|inst|inst2|Q\(2) $ (!\inst33|inst1|inst|inst|inst2|Q\(3))))) # (!\inst33|inst1|inst|inst5|Mux2~4_combout\ & 
-- (\inst33|inst1|inst5|Y[0]~2_combout\ & (\inst33|inst1|inst|inst|inst2|Q\(2) $ (\inst33|inst1|inst|inst|inst2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux2~4_combout\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst5|Y[0]~2_combout\,
	datad => \inst33|inst1|inst|inst|inst2|Q\(3),
	combout => \inst33|inst4|LessThan2~12_combout\);

-- Location: LCCOMB_X28_Y19_N22
\inst1|inst|Min_Out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|Min_Out[0]~10_combout\ = (\inst1|inst|Min_Out[0]~5_combout\) # ((!\inst1|inst|process_0~8_combout\ & ((\inst1|inst5|estado~q\) # (\inst6|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|estado~q\,
	datab => \inst1|inst|process_0~8_combout\,
	datac => \inst6|inst2|reg_val\(0),
	datad => \inst1|inst|Min_Out[0]~5_combout\,
	combout => \inst1|inst|Min_Out[0]~10_combout\);

-- Location: LCCOMB_X26_Y20_N10
\inst14|inst|Min_Out[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|Min_Out[2]~10_combout\ = (\inst14|inst|process_0~8_combout\ & (((\inst14|inst|Min_Out[2]~7_combout\)))) # (!\inst14|inst|process_0~8_combout\ & ((\inst14|inst3|estado~q\) # ((\inst10|inst2|reg_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|estado~q\,
	datab => \inst14|inst|process_0~8_combout\,
	datac => \inst14|inst|Min_Out[2]~7_combout\,
	datad => \inst10|inst2|reg_val\(2),
	combout => \inst14|inst|Min_Out[2]~10_combout\);

-- Location: LCCOMB_X30_Y17_N10
\inst5|inst|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan6~2_combout\ = (\inst5|inst17|$00000|auto_generated|result_node\(0) & (((!\inst5|inst17|$00000|auto_generated|result_node\(1) & \inst5|inst8|estado~q\)))) # (!\inst5|inst17|$00000|auto_generated|result_node\(0) & 
-- ((\inst5|inst8|estado~q\) # ((\inst4|inst2|reg_val\(0) & !\inst5|inst17|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|reg_val\(0),
	datab => \inst5|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst5|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst5|inst8|estado~q\,
	combout => \inst5|inst|LessThan6~2_combout\);

-- Location: LCCOMB_X30_Y17_N20
\inst5|inst|Min_Out[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[0]~13_combout\ = (\inst5|inst8|estado~q\ & ((\inst5|inst|LessThan6~2_combout\) # ((!\inst5|inst3|estado~q\ & !\inst|inst2|reg_val\(2))))) # (!\inst5|inst8|estado~q\ & (!\inst5|inst3|estado~q\ & (!\inst|inst2|reg_val\(2) & 
-- \inst5|inst|LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|estado~q\,
	datab => \inst5|inst3|estado~q\,
	datac => \inst|inst2|reg_val\(2),
	datad => \inst5|inst|LessThan6~2_combout\,
	combout => \inst5|inst|Min_Out[0]~13_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst13|inst|Min_Out[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|Min_Out[2]~10_combout\ = (\inst13|inst|process_0~8_combout\ & (((\inst13|inst|Min_Out[2]~7_combout\)))) # (!\inst13|inst|process_0~8_combout\ & ((\inst13|inst3|estado~q\) # ((\inst9|inst2|reg_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst3|estado~q\,
	datab => \inst13|inst|process_0~8_combout\,
	datac => \inst9|inst2|reg_val\(2),
	datad => \inst13|inst|Min_Out[2]~7_combout\,
	combout => \inst13|inst|Min_Out[2]~10_combout\);

-- Location: LCCOMB_X28_Y18_N30
\inst10|inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan1~5_combout\ = (\inst10|inst|LessThan1~4_combout\ & (\inst10|inst7|$00000|auto_generated|result_node\(2) $ (((!\inst6|inst2|reg_val\(2) & !\inst10|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst|LessThan1~4_combout\,
	datac => \inst6|inst2|reg_val\(2),
	datad => \inst10|inst3|estado~q\,
	combout => \inst10|inst|LessThan1~5_combout\);

-- Location: LCCOMB_X28_Y18_N4
\inst10|inst|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan6~5_combout\ = (\inst10|inst|LessThan6~4_combout\ & (\inst10|inst7|$00000|auto_generated|result_node\(2) $ (((!\inst6|inst2|reg_val\(2) & !\inst10|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst|LessThan6~4_combout\,
	datac => \inst6|inst2|reg_val\(2),
	datad => \inst10|inst3|estado~q\,
	combout => \inst10|inst|LessThan6~5_combout\);

-- Location: LCCOMB_X25_Y19_N10
\inst9|inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan1~5_combout\ = (\inst9|inst|LessThan1~4_combout\ & (\inst9|inst7|$00000|auto_generated|result_node\(2) $ (((!\inst5|inst2|reg_val\(2) & !\inst9|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|reg_val\(2),
	datab => \inst9|inst|LessThan1~4_combout\,
	datac => \inst9|inst3|estado~q\,
	datad => \inst9|inst7|$00000|auto_generated|result_node\(2),
	combout => \inst9|inst|LessThan1~5_combout\);

-- Location: LCCOMB_X35_Y23_N24
\inst33|inst3|inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|LessThan0~6_combout\ = ((\inst33|inst3|inst2|LessThan0~2_combout\ & ((\inst33|inst3|inst2|tiempo_limite\(1)) # (!\inst33|inst3|inst2|contador\(5)))) # (!\inst33|inst3|inst2|LessThan0~2_combout\ & (!\inst33|inst3|inst2|contador\(5) & 
-- \inst33|inst3|inst2|tiempo_limite\(1)))) # (!\inst33|inst3|inst2|contador\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|LessThan0~2_combout\,
	datab => \inst33|inst3|inst2|contador\(7),
	datac => \inst33|inst3|inst2|contador\(5),
	datad => \inst33|inst3|inst2|tiempo_limite\(1),
	combout => \inst33|inst3|inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X35_Y23_N18
\inst33|inst3|inst2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|LessThan0~7_combout\ = (\inst33|inst3|inst2|contador\(8) & (\inst33|inst3|inst2|tiempo_limite\(10) & ((\inst33|inst3|inst2|LessThan0~6_combout\) # (!\inst33|inst3|inst2|contador\(6))))) # (!\inst33|inst3|inst2|contador\(8) & 
-- ((\inst33|inst3|inst2|LessThan0~6_combout\) # ((\inst33|inst3|inst2|tiempo_limite\(10)) # (!\inst33|inst3|inst2|contador\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(8),
	datab => \inst33|inst3|inst2|LessThan0~6_combout\,
	datac => \inst33|inst3|inst2|contador\(6),
	datad => \inst33|inst3|inst2|tiempo_limite\(10),
	combout => \inst33|inst3|inst2|LessThan0~7_combout\);

-- Location: LCCOMB_X39_Y21_N24
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ = !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\);

-- Location: CLKCTRL_G5
\inst30|fstate.girando~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst30|fstate.girando~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst30|fstate.girando~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\inst30|fstate.nueva_celda~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst30|fstate.nueva_celda~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst30|fstate.nueva_celda~clkctrl_outclk\);

-- Location: CLKCTRL_G19
\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\);

-- Location: CLKCTRL_G15
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X39_Y20_N8
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[10]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(9),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[10]~feeder_combout\);

-- Location: LCCOMB_X41_Y20_N4
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(10),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\);

-- Location: LCCOMB_X40_Y20_N4
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\);

-- Location: LCCOMB_X40_Y20_N14
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(3),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\);

-- Location: LCCOMB_X36_Y20_N8
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[6]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(5),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[6]~feeder_combout\);

-- Location: LCCOMB_X40_Y20_N24
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(6),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\);

-- Location: LCCOMB_X35_Y19_N6
\inst33|inst3|inst2|tiempo_limite[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|tiempo_limite[1]~feeder_combout\ = \inst33|inst3|inst2|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst2|Equal1~0_combout\,
	combout => \inst33|inst3|inst2|tiempo_limite[1]~feeder_combout\);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\,
	devoe => ww_devoe,
	o => ww_ADC_SCLK);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\,
	devoe => ww_devoe,
	o => ww_ADC_CS_N);

-- Location: IOOBUF_X34_Y34_N16
\ADC_DIN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(5),
	devoe => ww_devoe,
	o => ww_ADC_DIN);

-- Location: IOOBUF_X45_Y0_N16
\MD0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst|WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_MD0);

-- Location: IOOBUF_X53_Y21_N23
\MD1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_MD1);

-- Location: IOOBUF_X40_Y0_N16
\MI0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_MI0);

-- Location: IOOBUF_X45_Y0_N23
\MI1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst|ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => ww_MI1);

-- Location: IOOBUF_X40_Y0_N23
\VELD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VELD);

-- Location: IOOBUF_X36_Y0_N9
\VELI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VELI);

-- Location: IOOBUF_X34_Y0_N2
\GIROO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|fstate.decide~q\,
	devoe => ww_devoe,
	o => ww_GIROO);

-- Location: IOOBUF_X53_Y16_N9
\SENTIDOO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|fstate.girando~q\,
	devoe => ww_devoe,
	o => ww_SENTIDOO);

-- Location: IOOBUF_X31_Y34_N2
\MUROO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|fstate.se_choca~q\,
	devoe => ww_devoe,
	o => ww_MUROO);

-- Location: IOOBUF_X23_Y34_N23
\CUENTAA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30|fstate.nueva_celda~q\,
	devoe => ww_devoe,
	o => ww_CUENTAA);

-- Location: IOOBUF_X53_Y20_N23
\pos_act[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst1|inst|inst|inst2|Q\(3),
	devoe => ww_devoe,
	o => ww_pos_act(3));

-- Location: IOOBUF_X29_Y34_N16
\pos_act[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst1|inst|inst|inst2|Q\(2),
	devoe => ww_devoe,
	o => ww_pos_act(2));

-- Location: IOOBUF_X34_Y34_N2
\pos_act[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst1|inst|inst|inst2|Q\(1),
	devoe => ww_devoe,
	o => ww_pos_act(1));

-- Location: IOOBUF_X53_Y20_N16
\pos_act[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst1|inst|inst|inst2|Q\(0),
	devoe => ww_devoe,
	o => ww_pos_act(0));

-- Location: IOOBUF_X23_Y34_N16
\sent_act[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst6|q_reg\(1),
	devoe => ww_devoe,
	o => ww_sent_act(1));

-- Location: IOOBUF_X31_Y34_N9
\sent_act[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst6|q_reg\(0),
	devoe => ww_devoe,
	o => ww_sent_act(0));

-- Location: IOIBUF_X27_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G18
\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y21_N14
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\);

-- Location: FF_X39_Y21_N15
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\);

-- Location: LCCOMB_X39_Y21_N18
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ = ((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2))) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y21_N20
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~2_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(1) & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(1),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~2_combout\);

-- Location: LCCOMB_X39_Y21_N4
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[0]~1_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[0]~1_combout\);

-- Location: FF_X39_Y21_N21
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~2_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1));

-- Location: LCCOMB_X39_Y21_N8
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~0_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2) $ (((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0) & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~0_combout\);

-- Location: FF_X39_Y21_N9
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(2));

-- Location: LCCOMB_X39_Y21_N26
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(2) & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|next_addr\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~0_combout\);

-- Location: FF_X39_Y21_N27
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address~0_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2));

-- Location: LCCOMB_X39_Y21_N28
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~1_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0)) # ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2)) # 
-- (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~1_combout\);

-- Location: IOIBUF_X53_Y14_N1
\Reset1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset1,
	o => \Reset1~input_o\);

-- Location: LCCOMB_X39_Y21_N10
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~0_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0) & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2) & !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~0_combout\);

-- Location: LCCOMB_X40_Y21_N8
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~1_combout\ = (\inst33|inst3|inst8|adc_mega_0|go~q\ & ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\) # ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & 
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~0_combout\)))) # (!\inst33|inst3|inst8|adc_mega_0|go~q\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|go~q\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~1_combout\);

-- Location: FF_X40_Y21_N9
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\);

-- Location: LCCOMB_X40_Y21_N30
\inst33|inst3|inst8|adc_mega_0|go~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|go~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\) # (!\Reset1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|go~0_combout\);

-- Location: LCCOMB_X40_Y21_N22
\inst33|inst3|inst8|adc_mega_0|go~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|go~1_combout\ = !\inst33|inst3|inst8|adc_mega_0|go~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|go~1_combout\);

-- Location: FF_X40_Y21_N23
\inst33|inst3|inst8|adc_mega_0|go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|go~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|go~q\);

-- Location: LCCOMB_X40_Y21_N0
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector0~0_combout\ = ((!\inst33|inst3|inst8|adc_mega_0|go~q\ & ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\) # (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\)))) # 
-- (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|go~q\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector0~0_combout\);

-- Location: FF_X40_Y21_N1
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\);

-- Location: LCCOMB_X40_Y21_N6
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|go~q\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst8|adc_mega_0|go~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\);

-- Location: LCCOMB_X39_Y21_N0
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~2_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~1_combout\) # ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\ 
-- & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~1_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~2_combout\);

-- Location: FF_X39_Y21_N1
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\);

-- Location: LCCOMB_X39_Y22_N26
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\ & 
-- (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\ $ (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\);

-- Location: LCCOMB_X39_Y22_N8
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\ & !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\);

-- Location: LCCOMB_X40_Y22_N8
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ = !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(0)
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~11\ = CARRY(!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(0),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~10_combout\,
	cout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~11\);

-- Location: LCCOMB_X40_Y22_N26
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X39_Y22_N6
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\ & 
-- (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\))) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\ & 
-- !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\);

-- Location: FF_X40_Y22_N9
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \Reset1~input_o\,
	sload => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(0));

-- Location: LCCOMB_X40_Y22_N10
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(1) & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~11\ $ (GND))) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(1) & 
-- (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~11\ & VCC))
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~13\ = CARRY((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(1) & !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(1),
	datad => VCC,
	cin => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[0]~11\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~12_combout\,
	cout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~13\);

-- Location: FF_X40_Y22_N15
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[3]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \Reset1~input_o\,
	sload => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(3));

-- Location: FF_X40_Y22_N11
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[1]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \Reset1~input_o\,
	sload => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(1));

-- Location: LCCOMB_X40_Y22_N4
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\ = (((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(3)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(1))) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(0))) # 
-- (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(2),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(0),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(3),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|counter\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y22_N14
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\ = ((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\ & !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\))) # 
-- (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\);

-- Location: FF_X39_Y22_N27
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3));

-- Location: LCCOMB_X39_Y22_N24
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\ & !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\);

-- Location: LCCOMB_X39_Y22_N30
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|nextState.pauseState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\ & 
-- (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3) & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\);

-- Location: FF_X39_Y22_N31
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\);

-- Location: LCCOMB_X39_Y22_N20
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|cs_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|cs_n~2_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.transState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|cs_n~2_combout\);

-- Location: LCCOMB_X39_Y22_N16
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|cs_n~2_combout\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\ $ (((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & 
-- !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|cs_n~2_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~0_combout\);

-- Location: FF_X39_Y22_N17
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\);

-- Location: LCCOMB_X40_Y21_N28
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(2) & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & 
-- ((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (!\inst33|inst3|inst8|adc_mega_0|go~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(2),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|go~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\);

-- Location: LCCOMB_X40_Y22_N28
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~2_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\) # (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y21_N2
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # ((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\ 
-- & !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Equal1~2_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1_combout\);

-- Location: FF_X40_Y21_N29
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(3));

-- Location: LCCOMB_X40_Y21_N4
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(3) & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & 
-- ((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (!\inst33|inst3|inst8|adc_mega_0|go~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|go~q\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(3),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\);

-- Location: FF_X40_Y21_N5
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(4));

-- Location: LCCOMB_X40_Y21_N24
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(4) & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & 
-- ((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (!\inst33|inst3|inst8|adc_mega_0|go~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|go~q\,
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(4),
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~0_combout\);

-- Location: FF_X40_Y21_N25
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg~0_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|addr_shift_reg\(5));

-- Location: IOIBUF_X25_Y34_N1
\ADC_DOUT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_DOUT,
	o => \ADC_DOUT~input_o\);

-- Location: LCCOMB_X38_Y20_N20
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\ = \ADC_DOUT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DOUT~input_o\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\);

-- Location: LCCOMB_X39_Y22_N4
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\ & ((!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3)) # (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\);

-- Location: FF_X38_Y20_N21
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(0));

-- Location: FF_X38_Y20_N11
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(0),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(1));

-- Location: LCCOMB_X38_Y20_N4
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\);

-- Location: FF_X38_Y20_N5
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(2));

-- Location: FF_X38_Y20_N27
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(2),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(3));

-- Location: FF_X38_Y20_N17
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(3),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(4));

-- Location: LCCOMB_X38_Y20_N30
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(4),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\);

-- Location: FF_X38_Y20_N31
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(5));

-- Location: FF_X38_Y20_N25
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(5),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(6));

-- Location: LCCOMB_X38_Y20_N28
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(6),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\);

-- Location: FF_X38_Y20_N29
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(7));

-- Location: LCCOMB_X41_Y20_N22
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(7),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\);

-- Location: LCCOMB_X39_Y22_N10
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\ & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3) & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\);

-- Location: LCCOMB_X39_Y21_N30
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0) & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\ & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2) & 
-- !\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\);

-- Location: FF_X41_Y20_N23
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(8));

-- Location: LCCOMB_X41_Y20_N24
\inst33|inst3|inst8|adc_mega_0|CH0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~3_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(8),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~3_combout\);

-- Location: FF_X41_Y20_N25
\inst33|inst3|inst8|adc_mega_0|CH0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~3_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(8));

-- Location: FF_X40_Y20_N23
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(5),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(6));

-- Location: LCCOMB_X40_Y20_N28
\inst33|inst3|inst8|adc_mega_0|CH0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~5_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(6),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~5_combout\);

-- Location: FF_X40_Y20_N29
\inst33|inst3|inst8|adc_mega_0|CH0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~5_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(6));

-- Location: FF_X40_Y20_N21
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(4),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(5));

-- Location: LCCOMB_X40_Y20_N20
\inst33|inst3|inst8|adc_mega_0|CH0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~6_combout\ = (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(5) & \Reset1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(5),
	datad => \Reset1~input_o\,
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~6_combout\);

-- Location: LCCOMB_X41_Y20_N0
\inst33|inst3|inst8|adc_mega_0|CH0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0[5]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|CH0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|CH0~6_combout\,
	combout => \inst33|inst3|inst8|adc_mega_0|CH0[5]~feeder_combout\);

-- Location: FF_X41_Y20_N1
\inst33|inst3|inst8|adc_mega_0|CH0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0[5]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(5));

-- Location: LCCOMB_X40_Y20_N30
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(0),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\);

-- Location: FF_X40_Y20_N31
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(1));

-- Location: LCCOMB_X40_Y20_N18
\inst33|inst3|inst8|adc_mega_0|CH0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~9_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~9_combout\);

-- Location: FF_X40_Y20_N19
\inst33|inst3|inst8|adc_mega_0|CH0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~9_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(1));

-- Location: LCCOMB_X40_Y20_N8
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\ = \ADC_DOUT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DOUT~input_o\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\);

-- Location: FF_X40_Y20_N9
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(0));

-- Location: LCCOMB_X40_Y20_N16
\inst33|inst3|inst8|adc_mega_0|CH0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~8_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(0),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~8_combout\);

-- Location: FF_X40_Y20_N17
\inst33|inst3|inst8|adc_mega_0|CH0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~8_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(0));

-- Location: LCCOMB_X40_Y20_N26
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(2),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\);

-- Location: FF_X40_Y20_N27
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(3));

-- Location: LCCOMB_X40_Y20_N2
\inst33|inst3|inst8|adc_mega_0|CH0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~11_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(3),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~11_combout\);

-- Location: FF_X40_Y20_N3
\inst33|inst3|inst8|adc_mega_0|CH0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~11_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(3));

-- Location: LCCOMB_X40_Y20_N0
\inst33|inst3|inst9|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst9|LessThan0~1_combout\ = (\inst33|inst3|inst8|adc_mega_0|CH0\(2) & (\inst33|inst3|inst8|adc_mega_0|CH0\(1) & (\inst33|inst3|inst8|adc_mega_0|CH0\(0) & \inst33|inst3|inst8|adc_mega_0|CH0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|CH0\(2),
	datab => \inst33|inst3|inst8|adc_mega_0|CH0\(1),
	datac => \inst33|inst3|inst8|adc_mega_0|CH0\(0),
	datad => \inst33|inst3|inst8|adc_mega_0|CH0\(3),
	combout => \inst33|inst3|inst9|LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y20_N6
\inst33|inst3|inst9|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst9|LessThan0~2_combout\ = (\inst33|inst3|inst8|adc_mega_0|CH0\(6) & ((\inst33|inst3|inst8|adc_mega_0|CH0\(5)) # ((\inst33|inst3|inst8|adc_mega_0|CH0\(4) & \inst33|inst3|inst9|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|CH0\(4),
	datab => \inst33|inst3|inst8|adc_mega_0|CH0\(6),
	datac => \inst33|inst3|inst8|adc_mega_0|CH0\(5),
	datad => \inst33|inst3|inst9|LessThan0~1_combout\,
	combout => \inst33|inst3|inst9|LessThan0~2_combout\);

-- Location: LCCOMB_X38_Y20_N22
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(7),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\);

-- Location: FF_X38_Y20_N23
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(8));

-- Location: FF_X38_Y20_N13
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(8),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(9));

-- Location: LCCOMB_X41_Y20_N14
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(9),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\);

-- Location: FF_X41_Y20_N15
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(10));

-- Location: LCCOMB_X41_Y20_N26
\inst33|inst3|inst8|adc_mega_0|CH0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~1_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(10),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~1_combout\);

-- Location: FF_X41_Y20_N27
\inst33|inst3|inst8|adc_mega_0|CH0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~1_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(10));

-- Location: LCCOMB_X41_Y20_N8
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(8),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\);

-- Location: FF_X41_Y20_N9
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(9));

-- Location: LCCOMB_X41_Y20_N20
\inst33|inst3|inst8|adc_mega_0|CH0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH0~0_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading0\(9),
	combout => \inst33|inst3|inst8|adc_mega_0|CH0~0_combout\);

-- Location: FF_X41_Y20_N21
\inst33|inst3|inst8|adc_mega_0|CH0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH0~0_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH0\(9));

-- Location: LCCOMB_X41_Y20_N18
\inst33|inst3|inst9|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst9|LessThan0~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|CH0\(11)) # ((\inst33|inst3|inst8|adc_mega_0|CH0\(10)) # (\inst33|inst3|inst8|adc_mega_0|CH0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|CH0\(11),
	datac => \inst33|inst3|inst8|adc_mega_0|CH0\(10),
	datad => \inst33|inst3|inst8|adc_mega_0|CH0\(9),
	combout => \inst33|inst3|inst9|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y20_N30
\inst33|inst3|inst9|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst9|LessThan0~3_combout\ = (\inst33|inst3|inst9|LessThan0~0_combout\) # ((\inst33|inst3|inst8|adc_mega_0|CH0\(8) & ((\inst33|inst3|inst8|adc_mega_0|CH0\(7)) # (\inst33|inst3|inst9|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|CH0\(7),
	datab => \inst33|inst3|inst8|adc_mega_0|CH0\(8),
	datac => \inst33|inst3|inst9|LessThan0~2_combout\,
	datad => \inst33|inst3|inst9|LessThan0~0_combout\,
	combout => \inst33|inst3|inst9|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y19_N14
\inst33|inst1|inst|inst|inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst|inst|Mux2~0_combout\ = (\inst33|inst6|q_reg\(1) & !\inst33|inst6|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst6|q_reg\(1),
	datad => \inst33|inst6|q_reg\(0),
	combout => \inst33|inst1|inst|inst|inst|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y21_N16
\inst33|inst1|inst|inst|inst2|Q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst|inst2|Q[0]~4_combout\ = (\inst33|inst6|q_reg\(1) & (\inst33|inst1|inst|inst|inst2|Q\(0) $ (VCC))) # (!\inst33|inst6|q_reg\(1) & (\inst33|inst1|inst|inst|inst2|Q\(0) & VCC))
-- \inst33|inst1|inst|inst|inst2|Q[0]~5\ = CARRY((\inst33|inst6|q_reg\(1) & \inst33|inst1|inst|inst|inst2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst6|q_reg\(1),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => VCC,
	combout => \inst33|inst1|inst|inst|inst2|Q[0]~4_combout\,
	cout => \inst33|inst1|inst|inst|inst2|Q[0]~5\);

-- Location: FF_X30_Y21_N17
\inst33|inst1|inst|inst|inst2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|fstate.nueva_celda~clkctrl_outclk\,
	d => \inst33|inst1|inst|inst|inst2|Q[0]~4_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst1|inst|inst|inst2|Q\(0));

-- Location: LCCOMB_X30_Y21_N18
\inst33|inst1|inst|inst|inst2|Q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst|inst2|Q[1]~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (\inst33|inst1|inst|inst|inst2|Q[0]~5\ & VCC)) # (!\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & 
-- (!\inst33|inst1|inst|inst|inst2|Q[0]~5\)))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (!\inst33|inst1|inst|inst|inst2|Q[0]~5\)) # (!\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & 
-- ((\inst33|inst1|inst|inst|inst2|Q[0]~5\) # (GND)))))
-- \inst33|inst1|inst|inst|inst2|Q[1]~7\ = CARRY((\inst33|inst1|inst|inst|inst2|Q\(1) & (!\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & !\inst33|inst1|inst|inst|inst2|Q[0]~5\)) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & 
-- ((!\inst33|inst1|inst|inst|inst2|Q[0]~5\) # (!\inst33|inst1|inst|inst|inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(1),
	datab => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datad => VCC,
	cin => \inst33|inst1|inst|inst|inst2|Q[0]~5\,
	combout => \inst33|inst1|inst|inst|inst2|Q[1]~6_combout\,
	cout => \inst33|inst1|inst|inst|inst2|Q[1]~7\);

-- Location: FF_X30_Y21_N19
\inst33|inst1|inst|inst|inst2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|fstate.nueva_celda~clkctrl_outclk\,
	d => \inst33|inst1|inst|inst|inst2|Q[1]~6_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst1|inst|inst|inst2|Q\(1));

-- Location: IOIBUF_X25_Y34_N22
\SENSOR_LINEA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_LINEA,
	o => \SENSOR_LINEA~input_o\);

-- Location: LCCOMB_X34_Y19_N6
\inst28|btn_stable~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|btn_stable~feeder_combout\ = \SENSOR_LINEA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SENSOR_LINEA~input_o\,
	combout => \inst28|btn_stable~feeder_combout\);

-- Location: LCCOMB_X34_Y18_N8
\inst28|cnt[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[0]~10_combout\ = \inst28|cnt\(0) $ (VCC)
-- \inst28|cnt[0]~11\ = CARRY(\inst28|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(0),
	datad => VCC,
	combout => \inst28|cnt[0]~10_combout\,
	cout => \inst28|cnt[0]~11\);

-- Location: LCCOMB_X34_Y17_N0
\inst28|btn_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|btn_reg~feeder_combout\ = \SENSOR_LINEA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SENSOR_LINEA~input_o\,
	combout => \inst28|btn_reg~feeder_combout\);

-- Location: FF_X34_Y17_N1
\inst28|btn_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|btn_reg~feeder_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|btn_reg~q\);

-- Location: LCCOMB_X34_Y18_N28
\inst28|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|process_0~0_combout\ = \SENSOR_LINEA~input_o\ $ (\inst28|btn_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_LINEA~input_o\,
	datad => \inst28|btn_reg~q\,
	combout => \inst28|process_0~0_combout\);

-- Location: FF_X34_Y18_N9
\inst28|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[0]~10_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(0));

-- Location: LCCOMB_X34_Y18_N14
\inst28|cnt[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[3]~16_combout\ = (\inst28|cnt\(3) & (!\inst28|cnt[2]~15\)) # (!\inst28|cnt\(3) & ((\inst28|cnt[2]~15\) # (GND)))
-- \inst28|cnt[3]~17\ = CARRY((!\inst28|cnt[2]~15\) # (!\inst28|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(3),
	datad => VCC,
	cin => \inst28|cnt[2]~15\,
	combout => \inst28|cnt[3]~16_combout\,
	cout => \inst28|cnt[3]~17\);

-- Location: FF_X34_Y18_N15
\inst28|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[3]~16_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(3));

-- Location: LCCOMB_X34_Y18_N16
\inst28|cnt[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[4]~18_combout\ = (\inst28|cnt\(4) & (\inst28|cnt[3]~17\ $ (GND))) # (!\inst28|cnt\(4) & (!\inst28|cnt[3]~17\ & VCC))
-- \inst28|cnt[4]~19\ = CARRY((\inst28|cnt\(4) & !\inst28|cnt[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(4),
	datad => VCC,
	cin => \inst28|cnt[3]~17\,
	combout => \inst28|cnt[4]~18_combout\,
	cout => \inst28|cnt[4]~19\);

-- Location: FF_X34_Y18_N17
\inst28|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[4]~18_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(4));

-- Location: LCCOMB_X34_Y18_N18
\inst28|cnt[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[5]~20_combout\ = (\inst28|cnt\(5) & (!\inst28|cnt[4]~19\)) # (!\inst28|cnt\(5) & ((\inst28|cnt[4]~19\) # (GND)))
-- \inst28|cnt[5]~21\ = CARRY((!\inst28|cnt[4]~19\) # (!\inst28|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(5),
	datad => VCC,
	cin => \inst28|cnt[4]~19\,
	combout => \inst28|cnt[5]~20_combout\,
	cout => \inst28|cnt[5]~21\);

-- Location: FF_X34_Y18_N19
\inst28|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[5]~20_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(5));

-- Location: LCCOMB_X34_Y18_N20
\inst28|cnt[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[6]~22_combout\ = (\inst28|cnt\(6) & (\inst28|cnt[5]~21\ $ (GND))) # (!\inst28|cnt\(6) & (!\inst28|cnt[5]~21\ & VCC))
-- \inst28|cnt[6]~23\ = CARRY((\inst28|cnt\(6) & !\inst28|cnt[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(6),
	datad => VCC,
	cin => \inst28|cnt[5]~21\,
	combout => \inst28|cnt[6]~22_combout\,
	cout => \inst28|cnt[6]~23\);

-- Location: FF_X34_Y18_N21
\inst28|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[6]~22_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(6));

-- Location: LCCOMB_X34_Y18_N22
\inst28|cnt[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[7]~24_combout\ = (\inst28|cnt\(7) & (!\inst28|cnt[6]~23\)) # (!\inst28|cnt\(7) & ((\inst28|cnt[6]~23\) # (GND)))
-- \inst28|cnt[7]~25\ = CARRY((!\inst28|cnt[6]~23\) # (!\inst28|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(7),
	datad => VCC,
	cin => \inst28|cnt[6]~23\,
	combout => \inst28|cnt[7]~24_combout\,
	cout => \inst28|cnt[7]~25\);

-- Location: FF_X34_Y18_N23
\inst28|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[7]~24_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(7));

-- Location: LCCOMB_X34_Y18_N4
\inst28|btn_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|btn_out~1_combout\ = (((!\inst28|cnt\(5)) # (!\inst28|cnt\(7))) # (!\inst28|cnt\(6))) # (!\inst28|cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(8),
	datab => \inst28|cnt\(6),
	datac => \inst28|cnt\(7),
	datad => \inst28|cnt\(5),
	combout => \inst28|btn_out~1_combout\);

-- Location: LCCOMB_X34_Y18_N24
\inst28|cnt[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[8]~26_combout\ = (\inst28|cnt\(8) & (\inst28|cnt[7]~25\ $ (GND))) # (!\inst28|cnt\(8) & (!\inst28|cnt[7]~25\ & VCC))
-- \inst28|cnt[8]~27\ = CARRY((\inst28|cnt\(8) & !\inst28|cnt[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst28|cnt\(8),
	datad => VCC,
	cin => \inst28|cnt[7]~25\,
	combout => \inst28|cnt[8]~26_combout\,
	cout => \inst28|cnt[8]~27\);

-- Location: FF_X34_Y18_N25
\inst28|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[8]~26_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(8));

-- Location: LCCOMB_X34_Y18_N26
\inst28|cnt[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|cnt[9]~28_combout\ = \inst28|cnt\(9) $ (\inst28|cnt[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|cnt\(9),
	cin => \inst28|cnt[8]~27\,
	combout => \inst28|cnt[9]~28_combout\);

-- Location: FF_X34_Y18_N27
\inst28|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|cnt[9]~28_combout\,
	clrn => \Reset1~input_o\,
	sclr => \inst28|process_0~0_combout\,
	ena => \inst28|btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|cnt\(9));

-- Location: LCCOMB_X34_Y18_N30
\inst28|btn_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|btn_out~2_combout\ = (\inst28|btn_out~0_combout\) # ((\inst28|btn_out~1_combout\) # (!\inst28|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|btn_out~0_combout\,
	datab => \inst28|btn_out~1_combout\,
	datac => \inst28|cnt\(9),
	combout => \inst28|btn_out~2_combout\);

-- Location: FF_X34_Y19_N7
\inst28|btn_stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|btn_stable~feeder_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst28|ALT_INV_btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|btn_stable~q\);

-- Location: LCCOMB_X34_Y19_N8
\inst28|btn_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|btn_out~feeder_combout\ = \inst28|btn_stable~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst28|btn_stable~q\,
	combout => \inst28|btn_out~feeder_combout\);

-- Location: FF_X34_Y19_N9
\inst28|btn_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst28|btn_out~feeder_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst28|ALT_INV_btn_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28|btn_out~q\);

-- Location: IOIBUF_X25_Y34_N15
\SENSOR_MURO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SENSOR_MURO,
	o => \SENSOR_MURO~input_o\);

-- Location: LCCOMB_X34_Y18_N0
\inst30|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Selector1~0_combout\ = (!\inst28|btn_out~q\ & ((\inst30|fstate.cruzando~q\) # ((!\inst30|fstate.MUEVE~q\ & \SENSOR_MURO~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.MUEVE~q\,
	datab => \SENSOR_MURO~input_o\,
	datac => \inst30|fstate.cruzando~q\,
	datad => \inst28|btn_out~q\,
	combout => \inst30|Selector1~0_combout\);

-- Location: FF_X34_Y18_N1
\inst30|fstate.cruzando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst30|Selector1~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|fstate.cruzando~q\);

-- Location: LCCOMB_X34_Y19_N26
\inst30|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Selector2~0_combout\ = (\inst28|btn_out~q\ & \inst30|fstate.cruzando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|btn_out~q\,
	datad => \inst30|fstate.cruzando~q\,
	combout => \inst30|Selector2~0_combout\);

-- Location: FF_X34_Y19_N27
\inst30|fstate.nueva_celda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst30|Selector2~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|fstate.nueva_celda~q\);

-- Location: LCCOMB_X32_Y19_N24
\inst33|inst5|seleccion[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst5|seleccion[1]~7_combout\ = (!\inst33|inst6|q_reg\(1) & \inst33|inst6|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst6|q_reg\(1),
	datad => \inst33|inst6|q_reg\(0),
	combout => \inst33|inst5|seleccion[1]~7_combout\);

-- Location: LCCOMB_X30_Y21_N4
\inst35|inst3|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~13_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(3) & (!\inst33|inst1|inst|inst|inst2|Q\(2) & (!\inst33|inst1|inst|inst|inst2|Q\(1) & \inst33|inst1|inst|inst|inst2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst35|inst3|Mux0~13_combout\);

-- Location: LCCOMB_X31_Y18_N26
\inst6|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst8|estado~0_combout\ = (\inst6|inst8|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~13_combout\ & \inst33|inst1|inst|inst|inst|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~13_combout\,
	datac => \inst6|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	combout => \inst6|inst8|estado~0_combout\);

-- Location: FF_X31_Y18_N27
\inst6|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst8|estado~q\);

-- Location: LCCOMB_X30_Y17_N14
\inst35|inst3|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~14_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(1) & (!\inst33|inst1|inst|inst|inst2|Q\(0) & (!\inst33|inst1|inst|inst|inst2|Q\(2) & \inst33|inst1|inst|inst|inst2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(1),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(3),
	combout => \inst35|inst3|Mux0~14_combout\);

-- Location: LCCOMB_X32_Y19_N16
\inst35|inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst|Mux0~0_combout\ = (!\inst33|inst6|q_reg\(1) & (\inst30|fstate.se_choca~q\ & !\inst33|inst6|q_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst6|q_reg\(1),
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst33|inst6|q_reg\(0),
	combout => \inst35|inst|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y17_N24
\inst7|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst3|estado~0_combout\ = (\inst7|inst3|estado~q\) # ((\inst35|inst3|Mux0~14_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst3|Mux0~14_combout\,
	datac => \inst7|inst3|estado~q\,
	datad => \inst35|inst|Mux0~0_combout\,
	combout => \inst7|inst3|estado~0_combout\);

-- Location: FF_X30_Y17_N25
\inst7|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst3|estado~q\);

-- Location: LCCOMB_X28_Y19_N6
\inst35|inst3|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~9_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst33|inst1|inst|inst|inst2|Q\(3) & (\inst33|inst1|inst|inst|inst2|Q\(2) & !\inst33|inst1|inst|inst|inst2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst35|inst3|Mux0~9_combout\);

-- Location: LCCOMB_X28_Y19_N10
\inst1|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst11|estado~0_combout\ = (\inst1|inst11|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~1_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst1|inst11|estado~q\,
	datad => \inst35|inst3|Mux0~9_combout\,
	combout => \inst1|inst11|estado~0_combout\);

-- Location: FF_X28_Y19_N11
\inst1|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11|estado~q\);

-- Location: LCCOMB_X31_Y20_N2
\inst35|inst3|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~11_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst33|inst1|inst|inst|inst2|Q\(2) & \inst33|inst1|inst|inst|inst2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(1),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(3),
	combout => \inst35|inst3|Mux0~11_combout\);

-- Location: LCCOMB_X32_Y18_N28
\inst|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst5|estado~0_combout\ = (\inst|inst5|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst35|inst3|Mux0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~11_combout\,
	combout => \inst|inst5|estado~0_combout\);

-- Location: FF_X32_Y18_N29
\inst|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5|estado~q\);

-- Location: LCCOMB_X31_Y18_N6
\inst35|inst3|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~12_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(3) & (\inst33|inst1|inst|inst|inst2|Q\(1) & (!\inst33|inst1|inst|inst|inst2|Q\(0) & !\inst33|inst1|inst|inst|inst2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst35|inst3|Mux0~12_combout\);

-- Location: LCCOMB_X31_Y18_N22
\inst5|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst11|estado~0_combout\ = (\inst5|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst1|inst|inst|inst|Mux2~1_combout\ & \inst35|inst3|Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	datac => \inst5|inst11|estado~q\,
	datad => \inst35|inst3|Mux0~12_combout\,
	combout => \inst5|inst11|estado~0_combout\);

-- Location: FF_X31_Y18_N23
\inst5|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst11|estado~q\);

-- Location: LCCOMB_X28_Y19_N18
\inst5|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst9|$00000|auto_generated|result_node\(2) = (\inst6|inst2|reg_val\(2)) # (\inst5|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|reg_val\(2),
	datac => \inst5|inst11|estado~q\,
	combout => \inst5|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X31_Y18_N28
\inst5|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|estado~0_combout\ = (\inst5|inst8|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst5|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~12_combout\,
	combout => \inst5|inst8|estado~0_combout\);

-- Location: FF_X31_Y18_N29
\inst5|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|estado~q\);

-- Location: LCCOMB_X28_Y19_N24
\inst1|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst8|estado~0_combout\ = (\inst1|inst8|estado~q\) # ((\inst35|inst3|Mux0~9_combout\ & (\inst30|fstate.se_choca~q\ & \inst33|inst1|inst|inst|inst|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~9_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst1|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	combout => \inst1|inst8|estado~0_combout\);

-- Location: FF_X28_Y19_N25
\inst1|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst8|estado~q\);

-- Location: LCCOMB_X34_Y20_N8
\inst7|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst17|$00000|auto_generated|result_node\(2) = (\inst7|inst3|estado~q\) # (\inst2|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst3|estado~q\,
	datad => \inst2|inst2|reg_val\(2),
	combout => \inst7|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X30_Y17_N18
\inst7|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst11|estado~0_combout\ = (\inst7|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~14_combout\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~14_combout\,
	datac => \inst7|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst7|inst11|estado~0_combout\);

-- Location: FF_X30_Y17_N19
\inst7|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst11|estado~q\);

-- Location: LCCOMB_X27_Y18_N18
\inst7|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst9|$00000|auto_generated|result_node\(2) = (\inst6|inst2|reg_val\(2)) # (\inst7|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|reg_val\(2),
	datac => \inst7|inst11|estado~q\,
	combout => \inst7|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X31_Y17_N10
\inst7|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|estado~0_combout\ = (\inst7|inst5|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst35|inst3|Mux0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst7|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~14_combout\,
	combout => \inst7|inst5|estado~0_combout\);

-- Location: FF_X31_Y17_N11
\inst7|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst5|estado~q\);

-- Location: LCCOMB_X29_Y21_N26
\inst35|inst3|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & (!\inst33|inst1|inst|inst|inst2|Q\(0) & (!\inst33|inst1|inst|inst|inst2|Q\(1) & !\inst33|inst1|inst|inst|inst2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(3),
	combout => \inst35|inst3|Mux0~3_combout\);

-- Location: LCCOMB_X34_Y21_N10
\inst11|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst11|estado~0_combout\ = (\inst11|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~3_combout\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~3_combout\,
	datac => \inst11|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst11|inst11|estado~0_combout\);

-- Location: FF_X34_Y21_N11
\inst11|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst11|estado~q\);

-- Location: LCCOMB_X31_Y21_N6
\inst35|inst3|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (!\inst33|inst1|inst|inst|inst2|Q\(2) & (!\inst33|inst1|inst|inst|inst2|Q\(3) & !\inst33|inst1|inst|inst|inst2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(3),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst35|inst3|Mux0~6_combout\);

-- Location: LCCOMB_X32_Y21_N28
\inst14|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst3|estado~0_combout\ = (\inst14|inst3|estado~q\) # ((\inst35|inst3|Mux0~6_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst3|Mux0~6_combout\,
	datac => \inst14|inst3|estado~q\,
	datad => \inst35|inst|Mux0~0_combout\,
	combout => \inst14|inst3|estado~0_combout\);

-- Location: FF_X32_Y21_N29
\inst14|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst3|estado~q\);

-- Location: LCCOMB_X32_Y21_N22
\inst10|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst8|estado~0_combout\ = (\inst10|inst8|estado~q\) # ((\inst35|inst3|Mux0~2_combout\ & (\inst30|fstate.se_choca~q\ & \inst33|inst1|inst|inst|inst|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~2_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst10|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	combout => \inst10|inst8|estado~0_combout\);

-- Location: FF_X32_Y21_N23
\inst10|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst8|estado~q\);

-- Location: LCCOMB_X28_Y18_N24
\inst10|inst7|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst7|$00000|auto_generated|result_node\(0) = (\inst11|inst2|reg_val\(0)) # (\inst10|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst2|reg_val\(0),
	datad => \inst10|inst8|estado~q\,
	combout => \inst10|inst7|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X29_Y20_N26
\inst10|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst16|Add0~1_combout\ = \inst10|inst|Min_Out[1]~8_combout\ $ (!\inst10|inst|Min_Out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|Min_Out[1]~8_combout\,
	datad => \inst10|inst|Min_Out[0]~10_combout\,
	combout => \inst10|inst16|Add0~1_combout\);

-- Location: FF_X29_Y20_N27
\inst10|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|reg_val\(1));

-- Location: LCCOMB_X26_Y20_N18
\inst14|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst17|$00000|auto_generated|result_node\(2) = (\inst14|inst3|estado~q\) # (\inst10|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|estado~q\,
	datac => \inst10|inst2|reg_val\(2),
	combout => \inst14|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X34_Y21_N20
\inst14|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst11|estado~0_combout\ = (\inst14|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~6_combout\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~6_combout\,
	datac => \inst14|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst14|inst11|estado~0_combout\);

-- Location: FF_X34_Y21_N21
\inst14|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst11|estado~q\);

-- Location: LCCOMB_X30_Y21_N10
\inst35|inst3|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~8_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst|inst2|Q\(1) & \inst33|inst1|inst|inst|inst2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst35|inst3|Mux0~8_combout\);

-- Location: LCCOMB_X32_Y21_N2
\inst12|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst3|estado~0_combout\ = (\inst12|inst3|estado~q\) # ((\inst35|inst|Mux0~0_combout\ & \inst35|inst3|Mux0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst|Mux0~0_combout\,
	datac => \inst12|inst3|estado~q\,
	datad => \inst35|inst3|Mux0~8_combout\,
	combout => \inst12|inst3|estado~0_combout\);

-- Location: FF_X32_Y21_N3
\inst12|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3|estado~q\);

-- Location: LCCOMB_X32_Y21_N6
\inst35|inst3|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~4_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst33|inst1|inst|inst|inst2|Q\(1) & \inst33|inst1|inst|inst|inst2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst35|inst3|Mux0~4_combout\);

-- Location: LCCOMB_X32_Y21_N30
\inst8|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst5|estado~0_combout\ = (\inst8|inst5|estado~q\) # ((\inst33|inst5|seleccion[1]~7_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst5|seleccion[1]~7_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst8|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~4_combout\,
	combout => \inst8|inst5|estado~0_combout\);

-- Location: FF_X32_Y21_N31
\inst8|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst5|estado~q\);

-- Location: LCCOMB_X27_Y17_N24
\inst8|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~7_combout\ = (!\inst8|inst5|estado~q\ & !\inst12|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst5|estado~q\,
	datad => \inst12|inst2|reg_val\(2),
	combout => \inst8|inst|process_0~7_combout\);

-- Location: LCCOMB_X30_Y21_N12
\inst35|inst3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~1_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst33|inst1|inst|inst|inst2|Q\(1) & \inst33|inst1|inst|inst|inst2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst35|inst3|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y21_N12
\inst9|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst3|estado~0_combout\ = (\inst9|inst3|estado~q\) # ((\inst35|inst3|Mux0~1_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst3|Mux0~1_combout\,
	datac => \inst9|inst3|estado~q\,
	datad => \inst35|inst|Mux0~0_combout\,
	combout => \inst9|inst3|estado~0_combout\);

-- Location: FF_X32_Y21_N13
\inst9|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|estado~q\);

-- Location: LCCOMB_X27_Y19_N4
\inst9|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst5|estado~0_combout\ = (\inst9|inst5|estado~q\) # ((\inst33|inst5|seleccion[1]~7_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst5|seleccion[1]~7_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst9|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~1_combout\,
	combout => \inst9|inst5|estado~0_combout\);

-- Location: FF_X27_Y19_N5
\inst9|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|estado~q\);

-- Location: LCCOMB_X25_Y19_N4
\inst9|inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan0~0_combout\ = (\inst13|inst2|reg_val\(2) & (!\inst9|inst3|estado~q\ & ((!\inst5|inst2|reg_val\(2))))) # (!\inst13|inst2|reg_val\(2) & (\inst9|inst5|estado~q\ $ (((\inst9|inst3|estado~q\) # (\inst5|inst2|reg_val\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|reg_val\(2),
	datab => \inst9|inst3|estado~q\,
	datac => \inst9|inst5|estado~q\,
	datad => \inst5|inst2|reg_val\(2),
	combout => \inst9|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y19_N24
\inst9|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst17|$00000|auto_generated|result_node\(1) = (\inst5|inst2|reg_val\(1)) # (\inst9|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst2|reg_val\(1),
	datac => \inst9|inst3|estado~q\,
	combout => \inst9|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X31_Y22_N10
\inst13|inst7|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|$00000|auto_generated|result_node\(0) = (\inst14|inst2|reg_val\(0)) # (\inst13|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst2|reg_val\(0),
	datad => \inst13|inst8|estado~q\,
	combout => \inst13|inst7|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X27_Y20_N4
\inst12|inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|LessThan1~0_combout\ = (!\inst12|inst8|estado~q\ & (!\inst13|inst2|reg_val\(0) & ((\inst12|inst3|estado~q\) # (\inst8|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst8|estado~q\,
	datab => \inst12|inst3|estado~q\,
	datac => \inst13|inst2|reg_val\(0),
	datad => \inst8|inst2|reg_val\(0),
	combout => \inst12|inst|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y21_N14
\inst12|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst8|estado~0_combout\ = (\inst12|inst8|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst12|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~8_combout\,
	combout => \inst12|inst8|estado~0_combout\);

-- Location: FF_X32_Y21_N15
\inst12|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst8|estado~q\);

-- Location: LCCOMB_X28_Y20_N26
\inst13|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst16|Add0~1_combout\ = \inst13|inst|Min_Out[0]~11_combout\ $ (!\inst13|inst|Min_Out[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|Min_Out[0]~11_combout\,
	datad => \inst13|inst|Min_Out[1]~12_combout\,
	combout => \inst13|inst16|Add0~1_combout\);

-- Location: FF_X29_Y20_N15
\inst13|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst13|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst2|reg_val\(1));

-- Location: LCCOMB_X27_Y20_N14
\inst12|inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|LessThan1~1_combout\ = (\inst12|inst17|$00000|auto_generated|result_node\(1) & ((\inst12|inst|LessThan1~0_combout\) # ((!\inst12|inst8|estado~q\ & !\inst13|inst2|reg_val\(1))))) # (!\inst12|inst17|$00000|auto_generated|result_node\(1) & 
-- (\inst12|inst|LessThan1~0_combout\ & (!\inst12|inst8|estado~q\ & !\inst13|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst12|inst|LessThan1~0_combout\,
	datac => \inst12|inst8|estado~q\,
	datad => \inst13|inst2|reg_val\(1),
	combout => \inst12|inst|LessThan1~1_combout\);

-- Location: FF_X31_Y20_N29
\inst12|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst12|inst|Min_Out[0]~6_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst2|reg_val\(0));

-- Location: LCCOMB_X28_Y18_N8
\inst8|inst6|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst6|$00000|auto_generated|result_node\(0) = (\inst12|inst2|reg_val\(0)) # (\inst8|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst2|reg_val\(0),
	datad => \inst8|inst5|estado~q\,
	combout => \inst8|inst6|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X28_Y17_N26
\inst8|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst6|$00000|auto_generated|result_node\(1) = (\inst8|inst5|estado~q\) # (\inst12|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst5|estado~q\,
	datac => \inst12|inst2|reg_val\(1),
	combout => \inst8|inst6|$00000|auto_generated|result_node\(1));

-- Location: FF_X30_Y20_N13
\inst5|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|Min_Out[0]~10_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|reg_val\(0));

-- Location: LCCOMB_X25_Y19_N26
\inst9|inst17|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst17|$00000|auto_generated|result_node\(0) = (\inst9|inst3|estado~q\) # (\inst5|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst3|estado~q\,
	datac => \inst5|inst2|reg_val\(0),
	combout => \inst9|inst17|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X34_Y21_N8
\inst9|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst11|estado~0_combout\ = (\inst9|inst11|estado~q\) # ((\inst35|inst3|Mux0~1_combout\ & (\inst30|fstate.se_choca~q\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~1_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst9|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst9|inst11|estado~0_combout\);

-- Location: FF_X34_Y21_N9
\inst9|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst11|estado~q\);

-- Location: LCCOMB_X29_Y22_N2
\inst8|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~2_combout\ = (!\inst8|inst5|estado~q\ & (!\inst12|inst2|reg_val\(2) & (!\inst12|inst2|reg_val\(0) & !\inst12|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst5|estado~q\,
	datab => \inst12|inst2|reg_val\(2),
	datac => \inst12|inst2|reg_val\(0),
	datad => \inst12|inst2|reg_val\(1),
	combout => \inst8|inst|process_0~2_combout\);

-- Location: LCCOMB_X30_Y21_N2
\inst35|inst3|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~15_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(3) & (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst|inst2|Q\(1) & \inst33|inst1|inst|inst|inst2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst35|inst3|Mux0~15_combout\);

-- Location: LCCOMB_X31_Y21_N12
\inst4|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|estado~0_combout\ = (\inst4|inst3|estado~q\) # ((\inst35|inst|Mux0~0_combout\ & \inst35|inst3|Mux0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst|Mux0~0_combout\,
	datac => \inst4|inst3|estado~q\,
	datad => \inst35|inst3|Mux0~15_combout\,
	combout => \inst4|inst3|estado~0_combout\);

-- Location: FF_X31_Y21_N13
\inst4|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst3|estado~q\);

-- Location: LCCOMB_X30_Y20_N2
\inst4|inst2|reg_val[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|reg_val[0]~0_combout\ = !\inst4|inst3|estado~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inst3|estado~q\,
	combout => \inst4|inst2|reg_val[0]~0_combout\);

-- Location: FF_X30_Y20_N23
\inst4|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst4|inst2|reg_val[0]~0_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst2|reg_val\(0));

-- Location: LCCOMB_X32_Y21_N4
\inst8|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst8|estado~0_combout\ = (\inst8|inst8|estado~q\) # ((\inst35|inst3|Mux0~4_combout\ & (\inst30|fstate.se_choca~q\ & \inst33|inst1|inst|inst|inst|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~4_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst8|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	combout => \inst8|inst8|estado~0_combout\);

-- Location: FF_X32_Y21_N5
\inst8|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst8|estado~q\);

-- Location: LCCOMB_X25_Y23_N16
\inst9|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst6|$00000|auto_generated|result_node\(1) = (\inst9|inst5|estado~q\) # (\inst13|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst5|estado~q\,
	datad => \inst13|inst2|reg_val\(1),
	combout => \inst9|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X25_Y21_N26
\inst9|inst|Min_Out[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[1]~9_combout\ = (\inst9|inst|Min_Out[0]~0_combout\ & (((\inst9|inst|Min_Out[0]~4_combout\)))) # (!\inst9|inst|Min_Out[0]~0_combout\ & ((\inst9|inst|Min_Out[0]~4_combout\ & (\inst9|inst17|$00000|auto_generated|result_node\(1))) # 
-- (!\inst9|inst|Min_Out[0]~4_combout\ & ((\inst9|inst6|$00000|auto_generated|result_node\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst9|inst|Min_Out[0]~0_combout\,
	datac => \inst9|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst9|inst|Min_Out[0]~4_combout\,
	combout => \inst9|inst|Min_Out[1]~9_combout\);

-- Location: LCCOMB_X25_Y21_N18
\inst9|inst7|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst7|$00000|auto_generated|result_node\(1) = (\inst9|inst8|estado~q\) # (\inst10|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst8|estado~q\,
	datad => \inst10|inst2|reg_val\(1),
	combout => \inst9|inst7|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X25_Y21_N0
\inst9|inst|Min_Out[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[1]~10_combout\ = (\inst9|inst|Min_Out[0]~0_combout\ & ((\inst9|inst|Min_Out[1]~9_combout\ & ((\inst9|inst7|$00000|auto_generated|result_node\(1)))) # (!\inst9|inst|Min_Out[1]~9_combout\ & 
-- (\inst9|inst9|$00000|auto_generated|result_node\(1))))) # (!\inst9|inst|Min_Out[0]~0_combout\ & (((\inst9|inst|Min_Out[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst9|$00000|auto_generated|result_node\(1),
	datab => \inst9|inst|Min_Out[0]~0_combout\,
	datac => \inst9|inst|Min_Out[1]~9_combout\,
	datad => \inst9|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|Min_Out[1]~10_combout\);

-- Location: LCCOMB_X25_Y21_N30
\inst9|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst16|Add0~1_combout\ = \inst9|inst|Min_Out[0]~8_combout\ $ (!\inst9|inst|Min_Out[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst|Min_Out[0]~8_combout\,
	datad => \inst9|inst|Min_Out[1]~10_combout\,
	combout => \inst9|inst16|Add0~1_combout\);

-- Location: FF_X29_Y20_N21
\inst9|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|reg_val\(1));

-- Location: LCCOMB_X28_Y20_N0
\inst8|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~3_combout\ = (!\inst9|inst2|reg_val\(2) & (!\inst8|inst8|estado~q\ & (!\inst9|inst2|reg_val\(1) & !\inst9|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|reg_val\(2),
	datab => \inst8|inst8|estado~q\,
	datac => \inst9|inst2|reg_val\(1),
	datad => \inst9|inst2|reg_val\(0),
	combout => \inst8|inst|process_0~3_combout\);

-- Location: LCCOMB_X32_Y18_N24
\inst8|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~4_combout\ = (\inst8|inst|process_0~1_combout\) # ((\inst4|inst2|reg_val\(0) & ((\inst8|inst|process_0~2_combout\) # (\inst8|inst|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|process_0~1_combout\,
	datab => \inst8|inst|process_0~2_combout\,
	datac => \inst4|inst2|reg_val\(0),
	datad => \inst8|inst|process_0~3_combout\,
	combout => \inst8|inst|process_0~4_combout\);

-- Location: LCCOMB_X32_Y21_N18
\inst8|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst3|estado~0_combout\ = (\inst8|inst3|estado~q\) # ((\inst35|inst3|Mux0~4_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~4_combout\,
	datac => \inst8|inst3|estado~q\,
	datad => \inst35|inst|Mux0~0_combout\,
	combout => \inst8|inst3|estado~0_combout\);

-- Location: FF_X32_Y21_N19
\inst8|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst3|estado~q\);

-- Location: LCCOMB_X28_Y17_N8
\inst8|inst|Min_Out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|Min_Out[1]~2_combout\ = (\inst8|inst|process_0~10_combout\ & ((\inst8|inst7|$00000|auto_generated|result_node\(1)) # ((\inst8|inst|process_0~14_combout\)))) # (!\inst8|inst|process_0~10_combout\ & 
-- (((\inst8|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst8|inst|process_0~10_combout\,
	datac => \inst8|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst8|inst|process_0~14_combout\,
	combout => \inst8|inst|Min_Out[1]~2_combout\);

-- Location: LCCOMB_X28_Y17_N30
\inst8|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst16|Add0~1_combout\ = \inst8|inst|Min_Out[0]~3_combout\ $ (((\inst8|inst|process_0~4_combout\ & ((!\inst8|inst|Min_Out[1]~2_combout\))) # (!\inst8|inst|process_0~4_combout\ & (!\inst8|inst3|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|Min_Out[0]~3_combout\,
	datab => \inst8|inst|process_0~4_combout\,
	datac => \inst8|inst3|estado~q\,
	datad => \inst8|inst|Min_Out[1]~2_combout\,
	combout => \inst8|inst16|Add0~1_combout\);

-- Location: FF_X29_Y20_N19
\inst8|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|reg_val\(1));

-- Location: LCCOMB_X25_Y21_N10
\inst9|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst9|$00000|auto_generated|result_node\(1) = (\inst9|inst11|estado~q\) # (\inst8|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst11|estado~q\,
	datad => \inst8|inst2|reg_val\(1),
	combout => \inst9|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X27_Y19_N18
\inst9|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst8|estado~0_combout\ = (\inst9|inst8|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst9|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~1_combout\,
	combout => \inst9|inst8|estado~0_combout\);

-- Location: FF_X27_Y19_N19
\inst9|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst8|estado~q\);

-- Location: LCCOMB_X27_Y19_N30
\inst9|inst|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan7~0_combout\ = (\inst9|inst5|estado~q\ & (!\inst9|inst8|estado~q\ & (!\inst10|inst2|reg_val\(2)))) # (!\inst9|inst5|estado~q\ & (\inst13|inst2|reg_val\(2) $ (((\inst9|inst8|estado~q\) # (\inst10|inst2|reg_val\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|estado~q\,
	datab => \inst9|inst8|estado~q\,
	datac => \inst10|inst2|reg_val\(2),
	datad => \inst13|inst2|reg_val\(2),
	combout => \inst9|inst|LessThan7~0_combout\);

-- Location: LCCOMB_X25_Y19_N8
\inst9|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~8_combout\ = (\inst9|inst7|$00000|auto_generated|result_node\(1) & (!\inst9|inst|LessThan0~0_combout\ & ((!\inst9|inst17|$00000|auto_generated|result_node\(1))))) # (!\inst9|inst7|$00000|auto_generated|result_node\(1) & 
-- (((!\inst9|inst|LessThan0~0_combout\ & !\inst9|inst17|$00000|auto_generated|result_node\(1))) # (!\inst9|inst|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst9|inst|LessThan0~0_combout\,
	datac => \inst9|inst|LessThan7~0_combout\,
	datad => \inst9|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|process_0~8_combout\);

-- Location: LCCOMB_X25_Y19_N14
\inst9|inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~9_combout\ = (\inst9|inst6|$00000|auto_generated|result_node\(1) & ((\inst9|inst|process_0~8_combout\) # ((!\inst9|inst|LessThan5~0_combout\ & !\inst9|inst9|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|LessThan5~0_combout\,
	datab => \inst9|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst9|inst|process_0~8_combout\,
	datad => \inst9|inst6|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|process_0~9_combout\);

-- Location: LCCOMB_X27_Y19_N14
\inst9|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst17|$00000|auto_generated|result_node\(2) = (\inst9|inst3|estado~q\) # (\inst5|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst3|estado~q\,
	datad => \inst5|inst2|reg_val\(2),
	combout => \inst9|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X27_Y19_N22
\inst9|inst7|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst7|$00000|auto_generated|result_node\(2) = (\inst10|inst2|reg_val\(2)) # (\inst9|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst2|reg_val\(2),
	datad => \inst9|inst8|estado~q\,
	combout => \inst9|inst7|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X27_Y19_N28
\inst9|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst6|$00000|auto_generated|result_node\(2) = (\inst9|inst5|estado~q\) # (\inst13|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst5|estado~q\,
	datad => \inst13|inst2|reg_val\(2),
	combout => \inst9|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X25_Y21_N20
\inst9|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~7_combout\ = (\inst9|inst6|$00000|auto_generated|result_node\(2) & (((!\inst9|inst7|$00000|auto_generated|result_node\(2)) # (!\inst9|inst17|$00000|auto_generated|result_node\(2))) # 
-- (!\inst9|inst9|$00000|auto_generated|result_node\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst9|$00000|auto_generated|result_node\(2),
	datab => \inst9|inst17|$00000|auto_generated|result_node\(2),
	datac => \inst9|inst7|$00000|auto_generated|result_node\(2),
	datad => \inst9|inst6|$00000|auto_generated|result_node\(2),
	combout => \inst9|inst|process_0~7_combout\);

-- Location: LCCOMB_X25_Y21_N14
\inst9|inst|Min_Out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[0]~0_combout\ = (!\inst9|inst|process_0~2_combout\ & ((\inst9|inst|process_0~6_combout\) # ((\inst9|inst|process_0~9_combout\) # (\inst9|inst|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|process_0~6_combout\,
	datab => \inst9|inst|process_0~2_combout\,
	datac => \inst9|inst|process_0~9_combout\,
	datad => \inst9|inst|process_0~7_combout\,
	combout => \inst9|inst|Min_Out[0]~0_combout\);

-- Location: LCCOMB_X25_Y20_N22
\inst9|inst9|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst9|$00000|auto_generated|result_node\(0) = (\inst8|inst2|reg_val\(0)) # (\inst9|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|inst2|reg_val\(0),
	datad => \inst9|inst11|estado~q\,
	combout => \inst9|inst9|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X25_Y21_N2
\inst9|inst|Min_Out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[0]~7_combout\ = (\inst9|inst|Min_Out[0]~0_combout\ & (((\inst9|inst9|$00000|auto_generated|result_node\(0)) # (\inst9|inst|Min_Out[0]~4_combout\)))) # (!\inst9|inst|Min_Out[0]~0_combout\ & 
-- (\inst9|inst6|$00000|auto_generated|result_node\(0) & ((!\inst9|inst|Min_Out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst9|inst|Min_Out[0]~0_combout\,
	datac => \inst9|inst9|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst|Min_Out[0]~4_combout\,
	combout => \inst9|inst|Min_Out[0]~7_combout\);

-- Location: LCCOMB_X25_Y21_N28
\inst9|inst|Min_Out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[0]~8_combout\ = (\inst9|inst|Min_Out[0]~4_combout\ & ((\inst9|inst|Min_Out[0]~7_combout\ & (!\inst9|inst7|$00000|auto_generated|result_node\(0))) # (!\inst9|inst|Min_Out[0]~7_combout\ & 
-- ((!\inst9|inst17|$00000|auto_generated|result_node\(0)))))) # (!\inst9|inst|Min_Out[0]~4_combout\ & (((!\inst9|inst|Min_Out[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7|$00000|auto_generated|result_node\(0),
	datab => \inst9|inst|Min_Out[0]~4_combout\,
	datac => \inst9|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst|Min_Out[0]~7_combout\,
	combout => \inst9|inst|Min_Out[0]~8_combout\);

-- Location: FF_X31_Y20_N11
\inst9|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|inst|Min_Out[0]~8_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|reg_val\(0));

-- Location: LCCOMB_X29_Y19_N28
\inst8|inst7|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst7|$00000|auto_generated|result_node\(0) = (\inst9|inst2|reg_val\(0)) # (\inst8|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|reg_val\(0),
	datad => \inst8|inst8|estado~q\,
	combout => \inst8|inst7|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X28_Y17_N4
\inst8|inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~9_combout\ = (\inst8|inst7|$00000|auto_generated|result_node\(1) & (\inst8|inst6|$00000|auto_generated|result_node\(0) & (\inst8|inst6|$00000|auto_generated|result_node\(1) & !\inst8|inst7|$00000|auto_generated|result_node\(0)))) # 
-- (!\inst8|inst7|$00000|auto_generated|result_node\(1) & ((\inst8|inst6|$00000|auto_generated|result_node\(1)) # ((\inst8|inst6|$00000|auto_generated|result_node\(0) & !\inst8|inst7|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst8|inst6|$00000|auto_generated|result_node\(0),
	datac => \inst8|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst8|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst8|inst|process_0~9_combout\);

-- Location: LCCOMB_X28_Y17_N10
\inst8|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~5_combout\ = (!\inst8|inst3|estado~q\ & ((\inst12|inst2|reg_val\(1)) # ((!\inst4|inst2|reg_val\(0) & \inst12|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst3|estado~q\,
	datab => \inst12|inst2|reg_val\(1),
	datac => \inst4|inst2|reg_val\(0),
	datad => \inst12|inst2|reg_val\(0),
	combout => \inst8|inst|process_0~5_combout\);

-- Location: LCCOMB_X28_Y17_N16
\inst8|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~8_combout\ = (\inst8|inst|process_0~7_combout\ & (((\inst8|inst|process_0~5_combout\)))) # (!\inst8|inst|process_0~7_combout\ & (((\inst8|inst|process_0~6_combout\)) # (!\inst8|inst3|estado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst3|estado~q\,
	datab => \inst8|inst|process_0~7_combout\,
	datac => \inst8|inst|process_0~6_combout\,
	datad => \inst8|inst|process_0~5_combout\,
	combout => \inst8|inst|process_0~8_combout\);

-- Location: LCCOMB_X28_Y17_N14
\inst8|inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~10_combout\ = (\inst8|inst|process_0~8_combout\) # ((\inst8|inst|process_0~9_combout\ & (\inst8|inst|process_0~6_combout\ $ (!\inst8|inst|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|process_0~6_combout\,
	datab => \inst8|inst|process_0~7_combout\,
	datac => \inst8|inst|process_0~9_combout\,
	datad => \inst8|inst|process_0~8_combout\,
	combout => \inst8|inst|process_0~10_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst8|inst|Min_Out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|Min_Out[2]~0_combout\ = (\inst8|inst|process_0~10_combout\ & (((\inst8|inst|process_0~14_combout\)) # (!\inst8|inst|process_0~6_combout\))) # (!\inst8|inst|process_0~10_combout\ & (((!\inst8|inst|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|process_0~6_combout\,
	datab => \inst8|inst|process_0~7_combout\,
	datac => \inst8|inst|process_0~10_combout\,
	datad => \inst8|inst|process_0~14_combout\,
	combout => \inst8|inst|Min_Out[2]~0_combout\);

-- Location: LCCOMB_X28_Y19_N28
\inst8|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst16|Add0~0_combout\ = (\inst8|inst|process_0~4_combout\ & (\inst8|inst|Min_Out[2]~0_combout\ $ (((\inst8|inst|Min_Out[1]~2_combout\ & \inst8|inst|Min_Out[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|Min_Out[1]~2_combout\,
	datab => \inst8|inst|Min_Out[0]~1_combout\,
	datac => \inst8|inst|Min_Out[2]~0_combout\,
	datad => \inst8|inst|process_0~4_combout\,
	combout => \inst8|inst16|Add0~0_combout\);

-- Location: FF_X29_Y19_N29
\inst8|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|reg_val\(2));

-- Location: LCCOMB_X27_Y20_N18
\inst12|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst17|$00000|auto_generated|result_node\(2) = (\inst12|inst3|estado~q\) # (\inst8|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst3|estado~q\,
	datac => \inst8|inst2|reg_val\(2),
	combout => \inst12|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X27_Y20_N28
\inst12|inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|LessThan1~2_combout\ = (\inst12|inst|LessThan1~1_combout\ & ((\inst12|inst17|$00000|auto_generated|result_node\(2)) # ((!\inst13|inst2|reg_val\(2) & !\inst12|inst8|estado~q\)))) # (!\inst12|inst|LessThan1~1_combout\ & 
-- (!\inst13|inst2|reg_val\(2) & (!\inst12|inst8|estado~q\ & \inst12|inst17|$00000|auto_generated|result_node\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|reg_val\(2),
	datab => \inst12|inst|LessThan1~1_combout\,
	datac => \inst12|inst8|estado~q\,
	datad => \inst12|inst17|$00000|auto_generated|result_node\(2),
	combout => \inst12|inst|LessThan1~2_combout\);

-- Location: LCCOMB_X27_Y20_N0
\inst12|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst17|$00000|auto_generated|result_node\(1) = (\inst12|inst3|estado~q\) # (\inst8|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst3|estado~q\,
	datad => \inst8|inst2|reg_val\(1),
	combout => \inst12|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X27_Y20_N6
\inst12|inst7|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst7|$00000|auto_generated|result_node\(1) = (\inst12|inst8|estado~q\) # (\inst13|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst8|estado~q\,
	datad => \inst13|inst2|reg_val\(1),
	combout => \inst12|inst7|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X26_Y20_N0
\inst12|inst|Min_Out[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|Min_Out[1]~4_combout\ = (\inst12|inst|LessThan1~2_combout\ & ((\inst12|inst|Min_Out[2]~3_combout\) # ((\inst12|inst7|$00000|auto_generated|result_node\(1))))) # (!\inst12|inst|LessThan1~2_combout\ & 
-- (((\inst12|inst17|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|Min_Out[2]~3_combout\,
	datab => \inst12|inst|LessThan1~2_combout\,
	datac => \inst12|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst12|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst12|inst|Min_Out[1]~4_combout\);

-- Location: LCCOMB_X28_Y20_N4
\inst12|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst16|Add0~1_combout\ = \inst12|inst|Min_Out[0]~6_combout\ $ (!\inst12|inst|Min_Out[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|Min_Out[0]~6_combout\,
	datac => \inst12|inst|Min_Out[1]~4_combout\,
	combout => \inst12|inst16|Add0~1_combout\);

-- Location: FF_X28_Y20_N5
\inst12|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst2|reg_val\(1));

-- Location: LCCOMB_X28_Y22_N2
\inst13|inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|LessThan5~0_combout\ = ((!\inst12|inst2|reg_val\(2)) # (!\inst12|inst2|reg_val\(1))) # (!\inst12|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|reg_val\(0),
	datab => \inst12|inst2|reg_val\(1),
	datac => \inst12|inst2|reg_val\(2),
	combout => \inst13|inst|LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y22_N4
\inst14|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst16|Add0~1_combout\ = \inst14|inst|Min_Out[1]~12_combout\ $ (!\inst14|inst|Min_Out[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst|Min_Out[1]~12_combout\,
	datad => \inst14|inst|Min_Out[0]~11_combout\,
	combout => \inst14|inst16|Add0~1_combout\);

-- Location: FF_X30_Y22_N5
\inst14|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst2|reg_val\(1));

-- Location: LCCOMB_X30_Y22_N8
\inst13|inst|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|LessThan4~0_combout\ = (!\inst13|inst8|estado~q\ & (((!\inst14|inst2|reg_val\(0)) # (!\inst14|inst2|reg_val\(1))) # (!\inst14|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst2|reg_val\(2),
	datab => \inst14|inst2|reg_val\(1),
	datac => \inst14|inst2|reg_val\(0),
	datad => \inst13|inst8|estado~q\,
	combout => \inst13|inst|LessThan4~0_combout\);

-- Location: LCCOMB_X31_Y18_N0
\inst13|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst3|estado~0_combout\ = (\inst13|inst3|estado~q\) # ((\inst35|inst3|Mux0~5_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~5_combout\,
	datac => \inst13|inst3|estado~q\,
	datad => \inst35|inst|Mux0~0_combout\,
	combout => \inst13|inst3|estado~0_combout\);

-- Location: FF_X31_Y18_N1
\inst13|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst3|estado~q\);

-- Location: LCCOMB_X28_Y22_N12
\inst13|inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|LessThan3~0_combout\ = (!\inst13|inst3|estado~q\ & (((!\inst9|inst2|reg_val\(0)) # (!\inst9|inst2|reg_val\(1))) # (!\inst9|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|reg_val\(2),
	datab => \inst9|inst2|reg_val\(1),
	datac => \inst9|inst2|reg_val\(0),
	datad => \inst13|inst3|estado~q\,
	combout => \inst13|inst|LessThan3~0_combout\);

-- Location: LCCOMB_X28_Y22_N22
\inst13|inst|Min_Out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|Min_Out[2]~6_combout\ = (!\inst13|inst|LessThan4~0_combout\ & (!\inst13|inst|LessThan3~0_combout\ & ((\inst13|inst11|estado~q\) # (!\inst13|inst|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst11|estado~q\,
	datab => \inst13|inst|LessThan5~0_combout\,
	datac => \inst13|inst|LessThan4~0_combout\,
	datad => \inst13|inst|LessThan3~0_combout\,
	combout => \inst13|inst|Min_Out[2]~6_combout\);

-- Location: LCCOMB_X34_Y21_N18
\inst13|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst11|estado~0_combout\ = (\inst13|inst11|estado~q\) # ((\inst35|inst3|Mux0~5_combout\ & (\inst30|fstate.se_choca~q\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~5_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst13|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst13|inst11|estado~0_combout\);

-- Location: FF_X34_Y21_N19
\inst13|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst11|estado~q\);

-- Location: LCCOMB_X26_Y21_N14
\inst13|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~0_combout\ = (!\inst12|inst2|reg_val\(0) & !\inst13|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst2|reg_val\(0),
	datad => \inst13|inst11|estado~q\,
	combout => \inst13|inst|process_0~0_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst13|inst|Min_Out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|Min_Out[0]~8_combout\ = (\inst13|inst|Min_Out[2]~6_combout\) # ((\inst13|inst|process_0~4_combout\ & ((!\inst13|inst|process_0~0_combout\))) # (!\inst13|inst|process_0~4_combout\ & (\inst13|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~4_combout\,
	datab => \inst13|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst13|inst|Min_Out[2]~6_combout\,
	datad => \inst13|inst|process_0~0_combout\,
	combout => \inst13|inst|Min_Out[0]~8_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst13|inst|Min_Out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|Min_Out[0]~11_combout\ = (\inst13|inst|process_0~8_combout\ & (((!\inst13|inst|Min_Out[0]~8_combout\)))) # (!\inst13|inst|process_0~8_combout\ & (!\inst13|inst3|estado~q\ & ((!\inst9|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst3|estado~q\,
	datab => \inst13|inst|Min_Out[0]~8_combout\,
	datac => \inst9|inst2|reg_val\(0),
	datad => \inst13|inst|process_0~8_combout\,
	combout => \inst13|inst|Min_Out[0]~11_combout\);

-- Location: FF_X31_Y20_N19
\inst13|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst13|inst|Min_Out[0]~11_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst2|reg_val\(0));

-- Location: LCCOMB_X27_Y20_N30
\inst9|inst6|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst6|$00000|auto_generated|result_node\(0) = (\inst13|inst2|reg_val\(0)) # (\inst9|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst2|reg_val\(0),
	datad => \inst9|inst5|estado~q\,
	combout => \inst9|inst6|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X25_Y19_N22
\inst9|inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan0~1_combout\ = (\inst9|inst17|$00000|auto_generated|result_node\(1) & (((\inst9|inst17|$00000|auto_generated|result_node\(0) & !\inst9|inst6|$00000|auto_generated|result_node\(0))) # 
-- (!\inst9|inst6|$00000|auto_generated|result_node\(1)))) # (!\inst9|inst17|$00000|auto_generated|result_node\(1) & (\inst9|inst17|$00000|auto_generated|result_node\(0) & (!\inst9|inst6|$00000|auto_generated|result_node\(0) & 
-- !\inst9|inst6|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst9|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst9|inst6|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst6|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y21_N24
\inst9|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~0_combout\ = ((\inst9|inst9|$00000|auto_generated|result_node\(2) & (\inst9|inst7|$00000|auto_generated|result_node\(2) & \inst9|inst6|$00000|auto_generated|result_node\(2)))) # (!\inst9|inst17|$00000|auto_generated|result_node\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst9|$00000|auto_generated|result_node\(2),
	datab => \inst9|inst17|$00000|auto_generated|result_node\(2),
	datac => \inst9|inst7|$00000|auto_generated|result_node\(2),
	datad => \inst9|inst6|$00000|auto_generated|result_node\(2),
	combout => \inst9|inst|process_0~0_combout\);

-- Location: LCCOMB_X25_Y21_N8
\inst9|inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan2~0_combout\ = (\inst9|inst17|$00000|auto_generated|result_node\(1) & (((!\inst9|inst9|$00000|auto_generated|result_node\(0) & \inst9|inst17|$00000|auto_generated|result_node\(0))) # 
-- (!\inst9|inst9|$00000|auto_generated|result_node\(1)))) # (!\inst9|inst17|$00000|auto_generated|result_node\(1) & (!\inst9|inst9|$00000|auto_generated|result_node\(0) & (\inst9|inst17|$00000|auto_generated|result_node\(0) & 
-- !\inst9|inst9|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst9|inst9|$00000|auto_generated|result_node\(0),
	datac => \inst9|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst9|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|LessThan2~0_combout\);

-- Location: LCCOMB_X25_Y21_N6
\inst9|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~1_combout\ = (\inst9|inst|process_0~0_combout\ & ((\inst9|inst9|$00000|auto_generated|result_node\(2) $ (\inst9|inst17|$00000|auto_generated|result_node\(2))) # (!\inst9|inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst9|$00000|auto_generated|result_node\(2),
	datab => \inst9|inst|process_0~0_combout\,
	datac => \inst9|inst|LessThan2~0_combout\,
	datad => \inst9|inst17|$00000|auto_generated|result_node\(2),
	combout => \inst9|inst|process_0~1_combout\);

-- Location: LCCOMB_X25_Y19_N2
\inst9|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|process_0~2_combout\ = (!\inst9|inst|LessThan1~5_combout\ & (\inst9|inst|process_0~1_combout\ & ((\inst9|inst|LessThan0~0_combout\) # (!\inst9|inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|LessThan1~5_combout\,
	datab => \inst9|inst|LessThan0~0_combout\,
	datac => \inst9|inst|LessThan0~1_combout\,
	datad => \inst9|inst|process_0~1_combout\,
	combout => \inst9|inst|process_0~2_combout\);

-- Location: LCCOMB_X25_Y21_N12
\inst9|inst7|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst7|$00000|auto_generated|result_node\(0) = (\inst10|inst2|reg_val\(0)) # (\inst9|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|reg_val\(0),
	datad => \inst9|inst8|estado~q\,
	combout => \inst9|inst7|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X25_Y19_N6
\inst9|inst|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan7~1_combout\ = (\inst9|inst7|$00000|auto_generated|result_node\(1) & (((\inst9|inst7|$00000|auto_generated|result_node\(0) & !\inst9|inst6|$00000|auto_generated|result_node\(0))) # 
-- (!\inst9|inst6|$00000|auto_generated|result_node\(1)))) # (!\inst9|inst7|$00000|auto_generated|result_node\(1) & (\inst9|inst7|$00000|auto_generated|result_node\(0) & (!\inst9|inst6|$00000|auto_generated|result_node\(0) & 
-- !\inst9|inst6|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst9|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst9|inst6|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst6|$00000|auto_generated|result_node\(1),
	combout => \inst9|inst|LessThan7~1_combout\);

-- Location: LCCOMB_X25_Y19_N16
\inst9|inst|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan6~4_combout\ = (\inst9|inst7|$00000|auto_generated|result_node\(1) & (((!\inst9|inst17|$00000|auto_generated|result_node\(0) & \inst9|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst9|inst17|$00000|auto_generated|result_node\(1)))) # (!\inst9|inst7|$00000|auto_generated|result_node\(1) & (!\inst9|inst17|$00000|auto_generated|result_node\(1) & (!\inst9|inst17|$00000|auto_generated|result_node\(0) & 
-- \inst9|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst9|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst9|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst9|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst9|inst|LessThan6~4_combout\);

-- Location: LCCOMB_X27_Y19_N6
\inst9|inst|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|LessThan6~5_combout\ = (\inst9|inst|LessThan6~4_combout\ & (\inst9|inst7|$00000|auto_generated|result_node\(2) $ (((!\inst5|inst2|reg_val\(2) & !\inst9|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|reg_val\(2),
	datab => \inst9|inst3|estado~q\,
	datac => \inst9|inst7|$00000|auto_generated|result_node\(2),
	datad => \inst9|inst|LessThan6~4_combout\,
	combout => \inst9|inst|LessThan6~5_combout\);

-- Location: LCCOMB_X27_Y19_N0
\inst9|inst|Min_Out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[0]~3_combout\ = (\inst9|inst|Min_Out[0]~2_combout\ & (!\inst9|inst|LessThan6~5_combout\ & ((\inst9|inst|LessThan7~0_combout\) # (!\inst9|inst|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|Min_Out[0]~2_combout\,
	datab => \inst9|inst|LessThan7~1_combout\,
	datac => \inst9|inst|LessThan7~0_combout\,
	datad => \inst9|inst|LessThan6~5_combout\,
	combout => \inst9|inst|Min_Out[0]~3_combout\);

-- Location: LCCOMB_X25_Y21_N16
\inst9|inst|Min_Out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[0]~4_combout\ = (\inst9|inst|process_0~2_combout\) # ((\inst9|inst|Min_Out[0]~0_combout\ & \inst9|inst|Min_Out[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst|process_0~2_combout\,
	datac => \inst9|inst|Min_Out[0]~0_combout\,
	datad => \inst9|inst|Min_Out[0]~3_combout\,
	combout => \inst9|inst|Min_Out[0]~4_combout\);

-- Location: LCCOMB_X25_Y21_N22
\inst9|inst|Min_Out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[2]~5_combout\ = (\inst9|inst|Min_Out[0]~4_combout\ & (((\inst9|inst|Min_Out[0]~0_combout\)))) # (!\inst9|inst|Min_Out[0]~4_combout\ & ((\inst9|inst|Min_Out[0]~0_combout\ & (\inst9|inst9|$00000|auto_generated|result_node\(2))) # 
-- (!\inst9|inst|Min_Out[0]~0_combout\ & ((\inst9|inst6|$00000|auto_generated|result_node\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst9|$00000|auto_generated|result_node\(2),
	datab => \inst9|inst|Min_Out[0]~4_combout\,
	datac => \inst9|inst|Min_Out[0]~0_combout\,
	datad => \inst9|inst6|$00000|auto_generated|result_node\(2),
	combout => \inst9|inst|Min_Out[2]~5_combout\);

-- Location: LCCOMB_X25_Y21_N4
\inst9|inst|Min_Out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|Min_Out[2]~6_combout\ = (\inst9|inst|Min_Out[0]~4_combout\ & ((\inst9|inst|Min_Out[2]~5_combout\ & (\inst9|inst7|$00000|auto_generated|result_node\(2))) # (!\inst9|inst|Min_Out[2]~5_combout\ & 
-- ((\inst9|inst17|$00000|auto_generated|result_node\(2)))))) # (!\inst9|inst|Min_Out[0]~4_combout\ & (((\inst9|inst|Min_Out[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst9|inst|Min_Out[0]~4_combout\,
	datac => \inst9|inst|Min_Out[2]~5_combout\,
	datad => \inst9|inst17|$00000|auto_generated|result_node\(2),
	combout => \inst9|inst|Min_Out[2]~6_combout\);

-- Location: LCCOMB_X29_Y18_N0
\inst9|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst16|Add0~0_combout\ = \inst9|inst|Min_Out[2]~6_combout\ $ (((!\inst9|inst|Min_Out[0]~8_combout\ & \inst9|inst|Min_Out[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst|Min_Out[2]~6_combout\,
	datac => \inst9|inst|Min_Out[0]~8_combout\,
	datad => \inst9|inst|Min_Out[1]~10_combout\,
	combout => \inst9|inst16|Add0~0_combout\);

-- Location: FF_X29_Y18_N1
\inst9|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|reg_val\(2));

-- Location: LCCOMB_X32_Y18_N14
\inst8|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~6_combout\ = (!\inst9|inst2|reg_val\(2) & !\inst8|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst2|reg_val\(2),
	datad => \inst8|inst8|estado~q\,
	combout => \inst8|inst|process_0~6_combout\);

-- Location: LCCOMB_X28_Y17_N20
\inst8|inst|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~11_combout\ = (!\inst8|inst3|estado~q\ & ((\inst9|inst2|reg_val\(1)) # ((!\inst4|inst2|reg_val\(0) & \inst9|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst3|estado~q\,
	datab => \inst9|inst2|reg_val\(1),
	datac => \inst4|inst2|reg_val\(0),
	datad => \inst9|inst2|reg_val\(0),
	combout => \inst8|inst|process_0~11_combout\);

-- Location: LCCOMB_X28_Y17_N18
\inst8|inst|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~12_combout\ = (\inst8|inst|process_0~6_combout\ & (((\inst8|inst|process_0~11_combout\)))) # (!\inst8|inst|process_0~6_combout\ & (((\inst8|inst|process_0~7_combout\)) # (!\inst8|inst3|estado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst3|estado~q\,
	datab => \inst8|inst|process_0~7_combout\,
	datac => \inst8|inst|process_0~6_combout\,
	datad => \inst8|inst|process_0~11_combout\,
	combout => \inst8|inst|process_0~12_combout\);

-- Location: LCCOMB_X28_Y17_N2
\inst8|inst|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|process_0~14_combout\ = (\inst8|inst|process_0~12_combout\) # ((\inst8|inst|process_0~13_combout\ & (\inst8|inst|process_0~7_combout\ $ (!\inst8|inst|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|process_0~13_combout\,
	datab => \inst8|inst|process_0~7_combout\,
	datac => \inst8|inst|process_0~6_combout\,
	datad => \inst8|inst|process_0~12_combout\,
	combout => \inst8|inst|process_0~14_combout\);

-- Location: LCCOMB_X28_Y17_N22
\inst8|inst|Min_Out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|Min_Out[0]~1_combout\ = (\inst8|inst|process_0~10_combout\ & (((\inst8|inst|process_0~14_combout\) # (\inst8|inst7|$00000|auto_generated|result_node\(0))))) # (!\inst8|inst|process_0~10_combout\ & 
-- (\inst8|inst6|$00000|auto_generated|result_node\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst8|inst|process_0~14_combout\,
	datac => \inst8|inst|process_0~10_combout\,
	datad => \inst8|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst8|inst|Min_Out[0]~1_combout\);

-- Location: LCCOMB_X32_Y21_N26
\inst8|inst|Min_Out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|Min_Out[0]~3_combout\ = (\inst8|inst|process_0~4_combout\ & (((!\inst8|inst|Min_Out[0]~1_combout\)))) # (!\inst8|inst|process_0~4_combout\ & (!\inst4|inst2|reg_val\(0) & ((!\inst8|inst3|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|reg_val\(0),
	datab => \inst8|inst|Min_Out[0]~1_combout\,
	datac => \inst8|inst3|estado~q\,
	datad => \inst8|inst|process_0~4_combout\,
	combout => \inst8|inst|Min_Out[0]~3_combout\);

-- Location: FF_X31_Y20_N25
\inst8|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|inst|Min_Out[0]~3_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst2|reg_val\(0));

-- Location: LCCOMB_X27_Y20_N16
\inst12|inst|Min_Out[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|Min_Out[0]~6_combout\ = (!\inst12|inst|Min_Out[0]~5_combout\ & ((\inst12|inst|LessThan1~2_combout\) # ((!\inst12|inst3|estado~q\ & !\inst8|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst|Min_Out[0]~5_combout\,
	datab => \inst12|inst3|estado~q\,
	datac => \inst8|inst2|reg_val\(0),
	datad => \inst12|inst|LessThan1~2_combout\,
	combout => \inst12|inst|Min_Out[0]~6_combout\);

-- Location: LCCOMB_X27_Y20_N22
\inst12|inst|Min_Out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst|Min_Out[2]~0_combout\ = (\inst12|inst8|estado~q\ & ((\inst12|inst3|estado~q\) # ((\inst8|inst2|reg_val\(2))))) # (!\inst12|inst8|estado~q\ & (\inst13|inst2|reg_val\(2) & ((\inst12|inst3|estado~q\) # (\inst8|inst2|reg_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst8|estado~q\,
	datab => \inst12|inst3|estado~q\,
	datac => \inst8|inst2|reg_val\(2),
	datad => \inst13|inst2|reg_val\(2),
	combout => \inst12|inst|Min_Out[2]~0_combout\);

-- Location: LCCOMB_X29_Y21_N2
\inst12|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|inst16|Add0~0_combout\ = \inst12|inst|Min_Out[2]~0_combout\ $ (((!\inst12|inst|Min_Out[0]~6_combout\ & \inst12|inst|Min_Out[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst|Min_Out[0]~6_combout\,
	datac => \inst12|inst|Min_Out[1]~4_combout\,
	datad => \inst12|inst|Min_Out[2]~0_combout\,
	combout => \inst12|inst16|Add0~0_combout\);

-- Location: FF_X29_Y21_N3
\inst12|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst2|reg_val\(2));

-- Location: LCCOMB_X26_Y21_N16
\inst13|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst9|$00000|auto_generated|result_node\(2) = (\inst12|inst2|reg_val\(2)) # (\inst13|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|inst2|reg_val\(2),
	datad => \inst13|inst11|estado~q\,
	combout => \inst13|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X26_Y18_N14
\inst13|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst17|$00000|auto_generated|result_node\(2) = (\inst9|inst2|reg_val\(2)) # (\inst13|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst2|reg_val\(2),
	datad => \inst13|inst3|estado~q\,
	combout => \inst13|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X28_Y22_N20
\inst13|inst7|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|$00000|auto_generated|result_node\(2) = (\inst13|inst8|estado~q\) # (\inst14|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst8|estado~q\,
	datad => \inst14|inst2|reg_val\(2),
	combout => \inst13|inst7|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X26_Y18_N0
\inst13|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~6_combout\ = (\inst13|inst|process_0~5_combout\ & (((\inst13|inst17|$00000|auto_generated|result_node\(2))) # (!\inst13|inst9|$00000|auto_generated|result_node\(2)))) # (!\inst13|inst|process_0~5_combout\ & 
-- (\inst13|inst17|$00000|auto_generated|result_node\(2) & ((!\inst13|inst7|$00000|auto_generated|result_node\(2)) # (!\inst13|inst9|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~5_combout\,
	datab => \inst13|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst13|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst13|inst7|$00000|auto_generated|result_node\(2),
	combout => \inst13|inst|process_0~6_combout\);

-- Location: LCCOMB_X26_Y18_N16
\inst13|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|process_0~8_combout\ = (\inst13|inst|process_0~6_combout\) # ((\inst13|inst|process_0~7_combout\ & (\inst13|inst17|$00000|auto_generated|result_node\(2) $ (!\inst13|inst7|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~7_combout\,
	datab => \inst13|inst|process_0~6_combout\,
	datac => \inst13|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst13|inst7|$00000|auto_generated|result_node\(2),
	combout => \inst13|inst|process_0~8_combout\);

-- Location: LCCOMB_X28_Y22_N0
\inst13|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst9|$00000|auto_generated|result_node\(1) = (\inst12|inst2|reg_val\(1)) # (\inst13|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst2|reg_val\(1),
	datac => \inst13|inst11|estado~q\,
	combout => \inst13|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X28_Y22_N14
\inst13|inst7|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|$00000|auto_generated|result_node\(1) = (\inst13|inst8|estado~q\) # (\inst14|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst8|estado~q\,
	datac => \inst14|inst2|reg_val\(1),
	combout => \inst13|inst7|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X26_Y18_N24
\inst13|inst|Min_Out[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|Min_Out[1]~9_combout\ = (\inst13|inst|Min_Out[2]~6_combout\) # ((\inst13|inst|process_0~4_combout\ & (\inst13|inst9|$00000|auto_generated|result_node\(1))) # (!\inst13|inst|process_0~4_combout\ & 
-- ((\inst13|inst7|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_0~4_combout\,
	datab => \inst13|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst13|inst|Min_Out[2]~6_combout\,
	datad => \inst13|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst13|inst|Min_Out[1]~9_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst13|inst|Min_Out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|Min_Out[1]~12_combout\ = (\inst13|inst|process_0~8_combout\ & (((\inst13|inst|Min_Out[1]~9_combout\)))) # (!\inst13|inst|process_0~8_combout\ & ((\inst13|inst3|estado~q\) # ((\inst9|inst2|reg_val\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst3|estado~q\,
	datab => \inst13|inst|process_0~8_combout\,
	datac => \inst9|inst2|reg_val\(1),
	datad => \inst13|inst|Min_Out[1]~9_combout\,
	combout => \inst13|inst|Min_Out[1]~12_combout\);

-- Location: LCCOMB_X29_Y22_N28
\inst13|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst16|Add0~0_combout\ = \inst13|inst|Min_Out[2]~10_combout\ $ (((\inst13|inst|Min_Out[1]~12_combout\ & !\inst13|inst|Min_Out[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Min_Out[2]~10_combout\,
	datab => \inst13|inst|Min_Out[1]~12_combout\,
	datac => \inst13|inst|Min_Out[0]~11_combout\,
	combout => \inst13|inst16|Add0~0_combout\);

-- Location: FF_X29_Y22_N29
\inst13|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst2|reg_val\(2));

-- Location: LCCOMB_X26_Y20_N30
\inst14|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|$00000|auto_generated|result_node\(2) = (\inst14|inst11|estado~q\) # (\inst13|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst11|estado~q\,
	datad => \inst13|inst2|reg_val\(2),
	combout => \inst14|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X26_Y19_N16
\inst14|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst9|$00000|auto_generated|result_node\(1) = (\inst13|inst2|reg_val\(1)) # (\inst14|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|reg_val\(1),
	datad => \inst14|inst11|estado~q\,
	combout => \inst14|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X26_Y20_N4
\inst14|inst17|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst17|$00000|auto_generated|result_node\(0) = (\inst14|inst3|estado~q\) # (\inst10|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst3|estado~q\,
	datad => \inst10|inst2|reg_val\(0),
	combout => \inst14|inst17|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X26_Y20_N8
\inst14|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~0_combout\ = (!\inst14|inst11|estado~q\ & !\inst13|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst11|estado~q\,
	datac => \inst13|inst2|reg_val\(0),
	combout => \inst14|inst|process_0~0_combout\);

-- Location: LCCOMB_X26_Y19_N10
\inst14|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~5_combout\ = (\inst14|inst17|$00000|auto_generated|result_node\(1) & (((\inst14|inst17|$00000|auto_generated|result_node\(0) & \inst14|inst|process_0~0_combout\)) # (!\inst14|inst9|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst14|inst17|$00000|auto_generated|result_node\(1) & (!\inst14|inst9|$00000|auto_generated|result_node\(1) & (\inst14|inst17|$00000|auto_generated|result_node\(0) & \inst14|inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst14|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst14|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst14|inst|process_0~0_combout\,
	combout => \inst14|inst|process_0~5_combout\);

-- Location: LCCOMB_X26_Y19_N24
\inst14|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~6_combout\ = (\inst14|inst17|$00000|auto_generated|result_node\(2) & (((\inst14|inst|process_0~5_combout\) # (!\inst14|inst9|$00000|auto_generated|result_node\(2))) # (!\inst14|inst7|$00000|auto_generated|result_node\(2)))) # 
-- (!\inst14|inst17|$00000|auto_generated|result_node\(2) & (((!\inst14|inst9|$00000|auto_generated|result_node\(2) & \inst14|inst|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst14|inst17|$00000|auto_generated|result_node\(2),
	datac => \inst14|inst9|$00000|auto_generated|result_node\(2),
	datad => \inst14|inst|process_0~5_combout\,
	combout => \inst14|inst|process_0~6_combout\);

-- Location: LCCOMB_X32_Y20_N0
\inst14|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst8|estado~0_combout\ = (\inst14|inst8|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst14|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~6_combout\,
	combout => \inst14|inst8|estado~0_combout\);

-- Location: FF_X32_Y20_N1
\inst14|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst8|estado~q\);

-- Location: LCCOMB_X28_Y21_N8
\inst11|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst3|estado~0_combout\ = (\inst11|inst3|estado~q\) # ((\inst35|inst3|Mux0~3_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst3|Mux0~3_combout\,
	datac => \inst11|inst3|estado~q\,
	datad => \inst35|inst|Mux0~0_combout\,
	combout => \inst11|inst3|estado~0_combout\);

-- Location: FF_X28_Y21_N9
\inst11|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst3|estado~q\);

-- Location: LCCOMB_X27_Y21_N24
\inst11|inst17|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst17|$00000|auto_generated|result_node\(0) = (\inst11|inst3|estado~q\) # (\inst7|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst3|estado~q\,
	datad => \inst7|inst2|reg_val\(0),
	combout => \inst11|inst17|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X30_Y18_N24
\inst35|inst3|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~10_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(0) & (!\inst33|inst1|inst|inst|inst2|Q\(1) & (\inst33|inst1|inst|inst|inst2|Q\(3) & \inst33|inst1|inst|inst|inst2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(3),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst35|inst3|Mux0~10_combout\);

-- Location: LCCOMB_X30_Y18_N12
\inst2|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst11|estado~0_combout\ = (\inst2|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~10_combout\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~10_combout\,
	datac => \inst2|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst2|inst11|estado~0_combout\);

-- Location: FF_X30_Y18_N13
\inst2|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst11|estado~q\);

-- Location: LCCOMB_X31_Y22_N28
\inst2|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|process_0~1_combout\ = ((!\inst1|inst2|reg_val\(0)) # (!\inst1|inst2|reg_val\(2))) # (!\inst1|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|reg_val\(1),
	datab => \inst1|inst2|reg_val\(2),
	datac => \inst1|inst2|reg_val\(0),
	combout => \inst2|inst|process_0~1_combout\);

-- Location: LCCOMB_X31_Y22_N22
\inst2|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|process_0~2_combout\ = (\inst2|inst|process_0~0_combout\) # ((!\inst2|inst11|estado~q\ & \inst2|inst|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|process_0~0_combout\,
	datac => \inst2|inst11|estado~q\,
	datad => \inst2|inst|process_0~1_combout\,
	combout => \inst2|inst|process_0~2_combout\);

-- Location: LCCOMB_X29_Y22_N22
\inst2|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst16|Add0~1_combout\ = (\inst2|inst|process_0~2_combout\ & (\inst2|inst|Min_Out[0]~1_combout\ $ (\inst2|inst|Min_Out[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|Min_Out[0]~1_combout\,
	datac => \inst2|inst|process_0~2_combout\,
	datad => \inst2|inst|Min_Out[1]~0_combout\,
	combout => \inst2|inst16|Add0~1_combout\);

-- Location: FF_X29_Y22_N23
\inst2|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|reg_val\(1));

-- Location: LCCOMB_X27_Y21_N14
\inst7|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst17|$00000|auto_generated|result_node\(1) = (\inst2|inst2|reg_val\(1)) # (\inst7|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst2|reg_val\(1),
	datad => \inst7|inst3|estado~q\,
	combout => \inst7|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X27_Y18_N24
\inst7|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst9|$00000|auto_generated|result_node\(1) = (\inst7|inst11|estado~q\) # (\inst6|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst11|estado~q\,
	datad => \inst6|inst2|reg_val\(1),
	combout => \inst7|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X34_Y19_N30
\inst7|inst17|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst17|$00000|auto_generated|result_node\(0) = (\inst2|inst2|reg_val\(0)) # (\inst7|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst2|reg_val\(0),
	datad => \inst7|inst3|estado~q\,
	combout => \inst7|inst17|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X28_Y18_N6
\inst7|inst6|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst6|$00000|auto_generated|result_node\(0) = (\inst7|inst5|estado~q\) # (\inst11|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|estado~q\,
	datad => \inst11|inst2|reg_val\(0),
	combout => \inst7|inst6|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X27_Y18_N28
\inst7|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~7_combout\ = (\inst7|inst6|$00000|auto_generated|result_node\(1) & (((!\inst7|inst17|$00000|auto_generated|result_node\(0) & \inst7|inst6|$00000|auto_generated|result_node\(0))) # 
-- (!\inst7|inst17|$00000|auto_generated|result_node\(1)))) # (!\inst7|inst6|$00000|auto_generated|result_node\(1) & (!\inst7|inst17|$00000|auto_generated|result_node\(1) & (!\inst7|inst17|$00000|auto_generated|result_node\(0) & 
-- \inst7|inst6|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst7|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst7|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst7|inst6|$00000|auto_generated|result_node\(0),
	combout => \inst7|inst|process_0~7_combout\);

-- Location: LCCOMB_X27_Y18_N6
\inst7|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~8_combout\ = (\inst7|inst|process_0~6_combout\) # ((\inst7|inst|process_0~7_combout\ & (\inst7|inst6|$00000|auto_generated|result_node\(2) $ (!\inst7|inst17|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|process_0~6_combout\,
	datab => \inst7|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst7|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst7|inst|process_0~7_combout\,
	combout => \inst7|inst|process_0~8_combout\);

-- Location: LCCOMB_X27_Y18_N8
\inst7|inst|Min_Out[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|Min_Out[1]~4_combout\ = (\inst7|inst|process_0~4_combout\ & ((\inst7|inst|process_0~8_combout\ & ((\inst7|inst9|$00000|auto_generated|result_node\(1)))) # (!\inst7|inst|process_0~8_combout\ & 
-- (\inst7|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst7|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst7|inst|process_0~4_combout\,
	datad => \inst7|inst|process_0~8_combout\,
	combout => \inst7|inst|Min_Out[1]~4_combout\);

-- Location: LCCOMB_X27_Y18_N2
\inst7|inst16|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst16|Add0~2_combout\ = \inst7|inst|Min_Out[0]~5_combout\ $ (((!\inst7|inst|Min_Out[1]~4_combout\ & ((\inst7|inst|process_0~4_combout\) # (!\inst7|inst17|$00000|auto_generated|result_node\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|process_0~4_combout\,
	datab => \inst7|inst|Min_Out[0]~5_combout\,
	datac => \inst7|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst7|inst|Min_Out[1]~4_combout\,
	combout => \inst7|inst16|Add0~2_combout\);

-- Location: FF_X29_Y20_N5
\inst7|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|inst16|Add0~2_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|reg_val\(1));

-- Location: LCCOMB_X29_Y20_N18
\inst11|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst17|$00000|auto_generated|result_node\(1) = (\inst7|inst2|reg_val\(1)) # (\inst11|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|reg_val\(1),
	datad => \inst11|inst3|estado~q\,
	combout => \inst11|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X27_Y21_N20
\inst11|inst6|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst6|$00000|auto_generated|result_node\(0) = (\inst11|inst5|estado~q\) # (\inst15|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst5|estado~q\,
	datac => \inst15|inst2|reg_val\(0),
	combout => \inst11|inst6|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X27_Y21_N28
\inst11|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~7_combout\ = (\inst11|inst6|$00000|auto_generated|result_node\(1) & (((!\inst11|inst17|$00000|auto_generated|result_node\(0) & \inst11|inst6|$00000|auto_generated|result_node\(0))) # 
-- (!\inst11|inst17|$00000|auto_generated|result_node\(1)))) # (!\inst11|inst6|$00000|auto_generated|result_node\(1) & (!\inst11|inst17|$00000|auto_generated|result_node\(0) & (!\inst11|inst17|$00000|auto_generated|result_node\(1) & 
-- \inst11|inst6|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst11|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst11|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst11|inst6|$00000|auto_generated|result_node\(0),
	combout => \inst11|inst|process_0~7_combout\);

-- Location: LCCOMB_X28_Y19_N4
\inst11|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst5|estado~0_combout\ = (\inst11|inst5|estado~q\) # ((\inst33|inst5|seleccion[1]~7_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst5|seleccion[1]~7_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst11|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~3_combout\,
	combout => \inst11|inst5|estado~0_combout\);

-- Location: FF_X28_Y19_N5
\inst11|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst5|estado~q\);

-- Location: LCCOMB_X28_Y21_N22
\inst11|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst6|$00000|auto_generated|result_node\(2) = (\inst15|inst2|reg_val\(2)) # (\inst11|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2|reg_val\(2),
	datac => \inst11|inst5|estado~q\,
	combout => \inst11|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X27_Y21_N8
\inst11|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst9|$00000|auto_generated|result_node\(1) = (\inst10|inst2|reg_val\(1)) # (\inst11|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|reg_val\(1),
	datac => \inst11|inst11|estado~q\,
	combout => \inst11|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X27_Y21_N26
\inst11|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~0_combout\ = (!\inst11|inst11|estado~q\ & !\inst10|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst11|estado~q\,
	datad => \inst10|inst2|reg_val\(0),
	combout => \inst11|inst|process_0~0_combout\);

-- Location: LCCOMB_X27_Y21_N18
\inst11|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~5_combout\ = (\inst11|inst6|$00000|auto_generated|result_node\(1) & (((\inst11|inst|process_0~0_combout\ & \inst11|inst6|$00000|auto_generated|result_node\(0))) # (!\inst11|inst9|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst11|inst6|$00000|auto_generated|result_node\(1) & (!\inst11|inst9|$00000|auto_generated|result_node\(1) & (\inst11|inst|process_0~0_combout\ & \inst11|inst6|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst11|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst11|inst|process_0~0_combout\,
	datad => \inst11|inst6|$00000|auto_generated|result_node\(0),
	combout => \inst11|inst|process_0~5_combout\);

-- Location: LCCOMB_X28_Y21_N30
\inst11|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~6_combout\ = (\inst11|inst9|$00000|auto_generated|result_node\(2) & (\inst11|inst6|$00000|auto_generated|result_node\(2) & ((\inst11|inst|process_0~5_combout\) # (!\inst11|inst17|$00000|auto_generated|result_node\(2))))) # 
-- (!\inst11|inst9|$00000|auto_generated|result_node\(2) & (((\inst11|inst6|$00000|auto_generated|result_node\(2)) # (\inst11|inst|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst17|$00000|auto_generated|result_node\(2),
	datab => \inst11|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst11|inst6|$00000|auto_generated|result_node\(2),
	datad => \inst11|inst|process_0~5_combout\,
	combout => \inst11|inst|process_0~6_combout\);

-- Location: LCCOMB_X28_Y21_N28
\inst11|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst17|$00000|auto_generated|result_node\(2) = (\inst7|inst2|reg_val\(2)) # (\inst11|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|reg_val\(2),
	datac => \inst11|inst3|estado~q\,
	combout => \inst11|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X27_Y21_N30
\inst11|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~8_combout\ = (\inst11|inst|process_0~6_combout\) # ((\inst11|inst|process_0~7_combout\ & (\inst11|inst6|$00000|auto_generated|result_node\(2) $ (!\inst11|inst17|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst11|inst|process_0~7_combout\,
	datac => \inst11|inst|process_0~6_combout\,
	datad => \inst11|inst17|$00000|auto_generated|result_node\(2),
	combout => \inst11|inst|process_0~8_combout\);

-- Location: LCCOMB_X27_Y21_N0
\inst11|inst|Min_Out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|Min_Out[0]~3_combout\ = (\inst11|inst|process_0~8_combout\ & (!\inst11|inst|process_0~0_combout\)) # (!\inst11|inst|process_0~8_combout\ & (((\inst15|inst2|reg_val\(0)) # (\inst11|inst5|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|process_0~0_combout\,
	datab => \inst11|inst|process_0~8_combout\,
	datac => \inst15|inst2|reg_val\(0),
	datad => \inst11|inst5|estado~q\,
	combout => \inst11|inst|Min_Out[0]~3_combout\);

-- Location: LCCOMB_X27_Y21_N22
\inst11|inst|Min_Out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|Min_Out[0]~5_combout\ = (\inst11|inst|process_0~4_combout\ & (((!\inst11|inst|Min_Out[0]~3_combout\)))) # (!\inst11|inst|process_0~4_combout\ & (!\inst11|inst3|estado~q\ & (!\inst7|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|process_0~4_combout\,
	datab => \inst11|inst3|estado~q\,
	datac => \inst7|inst2|reg_val\(0),
	datad => \inst11|inst|Min_Out[0]~3_combout\,
	combout => \inst11|inst|Min_Out[0]~5_combout\);

-- Location: FF_X31_Y20_N7
\inst11|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst11|inst|Min_Out[0]~5_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst2|reg_val\(0));

-- Location: LCCOMB_X27_Y20_N24
\inst15|inst|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst|LessThan2~3_combout\ = (\inst15|inst3|estado~q\) # (\inst11|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst3|estado~q\,
	datad => \inst11|inst2|reg_val\(0),
	combout => \inst15|inst|LessThan2~3_combout\);

-- Location: LCCOMB_X34_Y21_N22
\inst15|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst11|estado~0_combout\ = (\inst15|inst11|estado~q\) # ((\inst35|inst3|Mux0~7_combout\ & (\inst30|fstate.se_choca~q\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~7_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst15|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst15|inst11|estado~0_combout\);

-- Location: FF_X34_Y21_N23
\inst15|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst11|estado~q\);

-- Location: LCCOMB_X30_Y22_N16
\inst15|inst|Min_Out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst|Min_Out[0]~2_combout\ = (\inst15|inst|LessThan2~2_combout\ & (((!\inst14|inst2|reg_val\(0) & !\inst15|inst11|estado~q\)))) # (!\inst15|inst|LessThan2~2_combout\ & (!\inst15|inst|LessThan2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst|LessThan2~2_combout\,
	datab => \inst15|inst|LessThan2~3_combout\,
	datac => \inst14|inst2|reg_val\(0),
	datad => \inst15|inst11|estado~q\,
	combout => \inst15|inst|Min_Out[0]~2_combout\);

-- Location: FF_X30_Y20_N3
\inst15|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst15|inst|Min_Out[0]~2_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst2|reg_val\(0));

-- Location: LCCOMB_X26_Y19_N2
\inst14|inst7|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst7|$00000|auto_generated|result_node\(0) = (\inst14|inst8|estado~q\) # (\inst15|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst8|estado~q\,
	datad => \inst15|inst2|reg_val\(0),
	combout => \inst14|inst7|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X26_Y20_N26
\inst14|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst17|$00000|auto_generated|result_node\(1) = (\inst14|inst3|estado~q\) # (\inst10|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst3|estado~q\,
	datad => \inst10|inst2|reg_val\(1),
	combout => \inst14|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X26_Y19_N30
\inst14|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~7_combout\ = (\inst14|inst7|$00000|auto_generated|result_node\(1) & (!\inst14|inst7|$00000|auto_generated|result_node\(0) & (\inst14|inst17|$00000|auto_generated|result_node\(0) & 
-- \inst14|inst17|$00000|auto_generated|result_node\(1)))) # (!\inst14|inst7|$00000|auto_generated|result_node\(1) & ((\inst14|inst17|$00000|auto_generated|result_node\(1)) # ((!\inst14|inst7|$00000|auto_generated|result_node\(0) & 
-- \inst14|inst17|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst14|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst14|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst14|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst14|inst|process_0~7_combout\);

-- Location: LCCOMB_X26_Y19_N20
\inst14|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|process_0~8_combout\ = (\inst14|inst|process_0~6_combout\) # ((\inst14|inst|process_0~7_combout\ & (\inst14|inst7|$00000|auto_generated|result_node\(2) $ (!\inst14|inst17|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst14|inst|process_0~6_combout\,
	datac => \inst14|inst|process_0~7_combout\,
	datad => \inst14|inst17|$00000|auto_generated|result_node\(2),
	combout => \inst14|inst|process_0~8_combout\);

-- Location: LCCOMB_X32_Y21_N24
\inst35|inst3|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~7_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(1) & (!\inst33|inst1|inst|inst|inst2|Q\(0) & (!\inst33|inst1|inst|inst|inst2|Q\(3) & !\inst33|inst1|inst|inst|inst2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(1),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(3),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst35|inst3|Mux0~7_combout\);

-- Location: LCCOMB_X31_Y21_N26
\inst15|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst3|estado~0_combout\ = (\inst15|inst3|estado~q\) # ((\inst35|inst|Mux0~0_combout\ & \inst35|inst3|Mux0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst|Mux0~0_combout\,
	datac => \inst15|inst3|estado~q\,
	datad => \inst35|inst3|Mux0~7_combout\,
	combout => \inst15|inst3|estado~0_combout\);

-- Location: FF_X31_Y21_N27
\inst15|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst3|estado~q\);

-- Location: LCCOMB_X28_Y20_N30
\inst15|inst|Min_Out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst|Min_Out[2]~0_combout\ = (\inst11|inst2|reg_val\(2) & ((\inst15|inst11|estado~q\) # ((\inst14|inst2|reg_val\(2))))) # (!\inst11|inst2|reg_val\(2) & (\inst15|inst3|estado~q\ & ((\inst15|inst11|estado~q\) # (\inst14|inst2|reg_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst2|reg_val\(2),
	datab => \inst15|inst11|estado~q\,
	datac => \inst14|inst2|reg_val\(2),
	datad => \inst15|inst3|estado~q\,
	combout => \inst15|inst|Min_Out[2]~0_combout\);

-- Location: LCCOMB_X27_Y21_N10
\inst11|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~1_combout\ = (\inst11|inst9|$00000|auto_generated|result_node\(1) & (\inst11|inst|process_0~0_combout\ & (\inst11|inst17|$00000|auto_generated|result_node\(1) & \inst11|inst17|$00000|auto_generated|result_node\(0)))) # 
-- (!\inst11|inst9|$00000|auto_generated|result_node\(1) & ((\inst11|inst17|$00000|auto_generated|result_node\(1)) # ((\inst11|inst|process_0~0_combout\ & \inst11|inst17|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|process_0~0_combout\,
	datab => \inst11|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst11|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst11|inst17|$00000|auto_generated|result_node\(0),
	combout => \inst11|inst|process_0~1_combout\);

-- Location: LCCOMB_X28_Y21_N18
\inst11|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~2_combout\ = (\inst11|inst17|$00000|auto_generated|result_node\(2) & (((\inst11|inst|process_0~1_combout\) # (!\inst11|inst6|$00000|auto_generated|result_node\(2))) # (!\inst11|inst9|$00000|auto_generated|result_node\(2)))) # 
-- (!\inst11|inst17|$00000|auto_generated|result_node\(2) & (!\inst11|inst9|$00000|auto_generated|result_node\(2) & ((\inst11|inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst17|$00000|auto_generated|result_node\(2),
	datab => \inst11|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst11|inst6|$00000|auto_generated|result_node\(2),
	datad => \inst11|inst|process_0~1_combout\,
	combout => \inst11|inst|process_0~2_combout\);

-- Location: LCCOMB_X27_Y21_N4
\inst11|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~3_combout\ = (\inst11|inst6|$00000|auto_generated|result_node\(1) & (\inst11|inst17|$00000|auto_generated|result_node\(0) & (\inst11|inst17|$00000|auto_generated|result_node\(1) & 
-- !\inst11|inst6|$00000|auto_generated|result_node\(0)))) # (!\inst11|inst6|$00000|auto_generated|result_node\(1) & ((\inst11|inst17|$00000|auto_generated|result_node\(1)) # ((\inst11|inst17|$00000|auto_generated|result_node\(0) & 
-- !\inst11|inst6|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst11|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst11|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst11|inst6|$00000|auto_generated|result_node\(0),
	combout => \inst11|inst|process_0~3_combout\);

-- Location: LCCOMB_X28_Y21_N4
\inst11|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|process_0~4_combout\ = (\inst11|inst|process_0~2_combout\) # ((\inst11|inst|process_0~3_combout\ & (\inst11|inst6|$00000|auto_generated|result_node\(2) $ (!\inst11|inst17|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst11|inst|process_0~2_combout\,
	datac => \inst11|inst|process_0~3_combout\,
	datad => \inst11|inst17|$00000|auto_generated|result_node\(2),
	combout => \inst11|inst|process_0~4_combout\);

-- Location: LCCOMB_X27_Y21_N2
\inst11|inst|Min_Out[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|Min_Out[1]~4_combout\ = (\inst11|inst|process_0~4_combout\ & ((\inst11|inst|process_0~8_combout\ & ((\inst11|inst9|$00000|auto_generated|result_node\(1)))) # (!\inst11|inst|process_0~8_combout\ & 
-- (\inst11|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst11|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst11|inst|process_0~8_combout\,
	datad => \inst11|inst|process_0~4_combout\,
	combout => \inst11|inst|Min_Out[1]~4_combout\);

-- Location: LCCOMB_X27_Y21_N12
\inst11|inst16|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst16|Add0~2_combout\ = \inst11|inst|Min_Out[0]~5_combout\ $ (((!\inst11|inst|Min_Out[1]~4_combout\ & ((\inst11|inst|process_0~4_combout\) # (!\inst11|inst17|$00000|auto_generated|result_node\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|process_0~4_combout\,
	datab => \inst11|inst|Min_Out[1]~4_combout\,
	datac => \inst11|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst11|inst|Min_Out[0]~5_combout\,
	combout => \inst11|inst16|Add0~2_combout\);

-- Location: FF_X29_Y20_N13
\inst11|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst11|inst16|Add0~2_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst2|reg_val\(1));

-- Location: LCCOMB_X30_Y22_N0
\inst15|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst17|$00000|auto_generated|result_node\(1) = (\inst11|inst2|reg_val\(1)) # (\inst15|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst2|reg_val\(1),
	datad => \inst15|inst3|estado~q\,
	combout => \inst15|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X30_Y22_N14
\inst15|inst|Min_Out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst|Min_Out[1]~1_combout\ = (\inst15|inst|LessThan2~2_combout\ & (((\inst14|inst2|reg_val\(1)) # (\inst15|inst11|estado~q\)))) # (!\inst15|inst|LessThan2~2_combout\ & (\inst15|inst17|$00000|auto_generated|result_node\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst|LessThan2~2_combout\,
	datab => \inst15|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst14|inst2|reg_val\(1),
	datad => \inst15|inst11|estado~q\,
	combout => \inst15|inst|Min_Out[1]~1_combout\);

-- Location: LCCOMB_X29_Y19_N2
\inst15|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst16|Add0~0_combout\ = \inst15|inst|Min_Out[2]~0_combout\ $ (((!\inst15|inst|Min_Out[0]~2_combout\ & \inst15|inst|Min_Out[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst|Min_Out[0]~2_combout\,
	datac => \inst15|inst|Min_Out[2]~0_combout\,
	datad => \inst15|inst|Min_Out[1]~1_combout\,
	combout => \inst15|inst16|Add0~0_combout\);

-- Location: FF_X29_Y19_N3
\inst15|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst2|reg_val\(2));

-- Location: LCCOMB_X26_Y19_N12
\inst14|inst|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|LessThan4~0_combout\ = (!\inst14|inst8|estado~q\ & (((!\inst15|inst2|reg_val\(0)) # (!\inst15|inst2|reg_val\(2))) # (!\inst15|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2|reg_val\(1),
	datab => \inst14|inst8|estado~q\,
	datac => \inst15|inst2|reg_val\(2),
	datad => \inst15|inst2|reg_val\(0),
	combout => \inst14|inst|LessThan4~0_combout\);

-- Location: LCCOMB_X26_Y20_N20
\inst14|inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|LessThan5~0_combout\ = ((!\inst13|inst2|reg_val\(1)) # (!\inst13|inst2|reg_val\(0))) # (!\inst13|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst2|reg_val\(2),
	datac => \inst13|inst2|reg_val\(0),
	datad => \inst13|inst2|reg_val\(1),
	combout => \inst14|inst|LessThan5~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\inst14|inst|Min_Out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|Min_Out[2]~6_combout\ = (!\inst14|inst|LessThan3~0_combout\ & (!\inst14|inst|LessThan4~0_combout\ & ((\inst14|inst11|estado~q\) # (!\inst14|inst|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst|LessThan3~0_combout\,
	datab => \inst14|inst11|estado~q\,
	datac => \inst14|inst|LessThan4~0_combout\,
	datad => \inst14|inst|LessThan5~0_combout\,
	combout => \inst14|inst|Min_Out[2]~6_combout\);

-- Location: LCCOMB_X30_Y22_N2
\inst15|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst16|Add0~1_combout\ = \inst15|inst|Min_Out[1]~1_combout\ $ (!\inst15|inst|Min_Out[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst|Min_Out[1]~1_combout\,
	datad => \inst15|inst|Min_Out[0]~2_combout\,
	combout => \inst15|inst16|Add0~1_combout\);

-- Location: FF_X30_Y22_N3
\inst15|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst2|reg_val\(1));

-- Location: LCCOMB_X26_Y19_N8
\inst14|inst7|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst7|$00000|auto_generated|result_node\(1) = (\inst14|inst8|estado~q\) # (\inst15|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst8|estado~q\,
	datad => \inst15|inst2|reg_val\(1),
	combout => \inst14|inst7|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X26_Y19_N0
\inst14|inst|Min_Out[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|Min_Out[1]~9_combout\ = (\inst14|inst|Min_Out[2]~6_combout\) # ((\inst14|inst|process_0~4_combout\ & (\inst14|inst9|$00000|auto_generated|result_node\(1))) # (!\inst14|inst|process_0~4_combout\ & 
-- ((\inst14|inst7|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst|process_0~4_combout\,
	datab => \inst14|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst14|inst|Min_Out[2]~6_combout\,
	datad => \inst14|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst14|inst|Min_Out[1]~9_combout\);

-- Location: LCCOMB_X26_Y20_N24
\inst14|inst|Min_Out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|Min_Out[1]~12_combout\ = (\inst14|inst|process_0~8_combout\ & (((\inst14|inst|Min_Out[1]~9_combout\)))) # (!\inst14|inst|process_0~8_combout\ & ((\inst14|inst3|estado~q\) # ((\inst10|inst2|reg_val\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst3|estado~q\,
	datab => \inst10|inst2|reg_val\(1),
	datac => \inst14|inst|process_0~8_combout\,
	datad => \inst14|inst|Min_Out[1]~9_combout\,
	combout => \inst14|inst|Min_Out[1]~12_combout\);

-- Location: LCCOMB_X28_Y21_N20
\inst14|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst16|Add0~0_combout\ = \inst14|inst|Min_Out[2]~10_combout\ $ (((\inst14|inst|Min_Out[1]~12_combout\ & !\inst14|inst|Min_Out[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst|Min_Out[2]~10_combout\,
	datac => \inst14|inst|Min_Out[1]~12_combout\,
	datad => \inst14|inst|Min_Out[0]~11_combout\,
	combout => \inst14|inst16|Add0~0_combout\);

-- Location: FF_X28_Y21_N21
\inst14|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst2|reg_val\(2));

-- Location: LCCOMB_X30_Y21_N26
\inst35|inst3|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~2_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & (\inst33|inst1|inst|inst|inst2|Q\(2) & (!\inst33|inst1|inst|inst|inst2|Q\(1) & \inst33|inst1|inst|inst|inst2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst35|inst3|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y18_N20
\inst10|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst5|estado~0_combout\ = (\inst10|inst5|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst35|inst3|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst10|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~2_combout\,
	combout => \inst10|inst5|estado~0_combout\);

-- Location: FF_X31_Y18_N21
\inst10|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst5|estado~q\);

-- Location: LCCOMB_X28_Y18_N2
\inst10|inst|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan7~0_combout\ = (\inst10|inst8|estado~q\ & (((!\inst14|inst2|reg_val\(2) & !\inst10|inst5|estado~q\)))) # (!\inst10|inst8|estado~q\ & (\inst11|inst2|reg_val\(2) $ (((\inst14|inst2|reg_val\(2)) # (\inst10|inst5|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst8|estado~q\,
	datab => \inst11|inst2|reg_val\(2),
	datac => \inst14|inst2|reg_val\(2),
	datad => \inst10|inst5|estado~q\,
	combout => \inst10|inst|LessThan7~0_combout\);

-- Location: LCCOMB_X28_Y18_N12
\inst10|inst7|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst7|$00000|auto_generated|result_node\(2) = (\inst11|inst2|reg_val\(2)) # (\inst10|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|inst2|reg_val\(2),
	datad => \inst10|inst8|estado~q\,
	combout => \inst10|inst7|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X28_Y18_N22
\inst10|inst7|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst7|$00000|auto_generated|result_node\(1) = (\inst10|inst8|estado~q\) # (\inst11|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst8|estado~q\,
	datad => \inst11|inst2|reg_val\(1),
	combout => \inst10|inst7|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X32_Y21_N16
\inst10|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst11|estado~0_combout\ = (\inst10|inst11|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~1_combout\ & (\inst35|inst3|Mux0~2_combout\ & \inst30|fstate.se_choca~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	datab => \inst35|inst3|Mux0~2_combout\,
	datac => \inst10|inst11|estado~q\,
	datad => \inst30|fstate.se_choca~q\,
	combout => \inst10|inst11|estado~0_combout\);

-- Location: FF_X32_Y21_N17
\inst10|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst11|estado~q\);

-- Location: LCCOMB_X28_Y21_N26
\inst10|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst9|$00000|auto_generated|result_node\(1) = (\inst9|inst2|reg_val\(1)) # (\inst10|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|reg_val\(1),
	datad => \inst10|inst11|estado~q\,
	combout => \inst10|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X32_Y18_N18
\inst10|inst|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan8~0_combout\ = (\inst10|inst7|$00000|auto_generated|result_node\(1) & (((!\inst10|inst9|$00000|auto_generated|result_node\(0) & \inst10|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst10|inst9|$00000|auto_generated|result_node\(1)))) # (!\inst10|inst7|$00000|auto_generated|result_node\(1) & (!\inst10|inst9|$00000|auto_generated|result_node\(0) & (\inst10|inst7|$00000|auto_generated|result_node\(0) & 
-- !\inst10|inst9|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst9|$00000|auto_generated|result_node\(0),
	datab => \inst10|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst7|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst9|$00000|auto_generated|result_node\(1),
	combout => \inst10|inst|LessThan8~0_combout\);

-- Location: LCCOMB_X31_Y21_N8
\inst10|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst3|estado~0_combout\ = (\inst10|inst3|estado~q\) # ((\inst35|inst|Mux0~0_combout\ & \inst35|inst3|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst|Mux0~0_combout\,
	datac => \inst10|inst3|estado~q\,
	datad => \inst35|inst3|Mux0~2_combout\,
	combout => \inst10|inst3|estado~0_combout\);

-- Location: FF_X31_Y21_N9
\inst10|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst3|estado~q\);

-- Location: LCCOMB_X28_Y18_N14
\inst10|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst17|$00000|auto_generated|result_node\(2) = (\inst6|inst2|reg_val\(2)) # (\inst10|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst2|reg_val\(2),
	datad => \inst10|inst3|estado~q\,
	combout => \inst10|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X35_Y18_N0
\inst10|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst9|$00000|auto_generated|result_node\(2) = (\inst9|inst2|reg_val\(2)) # (\inst10|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|reg_val\(2),
	datac => \inst10|inst11|estado~q\,
	combout => \inst10|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X32_Y22_N0
\inst10|inst|Min_Out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[2]~1_combout\ = ((\inst10|inst6|$00000|auto_generated|result_node\(2) & (\inst10|inst17|$00000|auto_generated|result_node\(2) & \inst10|inst9|$00000|auto_generated|result_node\(2)))) # 
-- (!\inst10|inst7|$00000|auto_generated|result_node\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst7|$00000|auto_generated|result_node\(2),
	datac => \inst10|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst10|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst10|inst|Min_Out[2]~1_combout\);

-- Location: LCCOMB_X32_Y22_N14
\inst10|inst|Min_Out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[2]~2_combout\ = (\inst10|inst|Min_Out[2]~1_combout\ & ((\inst10|inst9|$00000|auto_generated|result_node\(2) $ (\inst10|inst7|$00000|auto_generated|result_node\(2))) # (!\inst10|inst|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst9|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst7|$00000|auto_generated|result_node\(2),
	datac => \inst10|inst|LessThan8~0_combout\,
	datad => \inst10|inst|Min_Out[2]~1_combout\,
	combout => \inst10|inst|Min_Out[2]~2_combout\);

-- Location: LCCOMB_X32_Y20_N26
\inst10|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst6|$00000|auto_generated|result_node\(1) = (\inst10|inst5|estado~q\) # (\inst14|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5|estado~q\,
	datac => \inst14|inst2|reg_val\(1),
	combout => \inst10|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X32_Y20_N20
\inst10|inst|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan7~1_combout\ = (\inst10|inst7|$00000|auto_generated|result_node\(1) & (((!\inst10|inst6|$00000|auto_generated|result_node\(0) & \inst10|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst10|inst6|$00000|auto_generated|result_node\(1)))) # (!\inst10|inst7|$00000|auto_generated|result_node\(1) & (!\inst10|inst6|$00000|auto_generated|result_node\(0) & (!\inst10|inst6|$00000|auto_generated|result_node\(1) & 
-- \inst10|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst6|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst10|inst|LessThan7~1_combout\);

-- Location: LCCOMB_X32_Y22_N28
\inst10|inst|Min_Out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[2]~3_combout\ = (!\inst10|inst|LessThan6~5_combout\ & (\inst10|inst|Min_Out[2]~2_combout\ & ((\inst10|inst|LessThan7~0_combout\) # (!\inst10|inst|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|LessThan6~5_combout\,
	datab => \inst10|inst|LessThan7~0_combout\,
	datac => \inst10|inst|Min_Out[2]~2_combout\,
	datad => \inst10|inst|LessThan7~1_combout\,
	combout => \inst10|inst|Min_Out[2]~3_combout\);

-- Location: LCCOMB_X32_Y20_N22
\inst10|inst|Min_Out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[2]~4_combout\ = (\inst10|inst|process_0~2_combout\) # ((\inst10|inst|Min_Out[2]~0_combout\ & \inst10|inst|Min_Out[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|Min_Out[2]~0_combout\,
	datac => \inst10|inst|Min_Out[2]~3_combout\,
	datad => \inst10|inst|process_0~2_combout\,
	combout => \inst10|inst|Min_Out[2]~4_combout\);

-- Location: LCCOMB_X32_Y18_N26
\inst10|inst|Min_Out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[0]~9_combout\ = (\inst10|inst|Min_Out[2]~0_combout\ & (((\inst10|inst|Min_Out[2]~4_combout\)))) # (!\inst10|inst|Min_Out[2]~0_combout\ & ((\inst10|inst|Min_Out[2]~4_combout\ & (\inst10|inst17|$00000|auto_generated|result_node\(0))) # 
-- (!\inst10|inst|Min_Out[2]~4_combout\ & ((\inst10|inst6|$00000|auto_generated|result_node\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst10|inst6|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst|Min_Out[2]~0_combout\,
	datad => \inst10|inst|Min_Out[2]~4_combout\,
	combout => \inst10|inst|Min_Out[0]~9_combout\);

-- Location: LCCOMB_X32_Y17_N10
\inst10|inst9|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst9|$00000|auto_generated|result_node\(0) = (\inst9|inst2|reg_val\(0)) # (\inst10|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst2|reg_val\(0),
	datad => \inst10|inst11|estado~q\,
	combout => \inst10|inst9|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X32_Y18_N12
\inst10|inst|Min_Out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[0]~10_combout\ = (\inst10|inst|Min_Out[2]~0_combout\ & ((\inst10|inst|Min_Out[0]~9_combout\ & (!\inst10|inst7|$00000|auto_generated|result_node\(0))) # (!\inst10|inst|Min_Out[0]~9_combout\ & 
-- ((!\inst10|inst9|$00000|auto_generated|result_node\(0)))))) # (!\inst10|inst|Min_Out[2]~0_combout\ & (((!\inst10|inst|Min_Out[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|Min_Out[2]~0_combout\,
	datab => \inst10|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst|Min_Out[0]~9_combout\,
	datad => \inst10|inst9|$00000|auto_generated|result_node\(0),
	combout => \inst10|inst|Min_Out[0]~10_combout\);

-- Location: FF_X30_Y20_N11
\inst10|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst|Min_Out[0]~10_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|reg_val\(0));

-- Location: LCCOMB_X30_Y18_N22
\inst14|inst|Min_Out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|Min_Out[0]~11_combout\ = (\inst14|inst|process_0~8_combout\ & (!\inst14|inst|Min_Out[0]~8_combout\)) # (!\inst14|inst|process_0~8_combout\ & (((!\inst14|inst3|estado~q\ & !\inst10|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst|Min_Out[0]~8_combout\,
	datab => \inst14|inst3|estado~q\,
	datac => \inst10|inst2|reg_val\(0),
	datad => \inst14|inst|process_0~8_combout\,
	combout => \inst14|inst|Min_Out[0]~11_combout\);

-- Location: FF_X30_Y20_N25
\inst14|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst14|inst|Min_Out[0]~11_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst2|reg_val\(0));

-- Location: LCCOMB_X34_Y21_N16
\inst10|inst6|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst6|$00000|auto_generated|result_node\(0) = (\inst14|inst2|reg_val\(0)) # (\inst10|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst2|reg_val\(0),
	datad => \inst10|inst5|estado~q\,
	combout => \inst10|inst6|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X28_Y18_N18
\inst10|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst17|$00000|auto_generated|result_node\(1) = (\inst6|inst2|reg_val\(1)) # (\inst10|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst2|reg_val\(1),
	datad => \inst10|inst3|estado~q\,
	combout => \inst10|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X32_Y20_N4
\inst10|inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan0~1_combout\ = (\inst10|inst6|$00000|auto_generated|result_node\(1) & (\inst10|inst17|$00000|auto_generated|result_node\(0) & (!\inst10|inst6|$00000|auto_generated|result_node\(0) & 
-- \inst10|inst17|$00000|auto_generated|result_node\(1)))) # (!\inst10|inst6|$00000|auto_generated|result_node\(1) & ((\inst10|inst17|$00000|auto_generated|result_node\(1)) # ((\inst10|inst17|$00000|auto_generated|result_node\(0) & 
-- !\inst10|inst6|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst10|inst6|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst10|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y18_N10
\inst10|inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan0~0_combout\ = (\inst10|inst5|estado~q\ & (!\inst6|inst2|reg_val\(2) & ((!\inst10|inst3|estado~q\)))) # (!\inst10|inst5|estado~q\ & (\inst14|inst2|reg_val\(2) $ (((\inst6|inst2|reg_val\(2)) # (\inst10|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5|estado~q\,
	datab => \inst6|inst2|reg_val\(2),
	datac => \inst14|inst2|reg_val\(2),
	datad => \inst10|inst3|estado~q\,
	combout => \inst10|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y22_N12
\inst10|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst6|$00000|auto_generated|result_node\(2) = (\inst14|inst2|reg_val\(2)) # (\inst10|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|inst2|reg_val\(2),
	datad => \inst10|inst5|estado~q\,
	combout => \inst10|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X32_Y18_N20
\inst10|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~0_combout\ = ((\inst10|inst6|$00000|auto_generated|result_node\(2) & (\inst10|inst7|$00000|auto_generated|result_node\(2) & \inst10|inst9|$00000|auto_generated|result_node\(2)))) # 
-- (!\inst10|inst17|$00000|auto_generated|result_node\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst10|inst7|$00000|auto_generated|result_node\(2),
	datad => \inst10|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst10|inst|process_0~0_combout\);

-- Location: LCCOMB_X32_Y18_N30
\inst10|inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|LessThan2~0_combout\ = (\inst10|inst9|$00000|auto_generated|result_node\(1) & (\inst10|inst17|$00000|auto_generated|result_node\(0) & (\inst10|inst17|$00000|auto_generated|result_node\(1) & 
-- !\inst10|inst9|$00000|auto_generated|result_node\(0)))) # (!\inst10|inst9|$00000|auto_generated|result_node\(1) & ((\inst10|inst17|$00000|auto_generated|result_node\(1)) # ((\inst10|inst17|$00000|auto_generated|result_node\(0) & 
-- !\inst10|inst9|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst10|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst10|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst9|$00000|auto_generated|result_node\(0),
	combout => \inst10|inst|LessThan2~0_combout\);

-- Location: LCCOMB_X32_Y18_N0
\inst10|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~1_combout\ = (\inst10|inst|process_0~0_combout\ & ((\inst10|inst17|$00000|auto_generated|result_node\(2) $ (\inst10|inst9|$00000|auto_generated|result_node\(2))) # (!\inst10|inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst|process_0~0_combout\,
	datac => \inst10|inst|LessThan2~0_combout\,
	datad => \inst10|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst10|inst|process_0~1_combout\);

-- Location: LCCOMB_X32_Y20_N18
\inst10|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~2_combout\ = (!\inst10|inst|LessThan1~5_combout\ & (\inst10|inst|process_0~1_combout\ & ((\inst10|inst|LessThan0~0_combout\) # (!\inst10|inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|LessThan1~5_combout\,
	datab => \inst10|inst|LessThan0~1_combout\,
	datac => \inst10|inst|LessThan0~0_combout\,
	datad => \inst10|inst|process_0~1_combout\,
	combout => \inst10|inst|process_0~2_combout\);

-- Location: LCCOMB_X32_Y22_N2
\inst10|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~7_combout\ = (\inst10|inst6|$00000|auto_generated|result_node\(2) & (((!\inst10|inst9|$00000|auto_generated|result_node\(2)) # (!\inst10|inst17|$00000|auto_generated|result_node\(2))) # 
-- (!\inst10|inst7|$00000|auto_generated|result_node\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst7|$00000|auto_generated|result_node\(2),
	datac => \inst10|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst10|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst10|inst|process_0~7_combout\);

-- Location: FF_X31_Y20_N9
\inst6|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst6|inst|Min_Out[0]~8_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|reg_val\(0));

-- Location: LCCOMB_X28_Y18_N16
\inst10|inst17|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst17|$00000|auto_generated|result_node\(0) = (\inst6|inst2|reg_val\(0)) # (\inst10|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst2|reg_val\(0),
	datad => \inst10|inst3|estado~q\,
	combout => \inst10|inst17|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X32_Y20_N8
\inst10|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~3_combout\ = (!\inst10|inst17|$00000|auto_generated|result_node\(0) & (!\inst10|inst|LessThan0~0_combout\ & (\inst10|inst6|$00000|auto_generated|result_node\(1) $ (!\inst10|inst17|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst|LessThan0~0_combout\,
	datad => \inst10|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst10|inst|process_0~3_combout\);

-- Location: LCCOMB_X32_Y20_N2
\inst10|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~4_combout\ = (!\inst10|inst7|$00000|auto_generated|result_node\(0) & (!\inst10|inst|LessThan7~0_combout\ & (\inst10|inst7|$00000|auto_generated|result_node\(1) $ (!\inst10|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst|LessThan7~0_combout\,
	combout => \inst10|inst|process_0~4_combout\);

-- Location: LCCOMB_X32_Y20_N16
\inst10|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|process_0~6_combout\ = (\inst10|inst6|$00000|auto_generated|result_node\(0) & ((\inst10|inst|process_0~5_combout\) # ((\inst10|inst|process_0~3_combout\) # (\inst10|inst|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|process_0~5_combout\,
	datab => \inst10|inst6|$00000|auto_generated|result_node\(0),
	datac => \inst10|inst|process_0~3_combout\,
	datad => \inst10|inst|process_0~4_combout\,
	combout => \inst10|inst|process_0~6_combout\);

-- Location: LCCOMB_X32_Y20_N10
\inst10|inst|Min_Out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[2]~0_combout\ = (!\inst10|inst|process_0~2_combout\ & ((\inst10|inst|process_0~9_combout\) # ((\inst10|inst|process_0~7_combout\) # (\inst10|inst|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|process_0~9_combout\,
	datab => \inst10|inst|process_0~2_combout\,
	datac => \inst10|inst|process_0~7_combout\,
	datad => \inst10|inst|process_0~6_combout\,
	combout => \inst10|inst|Min_Out[2]~0_combout\);

-- Location: LCCOMB_X30_Y18_N26
\inst10|inst|Min_Out[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[1]~7_combout\ = (\inst10|inst|Min_Out[2]~0_combout\ & (((\inst10|inst9|$00000|auto_generated|result_node\(1)) # (\inst10|inst|Min_Out[2]~4_combout\)))) # (!\inst10|inst|Min_Out[2]~0_combout\ & 
-- (\inst10|inst6|$00000|auto_generated|result_node\(1) & ((!\inst10|inst|Min_Out[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst|Min_Out[2]~0_combout\,
	datac => \inst10|inst9|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst|Min_Out[2]~4_combout\,
	combout => \inst10|inst|Min_Out[1]~7_combout\);

-- Location: LCCOMB_X32_Y18_N8
\inst10|inst|Min_Out[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[1]~8_combout\ = (\inst10|inst|Min_Out[1]~7_combout\ & (((\inst10|inst7|$00000|auto_generated|result_node\(1)) # (!\inst10|inst|Min_Out[2]~4_combout\)))) # (!\inst10|inst|Min_Out[1]~7_combout\ & 
-- (\inst10|inst17|$00000|auto_generated|result_node\(1) & ((\inst10|inst|Min_Out[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst10|inst|Min_Out[1]~7_combout\,
	datac => \inst10|inst7|$00000|auto_generated|result_node\(1),
	datad => \inst10|inst|Min_Out[2]~4_combout\,
	combout => \inst10|inst|Min_Out[1]~8_combout\);

-- Location: LCCOMB_X32_Y18_N16
\inst10|inst|Min_Out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[2]~5_combout\ = (\inst10|inst|Min_Out[2]~0_combout\ & ((\inst10|inst9|$00000|auto_generated|result_node\(2)) # ((\inst10|inst|Min_Out[2]~4_combout\)))) # (!\inst10|inst|Min_Out[2]~0_combout\ & 
-- (((\inst10|inst6|$00000|auto_generated|result_node\(2) & !\inst10|inst|Min_Out[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst9|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst10|inst|Min_Out[2]~0_combout\,
	datad => \inst10|inst|Min_Out[2]~4_combout\,
	combout => \inst10|inst|Min_Out[2]~5_combout\);

-- Location: LCCOMB_X32_Y18_N2
\inst10|inst|Min_Out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst|Min_Out[2]~6_combout\ = (\inst10|inst|Min_Out[2]~4_combout\ & ((\inst10|inst|Min_Out[2]~5_combout\ & ((\inst10|inst7|$00000|auto_generated|result_node\(2)))) # (!\inst10|inst|Min_Out[2]~5_combout\ & 
-- (\inst10|inst17|$00000|auto_generated|result_node\(2))))) # (!\inst10|inst|Min_Out[2]~4_combout\ & (((\inst10|inst|Min_Out[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17|$00000|auto_generated|result_node\(2),
	datab => \inst10|inst|Min_Out[2]~4_combout\,
	datac => \inst10|inst7|$00000|auto_generated|result_node\(2),
	datad => \inst10|inst|Min_Out[2]~5_combout\,
	combout => \inst10|inst|Min_Out[2]~6_combout\);

-- Location: LCCOMB_X32_Y18_N22
\inst10|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|inst16|Add0~0_combout\ = \inst10|inst|Min_Out[2]~6_combout\ $ (((!\inst10|inst|Min_Out[0]~10_combout\ & \inst10|inst|Min_Out[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst|Min_Out[0]~10_combout\,
	datac => \inst10|inst|Min_Out[1]~8_combout\,
	datad => \inst10|inst|Min_Out[2]~6_combout\,
	combout => \inst10|inst16|Add0~0_combout\);

-- Location: FF_X29_Y21_N13
\inst10|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst2|reg_val\(2));

-- Location: LCCOMB_X28_Y21_N0
\inst11|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst9|$00000|auto_generated|result_node\(2) = (\inst11|inst11|estado~q\) # (\inst10|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst11|estado~q\,
	datac => \inst10|inst2|reg_val\(2),
	combout => \inst11|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X28_Y21_N16
\inst11|inst|Min_Out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|Min_Out[2]~2_combout\ = (\inst11|inst|process_0~4_combout\ & ((\inst11|inst|process_0~8_combout\ & ((\inst11|inst9|$00000|auto_generated|result_node\(2)))) # (!\inst11|inst|process_0~8_combout\ & 
-- (\inst11|inst6|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst11|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst11|inst|process_0~4_combout\,
	datad => \inst11|inst|process_0~8_combout\,
	combout => \inst11|inst|Min_Out[2]~2_combout\);

-- Location: LCCOMB_X28_Y21_N6
\inst11|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst16|Add0~1_combout\ = \inst11|inst16|Add0~0_combout\ $ (((\inst11|inst|Min_Out[2]~2_combout\) # ((!\inst11|inst|process_0~4_combout\ & \inst11|inst17|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst16|Add0~0_combout\,
	datab => \inst11|inst|Min_Out[2]~2_combout\,
	datac => \inst11|inst|process_0~4_combout\,
	datad => \inst11|inst17|$00000|auto_generated|result_node\(2),
	combout => \inst11|inst16|Add0~1_combout\);

-- Location: FF_X28_Y21_N7
\inst11|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst2|reg_val\(2));

-- Location: LCCOMB_X27_Y18_N20
\inst7|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst6|$00000|auto_generated|result_node\(2) = (\inst7|inst5|estado~q\) # (\inst11|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst5|estado~q\,
	datac => \inst11|inst2|reg_val\(2),
	combout => \inst7|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X27_Y18_N0
\inst7|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~3_combout\ = (\inst7|inst6|$00000|auto_generated|result_node\(1) & (\inst7|inst17|$00000|auto_generated|result_node\(1) & (\inst7|inst17|$00000|auto_generated|result_node\(0) & !\inst7|inst6|$00000|auto_generated|result_node\(0)))) # 
-- (!\inst7|inst6|$00000|auto_generated|result_node\(1) & ((\inst7|inst17|$00000|auto_generated|result_node\(1)) # ((\inst7|inst17|$00000|auto_generated|result_node\(0) & !\inst7|inst6|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst7|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst7|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst7|inst6|$00000|auto_generated|result_node\(0),
	combout => \inst7|inst|process_0~3_combout\);

-- Location: LCCOMB_X27_Y18_N22
\inst7|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|process_0~4_combout\ = (\inst7|inst|process_0~2_combout\) # ((\inst7|inst|process_0~3_combout\ & (\inst7|inst6|$00000|auto_generated|result_node\(2) $ (!\inst7|inst17|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|process_0~2_combout\,
	datab => \inst7|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst7|inst17|$00000|auto_generated|result_node\(2),
	datad => \inst7|inst|process_0~3_combout\,
	combout => \inst7|inst|process_0~4_combout\);

-- Location: LCCOMB_X27_Y18_N16
\inst7|inst|Min_Out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|Min_Out[2]~2_combout\ = (\inst7|inst|process_0~4_combout\ & ((\inst7|inst|process_0~8_combout\ & (\inst7|inst9|$00000|auto_generated|result_node\(2))) # (!\inst7|inst|process_0~8_combout\ & 
-- ((\inst7|inst6|$00000|auto_generated|result_node\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|process_0~8_combout\,
	datab => \inst7|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst7|inst|process_0~4_combout\,
	datad => \inst7|inst6|$00000|auto_generated|result_node\(2),
	combout => \inst7|inst|Min_Out[2]~2_combout\);

-- Location: LCCOMB_X28_Y19_N14
\inst7|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst16|Add0~1_combout\ = \inst7|inst16|Add0~0_combout\ $ (((\inst7|inst|Min_Out[2]~2_combout\) # ((\inst7|inst17|$00000|auto_generated|result_node\(2) & !\inst7|inst|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst16|Add0~0_combout\,
	datab => \inst7|inst17|$00000|auto_generated|result_node\(2),
	datac => \inst7|inst|Min_Out[2]~2_combout\,
	datad => \inst7|inst|process_0~4_combout\,
	combout => \inst7|inst16|Add0~1_combout\);

-- Location: FF_X28_Y19_N15
\inst7|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|reg_val\(2));

-- Location: LCCOMB_X30_Y18_N14
\inst2|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|estado~0_combout\ = (\inst2|inst5|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~10_combout\ & \inst33|inst5|seleccion[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~10_combout\,
	datac => \inst2|inst5|estado~q\,
	datad => \inst33|inst5|seleccion[1]~7_combout\,
	combout => \inst2|inst5|estado~0_combout\);

-- Location: FF_X30_Y18_N15
\inst2|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5|estado~q\);

-- Location: LCCOMB_X31_Y22_N14
\inst2|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|$00000|auto_generated|result_node\(2) = (\inst7|inst2|reg_val\(2)) # (\inst2|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|reg_val\(2),
	datad => \inst2|inst5|estado~q\,
	combout => \inst2|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X31_Y22_N6
\inst2|inst|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|LessThan5~2_combout\ = (\inst2|inst|LessThan5~1_combout\ & ((\inst2|inst6|$00000|auto_generated|result_node\(2)) # ((!\inst2|inst11|estado~q\ & !\inst1|inst2|reg_val\(2))))) # (!\inst2|inst|LessThan5~1_combout\ & 
-- (\inst2|inst6|$00000|auto_generated|result_node\(2) & (!\inst2|inst11|estado~q\ & !\inst1|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|LessThan5~1_combout\,
	datab => \inst2|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst2|inst11|estado~q\,
	datad => \inst1|inst2|reg_val\(2),
	combout => \inst2|inst|LessThan5~2_combout\);

-- Location: LCCOMB_X31_Y22_N20
\inst2|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst6|$00000|auto_generated|result_node\(1) = (\inst7|inst2|reg_val\(1)) # (\inst2|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|reg_val\(1),
	datad => \inst2|inst5|estado~q\,
	combout => \inst2|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X31_Y22_N12
\inst2|inst|Min_Out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Min_Out[1]~0_combout\ = (\inst2|inst|LessThan5~2_combout\ & ((\inst1|inst2|reg_val\(1)) # ((\inst2|inst11|estado~q\)))) # (!\inst2|inst|LessThan5~2_combout\ & (((\inst2|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|reg_val\(1),
	datab => \inst2|inst|LessThan5~2_combout\,
	datac => \inst2|inst11|estado~q\,
	datad => \inst2|inst6|$00000|auto_generated|result_node\(1),
	combout => \inst2|inst|Min_Out[1]~0_combout\);

-- Location: LCCOMB_X28_Y19_N12
\inst2|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst16|Add0~0_combout\ = \inst2|inst|Min_Out[2]~2_combout\ $ ((((\inst2|inst|Min_Out[0]~1_combout\ & \inst2|inst|Min_Out[1]~0_combout\)) # (!\inst2|inst|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|Min_Out[2]~2_combout\,
	datab => \inst2|inst|Min_Out[0]~1_combout\,
	datac => \inst2|inst|Min_Out[1]~0_combout\,
	datad => \inst2|inst|process_0~2_combout\,
	combout => \inst2|inst16|Add0~0_combout\);

-- Location: FF_X28_Y19_N13
\inst2|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|reg_val\(2));

-- Location: LCCOMB_X34_Y20_N14
\inst1|inst7|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst7|$00000|auto_generated|result_node\(2) = (\inst1|inst8|estado~q\) # (\inst2|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst8|estado~q\,
	datad => \inst2|inst2|reg_val\(2),
	combout => \inst1|inst7|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X35_Y20_N24
\inst1|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst9|$00000|auto_generated|result_node\(2) = (\inst|inst2|reg_val\(2)) # (\inst1|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|reg_val\(2),
	datad => \inst1|inst11|estado~q\,
	combout => \inst1|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X35_Y20_N20
\inst1|inst|Min_Out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|Min_Out[2]~6_combout\ = (\inst1|inst|process_0~8_combout\ & ((\inst1|inst|process_0~12_combout\ & ((\inst1|inst9|$00000|auto_generated|result_node\(2)))) # (!\inst1|inst|process_0~12_combout\ & 
-- (\inst1|inst7|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|process_0~12_combout\,
	datab => \inst1|inst|process_0~8_combout\,
	datac => \inst1|inst7|$00000|auto_generated|result_node\(2),
	datad => \inst1|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst1|inst|Min_Out[2]~6_combout\);

-- Location: LCCOMB_X28_Y19_N2
\inst1|inst|Min_Out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|Min_Out[2]~7_combout\ = (\inst1|inst|Min_Out[2]~6_combout\) # ((!\inst1|inst|process_0~8_combout\ & ((\inst1|inst5|estado~q\) # (\inst6|inst2|reg_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|estado~q\,
	datab => \inst1|inst|process_0~8_combout\,
	datac => \inst6|inst2|reg_val\(2),
	datad => \inst1|inst|Min_Out[2]~6_combout\,
	combout => \inst1|inst|Min_Out[2]~7_combout\);

-- Location: LCCOMB_X28_Y19_N16
\inst1|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst16|Add0~0_combout\ = (!\inst1|inst|process_0~3_combout\ & (\inst1|inst|Min_Out[2]~7_combout\ $ (((\inst1|inst|Min_Out[0]~10_combout\ & \inst1|inst|Min_Out[1]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Min_Out[0]~10_combout\,
	datab => \inst1|inst|Min_Out[2]~7_combout\,
	datac => \inst1|inst|Min_Out[1]~9_combout\,
	datad => \inst1|inst|process_0~3_combout\,
	combout => \inst1|inst16|Add0~0_combout\);

-- Location: FF_X29_Y19_N17
\inst1|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|reg_val\(2));

-- Location: LCCOMB_X31_Y18_N24
\inst6|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst3|estado~0_combout\ = (\inst6|inst3|estado~q\) # ((\inst35|inst3|Mux0~13_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst3|Mux0~13_combout\,
	datac => \inst6|inst3|estado~q\,
	datad => \inst35|inst|Mux0~0_combout\,
	combout => \inst6|inst3|estado~0_combout\);

-- Location: FF_X31_Y18_N25
\inst6|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3|estado~q\);

-- Location: LCCOMB_X28_Y16_N20
\inst6|inst17|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst17|$00000|auto_generated|result_node\(0) = (\inst1|inst2|reg_val\(0)) # (\inst6|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst2|reg_val\(0),
	datad => \inst6|inst3|estado~q\,
	combout => \inst6|inst17|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X31_Y16_N4
\inst6|inst7|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst7|$00000|auto_generated|result_node\(1) = (\inst7|inst2|reg_val\(1)) # (\inst6|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|reg_val\(1),
	datad => \inst6|inst8|estado~q\,
	combout => \inst6|inst7|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X28_Y16_N8
\inst6|inst|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan6~4_combout\ = (\inst6|inst17|$00000|auto_generated|result_node\(1) & (!\inst6|inst17|$00000|auto_generated|result_node\(0) & (\inst6|inst7|$00000|auto_generated|result_node\(0) & \inst6|inst7|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst6|inst17|$00000|auto_generated|result_node\(1) & ((\inst6|inst7|$00000|auto_generated|result_node\(1)) # ((!\inst6|inst17|$00000|auto_generated|result_node\(0) & \inst6|inst7|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst6|inst7|$00000|auto_generated|result_node\(0),
	datad => \inst6|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst6|inst|LessThan6~4_combout\);

-- Location: LCCOMB_X28_Y16_N24
\inst6|inst|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan6~5_combout\ = (\inst6|inst|LessThan6~4_combout\ & (\inst6|inst7|$00000|auto_generated|result_node\(2) $ (((!\inst1|inst2|reg_val\(2) & !\inst6|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst1|inst2|reg_val\(2),
	datac => \inst6|inst|LessThan6~4_combout\,
	datad => \inst6|inst3|estado~q\,
	combout => \inst6|inst|LessThan6~5_combout\);

-- Location: LCCOMB_X31_Y17_N0
\inst6|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst5|estado~0_combout\ = (\inst6|inst5|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst35|inst3|Mux0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst6|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~13_combout\,
	combout => \inst6|inst5|estado~0_combout\);

-- Location: FF_X31_Y17_N1
\inst6|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst5|estado~q\);

-- Location: LCCOMB_X31_Y16_N10
\inst6|inst|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan7~0_combout\ = (\inst7|inst2|reg_val\(2) & (!\inst6|inst5|estado~q\ & (!\inst10|inst2|reg_val\(2)))) # (!\inst7|inst2|reg_val\(2) & (\inst6|inst8|estado~q\ $ (((\inst6|inst5|estado~q\) # (\inst10|inst2|reg_val\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|reg_val\(2),
	datab => \inst6|inst5|estado~q\,
	datac => \inst10|inst2|reg_val\(2),
	datad => \inst6|inst8|estado~q\,
	combout => \inst6|inst|LessThan7~0_combout\);

-- Location: LCCOMB_X31_Y18_N16
\inst6|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst11|estado~0_combout\ = (\inst6|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~13_combout\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~13_combout\,
	datac => \inst6|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst6|inst11|estado~0_combout\);

-- Location: FF_X31_Y18_N17
\inst6|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst11|estado~q\);

-- Location: LCCOMB_X31_Y16_N26
\inst6|inst9|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst9|$00000|auto_generated|result_node\(2) = (\inst5|inst2|reg_val\(2)) # (\inst6|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst2|reg_val\(2),
	datad => \inst6|inst11|estado~q\,
	combout => \inst6|inst9|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X31_Y16_N24
\inst6|inst7|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst7|$00000|auto_generated|result_node\(2) = (\inst6|inst8|estado~q\) # (\inst7|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst8|estado~q\,
	datad => \inst7|inst2|reg_val\(2),
	combout => \inst6|inst7|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X31_Y16_N20
\inst6|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst9|$00000|auto_generated|result_node\(1) = (\inst5|inst2|reg_val\(1)) # (\inst6|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst2|reg_val\(1),
	datad => \inst6|inst11|estado~q\,
	combout => \inst6|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X31_Y16_N22
\inst6|inst9|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst9|$00000|auto_generated|result_node\(0) = (\inst5|inst2|reg_val\(0)) # (\inst6|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|reg_val\(0),
	datad => \inst6|inst11|estado~q\,
	combout => \inst6|inst9|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X31_Y16_N16
\inst6|inst|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan8~0_combout\ = (\inst6|inst7|$00000|auto_generated|result_node\(1) & (((!\inst6|inst9|$00000|auto_generated|result_node\(0) & \inst6|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst6|inst9|$00000|auto_generated|result_node\(1)))) # (!\inst6|inst7|$00000|auto_generated|result_node\(1) & (!\inst6|inst9|$00000|auto_generated|result_node\(1) & (!\inst6|inst9|$00000|auto_generated|result_node\(0) & 
-- \inst6|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst9|$00000|auto_generated|result_node\(1),
	datac => \inst6|inst9|$00000|auto_generated|result_node\(0),
	datad => \inst6|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst6|inst|LessThan8~0_combout\);

-- Location: LCCOMB_X30_Y16_N6
\inst6|inst|Min_Out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[0]~2_combout\ = (\inst6|inst|Min_Out[0]~1_combout\ & ((\inst6|inst9|$00000|auto_generated|result_node\(2) $ (\inst6|inst7|$00000|auto_generated|result_node\(2))) # (!\inst6|inst|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Min_Out[0]~1_combout\,
	datab => \inst6|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst6|inst7|$00000|auto_generated|result_node\(2),
	datad => \inst6|inst|LessThan8~0_combout\,
	combout => \inst6|inst|Min_Out[0]~2_combout\);

-- Location: LCCOMB_X29_Y16_N2
\inst6|inst|Min_Out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[0]~3_combout\ = (!\inst6|inst|LessThan6~5_combout\ & (\inst6|inst|Min_Out[0]~2_combout\ & ((\inst6|inst|LessThan7~0_combout\) # (!\inst6|inst|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|LessThan7~1_combout\,
	datab => \inst6|inst|LessThan6~5_combout\,
	datac => \inst6|inst|LessThan7~0_combout\,
	datad => \inst6|inst|Min_Out[0]~2_combout\,
	combout => \inst6|inst|Min_Out[0]~3_combout\);

-- Location: LCCOMB_X31_Y16_N0
\inst6|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst6|$00000|auto_generated|result_node\(1) = (\inst10|inst2|reg_val\(1)) # (\inst6|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst2|reg_val\(1),
	datad => \inst6|inst5|estado~q\,
	combout => \inst6|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X28_Y16_N10
\inst6|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst17|$00000|auto_generated|result_node\(1) = (\inst1|inst2|reg_val\(1)) # (\inst6|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|reg_val\(1),
	datad => \inst6|inst3|estado~q\,
	combout => \inst6|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X28_Y16_N18
\inst6|inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan0~1_combout\ = (\inst6|inst6|$00000|auto_generated|result_node\(1) & (!\inst6|inst6|$00000|auto_generated|result_node\(0) & (\inst6|inst17|$00000|auto_generated|result_node\(0) & \inst6|inst17|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst6|inst6|$00000|auto_generated|result_node\(1) & ((\inst6|inst17|$00000|auto_generated|result_node\(1)) # ((!\inst6|inst6|$00000|auto_generated|result_node\(0) & \inst6|inst17|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst6|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst6|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst6|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst6|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y16_N26
\inst6|inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan0~0_combout\ = (\inst10|inst2|reg_val\(2) & (!\inst1|inst2|reg_val\(2) & (!\inst6|inst3|estado~q\))) # (!\inst10|inst2|reg_val\(2) & (\inst6|inst5|estado~q\ $ (((\inst1|inst2|reg_val\(2)) # (\inst6|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|reg_val\(2),
	datab => \inst1|inst2|reg_val\(2),
	datac => \inst6|inst3|estado~q\,
	datad => \inst6|inst5|estado~q\,
	combout => \inst6|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y16_N4
\inst6|inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan1~4_combout\ = (\inst6|inst17|$00000|auto_generated|result_node\(1) & (((\inst6|inst17|$00000|auto_generated|result_node\(0) & !\inst6|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst6|inst7|$00000|auto_generated|result_node\(1)))) # (!\inst6|inst17|$00000|auto_generated|result_node\(1) & (\inst6|inst17|$00000|auto_generated|result_node\(0) & (!\inst6|inst7|$00000|auto_generated|result_node\(0) & 
-- !\inst6|inst7|$00000|auto_generated|result_node\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst17|$00000|auto_generated|result_node\(0),
	datac => \inst6|inst7|$00000|auto_generated|result_node\(0),
	datad => \inst6|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst6|inst|LessThan1~4_combout\);

-- Location: LCCOMB_X28_Y16_N22
\inst6|inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan1~5_combout\ = (\inst6|inst|LessThan1~4_combout\ & (\inst6|inst7|$00000|auto_generated|result_node\(2) $ (((!\inst1|inst2|reg_val\(2) & !\inst6|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst1|inst2|reg_val\(2),
	datac => \inst6|inst|LessThan1~4_combout\,
	datad => \inst6|inst3|estado~q\,
	combout => \inst6|inst|LessThan1~5_combout\);

-- Location: LCCOMB_X29_Y16_N24
\inst6|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~2_combout\ = (\inst6|inst|process_0~1_combout\ & (!\inst6|inst|LessThan1~5_combout\ & ((\inst6|inst|LessThan0~0_combout\) # (!\inst6|inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|process_0~1_combout\,
	datab => \inst6|inst|LessThan0~1_combout\,
	datac => \inst6|inst|LessThan0~0_combout\,
	datad => \inst6|inst|LessThan1~5_combout\,
	combout => \inst6|inst|process_0~2_combout\);

-- Location: LCCOMB_X28_Y16_N28
\inst6|inst17|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst17|$00000|auto_generated|result_node\(2) = (\inst6|inst3|estado~q\) # (\inst1|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst3|estado~q\,
	datad => \inst1|inst2|reg_val\(2),
	combout => \inst6|inst17|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X30_Y16_N14
\inst6|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~7_combout\ = (\inst6|inst6|$00000|auto_generated|result_node\(2) & (((!\inst6|inst9|$00000|auto_generated|result_node\(2)) # (!\inst6|inst7|$00000|auto_generated|result_node\(2))) # 
-- (!\inst6|inst17|$00000|auto_generated|result_node\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst6|inst17|$00000|auto_generated|result_node\(2),
	datac => \inst6|inst7|$00000|auto_generated|result_node\(2),
	datad => \inst6|inst9|$00000|auto_generated|result_node\(2),
	combout => \inst6|inst|process_0~7_combout\);

-- Location: LCCOMB_X30_Y16_N2
\inst6|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~3_combout\ = (!\inst6|inst17|$00000|auto_generated|result_node\(0) & (!\inst6|inst|LessThan0~0_combout\ & (\inst6|inst6|$00000|auto_generated|result_node\(1) $ (!\inst6|inst17|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst6|inst6|$00000|auto_generated|result_node\(1),
	datac => \inst6|inst|LessThan0~0_combout\,
	datad => \inst6|inst17|$00000|auto_generated|result_node\(1),
	combout => \inst6|inst|process_0~3_combout\);

-- Location: LCCOMB_X30_Y16_N8
\inst6|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~4_combout\ = (!\inst6|inst7|$00000|auto_generated|result_node\(0) & (!\inst6|inst|LessThan7~0_combout\ & (\inst6|inst6|$00000|auto_generated|result_node\(1) $ (!\inst6|inst7|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst6|inst|LessThan7~0_combout\,
	datad => \inst6|inst7|$00000|auto_generated|result_node\(1),
	combout => \inst6|inst|process_0~4_combout\);

-- Location: LCCOMB_X31_Y16_N28
\inst6|inst|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|LessThan5~0_combout\ = (\inst6|inst11|estado~q\ & (!\inst10|inst2|reg_val\(2) & ((!\inst6|inst5|estado~q\)))) # (!\inst6|inst11|estado~q\ & (\inst5|inst2|reg_val\(2) $ (((\inst10|inst2|reg_val\(2)) # (\inst6|inst5|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst11|estado~q\,
	datab => \inst10|inst2|reg_val\(2),
	datac => \inst5|inst2|reg_val\(2),
	datad => \inst6|inst5|estado~q\,
	combout => \inst6|inst|LessThan5~0_combout\);

-- Location: LCCOMB_X30_Y16_N18
\inst6|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~5_combout\ = (!\inst6|inst|LessThan5~0_combout\ & (!\inst6|inst9|$00000|auto_generated|result_node\(0) & (\inst6|inst9|$00000|auto_generated|result_node\(1) $ (!\inst6|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst9|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst|LessThan5~0_combout\,
	datac => \inst6|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst6|inst9|$00000|auto_generated|result_node\(0),
	combout => \inst6|inst|process_0~5_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst6|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|process_0~6_combout\ = (\inst6|inst6|$00000|auto_generated|result_node\(0) & ((\inst6|inst|process_0~3_combout\) # ((\inst6|inst|process_0~4_combout\) # (\inst6|inst|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst6|inst|process_0~3_combout\,
	datac => \inst6|inst|process_0~4_combout\,
	datad => \inst6|inst|process_0~5_combout\,
	combout => \inst6|inst|process_0~6_combout\);

-- Location: LCCOMB_X30_Y16_N20
\inst6|inst|Min_Out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[0]~0_combout\ = (!\inst6|inst|process_0~2_combout\ & ((\inst6|inst|process_0~9_combout\) # ((\inst6|inst|process_0~7_combout\) # (\inst6|inst|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|process_0~9_combout\,
	datab => \inst6|inst|process_0~2_combout\,
	datac => \inst6|inst|process_0~7_combout\,
	datad => \inst6|inst|process_0~6_combout\,
	combout => \inst6|inst|Min_Out[0]~0_combout\);

-- Location: LCCOMB_X29_Y16_N4
\inst6|inst|Min_Out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[0]~4_combout\ = (\inst6|inst|process_0~2_combout\) # ((\inst6|inst|Min_Out[0]~3_combout\ & \inst6|inst|Min_Out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|Min_Out[0]~3_combout\,
	datac => \inst6|inst|Min_Out[0]~0_combout\,
	datad => \inst6|inst|process_0~2_combout\,
	combout => \inst6|inst|Min_Out[0]~4_combout\);

-- Location: LCCOMB_X30_Y16_N4
\inst6|inst|Min_Out[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[1]~9_combout\ = (\inst6|inst|Min_Out[0]~4_combout\ & (((\inst6|inst17|$00000|auto_generated|result_node\(1)) # (\inst6|inst|Min_Out[0]~0_combout\)))) # (!\inst6|inst|Min_Out[0]~4_combout\ & 
-- (\inst6|inst6|$00000|auto_generated|result_node\(1) & ((!\inst6|inst|Min_Out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst|Min_Out[0]~4_combout\,
	datac => \inst6|inst17|$00000|auto_generated|result_node\(1),
	datad => \inst6|inst|Min_Out[0]~0_combout\,
	combout => \inst6|inst|Min_Out[1]~9_combout\);

-- Location: LCCOMB_X30_Y16_N26
\inst6|inst|Min_Out[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[1]~10_combout\ = (\inst6|inst|Min_Out[1]~9_combout\ & ((\inst6|inst7|$00000|auto_generated|result_node\(1)) # ((!\inst6|inst|Min_Out[0]~0_combout\)))) # (!\inst6|inst|Min_Out[1]~9_combout\ & 
-- (((\inst6|inst9|$00000|auto_generated|result_node\(1) & \inst6|inst|Min_Out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst6|inst|Min_Out[1]~9_combout\,
	datac => \inst6|inst9|$00000|auto_generated|result_node\(1),
	datad => \inst6|inst|Min_Out[0]~0_combout\,
	combout => \inst6|inst|Min_Out[1]~10_combout\);

-- Location: LCCOMB_X29_Y19_N30
\inst6|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst16|Add0~0_combout\ = \inst6|inst|Min_Out[2]~6_combout\ $ (((\inst6|inst|Min_Out[1]~10_combout\ & !\inst6|inst|Min_Out[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Min_Out[2]~6_combout\,
	datab => \inst6|inst|Min_Out[1]~10_combout\,
	datac => \inst6|inst|Min_Out[0]~8_combout\,
	combout => \inst6|inst16|Add0~0_combout\);

-- Location: FF_X29_Y19_N31
\inst6|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|reg_val\(2));

-- Location: LCCOMB_X30_Y17_N0
\inst5|inst9|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst9|$00000|auto_generated|result_node\(0) = (\inst6|inst2|reg_val\(0)) # (\inst5|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst2|reg_val\(0),
	datad => \inst5|inst11|estado~q\,
	combout => \inst5|inst9|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X30_Y17_N26
\inst5|inst|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan8~2_combout\ = (\inst5|inst9|$00000|auto_generated|result_node\(1) & (!\inst5|inst9|$00000|auto_generated|result_node\(0) & ((\inst5|inst8|estado~q\)))) # (!\inst5|inst9|$00000|auto_generated|result_node\(1) & ((\inst5|inst8|estado~q\) 
-- # ((!\inst5|inst9|$00000|auto_generated|result_node\(0) & \inst4|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst9|$00000|auto_generated|result_node\(1),
	datab => \inst5|inst9|$00000|auto_generated|result_node\(0),
	datac => \inst4|inst2|reg_val\(0),
	datad => \inst5|inst8|estado~q\,
	combout => \inst5|inst|LessThan8~2_combout\);

-- Location: LCCOMB_X30_Y17_N8
\inst5|inst|Min_Out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[0]~14_combout\ = (\inst5|inst8|estado~q\ & (!\inst5|inst|LessThan8~2_combout\ & ((\inst6|inst2|reg_val\(2)) # (\inst5|inst11|estado~q\)))) # (!\inst5|inst8|estado~q\ & (!\inst6|inst2|reg_val\(2) & (\inst5|inst|LessThan8~2_combout\ & 
-- !\inst5|inst11|estado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|estado~q\,
	datab => \inst6|inst2|reg_val\(2),
	datac => \inst5|inst|LessThan8~2_combout\,
	datad => \inst5|inst11|estado~q\,
	combout => \inst5|inst|Min_Out[0]~14_combout\);

-- Location: LCCOMB_X31_Y18_N30
\inst5|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst5|estado~0_combout\ = (\inst5|inst5|estado~q\) # ((\inst35|inst3|Mux0~12_combout\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst30|fstate.se_choca~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~12_combout\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst5|inst5|estado~q\,
	datad => \inst30|fstate.se_choca~q\,
	combout => \inst5|inst5|estado~0_combout\);

-- Location: FF_X31_Y18_N31
\inst5|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst5|estado~q\);

-- Location: LCCOMB_X28_Y17_N6
\inst5|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|$00000|auto_generated|result_node\(1) = (\inst9|inst2|reg_val\(1)) # (\inst5|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|reg_val\(1),
	datac => \inst5|inst5|estado~q\,
	combout => \inst5|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X28_Y20_N6
\inst5|inst|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan7~2_combout\ = (\inst5|inst6|$00000|auto_generated|result_node\(0) & (((\inst5|inst8|estado~q\ & !\inst5|inst6|$00000|auto_generated|result_node\(1))))) # (!\inst5|inst6|$00000|auto_generated|result_node\(0) & ((\inst5|inst8|estado~q\) 
-- # ((\inst4|inst2|reg_val\(0) & !\inst5|inst6|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst4|inst2|reg_val\(0),
	datac => \inst5|inst8|estado~q\,
	datad => \inst5|inst6|$00000|auto_generated|result_node\(1),
	combout => \inst5|inst|LessThan7~2_combout\);

-- Location: LCCOMB_X28_Y20_N8
\inst5|inst|Min_Out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[0]~5_combout\ = (\inst5|inst|Min_Out[0]~14_combout\ & (((\inst5|inst|LessThan7~2_combout\) # (!\inst5|inst8|estado~q\)) # (!\inst5|inst6|$00000|auto_generated|result_node\(2)))) # (!\inst5|inst|Min_Out[0]~14_combout\ & 
-- ((\inst5|inst8|estado~q\) # ((!\inst5|inst6|$00000|auto_generated|result_node\(2) & \inst5|inst|LessThan7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst5|inst|Min_Out[0]~14_combout\,
	datac => \inst5|inst8|estado~q\,
	datad => \inst5|inst|LessThan7~2_combout\,
	combout => \inst5|inst|Min_Out[0]~5_combout\);

-- Location: LCCOMB_X28_Y17_N24
\inst5|inst6|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|$00000|auto_generated|result_node\(0) = (\inst5|inst5|estado~q\) # (\inst9|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst5|estado~q\,
	datad => \inst9|inst2|reg_val\(0),
	combout => \inst5|inst6|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X31_Y18_N10
\inst5|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst3|estado~0_combout\ = (\inst5|inst3|estado~q\) # ((\inst35|inst3|Mux0~12_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~12_combout\,
	datac => \inst5|inst3|estado~q\,
	datad => \inst35|inst|Mux0~0_combout\,
	combout => \inst5|inst3|estado~0_combout\);

-- Location: FF_X31_Y18_N11
\inst5|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst3|estado~q\);

-- Location: LCCOMB_X29_Y18_N20
\inst5|inst17|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst17|$00000|auto_generated|result_node\(0) = (\inst|inst2|reg_val\(0)) # (\inst5|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg_val\(0),
	datad => \inst5|inst3|estado~q\,
	combout => \inst5|inst17|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X29_Y18_N16
\inst5|inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan0~1_combout\ = (\inst5|inst17|$00000|auto_generated|result_node\(1) & (((!\inst5|inst6|$00000|auto_generated|result_node\(0) & \inst5|inst17|$00000|auto_generated|result_node\(0))) # 
-- (!\inst5|inst6|$00000|auto_generated|result_node\(1)))) # (!\inst5|inst17|$00000|auto_generated|result_node\(1) & (!\inst5|inst6|$00000|auto_generated|result_node\(0) & (!\inst5|inst6|$00000|auto_generated|result_node\(1) & 
-- \inst5|inst17|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst17|$00000|auto_generated|result_node\(1),
	datab => \inst5|inst6|$00000|auto_generated|result_node\(0),
	datac => \inst5|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst5|inst17|$00000|auto_generated|result_node\(0),
	combout => \inst5|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y18_N10
\inst5|inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan0~0_combout\ = (\inst|inst2|reg_val\(2) & (((!\inst9|inst2|reg_val\(2) & !\inst5|inst5|estado~q\)))) # (!\inst|inst2|reg_val\(2) & (\inst5|inst3|estado~q\ $ (((\inst9|inst2|reg_val\(2)) # (\inst5|inst5|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg_val\(2),
	datab => \inst5|inst3|estado~q\,
	datac => \inst9|inst2|reg_val\(2),
	datad => \inst5|inst5|estado~q\,
	combout => \inst5|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y18_N24
\inst5|inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan2~0_combout\ = (\inst|inst2|reg_val\(2) & (!\inst5|inst11|estado~q\ & (!\inst6|inst2|reg_val\(2)))) # (!\inst|inst2|reg_val\(2) & (\inst5|inst3|estado~q\ $ (((\inst5|inst11|estado~q\) # (\inst6|inst2|reg_val\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg_val\(2),
	datab => \inst5|inst11|estado~q\,
	datac => \inst6|inst2|reg_val\(2),
	datad => \inst5|inst3|estado~q\,
	combout => \inst5|inst|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y18_N18
\inst5|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~2_combout\ = (\inst5|inst|LessThan2~1_combout\ & (\inst5|inst|LessThan2~0_combout\ & ((\inst5|inst|LessThan0~0_combout\) # (!\inst5|inst|LessThan0~1_combout\)))) # (!\inst5|inst|LessThan2~1_combout\ & 
-- (((\inst5|inst|LessThan0~0_combout\)) # (!\inst5|inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|LessThan2~1_combout\,
	datab => \inst5|inst|LessThan0~1_combout\,
	datac => \inst5|inst|LessThan0~0_combout\,
	datad => \inst5|inst|LessThan2~0_combout\,
	combout => \inst5|inst|process_0~2_combout\);

-- Location: LCCOMB_X29_Y18_N22
\inst5|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~4_combout\ = (\inst5|inst|process_0~3_combout\ & (\inst5|inst|process_0~2_combout\ & ((\inst5|inst8|estado~q\) # (\inst5|inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|process_0~3_combout\,
	datab => \inst5|inst8|estado~q\,
	datac => \inst5|inst|LessThan1~0_combout\,
	datad => \inst5|inst|process_0~2_combout\,
	combout => \inst5|inst|process_0~4_combout\);

-- Location: LCCOMB_X28_Y20_N14
\inst5|inst|Min_Out[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[0]~6_combout\ = (\inst5|inst|process_0~4_combout\) # ((!\inst5|inst|Min_Out[0]~13_combout\ & (!\inst5|inst|Min_Out[0]~5_combout\ & \inst5|inst|Min_Out[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|Min_Out[0]~13_combout\,
	datab => \inst5|inst|Min_Out[0]~5_combout\,
	datac => \inst5|inst|process_0~4_combout\,
	datad => \inst5|inst|Min_Out[0]~4_combout\,
	combout => \inst5|inst|Min_Out[0]~6_combout\);

-- Location: LCCOMB_X28_Y20_N10
\inst5|inst|Min_Out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[0]~9_combout\ = (\inst5|inst|Min_Out[0]~6_combout\ & (((\inst5|inst|Min_Out[0]~4_combout\)))) # (!\inst5|inst|Min_Out[0]~6_combout\ & ((\inst5|inst|Min_Out[0]~4_combout\ & ((\inst5|inst9|$00000|auto_generated|result_node\(0)))) # 
-- (!\inst5|inst|Min_Out[0]~4_combout\ & (\inst5|inst6|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst5|inst|Min_Out[0]~6_combout\,
	datac => \inst5|inst9|$00000|auto_generated|result_node\(0),
	datad => \inst5|inst|Min_Out[0]~4_combout\,
	combout => \inst5|inst|Min_Out[0]~9_combout\);

-- Location: LCCOMB_X30_Y20_N12
\inst5|inst|Min_Out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[0]~10_combout\ = (\inst5|inst|Min_Out[0]~6_combout\ & ((\inst5|inst|Min_Out[0]~9_combout\ & (!\inst5|inst7|$00000|auto_generated|result_node\(0))) # (!\inst5|inst|Min_Out[0]~9_combout\ & 
-- ((!\inst5|inst17|$00000|auto_generated|result_node\(0)))))) # (!\inst5|inst|Min_Out[0]~6_combout\ & (((!\inst5|inst|Min_Out[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst7|$00000|auto_generated|result_node\(0),
	datab => \inst5|inst|Min_Out[0]~6_combout\,
	datac => \inst5|inst17|$00000|auto_generated|result_node\(0),
	datad => \inst5|inst|Min_Out[0]~9_combout\,
	combout => \inst5|inst|Min_Out[0]~10_combout\);

-- Location: LCCOMB_X30_Y22_N28
\inst5|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst16|Add0~1_combout\ = \inst5|inst|Min_Out[1]~12_combout\ $ (!\inst5|inst|Min_Out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst|Min_Out[1]~12_combout\,
	datad => \inst5|inst|Min_Out[0]~10_combout\,
	combout => \inst5|inst16|Add0~1_combout\);

-- Location: FF_X30_Y22_N29
\inst5|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|reg_val\(1));

-- Location: LCCOMB_X31_Y20_N12
\inst|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst11|estado~0_combout\ = (\inst|inst11|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~1_combout\ & (\inst35|inst3|Mux0~11_combout\ & \inst30|fstate.se_choca~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	datab => \inst35|inst3|Mux0~11_combout\,
	datac => \inst|inst11|estado~q\,
	datad => \inst30|fstate.se_choca~q\,
	combout => \inst|inst11|estado~0_combout\);

-- Location: FF_X31_Y20_N13
\inst|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11|estado~q\);

-- Location: LCCOMB_X29_Y17_N4
\inst|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|result_node\(2) = (\inst|inst5|estado~q\) # (\inst5|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst5|estado~q\,
	datad => \inst5|inst2|reg_val\(2),
	combout => \inst|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X29_Y17_N30
\inst|inst|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~2_combout\ = (!\inst|inst11|estado~q\ & (((\inst1|inst2|reg_val\(1)) # (\inst1|inst2|reg_val\(0))) # (!\inst|inst7|$00000|auto_generated|result_node[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|$00000|auto_generated|result_node[2]~0_combout\,
	datab => \inst1|inst2|reg_val\(1),
	datac => \inst|inst11|estado~q\,
	datad => \inst1|inst2|reg_val\(0),
	combout => \inst|inst|process_0~2_combout\);

-- Location: LCCOMB_X31_Y20_N16
\inst|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst8|estado~0_combout\ = (\inst|inst8|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & \inst35|inst3|Mux0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datac => \inst|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~11_combout\,
	combout => \inst|inst8|estado~0_combout\);

-- Location: FF_X31_Y20_N17
\inst|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8|estado~q\);

-- Location: LCCOMB_X29_Y17_N0
\inst|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~3_combout\ = (!\inst|inst5|estado~q\ & (!\inst5|inst2|reg_val\(0) & ((\inst1|inst2|reg_val\(0)) # (\inst|inst8|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|estado~q\,
	datab => \inst1|inst2|reg_val\(0),
	datac => \inst|inst8|estado~q\,
	datad => \inst5|inst2|reg_val\(0),
	combout => \inst|inst|process_0~3_combout\);

-- Location: LCCOMB_X29_Y17_N14
\inst|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6|$00000|auto_generated|result_node\(1) = (\inst|inst5|estado~q\) # (\inst5|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst5|estado~q\,
	datad => \inst5|inst2|reg_val\(1),
	combout => \inst|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X29_Y17_N16
\inst|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~4_combout\ = (\inst|inst|process_0~3_combout\ & ((\inst|inst8|estado~q\) # ((\inst1|inst2|reg_val\(1)) # (!\inst|inst6|$00000|auto_generated|result_node\(1))))) # (!\inst|inst|process_0~3_combout\ & 
-- (!\inst|inst6|$00000|auto_generated|result_node\(1) & ((\inst|inst8|estado~q\) # (\inst1|inst2|reg_val\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|estado~q\,
	datab => \inst|inst|process_0~3_combout\,
	datac => \inst1|inst2|reg_val\(1),
	datad => \inst|inst6|$00000|auto_generated|result_node\(1),
	combout => \inst|inst|process_0~4_combout\);

-- Location: LCCOMB_X29_Y17_N6
\inst|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~5_combout\ = (\inst|inst|process_0~2_combout\) # ((\inst|inst7|$00000|auto_generated|result_node[2]~0_combout\ & (!\inst|inst6|$00000|auto_generated|result_node\(2) & \inst|inst|process_0~4_combout\)) # 
-- (!\inst|inst7|$00000|auto_generated|result_node[2]~0_combout\ & ((\inst|inst|process_0~4_combout\) # (!\inst|inst6|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|$00000|auto_generated|result_node[2]~0_combout\,
	datab => \inst|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst|inst|process_0~2_combout\,
	datad => \inst|inst|process_0~4_combout\,
	combout => \inst|inst|process_0~5_combout\);

-- Location: LCCOMB_X29_Y17_N8
\inst|inst|Min_Out[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Min_Out[1]~4_combout\ = (\inst|inst|process_0~5_combout\ & (((\inst|inst11|estado~q\)))) # (!\inst|inst|process_0~5_combout\ & ((\inst|inst8|estado~q\) # ((\inst1|inst2|reg_val\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|estado~q\,
	datab => \inst|inst11|estado~q\,
	datac => \inst1|inst2|reg_val\(1),
	datad => \inst|inst|process_0~5_combout\,
	combout => \inst|inst|Min_Out[1]~4_combout\);

-- Location: LCCOMB_X29_Y17_N24
\inst|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~7_combout\ = (\inst|inst5|estado~q\ & (((\inst1|inst2|reg_val\(1))))) # (!\inst|inst5|estado~q\ & ((\inst5|inst2|reg_val\(1) & (\inst1|inst2|reg_val\(1))) # (!\inst5|inst2|reg_val\(1) & ((\inst5|inst2|reg_val\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|estado~q\,
	datab => \inst5|inst2|reg_val\(1),
	datac => \inst1|inst2|reg_val\(1),
	datad => \inst5|inst2|reg_val\(0),
	combout => \inst|inst|process_0~7_combout\);

-- Location: LCCOMB_X29_Y17_N18
\inst|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~8_combout\ = (\inst|inst11|estado~q\ & ((\inst|inst8|estado~q\) # ((\inst1|inst2|reg_val\(0) & \inst|inst|process_0~7_combout\)))) # (!\inst|inst11|estado~q\ & (((\inst|inst|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|estado~q\,
	datab => \inst1|inst2|reg_val\(0),
	datac => \inst|inst11|estado~q\,
	datad => \inst|inst|process_0~7_combout\,
	combout => \inst|inst|process_0~8_combout\);

-- Location: LCCOMB_X29_Y17_N28
\inst|inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~9_combout\ = (\inst|inst|process_0~8_combout\ & (((!\inst|inst11|estado~q\)))) # (!\inst|inst|process_0~8_combout\ & ((\inst|inst|process_0~6_combout\) # ((\inst5|inst2|reg_val\(2) & !\inst|inst11|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|process_0~6_combout\,
	datab => \inst5|inst2|reg_val\(2),
	datac => \inst|inst11|estado~q\,
	datad => \inst|inst|process_0~8_combout\,
	combout => \inst|inst|process_0~9_combout\);

-- Location: LCCOMB_X29_Y17_N2
\inst|inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~10_combout\ = (\inst|inst7|$00000|auto_generated|result_node[2]~0_combout\ & (((\inst|inst6|$00000|auto_generated|result_node\(2)) # (\inst|inst|process_0~9_combout\)))) # (!\inst|inst7|$00000|auto_generated|result_node[2]~0_combout\ 
-- & (\inst|inst|process_0~9_combout\ & ((\inst|inst6|$00000|auto_generated|result_node\(2)) # (!\inst|inst11|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7|$00000|auto_generated|result_node[2]~0_combout\,
	datab => \inst|inst11|estado~q\,
	datac => \inst|inst6|$00000|auto_generated|result_node\(2),
	datad => \inst|inst|process_0~9_combout\,
	combout => \inst|inst|process_0~10_combout\);

-- Location: LCCOMB_X29_Y17_N20
\inst|inst|Min_Out[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Min_Out[1]~5_combout\ = (\inst|inst|process_0~10_combout\ & (((\inst|inst|Min_Out[1]~4_combout\)))) # (!\inst|inst|process_0~10_combout\ & ((\inst|inst5|estado~q\) # ((\inst5|inst2|reg_val\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|estado~q\,
	datab => \inst5|inst2|reg_val\(1),
	datac => \inst|inst|Min_Out[1]~4_combout\,
	datad => \inst|inst|process_0~10_combout\,
	combout => \inst|inst|Min_Out[1]~5_combout\);

-- Location: LCCOMB_X32_Y17_N24
\inst|inst7|$00000|auto_generated|result_node[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst7|$00000|auto_generated|result_node[2]~0_combout\ = (!\inst1|inst2|reg_val\(2) & !\inst|inst8|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|reg_val\(2),
	datac => \inst|inst8|estado~q\,
	combout => \inst|inst7|$00000|auto_generated|result_node[2]~0_combout\);

-- Location: LCCOMB_X29_Y17_N22
\inst|inst|Min_Out[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Min_Out[2]~9_combout\ = (!\inst|inst7|$00000|auto_generated|result_node[2]~0_combout\ & (\inst|inst11|estado~q\ & ((\inst|inst5|estado~q\) # (\inst5|inst2|reg_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|estado~q\,
	datab => \inst|inst7|$00000|auto_generated|result_node[2]~0_combout\,
	datac => \inst|inst11|estado~q\,
	datad => \inst5|inst2|reg_val\(2),
	combout => \inst|inst|Min_Out[2]~9_combout\);

-- Location: LCCOMB_X29_Y18_N4
\inst|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst16|Add0~0_combout\ = \inst|inst|Min_Out[2]~9_combout\ $ (((\inst|inst|process_0~1_combout\) # ((\inst|inst|Min_Out[0]~7_combout\ & \inst|inst|Min_Out[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Min_Out[0]~7_combout\,
	datab => \inst|inst|Min_Out[1]~5_combout\,
	datac => \inst|inst|Min_Out[2]~9_combout\,
	datad => \inst|inst|process_0~1_combout\,
	combout => \inst|inst16|Add0~0_combout\);

-- Location: FF_X29_Y21_N5
\inst|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|reg_val\(2));

-- Location: LCCOMB_X29_Y18_N14
\inst5|inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|LessThan1~0_combout\ = (!\inst5|inst3|estado~q\ & !\inst|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst3|estado~q\,
	datad => \inst|inst2|reg_val\(2),
	combout => \inst5|inst|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y20_N20
\inst5|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~8_combout\ = (\inst5|inst6|$00000|auto_generated|result_node\(2) & (((\inst5|inst|LessThan1~0_combout\) # (!\inst5|inst8|estado~q\)) # (!\inst5|inst9|$00000|auto_generated|result_node\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|$00000|auto_generated|result_node\(2),
	datab => \inst5|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst5|inst8|estado~q\,
	datad => \inst5|inst|LessThan1~0_combout\,
	combout => \inst5|inst|process_0~8_combout\);

-- Location: LCCOMB_X28_Y20_N12
\inst5|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst9|$00000|auto_generated|result_node\(1) = (\inst6|inst2|reg_val\(1)) # (\inst5|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|reg_val\(1),
	datad => \inst5|inst11|estado~q\,
	combout => \inst5|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X30_Y17_N28
\inst5|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~6_combout\ = (!\inst5|inst|LessThan5~0_combout\ & (!\inst5|inst9|$00000|auto_generated|result_node\(0) & (\inst5|inst6|$00000|auto_generated|result_node\(1) $ (!\inst5|inst9|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|LessThan5~0_combout\,
	datab => \inst5|inst9|$00000|auto_generated|result_node\(0),
	datac => \inst5|inst6|$00000|auto_generated|result_node\(1),
	datad => \inst5|inst9|$00000|auto_generated|result_node\(1),
	combout => \inst5|inst|process_0~6_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst5|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|$00000|auto_generated|result_node\(2) = (\inst9|inst2|reg_val\(2)) # (\inst5|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|inst2|reg_val\(2),
	datad => \inst5|inst5|estado~q\,
	combout => \inst5|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X30_Y17_N16
\inst5|inst|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~11_combout\ = (!\inst4|inst2|reg_val\(0) & (!\inst5|inst6|$00000|auto_generated|result_node\(1) & (!\inst5|inst6|$00000|auto_generated|result_node\(2) & !\inst5|inst8|estado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|reg_val\(0),
	datab => \inst5|inst6|$00000|auto_generated|result_node\(1),
	datac => \inst5|inst6|$00000|auto_generated|result_node\(2),
	datad => \inst5|inst8|estado~q\,
	combout => \inst5|inst|process_0~11_combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst5|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|process_0~7_combout\ = (\inst5|inst6|$00000|auto_generated|result_node\(0) & ((\inst5|inst|process_0~5_combout\) # ((\inst5|inst|process_0~6_combout\) # (\inst5|inst|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|process_0~5_combout\,
	datab => \inst5|inst|process_0~6_combout\,
	datac => \inst5|inst6|$00000|auto_generated|result_node\(0),
	datad => \inst5|inst|process_0~11_combout\,
	combout => \inst5|inst|process_0~7_combout\);

-- Location: LCCOMB_X28_Y20_N18
\inst5|inst|Min_Out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[0]~4_combout\ = (!\inst5|inst|process_0~4_combout\ & ((\inst5|inst|process_0~10_combout\) # ((\inst5|inst|process_0~8_combout\) # (\inst5|inst|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|process_0~10_combout\,
	datab => \inst5|inst|process_0~8_combout\,
	datac => \inst5|inst|process_0~4_combout\,
	datad => \inst5|inst|process_0~7_combout\,
	combout => \inst5|inst|Min_Out[0]~4_combout\);

-- Location: LCCOMB_X29_Y17_N26
\inst|inst|Min_Out[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Min_Out[0]~6_combout\ = (\inst|inst|process_0~5_combout\ & (((\inst|inst11|estado~q\)))) # (!\inst|inst|process_0~5_combout\ & ((\inst|inst8|estado~q\) # ((\inst1|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|estado~q\,
	datab => \inst1|inst2|reg_val\(0),
	datac => \inst|inst11|estado~q\,
	datad => \inst|inst|process_0~5_combout\,
	combout => \inst|inst|Min_Out[0]~6_combout\);

-- Location: LCCOMB_X29_Y17_N12
\inst|inst|Min_Out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Min_Out[0]~7_combout\ = (\inst|inst|process_0~10_combout\ & (((\inst|inst|Min_Out[0]~6_combout\)))) # (!\inst|inst|process_0~10_combout\ & ((\inst|inst5|estado~q\) # ((\inst5|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|estado~q\,
	datab => \inst|inst|process_0~10_combout\,
	datac => \inst|inst|Min_Out[0]~6_combout\,
	datad => \inst5|inst2|reg_val\(0),
	combout => \inst|inst|Min_Out[0]~7_combout\);

-- Location: LCCOMB_X30_Y22_N26
\inst|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst16|Add0~1_combout\ = (!\inst|inst|process_0~1_combout\ & (\inst|inst|Min_Out[0]~7_combout\ $ (\inst|inst|Min_Out[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Min_Out[0]~7_combout\,
	datac => \inst|inst|Min_Out[1]~5_combout\,
	datad => \inst|inst|process_0~1_combout\,
	combout => \inst|inst16|Add0~1_combout\);

-- Location: FF_X30_Y22_N27
\inst|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|reg_val\(1));

-- Location: LCCOMB_X29_Y18_N26
\inst5|inst17|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst17|$00000|auto_generated|result_node\(1) = (\inst|inst2|reg_val\(1)) # (\inst5|inst3|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|reg_val\(1),
	datad => \inst5|inst3|estado~q\,
	combout => \inst5|inst17|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X28_Y20_N24
\inst5|inst|Min_Out[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[1]~11_combout\ = (\inst5|inst|Min_Out[0]~6_combout\ & (((\inst5|inst17|$00000|auto_generated|result_node\(1)) # (\inst5|inst|Min_Out[0]~4_combout\)))) # (!\inst5|inst|Min_Out[0]~6_combout\ & 
-- (\inst5|inst6|$00000|auto_generated|result_node\(1) & ((!\inst5|inst|Min_Out[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|$00000|auto_generated|result_node\(1),
	datab => \inst5|inst17|$00000|auto_generated|result_node\(1),
	datac => \inst5|inst|Min_Out[0]~6_combout\,
	datad => \inst5|inst|Min_Out[0]~4_combout\,
	combout => \inst5|inst|Min_Out[1]~11_combout\);

-- Location: LCCOMB_X28_Y20_N22
\inst5|inst|Min_Out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|Min_Out[1]~12_combout\ = (\inst5|inst|Min_Out[0]~4_combout\ & ((\inst5|inst|Min_Out[1]~11_combout\ & ((\inst5|inst8|estado~q\))) # (!\inst5|inst|Min_Out[1]~11_combout\ & (\inst5|inst9|$00000|auto_generated|result_node\(1))))) # 
-- (!\inst5|inst|Min_Out[0]~4_combout\ & (((\inst5|inst|Min_Out[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst9|$00000|auto_generated|result_node\(1),
	datab => \inst5|inst|Min_Out[0]~4_combout\,
	datac => \inst5|inst8|estado~q\,
	datad => \inst5|inst|Min_Out[1]~11_combout\,
	combout => \inst5|inst|Min_Out[1]~12_combout\);

-- Location: LCCOMB_X30_Y22_N6
\inst5|inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst16|Add0~0_combout\ = \inst5|inst|Min_Out[2]~8_combout\ $ (((\inst5|inst|Min_Out[1]~12_combout\ & !\inst5|inst|Min_Out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|Min_Out[2]~8_combout\,
	datab => \inst5|inst|Min_Out[1]~12_combout\,
	datad => \inst5|inst|Min_Out[0]~10_combout\,
	combout => \inst5|inst16|Add0~0_combout\);

-- Location: FF_X30_Y21_N9
\inst5|inst2|reg_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst16|Add0~0_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst2|reg_val\(2));

-- Location: LCCOMB_X31_Y16_N8
\inst|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~0_combout\ = (\inst|inst5|estado~q\) # ((\inst5|inst2|reg_val\(1) & (\inst5|inst2|reg_val\(2) & \inst5|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|reg_val\(1),
	datab => \inst|inst5|estado~q\,
	datac => \inst5|inst2|reg_val\(2),
	datad => \inst5|inst2|reg_val\(0),
	combout => \inst|inst|process_0~0_combout\);

-- Location: LCCOMB_X30_Y18_N16
\inst|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|process_0~1_combout\ = (\inst|inst|process_0~0_combout\ & (\inst|inst11|estado~q\ & ((\inst|inst8|estado~q\) # (!\inst2|inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8|estado~q\,
	datab => \inst|inst|process_0~0_combout\,
	datac => \inst|inst11|estado~q\,
	datad => \inst2|inst|process_0~1_combout\,
	combout => \inst|inst|process_0~1_combout\);

-- Location: LCCOMB_X29_Y18_N2
\inst|inst|Min_Out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Min_Out[0]~8_combout\ = (!\inst|inst|Min_Out[0]~7_combout\ & !\inst|inst|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Min_Out[0]~7_combout\,
	datad => \inst|inst|process_0~1_combout\,
	combout => \inst|inst|Min_Out[0]~8_combout\);

-- Location: FF_X30_Y20_N19
\inst|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|inst|Min_Out[0]~8_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|reg_val\(0));

-- Location: LCCOMB_X29_Y18_N10
\inst1|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~0_combout\ = (\inst1|inst11|estado~q\) # ((\inst|inst2|reg_val\(1) & (\inst|inst2|reg_val\(0) & \inst|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg_val\(1),
	datab => \inst1|inst11|estado~q\,
	datac => \inst|inst2|reg_val\(0),
	datad => \inst|inst2|reg_val\(2),
	combout => \inst1|inst|process_0~0_combout\);

-- Location: LCCOMB_X27_Y19_N12
\inst1|inst|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~1_combout\ = (\inst1|inst8|estado~q\) # ((\inst2|inst2|reg_val\(1) & (\inst2|inst2|reg_val\(2) & \inst2|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|reg_val\(1),
	datab => \inst2|inst2|reg_val\(2),
	datac => \inst2|inst2|reg_val\(0),
	datad => \inst1|inst8|estado~q\,
	combout => \inst1|inst|process_0~1_combout\);

-- Location: LCCOMB_X34_Y21_N28
\inst1|inst|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~3_combout\ = (\inst1|inst|process_0~2_combout\ & (\inst1|inst|process_0~0_combout\ & \inst1|inst|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|process_0~2_combout\,
	datab => \inst1|inst|process_0~0_combout\,
	datac => \inst1|inst|process_0~1_combout\,
	combout => \inst1|inst|process_0~3_combout\);

-- Location: LCCOMB_X28_Y19_N0
\inst1|inst6|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|$00000|auto_generated|result_node\(0) = (\inst1|inst5|estado~q\) # (\inst6|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|estado~q\,
	datac => \inst6|inst2|reg_val\(0),
	combout => \inst1|inst6|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X35_Y20_N22
\inst1|inst|Min_Out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|Min_Out[0]~8_combout\ = (!\inst1|inst|Min_Out[0]~5_combout\ & (!\inst1|inst|process_0~3_combout\ & ((\inst1|inst|process_0~8_combout\) # (!\inst1|inst6|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Min_Out[0]~5_combout\,
	datab => \inst1|inst|process_0~3_combout\,
	datac => \inst1|inst6|$00000|auto_generated|result_node\(0),
	datad => \inst1|inst|process_0~8_combout\,
	combout => \inst1|inst|Min_Out[0]~8_combout\);

-- Location: FF_X30_Y20_N9
\inst1|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|inst|Min_Out[0]~8_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|reg_val\(0));

-- Location: LCCOMB_X31_Y22_N30
\inst2|inst|Min_Out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Min_Out[0]~1_combout\ = (\inst2|inst|LessThan5~2_combout\ & (((\inst1|inst2|reg_val\(0)) # (\inst2|inst11|estado~q\)))) # (!\inst2|inst|LessThan5~2_combout\ & (\inst2|inst|LessThan5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|LessThan5~3_combout\,
	datab => \inst1|inst2|reg_val\(0),
	datac => \inst2|inst11|estado~q\,
	datad => \inst2|inst|LessThan5~2_combout\,
	combout => \inst2|inst|Min_Out[0]~1_combout\);

-- Location: LCCOMB_X31_Y22_N26
\inst2|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|process_0~0_combout\ = (!\inst2|inst5|estado~q\ & (((!\inst7|inst2|reg_val\(0)) # (!\inst7|inst2|reg_val\(2))) # (!\inst7|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|estado~q\,
	datab => \inst7|inst2|reg_val\(1),
	datac => \inst7|inst2|reg_val\(2),
	datad => \inst7|inst2|reg_val\(0),
	combout => \inst2|inst|process_0~0_combout\);

-- Location: LCCOMB_X31_Y22_N4
\inst2|inst|Min_Out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|Min_Out[0]~3_combout\ = (!\inst2|inst|Min_Out[0]~1_combout\ & ((\inst2|inst|process_0~0_combout\) # ((!\inst2|inst11|estado~q\ & \inst2|inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst11|estado~q\,
	datab => \inst2|inst|Min_Out[0]~1_combout\,
	datac => \inst2|inst|process_0~0_combout\,
	datad => \inst2|inst|process_0~1_combout\,
	combout => \inst2|inst|Min_Out[0]~3_combout\);

-- Location: FF_X30_Y20_N27
\inst2|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|Min_Out[0]~3_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2|reg_val\(0));

-- Location: LCCOMB_X28_Y18_N26
\inst7|inst|Min_Out[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|Min_Out[0]~5_combout\ = (\inst7|inst|process_0~4_combout\ & (!\inst7|inst|Min_Out[0]~3_combout\)) # (!\inst7|inst|process_0~4_combout\ & (((!\inst7|inst3|estado~q\ & !\inst2|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst|Min_Out[0]~3_combout\,
	datab => \inst7|inst3|estado~q\,
	datac => \inst2|inst2|reg_val\(0),
	datad => \inst7|inst|process_0~4_combout\,
	combout => \inst7|inst|Min_Out[0]~5_combout\);

-- Location: FF_X31_Y20_N23
\inst7|inst2|reg_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst7|inst|Min_Out[0]~5_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst2|reg_val\(0));

-- Location: LCCOMB_X31_Y16_N2
\inst6|inst7|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst7|$00000|auto_generated|result_node\(0) = (\inst6|inst8|estado~q\) # (\inst7|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst8|estado~q\,
	datad => \inst7|inst2|reg_val\(0),
	combout => \inst6|inst7|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X30_Y16_N12
\inst6|inst|Min_Out[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[0]~7_combout\ = (\inst6|inst|Min_Out[0]~4_combout\ & (((\inst6|inst|Min_Out[0]~0_combout\)))) # (!\inst6|inst|Min_Out[0]~4_combout\ & ((\inst6|inst|Min_Out[0]~0_combout\ & ((\inst6|inst9|$00000|auto_generated|result_node\(0)))) # 
-- (!\inst6|inst|Min_Out[0]~0_combout\ & (\inst6|inst6|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst6|inst9|$00000|auto_generated|result_node\(0),
	datac => \inst6|inst|Min_Out[0]~4_combout\,
	datad => \inst6|inst|Min_Out[0]~0_combout\,
	combout => \inst6|inst|Min_Out[0]~7_combout\);

-- Location: LCCOMB_X30_Y16_N10
\inst6|inst|Min_Out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Min_Out[0]~8_combout\ = (\inst6|inst|Min_Out[0]~4_combout\ & ((\inst6|inst|Min_Out[0]~7_combout\ & ((!\inst6|inst7|$00000|auto_generated|result_node\(0)))) # (!\inst6|inst|Min_Out[0]~7_combout\ & 
-- (!\inst6|inst17|$00000|auto_generated|result_node\(0))))) # (!\inst6|inst|Min_Out[0]~4_combout\ & (((!\inst6|inst|Min_Out[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst17|$00000|auto_generated|result_node\(0),
	datab => \inst6|inst7|$00000|auto_generated|result_node\(0),
	datac => \inst6|inst|Min_Out[0]~4_combout\,
	datad => \inst6|inst|Min_Out[0]~7_combout\,
	combout => \inst6|inst|Min_Out[0]~8_combout\);

-- Location: LCCOMB_X29_Y20_N2
\inst6|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst16|Add0~1_combout\ = \inst6|inst|Min_Out[0]~8_combout\ $ (!\inst6|inst|Min_Out[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst|Min_Out[0]~8_combout\,
	datad => \inst6|inst|Min_Out[1]~10_combout\,
	combout => \inst6|inst16|Add0~1_combout\);

-- Location: FF_X29_Y20_N3
\inst6|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6|inst16|Add0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2|reg_val\(1));

-- Location: LCCOMB_X28_Y19_N26
\inst1|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst5|estado~0_combout\ = (\inst1|inst5|estado~q\) # ((\inst33|inst5|seleccion[1]~7_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst5|seleccion[1]~7_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst1|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~9_combout\,
	combout => \inst1|inst5|estado~0_combout\);

-- Location: FF_X28_Y19_N27
\inst1|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|estado~q\);

-- Location: LCCOMB_X34_Y20_N24
\inst1|inst6|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|$00000|auto_generated|result_node\(1) = (\inst6|inst2|reg_val\(1)) # (\inst1|inst5|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst2|reg_val\(1),
	datad => \inst1|inst5|estado~q\,
	combout => \inst1|inst6|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X34_Y20_N12
\inst1|inst7|$00000|auto_generated|result_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst7|$00000|auto_generated|result_node\(0) = (\inst1|inst8|estado~q\) # (\inst2|inst2|reg_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst8|estado~q\,
	datac => \inst2|inst2|reg_val\(0),
	combout => \inst1|inst7|$00000|auto_generated|result_node\(0));

-- Location: LCCOMB_X35_Y20_N8
\inst1|inst|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~7_combout\ = (\inst1|inst7|$00000|auto_generated|result_node\(1) & (\inst1|inst6|$00000|auto_generated|result_node\(1) & (\inst1|inst6|$00000|auto_generated|result_node\(0) & !\inst1|inst7|$00000|auto_generated|result_node\(0)))) # 
-- (!\inst1|inst7|$00000|auto_generated|result_node\(1) & ((\inst1|inst6|$00000|auto_generated|result_node\(1)) # ((\inst1|inst6|$00000|auto_generated|result_node\(0) & !\inst1|inst7|$00000|auto_generated|result_node\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst1|inst6|$00000|auto_generated|result_node\(1),
	datac => \inst1|inst6|$00000|auto_generated|result_node\(0),
	datad => \inst1|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst1|inst|process_0~7_combout\);

-- Location: LCCOMB_X27_Y19_N26
\inst1|inst6|$00000|auto_generated|result_node[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|$00000|auto_generated|result_node\(2) = (\inst1|inst5|estado~q\) # (\inst6|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|estado~q\,
	datad => \inst6|inst2|reg_val\(2),
	combout => \inst1|inst6|$00000|auto_generated|result_node\(2));

-- Location: LCCOMB_X29_Y18_N8
\inst1|inst9|$00000|auto_generated|result_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst9|$00000|auto_generated|result_node\(1) = (\inst1|inst11|estado~q\) # (\inst|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst11|estado~q\,
	datac => \inst|inst2|reg_val\(1),
	combout => \inst1|inst9|$00000|auto_generated|result_node\(1));

-- Location: LCCOMB_X35_Y20_N0
\inst1|inst|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~4_combout\ = (!\inst|inst2|reg_val\(0) & !\inst1|inst11|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg_val\(0),
	datad => \inst1|inst11|estado~q\,
	combout => \inst1|inst|process_0~4_combout\);

-- Location: LCCOMB_X35_Y20_N6
\inst1|inst|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~5_combout\ = (\inst1|inst6|$00000|auto_generated|result_node\(1) & (((\inst1|inst6|$00000|auto_generated|result_node\(0) & \inst1|inst|process_0~4_combout\)) # (!\inst1|inst9|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst1|inst6|$00000|auto_generated|result_node\(1) & (\inst1|inst6|$00000|auto_generated|result_node\(0) & (!\inst1|inst9|$00000|auto_generated|result_node\(1) & \inst1|inst|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|$00000|auto_generated|result_node\(0),
	datab => \inst1|inst6|$00000|auto_generated|result_node\(1),
	datac => \inst1|inst9|$00000|auto_generated|result_node\(1),
	datad => \inst1|inst|process_0~4_combout\,
	combout => \inst1|inst|process_0~5_combout\);

-- Location: LCCOMB_X35_Y20_N2
\inst1|inst|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~6_combout\ = (\inst1|inst9|$00000|auto_generated|result_node\(2) & (\inst1|inst6|$00000|auto_generated|result_node\(2) & ((\inst1|inst|process_0~5_combout\) # (!\inst1|inst7|$00000|auto_generated|result_node\(2))))) # 
-- (!\inst1|inst9|$00000|auto_generated|result_node\(2) & (((\inst1|inst6|$00000|auto_generated|result_node\(2)) # (\inst1|inst|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst1|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst1|inst6|$00000|auto_generated|result_node\(2),
	datad => \inst1|inst|process_0~5_combout\,
	combout => \inst1|inst|process_0~6_combout\);

-- Location: LCCOMB_X35_Y20_N18
\inst1|inst|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~8_combout\ = (\inst1|inst|process_0~6_combout\) # ((\inst1|inst|process_0~7_combout\ & (\inst1|inst7|$00000|auto_generated|result_node\(2) $ (!\inst1|inst6|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst1|inst|process_0~7_combout\,
	datac => \inst1|inst6|$00000|auto_generated|result_node\(2),
	datad => \inst1|inst|process_0~6_combout\,
	combout => \inst1|inst|process_0~8_combout\);

-- Location: LCCOMB_X35_Y20_N12
\inst1|inst|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~9_combout\ = (\inst1|inst7|$00000|auto_generated|result_node\(1) & (((\inst1|inst|process_0~4_combout\ & \inst1|inst7|$00000|auto_generated|result_node\(0))) # (!\inst1|inst9|$00000|auto_generated|result_node\(1)))) # 
-- (!\inst1|inst7|$00000|auto_generated|result_node\(1) & (\inst1|inst|process_0~4_combout\ & (!\inst1|inst9|$00000|auto_generated|result_node\(1) & \inst1|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst1|inst|process_0~4_combout\,
	datac => \inst1|inst9|$00000|auto_generated|result_node\(1),
	datad => \inst1|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst1|inst|process_0~9_combout\);

-- Location: LCCOMB_X35_Y20_N14
\inst1|inst|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~10_combout\ = (\inst1|inst7|$00000|auto_generated|result_node\(2) & (((\inst1|inst|process_0~9_combout\) # (!\inst1|inst6|$00000|auto_generated|result_node\(2))) # (!\inst1|inst9|$00000|auto_generated|result_node\(2)))) # 
-- (!\inst1|inst7|$00000|auto_generated|result_node\(2) & (!\inst1|inst9|$00000|auto_generated|result_node\(2) & ((\inst1|inst|process_0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst1|inst9|$00000|auto_generated|result_node\(2),
	datac => \inst1|inst6|$00000|auto_generated|result_node\(2),
	datad => \inst1|inst|process_0~9_combout\,
	combout => \inst1|inst|process_0~10_combout\);

-- Location: LCCOMB_X35_Y20_N16
\inst1|inst|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~11_combout\ = (\inst1|inst7|$00000|auto_generated|result_node\(1) & (((!\inst1|inst6|$00000|auto_generated|result_node\(0) & \inst1|inst7|$00000|auto_generated|result_node\(0))) # 
-- (!\inst1|inst6|$00000|auto_generated|result_node\(1)))) # (!\inst1|inst7|$00000|auto_generated|result_node\(1) & (!\inst1|inst6|$00000|auto_generated|result_node\(1) & (!\inst1|inst6|$00000|auto_generated|result_node\(0) & 
-- \inst1|inst7|$00000|auto_generated|result_node\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst1|inst6|$00000|auto_generated|result_node\(1),
	datac => \inst1|inst6|$00000|auto_generated|result_node\(0),
	datad => \inst1|inst7|$00000|auto_generated|result_node\(0),
	combout => \inst1|inst|process_0~11_combout\);

-- Location: LCCOMB_X35_Y20_N10
\inst1|inst|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~12_combout\ = (\inst1|inst|process_0~10_combout\) # ((\inst1|inst|process_0~11_combout\ & (\inst1|inst7|$00000|auto_generated|result_node\(2) $ (!\inst1|inst6|$00000|auto_generated|result_node\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|$00000|auto_generated|result_node\(2),
	datab => \inst1|inst6|$00000|auto_generated|result_node\(2),
	datac => \inst1|inst|process_0~10_combout\,
	datad => \inst1|inst|process_0~11_combout\,
	combout => \inst1|inst|process_0~12_combout\);

-- Location: LCCOMB_X35_Y20_N28
\inst1|inst|Min_Out[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|Min_Out[1]~4_combout\ = (\inst1|inst|process_0~8_combout\ & ((\inst1|inst|process_0~12_combout\ & ((\inst1|inst9|$00000|auto_generated|result_node\(1)))) # (!\inst1|inst|process_0~12_combout\ & 
-- (\inst1|inst7|$00000|auto_generated|result_node\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7|$00000|auto_generated|result_node\(1),
	datab => \inst1|inst|process_0~8_combout\,
	datac => \inst1|inst9|$00000|auto_generated|result_node\(1),
	datad => \inst1|inst|process_0~12_combout\,
	combout => \inst1|inst|Min_Out[1]~4_combout\);

-- Location: LCCOMB_X28_Y20_N28
\inst1|inst|Min_Out[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|Min_Out[1]~9_combout\ = (\inst1|inst|Min_Out[1]~4_combout\) # ((!\inst1|inst|process_0~8_combout\ & ((\inst6|inst2|reg_val\(1)) # (\inst1|inst5|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|reg_val\(1),
	datab => \inst1|inst|process_0~8_combout\,
	datac => \inst1|inst|Min_Out[1]~4_combout\,
	datad => \inst1|inst5|estado~q\,
	combout => \inst1|inst|Min_Out[1]~9_combout\);

-- Location: LCCOMB_X28_Y19_N8
\inst1|inst16|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst16|Add0~1_combout\ = (!\inst1|inst|process_0~3_combout\ & (\inst1|inst|Min_Out[0]~10_combout\ $ (\inst1|inst|Min_Out[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|Min_Out[0]~10_combout\,
	datab => \inst1|inst|Min_Out[1]~9_combout\,
	datad => \inst1|inst|process_0~3_combout\,
	combout => \inst1|inst16|Add0~1_combout\);

-- Location: LCCOMB_X29_Y22_N24
\inst1|inst2|reg_val[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|reg_val[1]~feeder_combout\ = \inst1|inst16|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst16|Add0~1_combout\,
	combout => \inst1|inst2|reg_val[1]~feeder_combout\);

-- Location: FF_X29_Y22_N25
\inst1|inst2|reg_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst2|reg_val[1]~feeder_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|reg_val\(1));

-- Location: LCCOMB_X29_Y22_N16
\inst33|inst1|inst|inst5|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~2_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst1|inst2|reg_val\(1)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst2|inst2|reg_val\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|reg_val\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst1|inst2|reg_val\(1),
	combout => \inst33|inst1|inst|inst5|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y22_N24
\inst33|inst1|inst|inst5|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & ((!\inst33|inst1|inst|inst|inst2|Q\(1)))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst|inst2|reg_val\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|reg_val\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst|inst5|Mux1~3_combout\);

-- Location: LCCOMB_X30_Y22_N30
\inst33|inst1|inst|inst5|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~4_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst33|inst1|inst|inst5|Mux1~3_combout\) # ((\inst33|inst1|inst|inst|inst2|Q\(2) & \inst5|inst2|reg_val\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst5|inst2|reg_val\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst5|Mux1~3_combout\,
	combout => \inst33|inst1|inst|inst5|Mux1~4_combout\);

-- Location: LCCOMB_X30_Y21_N8
\inst33|inst1|inst|inst5|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~2_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1)) # (!\inst33|inst1|inst|inst|inst2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst33|inst1|inst|inst5|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y22_N20
\inst33|inst1|inst|inst5|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~5_combout\ = (\inst33|inst1|inst|inst5|Mux1~4_combout\ & ((\inst15|inst2|reg_val\(1)) # ((\inst33|inst1|inst|inst5|Mux0~2_combout\)))) # (!\inst33|inst1|inst|inst5|Mux1~4_combout\ & (((\inst14|inst2|reg_val\(1) & 
-- !\inst33|inst1|inst|inst5|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2|reg_val\(1),
	datab => \inst14|inst2|reg_val\(1),
	datac => \inst33|inst1|inst|inst5|Mux1~4_combout\,
	datad => \inst33|inst1|inst|inst5|Mux0~2_combout\,
	combout => \inst33|inst1|inst|inst5|Mux1~5_combout\);

-- Location: LCCOMB_X30_Y22_N10
\inst33|inst1|inst|inst5|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~10_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & (((\inst33|inst1|inst|inst5|Mux1~5_combout\)))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst|inst|inst2|Q\(1) & 
-- ((\inst33|inst1|inst|inst5|Mux1~5_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & (\inst33|inst1|inst|inst5|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst33|inst1|inst|inst5|Mux1~2_combout\,
	datad => \inst33|inst1|inst|inst5|Mux1~5_combout\,
	combout => \inst33|inst1|inst|inst5|Mux1~10_combout\);

-- Location: LCCOMB_X29_Y20_N20
\inst33|inst1|inst|inst5|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~8_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst|inst2|Q\(0))))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst8|inst2|reg_val\(1))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst9|inst2|reg_val\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst2|reg_val\(1),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst9|inst2|reg_val\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst5|Mux1~8_combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst33|inst1|inst|inst5|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~9_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst5|Mux1~8_combout\ & (\inst6|inst2|reg_val\(1))) # (!\inst33|inst1|inst|inst5|Mux1~8_combout\ & ((\inst7|inst2|reg_val\(1)))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst5|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|reg_val\(1),
	datab => \inst7|inst2|reg_val\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst5|Mux1~8_combout\,
	combout => \inst33|inst1|inst|inst5|Mux1~9_combout\);

-- Location: LCCOMB_X29_Y20_N16
\inst33|inst1|inst|inst5|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst|inst2|Q\(0))))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst12|inst2|reg_val\(1)))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst13|inst2|reg_val\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|reg_val\(1),
	datab => \inst12|inst2|reg_val\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst5|Mux1~6_combout\);

-- Location: LCCOMB_X29_Y20_N12
\inst33|inst1|inst|inst5|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux1~7_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst5|Mux1~6_combout\ & (\inst10|inst2|reg_val\(1))) # (!\inst33|inst1|inst|inst5|Mux1~6_combout\ & ((\inst11|inst2|reg_val\(1)))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst5|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|reg_val\(1),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst11|inst2|reg_val\(1),
	datad => \inst33|inst1|inst|inst5|Mux1~6_combout\,
	combout => \inst33|inst1|inst|inst5|Mux1~7_combout\);

-- Location: LCCOMB_X30_Y19_N24
\inst33|inst1|inst5|Y[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst5|Y[1]~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst|inst5|Mux1~7_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst5|Mux1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst5|Mux1~9_combout\,
	datad => \inst33|inst1|inst|inst5|Mux1~7_combout\,
	combout => \inst33|inst1|inst5|Y[1]~3_combout\);

-- Location: LCCOMB_X30_Y19_N6
\inst33|inst1|inst6|Y[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst6|Y[1]~11_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst5|Y[1]~3_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst5|Mux1~10_combout\)))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst5|Mux1~10_combout\)) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst5|Y[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst5|Mux1~10_combout\,
	datad => \inst33|inst1|inst5|Y[1]~3_combout\,
	combout => \inst33|inst1|inst6|Y[1]~11_combout\);

-- Location: LCCOMB_X34_Y21_N12
\inst33|inst1|inst13|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst|inst2|Q\(0))))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst14|inst11|estado~q\))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst15|inst11|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst11|estado~q\,
	datab => \inst14|inst11|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst13|Mux3~6_combout\);

-- Location: LCCOMB_X34_Y21_N4
\inst33|inst1|inst13|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~7_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux3~6_combout\ & (\inst12|inst11|estado~q\)) # (!\inst33|inst1|inst13|Mux3~6_combout\ & ((\inst13|inst11|estado~q\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst11|estado~q\,
	datab => \inst13|inst11|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst13|Mux3~6_combout\,
	combout => \inst33|inst1|inst13|Mux3~7_combout\);

-- Location: LCCOMB_X34_Y21_N2
\inst8|inst11|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst11|estado~0_combout\ = (\inst8|inst11|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~4_combout\ & \inst33|inst1|inst|inst|inst|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~4_combout\,
	datac => \inst8|inst11|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	combout => \inst8|inst11|estado~0_combout\);

-- Location: FF_X34_Y21_N3
\inst8|inst11|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst8|inst11|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|inst11|estado~q\);

-- Location: LCCOMB_X34_Y21_N0
\inst33|inst1|inst13|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~4_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst|inst2|Q\(0))))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst10|inst11|estado~q\))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst11|inst11|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst11|estado~q\,
	datab => \inst10|inst11|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst13|Mux3~4_combout\);

-- Location: LCCOMB_X34_Y21_N24
\inst33|inst1|inst13|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux3~4_combout\ & (\inst8|inst11|estado~q\)) # (!\inst33|inst1|inst13|Mux3~4_combout\ & ((\inst9|inst11|estado~q\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(1),
	datab => \inst8|inst11|estado~q\,
	datac => \inst9|inst11|estado~q\,
	datad => \inst33|inst1|inst13|Mux3~4_combout\,
	combout => \inst33|inst1|inst13|Mux3~5_combout\);

-- Location: LCCOMB_X34_Y21_N14
\inst33|inst1|inst13|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~8_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst13|Mux3~5_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst13|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst13|Mux3~7_combout\,
	datad => \inst33|inst1|inst13|Mux3~5_combout\,
	combout => \inst33|inst1|inst13|Mux3~8_combout\);

-- Location: LCCOMB_X30_Y21_N6
\inst33|inst1|inst|inst5|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~9_combout\ = ((!\inst33|inst1|inst|inst|inst2|Q\(0) & \inst33|inst1|inst|inst|inst2|Q\(1))) # (!\inst33|inst1|inst|inst|inst2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst33|inst1|inst|inst5|Mux0~9_combout\);

-- Location: LCCOMB_X30_Y21_N28
\inst33|inst1|inst|inst5|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~10_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst|inst|inst2|Q\(1)) # (\inst33|inst1|inst|inst|inst2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst33|inst1|inst|inst5|Mux0~10_combout\);

-- Location: LCCOMB_X31_Y18_N18
\inst33|inst1|inst13|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (((\inst6|inst11|estado~q\) # (\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst7|inst11|estado~q\ & 
-- ((!\inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst11|estado~q\,
	datab => \inst6|inst11|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst13|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y18_N2
\inst33|inst1|inst13|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~1_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux3~0_combout\ & (\inst4|inst11|estado~q\)) # (!\inst33|inst1|inst13|Mux3~0_combout\ & ((\inst5|inst11|estado~q\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst11|estado~q\,
	datab => \inst5|inst11|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst13|Mux3~0_combout\,
	combout => \inst33|inst1|inst13|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst33|inst1|inst13|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~2_combout\ = (\inst33|inst1|inst|inst5|Mux0~9_combout\ & ((\inst33|inst1|inst|inst5|Mux0~10_combout\ & (\inst|inst11|estado~q\)) # (!\inst33|inst1|inst|inst5|Mux0~10_combout\ & ((\inst33|inst1|inst13|Mux3~1_combout\))))) # 
-- (!\inst33|inst1|inst|inst5|Mux0~9_combout\ & (((!\inst33|inst1|inst|inst5|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|estado~q\,
	datab => \inst33|inst1|inst|inst5|Mux0~9_combout\,
	datac => \inst33|inst1|inst|inst5|Mux0~10_combout\,
	datad => \inst33|inst1|inst13|Mux3~1_combout\,
	combout => \inst33|inst1|inst13|Mux3~2_combout\);

-- Location: LCCOMB_X30_Y19_N2
\inst33|inst1|inst13|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux3~3_combout\ = (\inst33|inst1|inst|inst5|Mux0~2_combout\ & (((\inst33|inst1|inst13|Mux3~2_combout\)))) # (!\inst33|inst1|inst|inst5|Mux0~2_combout\ & ((\inst33|inst1|inst13|Mux3~2_combout\ & (\inst2|inst11|estado~q\)) # 
-- (!\inst33|inst1|inst13|Mux3~2_combout\ & ((\inst1|inst11|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst11|estado~q\,
	datab => \inst33|inst1|inst|inst5|Mux0~2_combout\,
	datac => \inst1|inst11|estado~q\,
	datad => \inst33|inst1|inst13|Mux3~2_combout\,
	combout => \inst33|inst1|inst13|Mux3~3_combout\);

-- Location: LCCOMB_X30_Y19_N8
\inst33|inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~0_combout\ = (!\inst33|inst1|inst13|Mux3~8_combout\ & ((!\inst33|inst1|inst13|Mux3~3_combout\) # (!\inst33|inst1|inst|inst|inst2|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst13|Mux3~8_combout\,
	datad => \inst33|inst1|inst13|Mux3~3_combout\,
	combout => \inst33|inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y20_N8
\inst33|inst1|inst|inst5|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~2_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst1|inst2|reg_val\(0)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst2|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|reg_val\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst1|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst5|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y20_N24
\inst33|inst1|inst|inst5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst|inst2|Q\(0))))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst14|inst2|reg_val\(0)))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst15|inst2|reg_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2|reg_val\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst14|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst5|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y20_N6
\inst33|inst1|inst|inst5|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~1_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst5|Mux2~0_combout\ & ((\inst4|inst2|reg_val\(0)))) # (!\inst33|inst1|inst|inst5|Mux2~0_combout\ & (\inst5|inst2|reg_val\(0))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst5|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|reg_val\(0),
	datab => \inst4|inst2|reg_val\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst5|Mux2~0_combout\,
	combout => \inst33|inst1|inst|inst5|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y20_N28
\inst33|inst1|inst|inst5|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~4_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & (((\inst33|inst1|inst|inst5|Mux2~1_combout\)))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst|inst5|Mux2~3_combout\) # 
-- ((\inst33|inst1|inst|inst5|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux2~3_combout\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst5|Mux2~2_combout\,
	datad => \inst33|inst1|inst|inst5|Mux2~1_combout\,
	combout => \inst33|inst1|inst|inst5|Mux2~4_combout\);

-- Location: LCCOMB_X31_Y20_N18
\inst33|inst1|inst|inst5|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst12|inst2|reg_val\(0)) # ((\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (((\inst13|inst2|reg_val\(0) & 
-- !\inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|reg_val\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst13|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst|inst5|Mux2~5_combout\);

-- Location: LCCOMB_X31_Y20_N6
\inst33|inst1|inst|inst5|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux2~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst5|Mux2~5_combout\ & (\inst10|inst2|reg_val\(0))) # (!\inst33|inst1|inst|inst5|Mux2~5_combout\ & ((\inst11|inst2|reg_val\(0)))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst5|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst2|reg_val\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst11|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst5|Mux2~5_combout\,
	combout => \inst33|inst1|inst|inst5|Mux2~6_combout\);

-- Location: LCCOMB_X31_Y20_N28
\inst33|inst1|inst5|Y[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst5|Y[0]~2_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst|inst5|Mux2~6_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst5|Mux2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux2~8_combout\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst5|Mux2~6_combout\,
	combout => \inst33|inst1|inst5|Y[0]~2_combout\);

-- Location: LCCOMB_X30_Y19_N16
\inst33|inst1|inst6|Y[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst6|Y[0]~10_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst5|Y[0]~2_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst5|Mux2~4_combout\)))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst5|Mux2~4_combout\)) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst5|Y[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst5|Mux2~4_combout\,
	datad => \inst33|inst1|inst5|Y[0]~2_combout\,
	combout => \inst33|inst1|inst6|Y[0]~10_combout\);

-- Location: LCCOMB_X29_Y21_N4
\inst33|inst1|inst|inst2|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst2|Add3~0_combout\ = \inst33|inst1|inst|inst|inst2|Q\(2) $ (\inst33|inst1|inst|inst|inst2|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(3),
	combout => \inst33|inst1|inst|inst2|Add3~0_combout\);

-- Location: LCCOMB_X29_Y21_N30
\inst33|inst1|inst|inst5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~1_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(2) & !\inst33|inst1|inst|inst|inst2|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst|inst5|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y21_N10
\inst33|inst1|inst|inst5|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & ((!\inst33|inst1|inst|inst|inst2|Q\(1)))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst|inst2|reg_val\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|reg_val\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst|inst5|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y21_N20
\inst33|inst1|inst|inst5|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~4_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst33|inst1|inst|inst5|Mux0~3_combout\) # ((\inst5|inst2|reg_val\(2) & \inst33|inst1|inst|inst|inst2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|reg_val\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst5|Mux0~3_combout\,
	combout => \inst33|inst1|inst|inst5|Mux0~4_combout\);

-- Location: LCCOMB_X29_Y21_N6
\inst33|inst1|inst6|Y[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst6|Y[2]~6_combout\ = (\inst33|inst1|inst|inst5|Mux0~2_combout\ & (((\inst33|inst1|inst|inst5|Mux0~4_combout\)))) # (!\inst33|inst1|inst|inst5|Mux0~2_combout\ & ((\inst33|inst1|inst|inst5|Mux0~4_combout\ & (\inst15|inst2|reg_val\(2))) # 
-- (!\inst33|inst1|inst|inst5|Mux0~4_combout\ & ((\inst14|inst2|reg_val\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2|reg_val\(2),
	datab => \inst14|inst2|reg_val\(2),
	datac => \inst33|inst1|inst|inst5|Mux0~2_combout\,
	datad => \inst33|inst1|inst|inst5|Mux0~4_combout\,
	combout => \inst33|inst1|inst6|Y[2]~6_combout\);

-- Location: LCCOMB_X29_Y21_N8
\inst33|inst1|inst6|Y[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst6|Y[2]~7_combout\ = (\inst33|inst1|inst|inst2|Add3~0_combout\ & ((\inst33|inst1|inst|inst5|Mux0~1_combout\ & (\inst33|inst1|inst|inst5|Mux0~0_combout\)) # (!\inst33|inst1|inst|inst5|Mux0~1_combout\ & 
-- ((\inst33|inst1|inst6|Y[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux0~0_combout\,
	datab => \inst33|inst1|inst|inst2|Add3~0_combout\,
	datac => \inst33|inst1|inst|inst5|Mux0~1_combout\,
	datad => \inst33|inst1|inst6|Y[2]~6_combout\,
	combout => \inst33|inst1|inst6|Y[2]~7_combout\);

-- Location: LCCOMB_X29_Y21_N16
\inst33|inst1|inst|inst5|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst|inst2|Q\(0))))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst12|inst2|reg_val\(2))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst13|inst2|reg_val\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2|reg_val\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst13|inst2|reg_val\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst5|Mux0~5_combout\);

-- Location: LCCOMB_X29_Y21_N14
\inst33|inst1|inst|inst5|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst5|Mux0~5_combout\ & ((\inst10|inst2|reg_val\(2)))) # (!\inst33|inst1|inst|inst5|Mux0~5_combout\ & (\inst11|inst2|reg_val\(2))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst5|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst2|reg_val\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst10|inst2|reg_val\(2),
	datad => \inst33|inst1|inst|inst5|Mux0~5_combout\,
	combout => \inst33|inst1|inst|inst5|Mux0~6_combout\);

-- Location: LCCOMB_X29_Y21_N24
\inst33|inst1|inst|inst5|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~7_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (\inst33|inst1|inst|inst|inst2|Q\(0))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst8|inst2|reg_val\(2)))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst9|inst2|reg_val\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(1),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst9|inst2|reg_val\(2),
	datad => \inst8|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst5|Mux0~7_combout\);

-- Location: LCCOMB_X29_Y21_N18
\inst33|inst1|inst|inst5|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~8_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst5|Mux0~7_combout\ & (\inst6|inst2|reg_val\(2))) # (!\inst33|inst1|inst|inst5|Mux0~7_combout\ & ((\inst7|inst2|reg_val\(2)))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst5|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(1),
	datab => \inst6|inst2|reg_val\(2),
	datac => \inst7|inst2|reg_val\(2),
	datad => \inst33|inst1|inst|inst5|Mux0~7_combout\,
	combout => \inst33|inst1|inst|inst5|Mux0~8_combout\);

-- Location: LCCOMB_X29_Y21_N28
\inst33|inst1|inst6|Y[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst6|Y[2]~9_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst|inst2|Q\(3) & (\inst33|inst1|inst|inst5|Mux0~6_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (!\inst33|inst1|inst|inst|inst2|Q\(3) & 
-- ((\inst33|inst1|inst|inst5|Mux0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst|inst5|Mux0~6_combout\,
	datad => \inst33|inst1|inst|inst5|Mux0~8_combout\,
	combout => \inst33|inst1|inst6|Y[2]~9_combout\);

-- Location: LCCOMB_X29_Y21_N0
\inst33|inst1|inst6|Y[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst6|Y[2]~8_combout\ = (\inst33|inst1|inst6|Y[2]~7_combout\) # (\inst33|inst1|inst6|Y[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst1|inst6|Y[2]~7_combout\,
	datad => \inst33|inst1|inst6|Y[2]~9_combout\,
	combout => \inst33|inst1|inst6|Y[2]~8_combout\);

-- Location: LCCOMB_X30_Y19_N30
\inst33|inst4|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~7_combout\ = (\inst33|inst1|inst13|Mux0~9_combout\ & (((!\inst33|inst1|inst6|Y[2]~8_combout\) # (!\inst33|inst1|inst6|Y[0]~10_combout\)) # (!\inst33|inst1|inst6|Y[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst6|Y[1]~11_combout\,
	datab => \inst33|inst1|inst6|Y[0]~10_combout\,
	datac => \inst33|inst1|inst6|Y[2]~8_combout\,
	datad => \inst33|inst1|inst13|Mux0~9_combout\,
	combout => \inst33|inst4|LessThan0~7_combout\);

-- Location: LCCOMB_X30_Y21_N14
\inst33|inst1|inst|inst2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst2|Add1~0_combout\ = \inst33|inst1|inst|inst|inst2|Q\(3) $ (((\inst33|inst1|inst|inst|inst2|Q\(2)) # ((\inst33|inst1|inst|inst|inst2|Q\(1)) # (\inst33|inst1|inst|inst|inst2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst2|Add1~0_combout\);

-- Location: LCCOMB_X29_Y19_N16
\inst33|inst1|inst|inst6|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux0~4_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & \inst5|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst5|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst6|Mux0~4_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst33|inst1|inst|inst6|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux0~7_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst15|inst2|reg_val\(2))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst14|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst2|reg_val\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst14|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst6|Mux0~7_combout\);

-- Location: LCCOMB_X30_Y21_N0
\inst33|inst1|inst|inst2|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst2|Add1~1_combout\ = \inst33|inst1|inst|inst|inst2|Q\(2) $ (((\inst33|inst1|inst|inst|inst2|Q\(1)) # (\inst33|inst1|inst|inst|inst2|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst2|Add1~1_combout\);

-- Location: LCCOMB_X30_Y21_N30
\inst33|inst1|inst|inst2|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst2|Add1~2_combout\ = \inst33|inst1|inst|inst|inst2|Q\(0) $ (\inst33|inst1|inst|inst|inst2|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst|inst2|Add1~2_combout\);

-- Location: LCCOMB_X29_Y19_N10
\inst33|inst1|inst|inst6|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux0~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & \inst|inst2|reg_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst6|Mux0~6_combout\);

-- Location: LCCOMB_X29_Y19_N24
\inst33|inst1|inst4|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[2]~2_combout\ = (\inst33|inst1|inst|inst2|Add1~1_combout\ & (((\inst33|inst1|inst|inst2|Add1~2_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (\inst33|inst1|inst|inst6|Mux0~5_combout\)) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & ((\inst33|inst1|inst|inst6|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux0~5_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datac => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datad => \inst33|inst1|inst|inst6|Mux0~6_combout\,
	combout => \inst33|inst1|inst4|Y[2]~2_combout\);

-- Location: LCCOMB_X29_Y19_N0
\inst33|inst1|inst4|Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[2]~3_combout\ = (\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst4|Y[2]~2_combout\ & ((\inst33|inst1|inst|inst6|Mux0~7_combout\))) # (!\inst33|inst1|inst4|Y[2]~2_combout\ & (\inst33|inst1|inst|inst6|Mux0~4_combout\)))) 
-- # (!\inst33|inst1|inst|inst2|Add1~1_combout\ & (((\inst33|inst1|inst4|Y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datab => \inst33|inst1|inst|inst6|Mux0~4_combout\,
	datac => \inst33|inst1|inst|inst6|Mux0~7_combout\,
	datad => \inst33|inst1|inst4|Y[2]~2_combout\,
	combout => \inst33|inst1|inst4|Y[2]~3_combout\);

-- Location: LCCOMB_X29_Y22_N30
\inst33|inst1|inst|inst6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux1~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & \inst5|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst5|inst2|reg_val\(1),
	combout => \inst33|inst1|inst|inst6|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y22_N8
\inst33|inst1|inst|inst6|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux1~1_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst2|inst2|reg_val\(1))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst1|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|reg_val\(1),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst1|inst2|reg_val\(1),
	combout => \inst33|inst1|inst|inst6|Mux1~1_combout\);

-- Location: LCCOMB_X29_Y22_N18
\inst33|inst1|inst|inst6|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux1~2_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & \inst|inst2|reg_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst|inst2|reg_val\(1),
	combout => \inst33|inst1|inst|inst6|Mux1~2_combout\);

-- Location: LCCOMB_X29_Y22_N20
\inst33|inst1|inst4|Y[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[1]~8_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & ((\inst33|inst1|inst|inst2|Add1~1_combout\) # ((\inst33|inst1|inst|inst6|Mux1~1_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (!\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst|inst6|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datac => \inst33|inst1|inst|inst6|Mux1~1_combout\,
	datad => \inst33|inst1|inst|inst6|Mux1~2_combout\,
	combout => \inst33|inst1|inst4|Y[1]~8_combout\);

-- Location: LCCOMB_X29_Y22_N12
\inst33|inst1|inst4|Y[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[1]~9_combout\ = (\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst4|Y[1]~8_combout\ & (\inst33|inst1|inst|inst6|Mux1~3_combout\)) # (!\inst33|inst1|inst4|Y[1]~8_combout\ & ((\inst33|inst1|inst|inst6|Mux1~0_combout\))))) 
-- # (!\inst33|inst1|inst|inst2|Add1~1_combout\ & (((\inst33|inst1|inst4|Y[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux1~3_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datac => \inst33|inst1|inst|inst6|Mux1~0_combout\,
	datad => \inst33|inst1|inst4|Y[1]~8_combout\,
	combout => \inst33|inst1|inst4|Y[1]~9_combout\);

-- Location: LCCOMB_X30_Y19_N4
\inst33|inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~3_combout\ = (\inst33|inst1|inst|inst2|Add1~0_combout\ & (\inst33|inst1|inst4|Y[2]~3_combout\ & \inst33|inst1|inst4|Y[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst2|Add1~0_combout\,
	datac => \inst33|inst1|inst4|Y[2]~3_combout\,
	datad => \inst33|inst1|inst4|Y[1]~9_combout\,
	combout => \inst33|inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y20_N8
\inst33|inst1|inst|inst6|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux1~7_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst13|inst2|reg_val\(1))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst12|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|reg_val\(1),
	datac => \inst12|inst2|reg_val\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux1~7_combout\);

-- Location: LCCOMB_X29_Y20_N14
\inst33|inst1|inst|inst6|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux1~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst9|inst2|reg_val\(1))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst8|inst2|reg_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|reg_val\(1),
	datab => \inst8|inst2|reg_val\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux1~5_combout\);

-- Location: LCCOMB_X29_Y20_N24
\inst33|inst1|inst|inst6|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux1~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst7|inst2|reg_val\(1)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst6|inst2|reg_val\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst2|reg_val\(1),
	datac => \inst7|inst2|reg_val\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux1~6_combout\);

-- Location: LCCOMB_X29_Y20_N10
\inst33|inst1|inst4|Y[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[1]~10_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & ((\inst33|inst1|inst|inst6|Mux1~5_combout\) # ((\inst33|inst1|inst|inst2|Add1~1_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (((!\inst33|inst1|inst|inst2|Add1~1_combout\ & \inst33|inst1|inst|inst6|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datab => \inst33|inst1|inst|inst6|Mux1~5_combout\,
	datac => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datad => \inst33|inst1|inst|inst6|Mux1~6_combout\,
	combout => \inst33|inst1|inst4|Y[1]~10_combout\);

-- Location: LCCOMB_X29_Y20_N30
\inst33|inst1|inst4|Y[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[1]~11_combout\ = (\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst4|Y[1]~10_combout\ & ((\inst33|inst1|inst|inst6|Mux1~7_combout\))) # (!\inst33|inst1|inst4|Y[1]~10_combout\ & 
-- (\inst33|inst1|inst|inst6|Mux1~4_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~1_combout\ & (((\inst33|inst1|inst4|Y[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux1~4_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datac => \inst33|inst1|inst|inst6|Mux1~7_combout\,
	datad => \inst33|inst1|inst4|Y[1]~10_combout\,
	combout => \inst33|inst1|inst4|Y[1]~11_combout\);

-- Location: LCCOMB_X29_Y19_N22
\inst33|inst1|inst|inst6|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux0~2_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst7|inst2|reg_val\(2)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst6|inst2|reg_val\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2|reg_val\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst7|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst6|Mux0~2_combout\);

-- Location: LCCOMB_X29_Y19_N20
\inst33|inst1|inst|inst6|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux0~1_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst9|inst2|reg_val\(2)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst8|inst2|reg_val\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|inst2|reg_val\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst9|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst6|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y19_N4
\inst33|inst1|inst4|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[2]~0_combout\ = (\inst33|inst1|inst|inst2|Add1~1_combout\ & (\inst33|inst1|inst|inst2|Add1~2_combout\)) # (!\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- ((\inst33|inst1|inst|inst6|Mux0~1_combout\))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & (\inst33|inst1|inst|inst6|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datac => \inst33|inst1|inst|inst6|Mux0~2_combout\,
	datad => \inst33|inst1|inst|inst6|Mux0~1_combout\,
	combout => \inst33|inst1|inst4|Y[2]~0_combout\);

-- Location: LCCOMB_X29_Y22_N6
\inst33|inst1|inst|inst6|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux0~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst13|inst2|reg_val\(2))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst12|inst2|reg_val\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst2|reg_val\(2),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst12|inst2|reg_val\(2),
	combout => \inst33|inst1|inst|inst6|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y19_N14
\inst33|inst1|inst4|Y[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[2]~1_combout\ = (\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst4|Y[2]~0_combout\ & ((\inst33|inst1|inst|inst6|Mux0~3_combout\))) # (!\inst33|inst1|inst4|Y[2]~0_combout\ & (\inst33|inst1|inst|inst6|Mux0~0_combout\)))) 
-- # (!\inst33|inst1|inst|inst2|Add1~1_combout\ & (((\inst33|inst1|inst4|Y[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux0~0_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datac => \inst33|inst1|inst4|Y[2]~0_combout\,
	datad => \inst33|inst1|inst|inst6|Mux0~3_combout\,
	combout => \inst33|inst1|inst4|Y[2]~1_combout\);

-- Location: LCCOMB_X30_Y19_N14
\inst33|inst4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~4_combout\ = (!\inst33|inst1|inst|inst2|Add1~0_combout\ & (\inst33|inst1|inst4|Y[1]~11_combout\ & \inst33|inst1|inst4|Y[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst2|Add1~0_combout\,
	datac => \inst33|inst1|inst4|Y[1]~11_combout\,
	datad => \inst33|inst1|inst4|Y[2]~1_combout\,
	combout => \inst33|inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X30_Y19_N28
\inst33|inst4|min_value~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|min_value~1_combout\ = (\inst33|inst1|inst|inst2|Add1~0_combout\ & ((\inst33|inst1|inst4|Y[1]~9_combout\))) # (!\inst33|inst1|inst|inst2|Add1~0_combout\ & (\inst33|inst1|inst4|Y[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst2|Add1~0_combout\,
	datac => \inst33|inst1|inst4|Y[1]~11_combout\,
	datad => \inst33|inst1|inst4|Y[1]~9_combout\,
	combout => \inst33|inst4|min_value~1_combout\);

-- Location: LCCOMB_X30_Y19_N22
\inst33|inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~5_combout\ = (\inst33|inst4|LessThan0~4_combout\) # ((!\inst33|inst1|inst6|Y[2]~9_combout\ & (!\inst33|inst1|inst6|Y[2]~7_combout\ & \inst33|inst4|min_value~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst6|Y[2]~9_combout\,
	datab => \inst33|inst1|inst6|Y[2]~7_combout\,
	datac => \inst33|inst4|LessThan0~4_combout\,
	datad => \inst33|inst4|min_value~1_combout\,
	combout => \inst33|inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y20_N4
\inst33|inst1|inst|inst6|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux2~4_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst11|inst2|reg_val\(0))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst10|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|inst2|reg_val\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst10|inst2|reg_val\(0),
	combout => \inst33|inst1|inst|inst6|Mux2~4_combout\);

-- Location: LCCOMB_X31_Y20_N8
\inst33|inst1|inst|inst6|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux2~7_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst13|inst2|reg_val\(0))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst12|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst2|reg_val\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst12|inst2|reg_val\(0),
	combout => \inst33|inst1|inst|inst6|Mux2~7_combout\);

-- Location: LCCOMB_X31_Y20_N14
\inst33|inst1|inst|inst6|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux2~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst7|inst2|reg_val\(0))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst6|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|reg_val\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst6|inst2|reg_val\(0),
	combout => \inst33|inst1|inst|inst6|Mux2~6_combout\);

-- Location: LCCOMB_X31_Y20_N24
\inst33|inst1|inst|inst6|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux2~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst9|inst2|reg_val\(0)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst8|inst2|reg_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst8|inst2|reg_val\(0),
	datad => \inst9|inst2|reg_val\(0),
	combout => \inst33|inst1|inst|inst6|Mux2~5_combout\);

-- Location: LCCOMB_X31_Y20_N0
\inst33|inst1|inst4|Y[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[0]~6_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & (((\inst33|inst1|inst|inst2|Add1~1_combout\) # (\inst33|inst1|inst|inst6|Mux2~5_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (\inst33|inst1|inst|inst6|Mux2~6_combout\ & (!\inst33|inst1|inst|inst2|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datab => \inst33|inst1|inst|inst6|Mux2~6_combout\,
	datac => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datad => \inst33|inst1|inst|inst6|Mux2~5_combout\,
	combout => \inst33|inst1|inst4|Y[0]~6_combout\);

-- Location: LCCOMB_X31_Y20_N30
\inst33|inst1|inst4|Y[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[0]~7_combout\ = (\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst4|Y[0]~6_combout\ & ((\inst33|inst1|inst|inst6|Mux2~7_combout\))) # (!\inst33|inst1|inst4|Y[0]~6_combout\ & (\inst33|inst1|inst|inst6|Mux2~4_combout\)))) 
-- # (!\inst33|inst1|inst|inst2|Add1~1_combout\ & (((\inst33|inst1|inst4|Y[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datab => \inst33|inst1|inst|inst6|Mux2~4_combout\,
	datac => \inst33|inst1|inst|inst6|Mux2~7_combout\,
	datad => \inst33|inst1|inst4|Y[0]~6_combout\,
	combout => \inst33|inst1|inst4|Y[0]~7_combout\);

-- Location: LCCOMB_X30_Y20_N4
\inst33|inst1|inst|inst6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux2~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst5|inst2|reg_val\(0))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst4|inst2|reg_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst2|reg_val\(0),
	datab => \inst4|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y20_N22
\inst33|inst1|inst|inst6|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux2~1_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst2|inst2|reg_val\(0)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst1|inst2|reg_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|reg_val\(0),
	datab => \inst2|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y20_N18
\inst33|inst1|inst|inst6|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst6|Mux2~2_combout\ = (\inst|inst2|reg_val\(0) & \inst33|inst1|inst|inst|inst2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst2|reg_val\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst|inst6|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y20_N20
\inst33|inst1|inst4|Y[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[0]~4_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & ((\inst33|inst1|inst|inst2|Add1~1_combout\) # ((\inst33|inst1|inst|inst6|Mux2~1_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (!\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst|inst6|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datac => \inst33|inst1|inst|inst6|Mux2~1_combout\,
	datad => \inst33|inst1|inst|inst6|Mux2~2_combout\,
	combout => \inst33|inst1|inst4|Y[0]~4_combout\);

-- Location: LCCOMB_X30_Y20_N0
\inst33|inst1|inst4|Y[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst4|Y[0]~5_combout\ = (\inst33|inst1|inst|inst2|Add1~1_combout\ & ((\inst33|inst1|inst4|Y[0]~4_combout\ & (\inst33|inst1|inst|inst6|Mux2~3_combout\)) # (!\inst33|inst1|inst4|Y[0]~4_combout\ & ((\inst33|inst1|inst|inst6|Mux2~0_combout\))))) 
-- # (!\inst33|inst1|inst|inst2|Add1~1_combout\ & (((\inst33|inst1|inst4|Y[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux2~3_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~1_combout\,
	datac => \inst33|inst1|inst|inst6|Mux2~0_combout\,
	datad => \inst33|inst1|inst4|Y[0]~4_combout\,
	combout => \inst33|inst1|inst4|Y[0]~5_combout\);

-- Location: LCCOMB_X30_Y19_N18
\inst33|inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~1_combout\ = (!\inst33|inst1|inst6|Y[0]~10_combout\ & ((\inst33|inst1|inst|inst2|Add1~0_combout\ & ((\inst33|inst1|inst4|Y[0]~5_combout\))) # (!\inst33|inst1|inst|inst2|Add1~0_combout\ & (\inst33|inst1|inst4|Y[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add1~0_combout\,
	datab => \inst33|inst1|inst4|Y[0]~7_combout\,
	datac => \inst33|inst1|inst4|Y[0]~5_combout\,
	datad => \inst33|inst1|inst6|Y[0]~10_combout\,
	combout => \inst33|inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y19_N0
\inst33|inst4|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~6_combout\ = (\inst33|inst1|inst6|Y[1]~11_combout\ & (\inst33|inst4|LessThan0~1_combout\ & ((\inst33|inst4|LessThan0~3_combout\) # (\inst33|inst4|LessThan0~5_combout\)))) # (!\inst33|inst1|inst6|Y[1]~11_combout\ & 
-- ((\inst33|inst4|LessThan0~3_combout\) # ((\inst33|inst4|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst6|Y[1]~11_combout\,
	datab => \inst33|inst4|LessThan0~3_combout\,
	datac => \inst33|inst4|LessThan0~5_combout\,
	datad => \inst33|inst4|LessThan0~1_combout\,
	combout => \inst33|inst4|LessThan0~6_combout\);

-- Location: LCCOMB_X30_Y19_N20
\inst33|inst4|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan0~8_combout\ = (\inst33|inst4|LessThan0~0_combout\ & ((\inst33|inst4|LessThan0~2_combout\) # ((\inst33|inst4|LessThan0~7_combout\) # (\inst33|inst4|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|LessThan0~2_combout\,
	datab => \inst33|inst4|LessThan0~0_combout\,
	datac => \inst33|inst4|LessThan0~7_combout\,
	datad => \inst33|inst4|LessThan0~6_combout\,
	combout => \inst33|inst4|LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y19_N24
\inst33|inst4|min_value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|min_value~3_combout\ = (\inst33|inst4|LessThan0~8_combout\ & (((\inst33|inst1|inst6|Y[1]~11_combout\)))) # (!\inst33|inst4|LessThan0~8_combout\ & ((\inst33|inst4|min_value~1_combout\) # ((\inst33|inst1|inst13|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|min_value~1_combout\,
	datab => \inst33|inst1|inst13|Mux0~9_combout\,
	datac => \inst33|inst1|inst6|Y[1]~11_combout\,
	datad => \inst33|inst4|LessThan0~8_combout\,
	combout => \inst33|inst4|min_value~3_combout\);

-- Location: LCCOMB_X32_Y22_N6
\inst33|inst1|inst|inst2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst2|Add0~1_combout\ = \inst33|inst1|inst|inst|inst2|Q\(3) $ (((\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst|inst|inst2|Q\(0) & \inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst|inst2|Add0~1_combout\);

-- Location: LCCOMB_X31_Y17_N12
\inst33|inst1|inst13|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst10|inst5|estado~q\) # ((\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (((!\inst33|inst1|inst|inst|inst2|Q\(1) & 
-- \inst11|inst5|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(0),
	datab => \inst10|inst5|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst11|inst5|estado~q\,
	combout => \inst33|inst1|inst13|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y17_N14
\inst33|inst1|inst13|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~1_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux1~0_combout\ & (\inst8|inst5|estado~q\)) # (!\inst33|inst1|inst13|Mux1~0_combout\ & ((\inst9|inst5|estado~q\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst5|estado~q\,
	datab => \inst9|inst5|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst13|Mux1~0_combout\,
	combout => \inst33|inst1|inst13|Mux1~1_combout\);

-- Location: LCCOMB_X31_Y17_N28
\inst13|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst5|estado~0_combout\ = (\inst13|inst5|estado~q\) # ((\inst35|inst3|Mux0~5_combout\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst30|fstate.se_choca~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~5_combout\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst13|inst5|estado~q\,
	datad => \inst30|fstate.se_choca~q\,
	combout => \inst13|inst5|estado~0_combout\);

-- Location: FF_X31_Y17_N29
\inst13|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst5|estado~q\);

-- Location: LCCOMB_X31_Y17_N8
\inst15|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst5|estado~0_combout\ = (\inst15|inst5|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst35|inst3|Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst15|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~7_combout\,
	combout => \inst15|inst5|estado~0_combout\);

-- Location: FF_X31_Y17_N9
\inst15|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst5|estado~q\);

-- Location: LCCOMB_X31_Y17_N18
\inst14|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst5|estado~0_combout\ = (\inst14|inst5|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst35|inst3|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst14|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~6_combout\,
	combout => \inst14|inst5|estado~0_combout\);

-- Location: FF_X31_Y17_N19
\inst14|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst5|estado~q\);

-- Location: LCCOMB_X31_Y17_N6
\inst33|inst1|inst13|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~2_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (((\inst33|inst1|inst|inst|inst2|Q\(1)) # (\inst14|inst5|estado~q\)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst15|inst5|estado~q\ & 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(0),
	datab => \inst15|inst5|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst14|inst5|estado~q\,
	combout => \inst33|inst1|inst13|Mux1~2_combout\);

-- Location: LCCOMB_X31_Y17_N16
\inst33|inst1|inst13|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux1~2_combout\ & (\inst12|inst5|estado~q\)) # (!\inst33|inst1|inst13|Mux1~2_combout\ & ((\inst13|inst5|estado~q\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst5|estado~q\,
	datab => \inst13|inst5|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst13|Mux1~2_combout\,
	combout => \inst33|inst1|inst13|Mux1~3_combout\);

-- Location: LCCOMB_X31_Y17_N30
\inst33|inst1|inst13|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~4_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst13|Mux1~1_combout\)) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst13|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst13|Mux1~1_combout\,
	datad => \inst33|inst1|inst13|Mux1~3_combout\,
	combout => \inst33|inst1|inst13|Mux1~4_combout\);

-- Location: LCCOMB_X31_Y18_N4
\inst4|inst5|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst5|estado~0_combout\ = (\inst4|inst5|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst5|seleccion[1]~7_combout\ & \inst35|inst3|Mux0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst4|inst5|estado~q\,
	datad => \inst35|inst3|Mux0~15_combout\,
	combout => \inst4|inst5|estado~0_combout\);

-- Location: FF_X31_Y18_N5
\inst4|inst5|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst5|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst5|estado~q\);

-- Location: LCCOMB_X31_Y17_N20
\inst33|inst1|inst13|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (((\inst6|inst5|estado~q\) # (\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst7|inst5|estado~q\ & 
-- ((!\inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst5|estado~q\,
	datab => \inst6|inst5|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst13|Mux1~5_combout\);

-- Location: LCCOMB_X31_Y17_N26
\inst33|inst1|inst13|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux1~5_combout\ & ((\inst4|inst5|estado~q\))) # (!\inst33|inst1|inst13|Mux1~5_combout\ & (\inst5|inst5|estado~q\)))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst5|estado~q\,
	datab => \inst4|inst5|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst13|Mux1~5_combout\,
	combout => \inst33|inst1|inst13|Mux1~6_combout\);

-- Location: LCCOMB_X31_Y17_N24
\inst33|inst1|inst13|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~7_combout\ = (\inst33|inst1|inst|inst5|Mux0~9_combout\ & ((\inst33|inst1|inst|inst5|Mux0~10_combout\ & (\inst|inst5|estado~q\)) # (!\inst33|inst1|inst|inst5|Mux0~10_combout\ & ((\inst33|inst1|inst13|Mux1~6_combout\))))) # 
-- (!\inst33|inst1|inst|inst5|Mux0~9_combout\ & (((!\inst33|inst1|inst|inst5|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux0~9_combout\,
	datab => \inst|inst5|estado~q\,
	datac => \inst33|inst1|inst13|Mux1~6_combout\,
	datad => \inst33|inst1|inst|inst5|Mux0~10_combout\,
	combout => \inst33|inst1|inst13|Mux1~7_combout\);

-- Location: LCCOMB_X31_Y17_N2
\inst33|inst1|inst13|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~8_combout\ = (\inst33|inst1|inst|inst5|Mux0~2_combout\ & (((\inst33|inst1|inst13|Mux1~7_combout\)))) # (!\inst33|inst1|inst|inst5|Mux0~2_combout\ & ((\inst33|inst1|inst13|Mux1~7_combout\ & ((\inst2|inst5|estado~q\))) # 
-- (!\inst33|inst1|inst13|Mux1~7_combout\ & (\inst1|inst5|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|estado~q\,
	datab => \inst2|inst5|estado~q\,
	datac => \inst33|inst1|inst|inst5|Mux0~2_combout\,
	datad => \inst33|inst1|inst13|Mux1~7_combout\,
	combout => \inst33|inst1|inst13|Mux1~8_combout\);

-- Location: LCCOMB_X31_Y17_N4
\inst33|inst1|inst13|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux1~9_combout\ = (\inst33|inst1|inst13|Mux1~4_combout\) # ((\inst33|inst1|inst|inst|inst2|Q\(3) & \inst33|inst1|inst13|Mux1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst13|Mux1~4_combout\,
	datad => \inst33|inst1|inst13|Mux1~8_combout\,
	combout => \inst33|inst1|inst13|Mux1~9_combout\);

-- Location: LCCOMB_X29_Y20_N4
\inst33|inst1|inst|inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst2|Add0~0_combout\ = \inst33|inst1|inst|inst|inst2|Q\(2) $ (((\inst33|inst1|inst|inst|inst2|Q\(0) & \inst33|inst1|inst|inst|inst2|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst33|inst1|inst|inst2|Add0~0_combout\);

-- Location: LCCOMB_X29_Y22_N0
\inst33|inst1|inst3|Y[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[1]~7_combout\ = (\inst33|inst1|inst|inst2|Add1~2_combout\ & (((\inst33|inst1|inst|inst2|Add0~0_combout\) # (\inst33|inst1|inst|inst6|Mux1~0_combout\)))) # (!\inst33|inst1|inst|inst2|Add1~2_combout\ & 
-- (\inst33|inst1|inst|inst6|Mux1~3_combout\ & (!\inst33|inst1|inst|inst2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux1~3_combout\,
	datab => \inst33|inst1|inst|inst2|Add1~2_combout\,
	datac => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datad => \inst33|inst1|inst|inst6|Mux1~0_combout\,
	combout => \inst33|inst1|inst3|Y[1]~7_combout\);

-- Location: LCCOMB_X29_Y22_N14
\inst33|inst1|inst3|Y[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[1]~8_combout\ = (\inst33|inst1|inst|inst2|Add0~0_combout\ & ((\inst33|inst1|inst3|Y[1]~7_combout\ & (\inst33|inst1|inst|inst6|Mux1~2_combout\)) # (!\inst33|inst1|inst3|Y[1]~7_combout\ & ((\inst33|inst1|inst|inst6|Mux1~1_combout\))))) 
-- # (!\inst33|inst1|inst|inst2|Add0~0_combout\ & (((\inst33|inst1|inst3|Y[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst6|Mux1~2_combout\,
	datab => \inst33|inst1|inst|inst2|Add0~0_combout\,
	datac => \inst33|inst1|inst|inst6|Mux1~1_combout\,
	datad => \inst33|inst1|inst3|Y[1]~7_combout\,
	combout => \inst33|inst1|inst3|Y[1]~8_combout\);

-- Location: LCCOMB_X31_Y19_N18
\inst33|inst1|inst3|Y[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst3|Y[1]~9_combout\ = (\inst33|inst1|inst13|Mux1~9_combout\) # ((\inst33|inst1|inst|inst2|Add0~1_combout\ & (\inst33|inst1|inst3|Y[1]~6_combout\)) # (!\inst33|inst1|inst|inst2|Add0~1_combout\ & ((\inst33|inst1|inst3|Y[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst3|Y[1]~6_combout\,
	datab => \inst33|inst1|inst|inst2|Add0~1_combout\,
	datac => \inst33|inst1|inst13|Mux1~9_combout\,
	datad => \inst33|inst1|inst3|Y[1]~8_combout\,
	combout => \inst33|inst1|inst3|Y[1]~9_combout\);

-- Location: LCCOMB_X30_Y19_N10
\inst33|inst4|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan1~1_combout\ = (\inst33|inst4|LessThan0~8_combout\ & (((\inst33|inst1|inst6|Y[0]~10_combout\)))) # (!\inst33|inst4|LessThan0~8_combout\ & ((\inst33|inst1|inst4|Y[0]~12_combout\) # ((\inst33|inst1|inst13|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst4|Y[0]~12_combout\,
	datab => \inst33|inst1|inst13|Mux0~9_combout\,
	datac => \inst33|inst1|inst6|Y[0]~10_combout\,
	datad => \inst33|inst4|LessThan0~8_combout\,
	combout => \inst33|inst4|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y19_N0
\inst33|inst4|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan1~2_combout\ = (\inst33|inst4|min_value~3_combout\ & (((\inst33|inst4|LessThan1~0_combout\ & \inst33|inst4|LessThan1~1_combout\)) # (!\inst33|inst1|inst3|Y[1]~9_combout\))) # (!\inst33|inst4|min_value~3_combout\ & 
-- (\inst33|inst4|LessThan1~0_combout\ & (!\inst33|inst1|inst3|Y[1]~9_combout\ & \inst33|inst4|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|LessThan1~0_combout\,
	datab => \inst33|inst4|min_value~3_combout\,
	datac => \inst33|inst1|inst3|Y[1]~9_combout\,
	datad => \inst33|inst4|LessThan1~1_combout\,
	combout => \inst33|inst4|LessThan1~2_combout\);

-- Location: LCCOMB_X32_Y19_N26
\inst33|inst5|seleccion[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst5|seleccion[0]~9_combout\ = (!\inst33|inst4|LessThan2~10_combout\ & ((\inst33|inst1|inst3|Y[2]~4_combout\ & ((!\inst33|inst4|LessThan1~2_combout\) # (!\inst33|inst4|min_value~2_combout\))) # (!\inst33|inst1|inst3|Y[2]~4_combout\ & 
-- (!\inst33|inst4|min_value~2_combout\ & !\inst33|inst4|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst3|Y[2]~4_combout\,
	datab => \inst33|inst4|min_value~2_combout\,
	datac => \inst33|inst4|LessThan1~2_combout\,
	datad => \inst33|inst4|LessThan2~10_combout\,
	combout => \inst33|inst5|seleccion[0]~9_combout\);

-- Location: LCCOMB_X32_Y19_N6
\inst33|inst5|seleccion[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst5|seleccion[1]~6_combout\ = (\inst33|inst6|q_reg\(1) & (\inst33|inst4|menor_cod[0]~1_combout\ $ (((\inst33|inst6|q_reg\(0)))))) # (!\inst33|inst6|q_reg\(1) & (!\inst33|inst6|q_reg\(0) & (\inst33|inst4|menor_cod[0]~1_combout\ $ 
-- (\inst33|inst4|menor_cod[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|menor_cod[0]~1_combout\,
	datab => \inst33|inst4|menor_cod[1]~0_combout\,
	datac => \inst33|inst6|q_reg\(1),
	datad => \inst33|inst6|q_reg\(0),
	combout => \inst33|inst5|seleccion[1]~6_combout\);

-- Location: LCCOMB_X32_Y19_N22
\inst33|inst5|seleccion[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst5|seleccion[1]~8_combout\ = (\inst30|fstate.decide~q\ & ((\inst33|inst5|seleccion[1]~6_combout\) # ((\inst33|inst5|seleccion[1]~7_combout\ & \inst33|inst5|seleccion[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.decide~q\,
	datab => \inst33|inst5|seleccion[1]~7_combout\,
	datac => \inst33|inst5|seleccion[0]~9_combout\,
	datad => \inst33|inst5|seleccion[1]~6_combout\,
	combout => \inst33|inst5|seleccion[1]~8_combout\);

-- Location: LCCOMB_X34_Y19_N18
\inst30|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Selector4~0_combout\ = (\inst30|fstate.se_choca~q\) # ((\inst30|fstate.nueva_celda~q\ & \SENSOR_MURO~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst30|fstate.nueva_celda~q\,
	datad => \SENSOR_MURO~input_o\,
	combout => \inst30|Selector4~0_combout\);

-- Location: FF_X34_Y19_N19
\inst30|fstate.decide\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst30|Selector4~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|fstate.decide~q\);

-- Location: LCCOMB_X32_Y19_N0
\inst33|inst5|seleccion[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst5|seleccion[0]~4_combout\ = (\inst33|inst6|q_reg\(1) & (\inst33|inst6|q_reg\(0) & (\inst33|inst4|menor_cod[1]~0_combout\ $ (\inst33|inst4|menor_cod[0]~1_combout\)))) # (!\inst33|inst6|q_reg\(1) & ((\inst33|inst4|menor_cod[0]~1_combout\ $ 
-- (\inst33|inst6|q_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst6|q_reg\(1),
	datab => \inst33|inst4|menor_cod[1]~0_combout\,
	datac => \inst33|inst4|menor_cod[0]~1_combout\,
	datad => \inst33|inst6|q_reg\(0),
	combout => \inst33|inst5|seleccion[0]~4_combout\);

-- Location: LCCOMB_X32_Y19_N28
\inst33|inst5|seleccion[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst5|seleccion[0]~5_combout\ = (\inst30|fstate.decide~q\ & ((\inst33|inst5|seleccion[0]~4_combout\) # ((\inst33|inst5|seleccion[0]~9_combout\ & \inst33|inst1|inst|inst|inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst5|seleccion[0]~9_combout\,
	datab => \inst30|fstate.decide~q\,
	datac => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datad => \inst33|inst5|seleccion[0]~4_combout\,
	combout => \inst33|inst5|seleccion[0]~5_combout\);

-- Location: LCCOMB_X34_Y19_N16
\inst33|inst3|inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector4~1_combout\ = (\inst33|inst3|inst|Selector4~0_combout\) # ((\inst33|inst3|inst|Equal1~0_combout\ & (\inst33|inst5|seleccion[1]~8_combout\ & !\inst33|inst5|seleccion[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|Selector4~0_combout\,
	datab => \inst33|inst3|inst|Equal1~0_combout\,
	datac => \inst33|inst5|seleccion[1]~8_combout\,
	datad => \inst33|inst5|seleccion[0]~5_combout\,
	combout => \inst33|inst3|inst|Selector4~1_combout\);

-- Location: FF_X34_Y19_N17
\inst33|inst3|inst|fstate.Gira_90_der\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst33|inst3|inst|Selector4~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst|fstate.Gira_90_der~q\);

-- Location: LCCOMB_X34_Y19_N0
\inst33|inst3|inst|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|WideOr6~combout\ = (\inst33|inst3|inst|fstate.Corrige_der~q\) # ((\inst33|inst3|inst|fstate.Gira_90_der~q\) # (\inst33|inst3|inst|fstate.Gira_180~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Corrige_der~q\,
	datac => \inst33|inst3|inst|fstate.Gira_90_der~q\,
	datad => \inst33|inst3|inst|fstate.Gira_180~q\,
	combout => \inst33|inst3|inst|WideOr6~combout\);

-- Location: LCCOMB_X34_Y19_N4
\inst30|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Selector5~0_combout\ = (\inst30|fstate.decide~q\) # ((\inst30|fstate.girando~q\ & ((\inst33|inst3|inst|WideOr6~combout\) # (!\inst33|inst3|inst|WideOr7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|WideOr7~0_combout\,
	datab => \inst33|inst3|inst|WideOr6~combout\,
	datac => \inst30|fstate.girando~q\,
	datad => \inst30|fstate.decide~q\,
	combout => \inst30|Selector5~0_combout\);

-- Location: FF_X34_Y19_N5
\inst30|fstate.girando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst30|Selector5~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|fstate.girando~q\);

-- Location: LCCOMB_X34_Y19_N12
\inst30|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Selector0~0_combout\ = (!\inst30|fstate.MUEVE~q\ & (\inst28|btn_out~q\ $ (!\SENSOR_MURO~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|btn_out~q\,
	datab => \inst30|fstate.MUEVE~q\,
	datad => \SENSOR_MURO~input_o\,
	combout => \inst30|Selector0~0_combout\);

-- Location: LCCOMB_X34_Y19_N22
\inst30|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Selector0~1_combout\ = (!\inst30|Selector0~0_combout\ & (((\inst33|inst3|inst|WideOr6~combout\) # (!\inst30|fstate.girando~q\)) # (!\inst33|inst3|inst|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|WideOr7~0_combout\,
	datab => \inst33|inst3|inst|WideOr6~combout\,
	datac => \inst30|fstate.girando~q\,
	datad => \inst30|Selector0~0_combout\,
	combout => \inst30|Selector0~1_combout\);

-- Location: FF_X34_Y19_N23
\inst30|fstate.MUEVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst30|Selector0~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|fstate.MUEVE~q\);

-- Location: LCCOMB_X34_Y19_N28
\inst30|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|Selector3~0_combout\ = (!\SENSOR_MURO~input_o\ & ((\inst30|fstate.nueva_celda~q\) # ((\inst28|btn_out~q\ & !\inst30|fstate.MUEVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SENSOR_MURO~input_o\,
	datab => \inst28|btn_out~q\,
	datac => \inst30|fstate.nueva_celda~q\,
	datad => \inst30|fstate.MUEVE~q\,
	combout => \inst30|Selector3~0_combout\);

-- Location: FF_X34_Y19_N29
\inst30|fstate.se_choca\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst30|Selector3~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|fstate.se_choca~q\);

-- Location: LCCOMB_X31_Y22_N24
\inst13|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst8|estado~0_combout\ = (\inst13|inst8|estado~q\) # ((\inst35|inst3|Mux0~5_combout\ & (\inst30|fstate.se_choca~q\ & \inst33|inst1|inst|inst|inst|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~5_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst13|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	combout => \inst13|inst8|estado~0_combout\);

-- Location: FF_X31_Y22_N25
\inst13|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst8|estado~q\);

-- Location: LCCOMB_X32_Y20_N14
\inst15|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst8|estado~0_combout\ = (\inst15|inst8|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst15|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~7_combout\,
	combout => \inst15|inst8|estado~0_combout\);

-- Location: FF_X32_Y20_N15
\inst15|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst8|estado~q\);

-- Location: LCCOMB_X35_Y21_N12
\inst33|inst1|inst13|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~2_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst|inst2|Q\(0))))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst14|inst8|estado~q\)) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst15|inst8|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst8|estado~q\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst15|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst13|Mux2~2_combout\);

-- Location: LCCOMB_X35_Y21_N14
\inst33|inst1|inst13|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux2~2_combout\ & (\inst12|inst8|estado~q\)) # (!\inst33|inst1|inst13|Mux2~2_combout\ & ((\inst13|inst8|estado~q\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst8|estado~q\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst13|inst8|estado~q\,
	datad => \inst33|inst1|inst13|Mux2~2_combout\,
	combout => \inst33|inst1|inst13|Mux2~3_combout\);

-- Location: LCCOMB_X28_Y21_N12
\inst11|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst8|estado~0_combout\ = (\inst11|inst8|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst35|inst3|Mux0~3_combout\ & \inst33|inst1|inst|inst|inst|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst35|inst3|Mux0~3_combout\,
	datac => \inst11|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	combout => \inst11|inst8|estado~0_combout\);

-- Location: FF_X28_Y21_N13
\inst11|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|inst8|estado~q\);

-- Location: LCCOMB_X35_Y21_N28
\inst33|inst1|inst13|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst|inst|inst2|Q\(0))))) # (!\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst10|inst8|estado~q\)) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst11|inst8|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst8|estado~q\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst11|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst2|Q\(0),
	combout => \inst33|inst1|inst13|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y21_N2
\inst33|inst1|inst13|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~1_combout\ = (\inst33|inst1|inst13|Mux2~0_combout\ & (((\inst8|inst8|estado~q\) # (!\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst13|Mux2~0_combout\ & (\inst9|inst8|estado~q\ & 
-- ((\inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst8|estado~q\,
	datab => \inst33|inst1|inst13|Mux2~0_combout\,
	datac => \inst8|inst8|estado~q\,
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst13|Mux2~1_combout\);

-- Location: LCCOMB_X35_Y21_N4
\inst33|inst1|inst13|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~4_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst13|Mux2~1_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst13|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst13|Mux2~3_combout\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(2),
	datad => \inst33|inst1|inst13|Mux2~1_combout\,
	combout => \inst33|inst1|inst13|Mux2~4_combout\);

-- Location: LCCOMB_X31_Y18_N14
\inst2|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst8|estado~0_combout\ = (\inst2|inst8|estado~q\) # ((\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & (\inst30|fstate.se_choca~q\ & \inst35|inst3|Mux0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datab => \inst30|fstate.se_choca~q\,
	datac => \inst2|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~10_combout\,
	combout => \inst2|inst8|estado~0_combout\);

-- Location: FF_X31_Y18_N15
\inst2|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8|estado~q\);

-- Location: LCCOMB_X31_Y17_N22
\inst7|inst8|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst8|estado~0_combout\ = (\inst7|inst8|estado~q\) # ((\inst30|fstate.se_choca~q\ & (\inst33|inst1|inst|inst|inst|Mux2~0_combout\ & \inst35|inst3|Mux0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|fstate.se_choca~q\,
	datab => \inst33|inst1|inst|inst|inst|Mux2~0_combout\,
	datac => \inst7|inst8|estado~q\,
	datad => \inst35|inst3|Mux0~14_combout\,
	combout => \inst7|inst8|estado~0_combout\);

-- Location: FF_X31_Y17_N23
\inst7|inst8|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|inst8|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|inst8|estado~q\);

-- Location: LCCOMB_X32_Y21_N0
\inst33|inst1|inst13|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst6|inst8|estado~q\) # ((\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (((!\inst33|inst1|inst|inst|inst2|Q\(1) & 
-- \inst7|inst8|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst8|estado~q\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(0),
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst7|inst8|estado~q\,
	combout => \inst33|inst1|inst13|Mux2~5_combout\);

-- Location: LCCOMB_X32_Y21_N10
\inst33|inst1|inst13|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux2~5_combout\ & (\inst4|inst8|estado~q\)) # (!\inst33|inst1|inst13|Mux2~5_combout\ & ((\inst5|inst8|estado~q\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst8|estado~q\,
	datab => \inst5|inst8|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(1),
	datad => \inst33|inst1|inst13|Mux2~5_combout\,
	combout => \inst33|inst1|inst13|Mux2~6_combout\);

-- Location: LCCOMB_X32_Y21_N8
\inst33|inst1|inst13|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~7_combout\ = (\inst33|inst1|inst|inst5|Mux0~9_combout\ & ((\inst33|inst1|inst|inst5|Mux0~10_combout\ & (\inst|inst8|estado~q\)) # (!\inst33|inst1|inst|inst5|Mux0~10_combout\ & ((\inst33|inst1|inst13|Mux2~6_combout\))))) # 
-- (!\inst33|inst1|inst|inst5|Mux0~9_combout\ & (((!\inst33|inst1|inst|inst5|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux0~9_combout\,
	datab => \inst|inst8|estado~q\,
	datac => \inst33|inst1|inst|inst5|Mux0~10_combout\,
	datad => \inst33|inst1|inst13|Mux2~6_combout\,
	combout => \inst33|inst1|inst13|Mux2~7_combout\);

-- Location: LCCOMB_X35_Y21_N18
\inst33|inst1|inst13|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~8_combout\ = (\inst33|inst1|inst|inst5|Mux0~2_combout\ & (((\inst33|inst1|inst13|Mux2~7_combout\)))) # (!\inst33|inst1|inst|inst5|Mux0~2_combout\ & ((\inst33|inst1|inst13|Mux2~7_combout\ & (\inst2|inst8|estado~q\)) # 
-- (!\inst33|inst1|inst13|Mux2~7_combout\ & ((\inst1|inst8|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux0~2_combout\,
	datab => \inst2|inst8|estado~q\,
	datac => \inst1|inst8|estado~q\,
	datad => \inst33|inst1|inst13|Mux2~7_combout\,
	combout => \inst33|inst1|inst13|Mux2~8_combout\);

-- Location: LCCOMB_X35_Y21_N24
\inst33|inst1|inst13|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux2~9_combout\ = (\inst33|inst1|inst13|Mux2~4_combout\) # ((\inst33|inst1|inst|inst|inst2|Q\(3) & \inst33|inst1|inst13|Mux2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst13|Mux2~4_combout\,
	datad => \inst33|inst1|inst13|Mux2~8_combout\,
	combout => \inst33|inst1|inst13|Mux2~9_combout\);

-- Location: LCCOMB_X28_Y21_N2
\inst33|inst1|inst|inst5|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst5|Mux0~11_combout\ = (\inst33|inst1|inst|inst5|Mux0~4_combout\ & ((\inst15|inst2|reg_val\(2)) # ((\inst33|inst1|inst|inst5|Mux0~2_combout\)))) # (!\inst33|inst1|inst|inst5|Mux0~4_combout\ & (((\inst14|inst2|reg_val\(2) & 
-- !\inst33|inst1|inst|inst5|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst2|reg_val\(2),
	datab => \inst14|inst2|reg_val\(2),
	datac => \inst33|inst1|inst|inst5|Mux0~4_combout\,
	datad => \inst33|inst1|inst|inst5|Mux0~2_combout\,
	combout => \inst33|inst1|inst|inst5|Mux0~11_combout\);

-- Location: LCCOMB_X28_Y21_N24
\inst33|inst1|inst5|Y[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst5|Y[2]~4_combout\ = (!\inst33|inst1|inst|inst2|Add3~0_combout\ & ((\inst33|inst1|inst|inst5|Mux0~1_combout\ & (\inst33|inst1|inst|inst5|Mux0~0_combout\)) # (!\inst33|inst1|inst|inst5|Mux0~1_combout\ & 
-- ((\inst33|inst1|inst|inst5|Mux0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux0~0_combout\,
	datab => \inst33|inst1|inst|inst5|Mux0~1_combout\,
	datac => \inst33|inst1|inst|inst2|Add3~0_combout\,
	datad => \inst33|inst1|inst|inst5|Mux0~11_combout\,
	combout => \inst33|inst1|inst5|Y[2]~4_combout\);

-- Location: LCCOMB_X31_Y19_N16
\inst33|inst4|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~11_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & (!\inst33|inst1|inst|inst5|Mux1~10_combout\)) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & ((!\inst33|inst1|inst5|Y[1]~3_combout\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & ((!\inst33|inst1|inst5|Y[1]~3_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (!\inst33|inst1|inst|inst5|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst|inst5|Mux1~10_combout\,
	datad => \inst33|inst1|inst5|Y[1]~3_combout\,
	combout => \inst33|inst4|LessThan2~11_combout\);

-- Location: LCCOMB_X31_Y19_N28
\inst33|inst4|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~4_combout\ = (\inst33|inst1|inst|inst2|Add3~0_combout\ & (((\inst33|inst4|min_value~3_combout\)))) # (!\inst33|inst1|inst|inst2|Add3~0_combout\ & ((\inst33|inst1|inst|inst5|Mux2~4_combout\ & 
-- ((\inst33|inst1|inst|inst5|Mux1~10_combout\) # (!\inst33|inst4|min_value~3_combout\))) # (!\inst33|inst1|inst|inst5|Mux2~4_combout\ & (\inst33|inst1|inst|inst5|Mux1~10_combout\ & !\inst33|inst4|min_value~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux2~4_combout\,
	datab => \inst33|inst1|inst|inst2|Add3~0_combout\,
	datac => \inst33|inst1|inst|inst5|Mux1~10_combout\,
	datad => \inst33|inst4|min_value~3_combout\,
	combout => \inst33|inst4|LessThan2~4_combout\);

-- Location: LCCOMB_X31_Y19_N2
\inst33|inst4|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~5_combout\ = (\inst33|inst1|inst|inst2|Add3~0_combout\ & ((\inst33|inst1|inst5|Y[1]~3_combout\ & (!\inst33|inst1|inst5|Y[0]~2_combout\ & \inst33|inst4|LessThan2~4_combout\)) # (!\inst33|inst1|inst5|Y[1]~3_combout\ & 
-- ((\inst33|inst4|LessThan2~4_combout\) # (!\inst33|inst1|inst5|Y[0]~2_combout\))))) # (!\inst33|inst1|inst|inst2|Add3~0_combout\ & (((!\inst33|inst4|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst2|Add3~0_combout\,
	datab => \inst33|inst1|inst5|Y[1]~3_combout\,
	datac => \inst33|inst1|inst5|Y[0]~2_combout\,
	datad => \inst33|inst4|LessThan2~4_combout\,
	combout => \inst33|inst4|LessThan2~5_combout\);

-- Location: LCCOMB_X31_Y19_N20
\inst33|inst4|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~6_combout\ = (\inst33|inst4|LessThan2~5_combout\ & ((\inst33|inst4|LessThan1~1_combout\) # ((\inst33|inst4|min_value~3_combout\ & \inst33|inst4|LessThan2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|LessThan1~1_combout\,
	datab => \inst33|inst4|min_value~3_combout\,
	datac => \inst33|inst4|LessThan2~11_combout\,
	datad => \inst33|inst4|LessThan2~5_combout\,
	combout => \inst33|inst4|LessThan2~6_combout\);

-- Location: LCCOMB_X31_Y19_N14
\inst33|inst4|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~7_combout\ = (\inst33|inst4|min_value~2_combout\ & ((\inst33|inst4|LessThan2~6_combout\) # ((!\inst33|inst1|inst5|Y[2]~5_combout\ & !\inst33|inst1|inst5|Y[2]~4_combout\)))) # (!\inst33|inst4|min_value~2_combout\ & 
-- (!\inst33|inst1|inst5|Y[2]~5_combout\ & (!\inst33|inst1|inst5|Y[2]~4_combout\ & \inst33|inst4|LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst5|Y[2]~5_combout\,
	datab => \inst33|inst1|inst5|Y[2]~4_combout\,
	datac => \inst33|inst4|min_value~2_combout\,
	datad => \inst33|inst4|LessThan2~6_combout\,
	combout => \inst33|inst4|LessThan2~7_combout\);

-- Location: LCCOMB_X32_Y19_N10
\inst33|inst4|LessThan2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan2~10_combout\ = (!\inst33|inst1|inst13|Mux2~9_combout\ & ((\inst33|inst4|LessThan1~3_combout\ & (\inst33|inst4|LessThan2~9_combout\)) # (!\inst33|inst4|LessThan1~3_combout\ & ((\inst33|inst4|LessThan2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|LessThan2~9_combout\,
	datab => \inst33|inst1|inst13|Mux2~9_combout\,
	datac => \inst33|inst4|LessThan1~3_combout\,
	datad => \inst33|inst4|LessThan2~7_combout\,
	combout => \inst33|inst4|LessThan2~10_combout\);

-- Location: LCCOMB_X32_Y19_N8
\inst33|inst4|menor_cod[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|menor_cod[1]~0_combout\ = (\inst33|inst4|LessThan2~10_combout\) # ((\inst33|inst4|LessThan0~8_combout\ & !\inst33|inst4|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|LessThan0~8_combout\,
	datac => \inst33|inst4|LessThan1~3_combout\,
	datad => \inst33|inst4|LessThan2~10_combout\,
	combout => \inst33|inst4|menor_cod[1]~0_combout\);

-- Location: FF_X32_Y19_N19
\inst33|inst6|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|fstate.girando~clkctrl_outclk\,
	asdata => \inst33|inst4|menor_cod[1]~0_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst6|q_reg\(1));

-- Location: LCCOMB_X32_Y19_N20
\inst33|inst1|inst|inst|inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst|inst|Mux2~1_combout\ = (\inst33|inst6|q_reg\(1) & \inst33|inst6|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst6|q_reg\(1),
	datad => \inst33|inst6|q_reg\(0),
	combout => \inst33|inst1|inst|inst|inst|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y21_N20
\inst33|inst1|inst|inst|inst2|Q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst|inst2|Q[2]~8_combout\ = ((\inst33|inst1|inst|inst|inst2|Q\(2) $ (\inst33|inst1|inst|inst|inst|Mux2~1_combout\ $ (\inst33|inst1|inst|inst|inst2|Q[1]~7\)))) # (GND)
-- \inst33|inst1|inst|inst|inst2|Q[2]~9\ = CARRY((\inst33|inst1|inst|inst|inst2|Q\(2) & ((!\inst33|inst1|inst|inst|inst2|Q[1]~7\) # (!\inst33|inst1|inst|inst|inst|Mux2~1_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & 
-- (!\inst33|inst1|inst|inst|inst|Mux2~1_combout\ & !\inst33|inst1|inst|inst|inst2|Q[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(2),
	datab => \inst33|inst1|inst|inst|inst|Mux2~1_combout\,
	datad => VCC,
	cin => \inst33|inst1|inst|inst|inst2|Q[1]~7\,
	combout => \inst33|inst1|inst|inst|inst2|Q[2]~8_combout\,
	cout => \inst33|inst1|inst|inst|inst2|Q[2]~9\);

-- Location: FF_X30_Y21_N21
\inst33|inst1|inst|inst|inst2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|fstate.nueva_celda~clkctrl_outclk\,
	d => \inst33|inst1|inst|inst|inst2|Q[2]~8_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst1|inst|inst|inst2|Q\(2));

-- Location: LCCOMB_X31_Y21_N16
\inst33|inst1|inst13|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~2_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & (((\inst14|inst3|estado~q\) # (\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (\inst15|inst3|estado~q\ & 
-- ((!\inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst3|estado~q\,
	datab => \inst14|inst3|estado~q\,
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst13|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y21_N22
\inst33|inst1|inst13|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~3_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux0~2_combout\ & ((\inst12|inst3|estado~q\))) # (!\inst33|inst1|inst13|Mux0~2_combout\ & (\inst13|inst3|estado~q\)))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst3|estado~q\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst12|inst3|estado~q\,
	datad => \inst33|inst1|inst13|Mux0~2_combout\,
	combout => \inst33|inst1|inst13|Mux0~3_combout\);

-- Location: LCCOMB_X31_Y21_N30
\inst33|inst1|inst13|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst10|inst3|estado~q\) # ((\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (((\inst11|inst3|estado~q\ & 
-- !\inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(0),
	datab => \inst10|inst3|estado~q\,
	datac => \inst11|inst3|estado~q\,
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst13|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y21_N24
\inst33|inst1|inst13|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~1_combout\ = (\inst33|inst1|inst13|Mux0~0_combout\ & (((\inst8|inst3|estado~q\) # (!\inst33|inst1|inst|inst|inst2|Q\(1))))) # (!\inst33|inst1|inst13|Mux0~0_combout\ & (\inst9|inst3|estado~q\ & 
-- ((\inst33|inst1|inst|inst|inst2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|estado~q\,
	datab => \inst8|inst3|estado~q\,
	datac => \inst33|inst1|inst13|Mux0~0_combout\,
	datad => \inst33|inst1|inst|inst|inst2|Q\(1),
	combout => \inst33|inst1|inst13|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y21_N4
\inst33|inst1|inst13|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~4_combout\ = (!\inst33|inst1|inst|inst|inst2|Q\(3) & ((\inst33|inst1|inst|inst|inst2|Q\(2) & ((\inst33|inst1|inst13|Mux0~1_combout\))) # (!\inst33|inst1|inst|inst|inst2|Q\(2) & (\inst33|inst1|inst13|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datab => \inst33|inst1|inst|inst|inst2|Q\(2),
	datac => \inst33|inst1|inst13|Mux0~3_combout\,
	datad => \inst33|inst1|inst13|Mux0~1_combout\,
	combout => \inst33|inst1|inst13|Mux0~4_combout\);

-- Location: LCCOMB_X31_Y21_N14
\inst2|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|estado~0_combout\ = (\inst2|inst3|estado~q\) # ((\inst35|inst3|Mux0~10_combout\ & \inst35|inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~10_combout\,
	datab => \inst35|inst|Mux0~0_combout\,
	datac => \inst2|inst3|estado~q\,
	combout => \inst2|inst3|estado~0_combout\);

-- Location: FF_X31_Y21_N15
\inst2|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3|estado~q\);

-- Location: LCCOMB_X28_Y19_N20
\inst1|inst3|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3|estado~0_combout\ = (\inst1|inst3|estado~q\) # ((\inst35|inst|Mux0~0_combout\ & \inst35|inst3|Mux0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst|Mux0~0_combout\,
	datac => \inst1|inst3|estado~q\,
	datad => \inst35|inst3|Mux0~9_combout\,
	combout => \inst1|inst3|estado~0_combout\);

-- Location: FF_X28_Y19_N21
\inst1|inst3|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|inst3|estado~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3|estado~q\);

-- Location: LCCOMB_X31_Y21_N18
\inst33|inst1|inst13|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~5_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(0) & ((\inst33|inst1|inst|inst|inst2|Q\(1)) # ((\inst6|inst3|estado~q\)))) # (!\inst33|inst1|inst|inst|inst2|Q\(0) & (!\inst33|inst1|inst|inst|inst2|Q\(1) & 
-- ((\inst7|inst3|estado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(0),
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst6|inst3|estado~q\,
	datad => \inst7|inst3|estado~q\,
	combout => \inst33|inst1|inst13|Mux0~5_combout\);

-- Location: LCCOMB_X31_Y21_N10
\inst33|inst1|inst13|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~6_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & ((\inst33|inst1|inst13|Mux0~5_combout\ & (\inst4|inst3|estado~q\)) # (!\inst33|inst1|inst13|Mux0~5_combout\ & ((\inst5|inst3|estado~q\))))) # 
-- (!\inst33|inst1|inst|inst|inst2|Q\(1) & (((\inst33|inst1|inst13|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|estado~q\,
	datab => \inst33|inst1|inst|inst|inst2|Q\(1),
	datac => \inst5|inst3|estado~q\,
	datad => \inst33|inst1|inst13|Mux0~5_combout\,
	combout => \inst33|inst1|inst13|Mux0~6_combout\);

-- Location: LCCOMB_X31_Y21_N0
\inst33|inst1|inst13|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~7_combout\ = (\inst33|inst1|inst|inst5|Mux0~10_combout\ & (\inst|inst3|estado~q\ & (\inst33|inst1|inst|inst5|Mux0~9_combout\))) # (!\inst33|inst1|inst|inst5|Mux0~10_combout\ & (((\inst33|inst1|inst13|Mux0~6_combout\) # 
-- (!\inst33|inst1|inst|inst5|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|estado~q\,
	datab => \inst33|inst1|inst|inst5|Mux0~10_combout\,
	datac => \inst33|inst1|inst|inst5|Mux0~9_combout\,
	datad => \inst33|inst1|inst13|Mux0~6_combout\,
	combout => \inst33|inst1|inst13|Mux0~7_combout\);

-- Location: LCCOMB_X31_Y21_N2
\inst33|inst1|inst13|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~8_combout\ = (\inst33|inst1|inst|inst5|Mux0~2_combout\ & (((\inst33|inst1|inst13|Mux0~7_combout\)))) # (!\inst33|inst1|inst|inst5|Mux0~2_combout\ & ((\inst33|inst1|inst13|Mux0~7_combout\ & (\inst2|inst3|estado~q\)) # 
-- (!\inst33|inst1|inst13|Mux0~7_combout\ & ((\inst1|inst3|estado~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst5|Mux0~2_combout\,
	datab => \inst2|inst3|estado~q\,
	datac => \inst1|inst3|estado~q\,
	datad => \inst33|inst1|inst13|Mux0~7_combout\,
	combout => \inst33|inst1|inst13|Mux0~8_combout\);

-- Location: LCCOMB_X31_Y21_N28
\inst33|inst1|inst13|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst13|Mux0~9_combout\ = (\inst33|inst1|inst13|Mux0~4_combout\) # ((\inst33|inst1|inst|inst|inst2|Q\(3) & \inst33|inst1|inst13|Mux0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst13|Mux0~4_combout\,
	datad => \inst33|inst1|inst13|Mux0~8_combout\,
	combout => \inst33|inst1|inst13|Mux0~9_combout\);

-- Location: LCCOMB_X31_Y19_N8
\inst33|inst4|min_value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|min_value~2_combout\ = (\inst33|inst4|LessThan0~8_combout\ & (((\inst33|inst1|inst6|Y[2]~8_combout\)))) # (!\inst33|inst4|LessThan0~8_combout\ & (((\inst33|inst1|inst13|Mux0~9_combout\)) # (!\inst33|inst4|min_value~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|min_value~0_combout\,
	datab => \inst33|inst1|inst13|Mux0~9_combout\,
	datac => \inst33|inst1|inst6|Y[2]~8_combout\,
	datad => \inst33|inst4|LessThan0~8_combout\,
	combout => \inst33|inst4|min_value~2_combout\);

-- Location: LCCOMB_X31_Y19_N6
\inst33|inst4|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|LessThan1~3_combout\ = (\inst33|inst1|inst3|Y[2]~4_combout\ & (\inst33|inst4|min_value~2_combout\ & \inst33|inst4|LessThan1~2_combout\)) # (!\inst33|inst1|inst3|Y[2]~4_combout\ & ((\inst33|inst4|min_value~2_combout\) # 
-- (\inst33|inst4|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst3|Y[2]~4_combout\,
	datac => \inst33|inst4|min_value~2_combout\,
	datad => \inst33|inst4|LessThan1~2_combout\,
	combout => \inst33|inst4|LessThan1~3_combout\);

-- Location: LCCOMB_X32_Y19_N30
\inst33|inst4|menor_cod[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst4|menor_cod[0]~1_combout\ = (!\inst33|inst4|LessThan2~10_combout\ & ((\inst33|inst4|LessThan0~8_combout\) # (\inst33|inst4|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst4|LessThan0~8_combout\,
	datac => \inst33|inst4|LessThan1~3_combout\,
	datad => \inst33|inst4|LessThan2~10_combout\,
	combout => \inst33|inst4|menor_cod[0]~1_combout\);

-- Location: FF_X32_Y19_N17
\inst33|inst6|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|fstate.girando~clkctrl_outclk\,
	asdata => \inst33|inst4|menor_cod[0]~1_combout\,
	clrn => \Reset1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst6|q_reg\(0));

-- Location: LCCOMB_X31_Y22_N18
\inst33|inst1|inst|inst|inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst|inst|Mux1~0_combout\ = \inst33|inst6|q_reg\(0) $ (\inst33|inst6|q_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst6|q_reg\(0),
	datad => \inst33|inst6|q_reg\(1),
	combout => \inst33|inst1|inst|inst|inst|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y21_N22
\inst33|inst1|inst|inst|inst2|Q[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst1|inst|inst|inst2|Q[3]~10_combout\ = \inst33|inst1|inst|inst|inst2|Q\(3) $ (\inst33|inst1|inst|inst|inst2|Q[2]~9\ $ (\inst33|inst1|inst|inst|inst|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(3),
	datad => \inst33|inst1|inst|inst|inst|Mux1~0_combout\,
	cin => \inst33|inst1|inst|inst|inst2|Q[2]~9\,
	combout => \inst33|inst1|inst|inst|inst2|Q[3]~10_combout\);

-- Location: FF_X30_Y21_N23
\inst33|inst1|inst|inst|inst2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|fstate.nueva_celda~clkctrl_outclk\,
	d => \inst33|inst1|inst|inst|inst2|Q[3]~10_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst1|inst|inst|inst2|Q\(3));

-- Location: LCCOMB_X32_Y22_N4
\inst35|inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|inst3|Mux0~0_combout\ = (\inst33|inst1|inst|inst|inst2|Q\(1) & (\inst33|inst1|inst|inst|inst2|Q\(3) & (\inst33|inst1|inst|inst|inst2|Q\(0) & \inst33|inst1|inst|inst|inst2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst1|inst|inst|inst2|Q\(1),
	datab => \inst33|inst1|inst|inst|inst2|Q\(3),
	datac => \inst33|inst1|inst|inst|inst2|Q\(0),
	datad => \inst33|inst1|inst|inst|inst2|Q\(2),
	combout => \inst35|inst3|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y19_N24
\inst33|inst3|inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector0~0_combout\ = (\inst33|inst3|inst2|fin_reg~q\ & ((\inst33|inst3|inst|fstate.Gira_90_izq~q\) # ((\inst33|inst3|inst|fstate.Gira_180~q\) # (\inst33|inst3|inst|fstate.Gira_90_der~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Gira_90_izq~q\,
	datab => \inst33|inst3|inst|fstate.Gira_180~q\,
	datac => \inst33|inst3|inst|fstate.Gira_90_der~q\,
	datad => \inst33|inst3|inst2|fin_reg~q\,
	combout => \inst33|inst3|inst|Selector0~0_combout\);

-- Location: LCCOMB_X36_Y20_N30
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[5]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(4),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[5]~feeder_combout\);

-- Location: LCCOMB_X39_Y21_N12
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\ = (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0) & (\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\ & (!\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2) & 
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(0),
	datab => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always5~2_combout\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\);

-- Location: FF_X36_Y20_N31
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[5]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(5));

-- Location: LCCOMB_X36_Y20_N18
\inst33|inst3|inst8|adc_mega_0|CH1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~9_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(5),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~9_combout\);

-- Location: FF_X36_Y20_N19
\inst33|inst3|inst8|adc_mega_0|CH1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~9_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(5));

-- Location: LCCOMB_X36_Y20_N26
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[7]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(6),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[7]~feeder_combout\);

-- Location: FF_X36_Y20_N27
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[7]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(7));

-- Location: LCCOMB_X36_Y20_N22
\inst33|inst3|inst8|adc_mega_0|CH1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~11_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(7),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~11_combout\);

-- Location: FF_X36_Y20_N23
\inst33|inst3|inst8|adc_mega_0|CH1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~11_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(7));

-- Location: FF_X38_Y21_N1
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(3),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(4));

-- Location: LCCOMB_X36_Y20_N0
\inst33|inst3|inst8|adc_mega_0|CH1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~8_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset1~input_o\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(4),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~8_combout\);

-- Location: FF_X36_Y20_N1
\inst33|inst3|inst8|adc_mega_0|CH1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~8_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(4));

-- Location: LCCOMB_X36_Y20_N28
\inst33|inst3|inst10|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst10|LessThan0~2_combout\ = (\inst33|inst3|inst8|adc_mega_0|CH1\(6) & (\inst33|inst3|inst8|adc_mega_0|CH1\(5) & (\inst33|inst3|inst8|adc_mega_0|CH1\(7) & \inst33|inst3|inst8|adc_mega_0|CH1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|CH1\(6),
	datab => \inst33|inst3|inst8|adc_mega_0|CH1\(5),
	datac => \inst33|inst3|inst8|adc_mega_0|CH1\(7),
	datad => \inst33|inst3|inst8|adc_mega_0|CH1\(4),
	combout => \inst33|inst3|inst10|LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y20_N28
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[2]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[2]~feeder_combout\);

-- Location: FF_X39_Y20_N29
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[2]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(2));

-- Location: LCCOMB_X39_Y20_N16
\inst33|inst3|inst8|adc_mega_0|CH1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~5_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(2),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~5_combout\);

-- Location: FF_X39_Y20_N17
\inst33|inst3|inst8|adc_mega_0|CH1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~5_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(2));

-- Location: LCCOMB_X38_Y20_N2
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[0]~feeder_combout\ = \ADC_DOUT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_DOUT~input_o\,
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[0]~feeder_combout\);

-- Location: FF_X38_Y20_N3
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[0]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(0));

-- Location: LCCOMB_X39_Y20_N10
\inst33|inst3|inst8|adc_mega_0|CH1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~6_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset1~input_o\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(0),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~6_combout\);

-- Location: FF_X39_Y20_N11
\inst33|inst3|inst8|adc_mega_0|CH1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~6_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(0));

-- Location: FF_X39_Y20_N15
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(0),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(1));

-- Location: LCCOMB_X39_Y20_N20
\inst33|inst3|inst8|adc_mega_0|CH1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~7_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(1),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~7_combout\);

-- Location: FF_X39_Y20_N21
\inst33|inst3|inst8|adc_mega_0|CH1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~7_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(1));

-- Location: LCCOMB_X39_Y20_N2
\inst33|inst3|inst10|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst10|LessThan0~1_combout\ = (\inst33|inst3|inst8|adc_mega_0|CH1\(3) & ((\inst33|inst3|inst8|adc_mega_0|CH1\(2)) # ((\inst33|inst3|inst8|adc_mega_0|CH1\(0) & \inst33|inst3|inst8|adc_mega_0|CH1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|CH1\(3),
	datab => \inst33|inst3|inst8|adc_mega_0|CH1\(2),
	datac => \inst33|inst3|inst8|adc_mega_0|CH1\(0),
	datad => \inst33|inst3|inst8|adc_mega_0|CH1\(1),
	combout => \inst33|inst3|inst10|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y20_N30
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[9]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(8),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[9]~feeder_combout\);

-- Location: FF_X39_Y20_N31
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[9]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(9));

-- Location: LCCOMB_X39_Y20_N18
\inst33|inst3|inst8|adc_mega_0|CH1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~1_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(9),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~1_combout\);

-- Location: FF_X39_Y20_N19
\inst33|inst3|inst8|adc_mega_0|CH1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~1_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(9));

-- Location: LCCOMB_X38_Y20_N14
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(9),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\);

-- Location: FF_X38_Y20_N15
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(10));

-- Location: FF_X38_Y20_N9
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(10),
	sload => VCC,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(11));

-- Location: LCCOMB_X39_Y20_N22
\inst33|inst3|inst8|adc_mega_0|CH1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~3_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset1~input_o\,
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(11),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~3_combout\);

-- Location: FF_X39_Y20_N23
\inst33|inst3|inst8|adc_mega_0|CH1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~3_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(11));

-- Location: LCCOMB_X39_Y20_N4
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[8]~feeder_combout\ = \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|shift_reg\(7),
	combout => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[8]~feeder_combout\);

-- Location: FF_X39_Y20_N5
\inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1[8]~feeder_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(8));

-- Location: LCCOMB_X39_Y20_N24
\inst33|inst3|inst8|adc_mega_0|CH1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst8|adc_mega_0|CH1~0_combout\ = (\Reset1~input_o\ & \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset1~input_o\,
	datac => \inst33|inst3|inst8|adc_mega_0|ADC_CTRL|reading1\(8),
	combout => \inst33|inst3|inst8|adc_mega_0|CH1~0_combout\);

-- Location: FF_X39_Y20_N25
\inst33|inst3|inst8|adc_mega_0|CH1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst33|inst3|inst8|adc_mega_0|CH1~0_combout\,
	ena => \inst33|inst3|inst8|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst8|adc_mega_0|CH1\(8));

-- Location: LCCOMB_X39_Y20_N0
\inst33|inst3|inst10|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst10|LessThan0~0_combout\ = (\inst33|inst3|inst8|adc_mega_0|CH1\(10)) # ((\inst33|inst3|inst8|adc_mega_0|CH1\(9)) # ((\inst33|inst3|inst8|adc_mega_0|CH1\(11)) # (\inst33|inst3|inst8|adc_mega_0|CH1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst8|adc_mega_0|CH1\(10),
	datab => \inst33|inst3|inst8|adc_mega_0|CH1\(9),
	datac => \inst33|inst3|inst8|adc_mega_0|CH1\(11),
	datad => \inst33|inst3|inst8|adc_mega_0|CH1\(8),
	combout => \inst33|inst3|inst10|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y19_N18
\inst33|inst3|inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector2~0_combout\ = (!\inst35|inst3|Mux0~0_combout\ & (!\inst33|inst3|inst10|LessThan0~0_combout\ & ((!\inst33|inst3|inst10|LessThan0~1_combout\) # (!\inst33|inst3|inst10|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~0_combout\,
	datab => \inst33|inst3|inst10|LessThan0~2_combout\,
	datac => \inst33|inst3|inst10|LessThan0~1_combout\,
	datad => \inst33|inst3|inst10|LessThan0~0_combout\,
	combout => \inst33|inst3|inst|Selector2~0_combout\);

-- Location: LCCOMB_X35_Y19_N24
\inst33|inst3|inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector2~1_combout\ = (\inst33|inst3|inst|Selector2~0_combout\ & ((\inst33|inst3|inst|fstate.Corrige_der~q\) # ((!\inst33|inst3|inst|fstate.Avanza~q\ & \inst33|inst3|inst9|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Avanza~q\,
	datab => \inst33|inst3|inst9|LessThan0~3_combout\,
	datac => \inst33|inst3|inst|fstate.Corrige_der~q\,
	datad => \inst33|inst3|inst|Selector2~0_combout\,
	combout => \inst33|inst3|inst|Selector2~1_combout\);

-- Location: FF_X35_Y19_N25
\inst33|inst3|inst|fstate.Corrige_der\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst33|inst3|inst|Selector2~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst|fstate.Corrige_der~q\);

-- Location: LCCOMB_X35_Y19_N10
\inst33|inst3|inst10|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst10|LessThan0~3_combout\ = (\inst33|inst3|inst10|LessThan0~0_combout\) # ((\inst33|inst3|inst10|LessThan0~1_combout\ & \inst33|inst3|inst10|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst10|LessThan0~1_combout\,
	datac => \inst33|inst3|inst10|LessThan0~2_combout\,
	datad => \inst33|inst3|inst10|LessThan0~0_combout\,
	combout => \inst33|inst3|inst10|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y19_N12
\inst33|inst3|inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector0~1_combout\ = (\inst33|inst3|inst|fstate.Avanza~q\) # ((\inst33|inst3|inst9|LessThan0~3_combout\ & ((\inst33|inst5|seleccion[1]~8_combout\) # (\inst33|inst5|seleccion[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Avanza~q\,
	datab => \inst33|inst3|inst9|LessThan0~3_combout\,
	datac => \inst33|inst5|seleccion[1]~8_combout\,
	datad => \inst33|inst5|seleccion[0]~5_combout\,
	combout => \inst33|inst3|inst|Selector0~1_combout\);

-- Location: LCCOMB_X32_Y19_N2
\inst33|inst3|inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector0~2_combout\ = (\inst33|inst3|inst9|LessThan0~3_combout\ & ((\inst33|inst3|inst|fstate.Corrige_izq~q\ & (\inst33|inst3|inst10|LessThan0~3_combout\)) # (!\inst33|inst3|inst|fstate.Corrige_izq~q\ & 
-- ((!\inst33|inst3|inst|Selector0~1_combout\) # (!\inst33|inst3|inst10|LessThan0~3_combout\))))) # (!\inst33|inst3|inst9|LessThan0~3_combout\ & (((!\inst33|inst3|inst10|LessThan0~3_combout\ & \inst33|inst3|inst|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Corrige_izq~q\,
	datab => \inst33|inst3|inst9|LessThan0~3_combout\,
	datac => \inst33|inst3|inst10|LessThan0~3_combout\,
	datad => \inst33|inst3|inst|Selector0~1_combout\,
	combout => \inst33|inst3|inst|Selector0~2_combout\);

-- Location: LCCOMB_X32_Y19_N18
\inst33|inst3|inst|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector0~3_combout\ = (\inst33|inst3|inst10|LessThan0~3_combout\ & (!\inst33|inst3|inst|fstate.Corrige_der~q\ & !\inst33|inst3|inst|Selector0~2_combout\)) # (!\inst33|inst3|inst10|LessThan0~3_combout\ & 
-- ((\inst33|inst3|inst|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst10|LessThan0~3_combout\,
	datab => \inst33|inst3|inst|fstate.Corrige_der~q\,
	datad => \inst33|inst3|inst|Selector0~2_combout\,
	combout => \inst33|inst3|inst|Selector0~3_combout\);

-- Location: LCCOMB_X32_Y19_N4
\inst33|inst3|inst|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector0~4_combout\ = (!\inst33|inst3|inst|Selector0~0_combout\ & ((\inst35|inst3|Mux0~0_combout\) # (\inst33|inst3|inst|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|inst3|Mux0~0_combout\,
	datac => \inst33|inst3|inst|Selector0~0_combout\,
	datad => \inst33|inst3|inst|Selector0~3_combout\,
	combout => \inst33|inst3|inst|Selector0~4_combout\);

-- Location: FF_X32_Y19_N5
\inst33|inst3|inst|fstate.Avanza\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst33|inst3|inst|Selector0~4_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst|fstate.Avanza~q\);

-- Location: LCCOMB_X35_Y19_N12
\inst33|inst3|inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Equal1~0_combout\ = (\inst33|inst3|inst10|LessThan0~3_combout\ & (\inst33|inst3|inst9|LessThan0~3_combout\ & (!\inst33|inst3|inst|fstate.Avanza~q\ & !\inst35|inst3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst10|LessThan0~3_combout\,
	datab => \inst33|inst3|inst9|LessThan0~3_combout\,
	datac => \inst33|inst3|inst|fstate.Avanza~q\,
	datad => \inst35|inst3|Mux0~0_combout\,
	combout => \inst33|inst3|inst|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y19_N2
\inst33|inst3|inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Equal1~1_combout\ = (\inst33|inst3|inst|Equal1~0_combout\ & \inst33|inst5|seleccion[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst|Equal1~0_combout\,
	datad => \inst33|inst5|seleccion[0]~5_combout\,
	combout => \inst33|inst3|inst|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y19_N20
\inst33|inst3|inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector5~0_combout\ = (\inst33|inst5|seleccion[1]~8_combout\ & ((\inst33|inst3|inst|Equal1~1_combout\) # ((!\inst33|inst3|inst2|fin_reg~q\ & \inst33|inst3|inst|fstate.Gira_180~q\)))) # (!\inst33|inst5|seleccion[1]~8_combout\ & 
-- (!\inst33|inst3|inst2|fin_reg~q\ & (\inst33|inst3|inst|fstate.Gira_180~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst5|seleccion[1]~8_combout\,
	datab => \inst33|inst3|inst2|fin_reg~q\,
	datac => \inst33|inst3|inst|fstate.Gira_180~q\,
	datad => \inst33|inst3|inst|Equal1~1_combout\,
	combout => \inst33|inst3|inst|Selector5~0_combout\);

-- Location: FF_X34_Y19_N21
\inst33|inst3|inst|fstate.Gira_180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst33|inst3|inst|Selector5~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst|fstate.Gira_180~q\);

-- Location: LCCOMB_X35_Y19_N22
\inst33|inst3|inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Equal0~0_combout\ = (\inst33|inst3|inst|fstate.Gira_90_der~q\) # ((\inst33|inst3|inst|fstate.Gira_180~q\) # (\inst33|inst3|inst|fstate.Gira_90_izq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Gira_90_der~q\,
	datac => \inst33|inst3|inst|fstate.Gira_180~q\,
	datad => \inst33|inst3|inst|fstate.Gira_90_izq~q\,
	combout => \inst33|inst3|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y23_N26
\inst33|inst3|inst2|contador[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador[15]~0_combout\ = (\inst33|inst3|inst2|Equal0~0_combout\ & ((\inst33|inst3|inst2|contador\(15)) # ((\inst33|inst3|inst2|Add0~30_combout\ & \inst33|inst3|inst2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|Add0~30_combout\,
	datab => \inst33|inst3|inst2|Equal0~0_combout\,
	datac => \inst33|inst3|inst2|contador\(15),
	datad => \inst33|inst3|inst2|LessThan0~5_combout\,
	combout => \inst33|inst3|inst2|contador[15]~0_combout\);

-- Location: FF_X35_Y23_N27
\inst33|inst3|inst2|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador[15]~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(15));

-- Location: LCCOMB_X35_Y23_N30
\inst33|inst3|inst2|contador[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador[14]~1_combout\ = (!\inst33|inst3|inst2|contador\(16) & (\inst33|inst3|inst2|LessThan0~4_combout\ & (!\inst33|inst3|inst2|contador\(15) & \inst33|inst3|inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(16),
	datab => \inst33|inst3|inst2|LessThan0~4_combout\,
	datac => \inst33|inst3|inst2|contador\(15),
	datad => \inst33|inst3|inst2|Equal0~0_combout\,
	combout => \inst33|inst3|inst2|contador[14]~1_combout\);

-- Location: LCCOMB_X36_Y23_N20
\inst33|inst3|inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~4_combout\ = (\inst33|inst3|inst2|contador\(2) & (\inst33|inst3|inst2|Add0~3\ $ (GND))) # (!\inst33|inst3|inst2|contador\(2) & (!\inst33|inst3|inst2|Add0~3\ & VCC))
-- \inst33|inst3|inst2|Add0~5\ = CARRY((\inst33|inst3|inst2|contador\(2) & !\inst33|inst3|inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(2),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~3\,
	combout => \inst33|inst3|inst2|Add0~4_combout\,
	cout => \inst33|inst3|inst2|Add0~5\);

-- Location: LCCOMB_X36_Y23_N2
\inst33|inst3|inst2|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~12_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~4_combout\,
	combout => \inst33|inst3|inst2|contador~12_combout\);

-- Location: LCCOMB_X35_Y23_N20
\inst33|inst3|inst2|contador[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador[14]~3_combout\ = ((!\inst33|inst3|inst2|contador\(16) & (\inst33|inst3|inst2|LessThan0~4_combout\ & !\inst33|inst3|inst2|contador\(15)))) # (!\inst33|inst3|inst2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(16),
	datab => \inst33|inst3|inst2|LessThan0~4_combout\,
	datac => \inst33|inst3|inst2|contador\(15),
	datad => \inst33|inst3|inst2|Equal0~0_combout\,
	combout => \inst33|inst3|inst2|contador[14]~3_combout\);

-- Location: FF_X36_Y23_N3
\inst33|inst3|inst2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~12_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(2));

-- Location: LCCOMB_X36_Y23_N22
\inst33|inst3|inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~6_combout\ = (\inst33|inst3|inst2|contador\(3) & (!\inst33|inst3|inst2|Add0~5\)) # (!\inst33|inst3|inst2|contador\(3) & ((\inst33|inst3|inst2|Add0~5\) # (GND)))
-- \inst33|inst3|inst2|Add0~7\ = CARRY((!\inst33|inst3|inst2|Add0~5\) # (!\inst33|inst3|inst2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(3),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~5\,
	combout => \inst33|inst3|inst2|Add0~6_combout\,
	cout => \inst33|inst3|inst2|Add0~7\);

-- Location: LCCOMB_X36_Y23_N4
\inst33|inst3|inst2|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~11_combout\ = (\inst33|inst3|inst2|Add0~6_combout\ & \inst33|inst3|inst2|contador[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|Add0~6_combout\,
	datad => \inst33|inst3|inst2|contador[14]~1_combout\,
	combout => \inst33|inst3|inst2|contador~11_combout\);

-- Location: FF_X36_Y23_N5
\inst33|inst3|inst2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~11_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(3));

-- Location: LCCOMB_X36_Y23_N24
\inst33|inst3|inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~8_combout\ = (\inst33|inst3|inst2|contador\(4) & (\inst33|inst3|inst2|Add0~7\ $ (GND))) # (!\inst33|inst3|inst2|contador\(4) & (!\inst33|inst3|inst2|Add0~7\ & VCC))
-- \inst33|inst3|inst2|Add0~9\ = CARRY((\inst33|inst3|inst2|contador\(4) & !\inst33|inst3|inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(4),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~7\,
	combout => \inst33|inst3|inst2|Add0~8_combout\,
	cout => \inst33|inst3|inst2|Add0~9\);

-- Location: LCCOMB_X36_Y23_N8
\inst33|inst3|inst2|contador~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~13_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~8_combout\,
	combout => \inst33|inst3|inst2|contador~13_combout\);

-- Location: FF_X36_Y23_N9
\inst33|inst3|inst2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~13_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(4));

-- Location: LCCOMB_X36_Y23_N28
\inst33|inst3|inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~12_combout\ = (\inst33|inst3|inst2|contador\(6) & (\inst33|inst3|inst2|Add0~11\ $ (GND))) # (!\inst33|inst3|inst2|contador\(6) & (!\inst33|inst3|inst2|Add0~11\ & VCC))
-- \inst33|inst3|inst2|Add0~13\ = CARRY((\inst33|inst3|inst2|contador\(6) & !\inst33|inst3|inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(6),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~11\,
	combout => \inst33|inst3|inst2|Add0~12_combout\,
	cout => \inst33|inst3|inst2|Add0~13\);

-- Location: LCCOMB_X36_Y23_N0
\inst33|inst3|inst2|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~9_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~12_combout\,
	combout => \inst33|inst3|inst2|contador~9_combout\);

-- Location: FF_X36_Y23_N1
\inst33|inst3|inst2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~9_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(6));

-- Location: LCCOMB_X36_Y23_N30
\inst33|inst3|inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~14_combout\ = (\inst33|inst3|inst2|contador\(7) & (!\inst33|inst3|inst2|Add0~13\)) # (!\inst33|inst3|inst2|contador\(7) & ((\inst33|inst3|inst2|Add0~13\) # (GND)))
-- \inst33|inst3|inst2|Add0~15\ = CARRY((!\inst33|inst3|inst2|Add0~13\) # (!\inst33|inst3|inst2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(7),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~13\,
	combout => \inst33|inst3|inst2|Add0~14_combout\,
	cout => \inst33|inst3|inst2|Add0~15\);

-- Location: LCCOMB_X36_Y23_N14
\inst33|inst3|inst2|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~8_combout\ = (\inst33|inst3|inst2|Add0~14_combout\ & \inst33|inst3|inst2|contador[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|Add0~14_combout\,
	datad => \inst33|inst3|inst2|contador[14]~1_combout\,
	combout => \inst33|inst3|inst2|contador~8_combout\);

-- Location: FF_X36_Y23_N15
\inst33|inst3|inst2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~8_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(7));

-- Location: LCCOMB_X36_Y22_N0
\inst33|inst3|inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~16_combout\ = (\inst33|inst3|inst2|contador\(8) & (\inst33|inst3|inst2|Add0~15\ $ (GND))) # (!\inst33|inst3|inst2|contador\(8) & (!\inst33|inst3|inst2|Add0~15\ & VCC))
-- \inst33|inst3|inst2|Add0~17\ = CARRY((\inst33|inst3|inst2|contador\(8) & !\inst33|inst3|inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(8),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~15\,
	combout => \inst33|inst3|inst2|Add0~16_combout\,
	cout => \inst33|inst3|inst2|Add0~17\);

-- Location: LCCOMB_X36_Y22_N24
\inst33|inst3|inst2|contador~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~14_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~16_combout\,
	combout => \inst33|inst3|inst2|contador~14_combout\);

-- Location: FF_X36_Y22_N25
\inst33|inst3|inst2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~14_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(8));

-- Location: LCCOMB_X36_Y22_N4
\inst33|inst3|inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~20_combout\ = (\inst33|inst3|inst2|contador\(10) & (\inst33|inst3|inst2|Add0~19\ $ (GND))) # (!\inst33|inst3|inst2|contador\(10) & (!\inst33|inst3|inst2|Add0~19\ & VCC))
-- \inst33|inst3|inst2|Add0~21\ = CARRY((\inst33|inst3|inst2|contador\(10) & !\inst33|inst3|inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(10),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~19\,
	combout => \inst33|inst3|inst2|Add0~20_combout\,
	cout => \inst33|inst3|inst2|Add0~21\);

-- Location: LCCOMB_X35_Y23_N2
\inst33|inst3|inst2|contador~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~16_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~20_combout\,
	combout => \inst33|inst3|inst2|contador~16_combout\);

-- Location: FF_X35_Y23_N3
\inst33|inst3|inst2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~16_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(10));

-- Location: LCCOMB_X35_Y19_N0
\inst33|inst3|inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Equal1~0_combout\ = (!\inst33|inst3|inst|fstate.Gira_180~q\ & ((\inst33|inst3|inst|fstate.Gira_90_der~q\) # (\inst33|inst3|inst|fstate.Gira_90_izq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Gira_90_der~q\,
	datac => \inst33|inst3|inst|fstate.Gira_180~q\,
	datad => \inst33|inst3|inst|fstate.Gira_90_izq~q\,
	combout => \inst33|inst3|inst2|Equal1~0_combout\);

-- Location: LCCOMB_X35_Y19_N20
\inst33|inst3|inst2|tiempo_limite[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|tiempo_limite[10]~1_combout\ = !\inst33|inst3|inst2|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst33|inst3|inst2|Equal1~0_combout\,
	combout => \inst33|inst3|inst2|tiempo_limite[10]~1_combout\);

-- Location: LCCOMB_X35_Y19_N14
\inst33|inst3|inst2|tiempo_limite[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|tiempo_limite[10]~0_combout\ = (\Reset1~input_o\ & ((\inst33|inst3|inst|fstate.Gira_90_der~q\) # ((\inst33|inst3|inst|fstate.Gira_180~q\) # (\inst33|inst3|inst|fstate.Gira_90_izq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Gira_90_der~q\,
	datab => \Reset1~input_o\,
	datac => \inst33|inst3|inst|fstate.Gira_180~q\,
	datad => \inst33|inst3|inst|fstate.Gira_90_izq~q\,
	combout => \inst33|inst3|inst2|tiempo_limite[10]~0_combout\);

-- Location: FF_X35_Y19_N21
\inst33|inst3|inst2|tiempo_limite[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|tiempo_limite[10]~1_combout\,
	ena => \inst33|inst3|inst2|tiempo_limite[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|tiempo_limite\(10));

-- Location: LCCOMB_X36_Y22_N6
\inst33|inst3|inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~22_combout\ = (\inst33|inst3|inst2|contador\(11) & (!\inst33|inst3|inst2|Add0~21\)) # (!\inst33|inst3|inst2|contador\(11) & ((\inst33|inst3|inst2|Add0~21\) # (GND)))
-- \inst33|inst3|inst2|Add0~23\ = CARRY((!\inst33|inst3|inst2|Add0~21\) # (!\inst33|inst3|inst2|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(11),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~21\,
	combout => \inst33|inst3|inst2|Add0~22_combout\,
	cout => \inst33|inst3|inst2|Add0~23\);

-- Location: LCCOMB_X36_Y22_N20
\inst33|inst3|inst2|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~6_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~22_combout\,
	combout => \inst33|inst3|inst2|contador~6_combout\);

-- Location: FF_X36_Y22_N21
\inst33|inst3|inst2|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~6_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(11));

-- Location: LCCOMB_X36_Y22_N10
\inst33|inst3|inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|Add0~26_combout\ = (\inst33|inst3|inst2|contador\(13) & (!\inst33|inst3|inst2|Add0~25\)) # (!\inst33|inst3|inst2|contador\(13) & ((\inst33|inst3|inst2|Add0~25\) # (GND)))
-- \inst33|inst3|inst2|Add0~27\ = CARRY((!\inst33|inst3|inst2|Add0~25\) # (!\inst33|inst3|inst2|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|contador\(13),
	datad => VCC,
	cin => \inst33|inst3|inst2|Add0~25\,
	combout => \inst33|inst3|inst2|Add0~26_combout\,
	cout => \inst33|inst3|inst2|Add0~27\);

-- Location: LCCOMB_X36_Y22_N28
\inst33|inst3|inst2|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~4_combout\ = (\inst33|inst3|inst2|contador[14]~1_combout\ & \inst33|inst3|inst2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst33|inst3|inst2|contador[14]~1_combout\,
	datad => \inst33|inst3|inst2|Add0~26_combout\,
	combout => \inst33|inst3|inst2|contador~4_combout\);

-- Location: FF_X36_Y22_N29
\inst33|inst3|inst2|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~4_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(13));

-- Location: LCCOMB_X36_Y22_N26
\inst33|inst3|inst2|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador~2_combout\ = (\inst33|inst3|inst2|Add0~28_combout\ & \inst33|inst3|inst2|contador[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|Add0~28_combout\,
	datac => \inst33|inst3|inst2|contador[14]~1_combout\,
	combout => \inst33|inst3|inst2|contador~2_combout\);

-- Location: FF_X36_Y22_N27
\inst33|inst3|inst2|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador~2_combout\,
	clrn => \Reset1~input_o\,
	ena => \inst33|inst3|inst2|contador[14]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(14));

-- Location: LCCOMB_X36_Y22_N18
\inst33|inst3|inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|LessThan0~0_combout\ = (!\inst33|inst3|inst2|contador\(12) & (!\inst33|inst3|inst2|contador\(13) & (!\inst33|inst3|inst2|contador\(14) & !\inst33|inst3|inst2|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(12),
	datab => \inst33|inst3|inst2|contador\(13),
	datac => \inst33|inst3|inst2|contador\(14),
	datad => \inst33|inst3|inst2|contador\(11),
	combout => \inst33|inst3|inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y23_N0
\inst33|inst3|inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|LessThan0~4_combout\ = (\inst33|inst3|inst2|LessThan0~0_combout\ & ((\inst33|inst3|inst2|LessThan0~3_combout\ & ((\inst33|inst3|inst2|tiempo_limite\(10)) # (!\inst33|inst3|inst2|contador\(10)))) # 
-- (!\inst33|inst3|inst2|LessThan0~3_combout\ & (!\inst33|inst3|inst2|contador\(10) & \inst33|inst3|inst2|tiempo_limite\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|LessThan0~3_combout\,
	datab => \inst33|inst3|inst2|contador\(10),
	datac => \inst33|inst3|inst2|tiempo_limite\(10),
	datad => \inst33|inst3|inst2|LessThan0~0_combout\,
	combout => \inst33|inst3|inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X35_Y23_N6
\inst33|inst3|inst2|contador[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|contador[16]~18_combout\ = (\inst33|inst3|inst2|Equal0~0_combout\ & ((\inst33|inst3|inst2|contador\(16)) # ((\inst33|inst3|inst2|contador[16]~17_combout\ & \inst33|inst3|inst2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador[16]~17_combout\,
	datab => \inst33|inst3|inst2|Equal0~0_combout\,
	datac => \inst33|inst3|inst2|contador\(16),
	datad => \inst33|inst3|inst2|LessThan0~4_combout\,
	combout => \inst33|inst3|inst2|contador[16]~18_combout\);

-- Location: FF_X35_Y23_N7
\inst33|inst3|inst2|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|contador[16]~18_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|contador\(16));

-- Location: LCCOMB_X35_Y23_N16
\inst33|inst3|inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|LessThan0~5_combout\ = (\inst33|inst3|inst2|LessThan0~4_combout\ & !\inst33|inst3|inst2|contador\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst2|LessThan0~4_combout\,
	datad => \inst33|inst3|inst2|contador\(16),
	combout => \inst33|inst3|inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X35_Y23_N28
\inst33|inst3|inst2|fin_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst2|fin_reg~0_combout\ = (\inst33|inst3|inst2|Equal0~0_combout\ & ((\inst33|inst3|inst2|contador\(15)) # ((\inst33|inst3|inst2|fin_reg~q\) # (!\inst33|inst3|inst2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst2|contador\(15),
	datab => \inst33|inst3|inst2|Equal0~0_combout\,
	datac => \inst33|inst3|inst2|fin_reg~q\,
	datad => \inst33|inst3|inst2|LessThan0~5_combout\,
	combout => \inst33|inst3|inst2|fin_reg~0_combout\);

-- Location: FF_X35_Y23_N29
\inst33|inst3|inst2|fin_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[2]~clkctrl_outclk\,
	d => \inst33|inst3|inst2|fin_reg~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst2|fin_reg~q\);

-- Location: LCCOMB_X34_Y19_N14
\inst33|inst3|inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector3~0_combout\ = (\inst33|inst5|seleccion[1]~8_combout\ & (!\inst33|inst3|inst2|fin_reg~q\ & (\inst33|inst3|inst|fstate.Gira_90_izq~q\))) # (!\inst33|inst5|seleccion[1]~8_combout\ & ((\inst33|inst3|inst|Equal1~1_combout\) # 
-- ((!\inst33|inst3|inst2|fin_reg~q\ & \inst33|inst3|inst|fstate.Gira_90_izq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst5|seleccion[1]~8_combout\,
	datab => \inst33|inst3|inst2|fin_reg~q\,
	datac => \inst33|inst3|inst|fstate.Gira_90_izq~q\,
	datad => \inst33|inst3|inst|Equal1~1_combout\,
	combout => \inst33|inst3|inst|Selector3~0_combout\);

-- Location: FF_X34_Y19_N15
\inst33|inst3|inst|fstate.Gira_90_izq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst33|inst3|inst|Selector3~0_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst|fstate.Gira_90_izq~q\);

-- Location: LCCOMB_X35_Y19_N28
\inst33|inst3|inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector1~0_combout\ = (!\inst33|inst3|inst|fstate.Avanza~q\ & ((\inst33|inst3|inst10|LessThan0~0_combout\) # ((\inst33|inst3|inst10|LessThan0~1_combout\ & \inst33|inst3|inst10|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst10|LessThan0~1_combout\,
	datab => \inst33|inst3|inst10|LessThan0~2_combout\,
	datac => \inst33|inst3|inst|fstate.Avanza~q\,
	datad => \inst33|inst3|inst10|LessThan0~0_combout\,
	combout => \inst33|inst3|inst|Selector1~0_combout\);

-- Location: LCCOMB_X35_Y19_N8
\inst33|inst3|inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector1~1_combout\ = (!\inst35|inst3|Mux0~0_combout\ & (!\inst33|inst3|inst9|LessThan0~3_combout\ & ((\inst33|inst3|inst|fstate.Corrige_izq~q\) # (\inst33|inst3|inst|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|inst3|Mux0~0_combout\,
	datab => \inst33|inst3|inst9|LessThan0~3_combout\,
	datac => \inst33|inst3|inst|fstate.Corrige_izq~q\,
	datad => \inst33|inst3|inst|Selector1~0_combout\,
	combout => \inst33|inst3|inst|Selector1~1_combout\);

-- Location: FF_X35_Y19_N9
\inst33|inst3|inst|fstate.Corrige_izq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst33|inst3|inst|Selector1~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst|fstate.Corrige_izq~q\);

-- Location: LCCOMB_X35_Y19_N30
\inst33|inst3|inst|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|WideOr8~combout\ = (\inst33|inst3|inst|fstate.Gira_90_izq~q\) # ((\inst33|inst3|inst|fstate.Corrige_izq~q\) # (!\inst33|inst3|inst|fstate.Avanza~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Gira_90_izq~q\,
	datac => \inst33|inst3|inst|fstate.Avanza~q\,
	datad => \inst33|inst3|inst|fstate.Corrige_izq~q\,
	combout => \inst33|inst3|inst|WideOr8~combout\);

-- Location: LCCOMB_X35_Y19_N4
\inst33|inst3|inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector6~0_combout\ = (\inst33|inst3|inst|fstate.Corrige_izq~q\) # ((\inst33|inst3|inst|fstate.Corrige_der~q\) # (!\inst33|inst3|inst|fstate.Avanza~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Corrige_izq~q\,
	datab => \inst33|inst3|inst|fstate.Corrige_der~q\,
	datac => \inst33|inst3|inst|fstate.Avanza~q\,
	combout => \inst33|inst3|inst|Selector6~0_combout\);

-- Location: LCCOMB_X35_Y19_N26
\inst33|inst3|inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|Selector6~1_combout\ = (\inst33|inst3|inst|fstate.Ganamos~q\) # ((\inst33|inst3|inst|Selector6~0_combout\ & \inst35|inst3|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|inst3|inst|Selector6~0_combout\,
	datac => \inst33|inst3|inst|fstate.Ganamos~q\,
	datad => \inst35|inst3|Mux0~0_combout\,
	combout => \inst33|inst3|inst|Selector6~1_combout\);

-- Location: FF_X35_Y19_N27
\inst33|inst3|inst|fstate.Ganamos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst33|inst3|inst|Selector6~1_combout\,
	clrn => \Reset1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|inst3|inst|fstate.Ganamos~q\);

-- Location: LCCOMB_X35_Y19_N16
\inst33|inst3|inst|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|WideOr7~combout\ = (\inst33|inst3|inst|fstate.Gira_90_izq~q\) # ((\inst33|inst3|inst|fstate.Ganamos~q\) # (\inst33|inst3|inst|fstate.Corrige_izq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Gira_90_izq~q\,
	datac => \inst33|inst3|inst|fstate.Ganamos~q\,
	datad => \inst33|inst3|inst|fstate.Corrige_izq~q\,
	combout => \inst33|inst3|inst|WideOr7~combout\);

-- Location: LCCOMB_X35_Y19_N2
\inst33|inst3|inst|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|inst3|inst|WideOr7~0_combout\ = (!\inst33|inst3|inst|fstate.Gira_90_izq~q\ & !\inst33|inst3|inst|fstate.Corrige_izq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|inst3|inst|fstate.Gira_90_izq~q\,
	datad => \inst33|inst3|inst|fstate.Corrige_izq~q\,
	combout => \inst33|inst3|inst|WideOr7~0_combout\);

-- Location: CLKCTRL_G17
\inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst33|inst3|inst4|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);
END structure;


