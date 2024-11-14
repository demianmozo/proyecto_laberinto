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
-- CREATED		"Thu Nov 14 18:42:07 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Donde_ir IS 
	PORT
	(
		LS :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I0 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I13 :  IN  STD_LOGIC;
		I12 :  IN  STD_LOGIC;
		I11 :  IN  STD_LOGIC;
		I10 :  IN  STD_LOGIC;
		I103 :  IN  STD_LOGIC;
		I102 :  IN  STD_LOGIC;
		I101 :  IN  STD_LOGIC;
		I100 :  IN  STD_LOGIC;
		I113 :  IN  STD_LOGIC;
		I112 :  IN  STD_LOGIC;
		I111 :  IN  STD_LOGIC;
		I110 :  IN  STD_LOGIC;
		I123 :  IN  STD_LOGIC;
		I122 :  IN  STD_LOGIC;
		I121 :  IN  STD_LOGIC;
		I120 :  IN  STD_LOGIC;
		I133 :  IN  STD_LOGIC;
		I132 :  IN  STD_LOGIC;
		I131 :  IN  STD_LOGIC;
		I130 :  IN  STD_LOGIC;
		I14 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I15 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I2 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I3 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I4 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I5 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I6 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I7 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I8 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		I9 :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		s :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Yaba :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Yarr :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Yder :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Yizq :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Donde_ir;

ARCHITECTURE bdf_type OF Donde_ir IS 

COMPONENT posicion
	PORT(LS : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mux_16to1
	PORT(I0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I13 : IN STD_LOGIC;
		 I12 : IN STD_LOGIC;
		 I11 : IN STD_LOGIC;
		 I10 : IN STD_LOGIC;
		 I103 : IN STD_LOGIC;
		 I102 : IN STD_LOGIC;
		 I101 : IN STD_LOGIC;
		 I100 : IN STD_LOGIC;
		 I113 : IN STD_LOGIC;
		 I112 : IN STD_LOGIC;
		 I111 : IN STD_LOGIC;
		 I110 : IN STD_LOGIC;
		 I123 : IN STD_LOGIC;
		 I122 : IN STD_LOGIC;
		 I121 : IN STD_LOGIC;
		 I120 : IN STD_LOGIC;
		 I133 : IN STD_LOGIC;
		 I132 : IN STD_LOGIC;
		 I131 : IN STD_LOGIC;
		 I130 : IN STD_LOGIC;
		 I14 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I15 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I5 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I6 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I7 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I8 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 I9 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 S : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT seleccionadores_mux
	PORT(X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Y1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Y2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Y3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Y4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : posicion
PORT MAP(LS => LS,
		 reset => reset,
		 A => A,
		 s => s,
		 Q => SYNTHESIZED_WIRE_1);


b2v_inst1 : mux_16to1
PORT MAP(I0 => I0,
		 I13 => I13,
		 I12 => I12,
		 I11 => I11,
		 I10 => I10,
		 I103 => I103,
		 I102 => I102,
		 I101 => I101,
		 I100 => I100,
		 I113 => I113,
		 I112 => I112,
		 I111 => I111,
		 I110 => I110,
		 I123 => I123,
		 I122 => I122,
		 I121 => I121,
		 I120 => I120,
		 I133 => I133,
		 I132 => I132,
		 I131 => I131,
		 I130 => I130,
		 I14 => I14,
		 I15 => I15,
		 I2 => I2,
		 I3 => I3,
		 I4 => I4,
		 I5 => I5,
		 I6 => I6,
		 I7 => I7,
		 I8 => I8,
		 I9 => I9,
		 S => SYNTHESIZED_WIRE_0,
		 Y => Yizq);


b2v_inst2 : seleccionadores_mux
PORT MAP(X => SYNTHESIZED_WIRE_1,
		 Y1 => SYNTHESIZED_WIRE_0,
		 Y2 => SYNTHESIZED_WIRE_2,
		 Y3 => SYNTHESIZED_WIRE_3,
		 Y4 => SYNTHESIZED_WIRE_4);


b2v_inst3 : mux_16to1
PORT MAP(I0 => I0,
		 I13 => I13,
		 I12 => I12,
		 I11 => I11,
		 I10 => I10,
		 I103 => I103,
		 I102 => I102,
		 I101 => I101,
		 I100 => I100,
		 I113 => I113,
		 I112 => I112,
		 I111 => I111,
		 I110 => I110,
		 I123 => I123,
		 I122 => I122,
		 I121 => I121,
		 I120 => I120,
		 I133 => I133,
		 I132 => I132,
		 I131 => I131,
		 I130 => I130,
		 I14 => I14,
		 I15 => I15,
		 I2 => I2,
		 I3 => I3,
		 I4 => I4,
		 I5 => I5,
		 I6 => I6,
		 I7 => I7,
		 I8 => I8,
		 I9 => I9,
		 S => SYNTHESIZED_WIRE_2,
		 Y => Yder);


b2v_inst4 : mux_16to1
PORT MAP(I0 => I0,
		 I13 => I13,
		 I12 => I12,
		 I11 => I11,
		 I10 => I10,
		 I103 => I103,
		 I102 => I102,
		 I101 => I101,
		 I100 => I100,
		 I113 => I113,
		 I112 => I112,
		 I111 => I111,
		 I110 => I110,
		 I123 => I123,
		 I122 => I122,
		 I121 => I121,
		 I120 => I120,
		 I133 => I133,
		 I132 => I132,
		 I131 => I131,
		 I130 => I130,
		 I14 => I14,
		 I15 => I15,
		 I2 => I2,
		 I3 => I3,
		 I4 => I4,
		 I5 => I5,
		 I6 => I6,
		 I7 => I7,
		 I8 => I8,
		 I9 => I9,
		 S => SYNTHESIZED_WIRE_3,
		 Y => Yarr);


b2v_inst5 : mux_16to1
PORT MAP(I0 => I0,
		 I13 => I13,
		 I12 => I12,
		 I11 => I11,
		 I10 => I10,
		 I103 => I103,
		 I102 => I102,
		 I101 => I101,
		 I100 => I100,
		 I113 => I113,
		 I112 => I112,
		 I111 => I111,
		 I110 => I110,
		 I123 => I123,
		 I122 => I122,
		 I121 => I121,
		 I120 => I120,
		 I133 => I133,
		 I132 => I132,
		 I131 => I131,
		 I130 => I130,
		 I14 => I14,
		 I15 => I15,
		 I2 => I2,
		 I3 => I3,
		 I4 => I4,
		 I5 => I5,
		 I6 => I6,
		 I7 => I7,
		 I8 => I8,
		 I9 => I9,
		 S => SYNTHESIZED_WIRE_4,
		 Y => Yaba);


END bdf_type;