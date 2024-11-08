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
-- CREATED		"Thu Nov 07 15:43:21 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Linea_Recta_Completo IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		E :  IN  STD_LOGIC;
		MD0 :  IN  STD_LOGIC;
		MI0 :  IN  STD_LOGIC;
		VD :  IN  STD_LOGIC;
		VI :  IN  STD_LOGIC;
		SL1 :  IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
		SR1 :  IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
		MD1 :  OUT  STD_LOGIC;
		MI1 :  OUT  STD_LOGIC;
		pin_name5 :  OUT  STD_LOGIC;
		pin_name6 :  OUT  STD_LOGIC;
		pin_name7 :  OUT  STD_LOGIC;
		pin_name8 :  OUT  STD_LOGIC
	);
END Linea_Recta_Completo;

ARCHITECTURE bdf_type OF Linea_Recta_Completo IS 

COMPONENT linearecta
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 SR : IN STD_LOGIC;
		 SL : IN STD_LOGIC;
		 E : IN STD_LOGIC;
		 MD1 : OUT STD_LOGIC;
		 MI1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT comparador
	PORT(a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
		 o : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 
pin_name5 <= MD0;
pin_name6 <= MI0;
pin_name7 <= VD;
pin_name8 <= VI;



b2v_inst : linearecta
PORT MAP(reset => reset,
		 clock => clock,
		 SR => SYNTHESIZED_WIRE_0,
		 SL => SYNTHESIZED_WIRE_1,
		 E => E,
		 MD1 => MD1,
		 MI1 => MI1);


b2v_inst2 : comparador
PORT MAP(a => SR1,
		 o => SYNTHESIZED_WIRE_0);


b2v_inst3 : comparador
PORT MAP(a => SL1,
		 o => SYNTHESIZED_WIRE_1);


END bdf_type;