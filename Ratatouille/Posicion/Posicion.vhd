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
-- CREATED		"Thu Nov 14 18:16:56 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Posicion IS 
	PORT
	(
		LS :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		s :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Q :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Posicion;

ARCHITECTURE bdf_type OF Posicion IS 

COMPONENT mux_presuma
	PORT(s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Y : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sumador_fivebits
	PORT(A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT flipflop_d
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : mux_presuma
PORT MAP(s => s,
		 Y => SYNTHESIZED_WIRE_0);


b2v_inst1 : sumador_fivebits
PORT MAP(A => A,
		 B => SYNTHESIZED_WIRE_0,
		 S => SYNTHESIZED_WIRE_1);


b2v_inst2 : flipflop_d
PORT MAP(clk => LS,
		 reset => reset,
		 D => SYNTHESIZED_WIRE_1,
		 Q => Q);


END bdf_type;