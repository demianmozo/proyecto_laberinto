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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Nov 22 00:31:03 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY PRUEBA_Control_Motores IS 
	PORT
	(
		clk_10k :  IN  STD_LOGIC;
		clk_20k :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		SEL :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		MD0 :  OUT  STD_LOGIC;
		MI0 :  OUT  STD_LOGIC;
		MD1 :  OUT  STD_LOGIC;
		MI1 :  OUT  STD_LOGIC
	);
END PRUEBA_Control_Motores;

ARCHITECTURE bdf_type OF PRUEBA_Control_Motores IS 

COMPONENT motores
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 SR : IN STD_LOGIC;
		 SL : IN STD_LOGIC;
		 fin_giro : IN STD_LOGIC;
		 llego : IN STD_LOGIC;
		 SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 MD0 : OUT STD_LOGIC;
		 MI0 : OUT STD_LOGIC;
		 MD1 : OUT STD_LOGIC;
		 MI1 : OUT STD_LOGIC;
		 h_giro : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT temporizador_doble
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 hab : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 fin : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	clk_10KHz :  STD_LOGIC;
SIGNAL	clk_20KHz :  STD_LOGIC;
SIGNAL	rst :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 
SYNTHESIZED_WIRE_5 <= '1';
SYNTHESIZED_WIRE_3 <= '0';



b2v_inst : motores
PORT MAP(reset => rst,
		 clock => clk_20KHz,
		 SR => SYNTHESIZED_WIRE_5,
		 SL => SYNTHESIZED_WIRE_5,
		 fin_giro => SYNTHESIZED_WIRE_2,
		 llego => SYNTHESIZED_WIRE_3,
		 SEL => SEL,
		 MD0 => MD0,
		 MI0 => MI0,
		 MD1 => MD1,
		 MI1 => MI1,
		 h_giro => SYNTHESIZED_WIRE_4);


b2v_inst2 : temporizador_doble
PORT MAP(clk => clk_10KHz,
		 reset => rst,
		 hab => SYNTHESIZED_WIRE_4,
		 fin => SYNTHESIZED_WIRE_2);



rst <= reset;
clk_20KHz <= clk_20k;
clk_10KHz <= clk_10k;

END bdf_type;