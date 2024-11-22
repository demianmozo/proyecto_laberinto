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
-- CREATED		"Wed Nov 20 19:56:04 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Celda IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		Reset :  IN  STD_LOGIC;
		Muro_Ad :  IN  STD_LOGIC;
		Muro_At :  IN  STD_LOGIC;
		Muro_Der :  IN  STD_LOGIC;
		Muro_Izq :  IN  STD_LOGIC;
		Adelante :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		Atras :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		Derecha :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		hab_escrit :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Izquierda :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		muros_ady :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Peso :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END Celda;

ARCHITECTURE bdf_type OF Celda IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT busmux_0
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_0: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_0: COMPONENT IS true;

COMPONENT busmux_1
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_1: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_1: COMPONENT IS true;

COMPONENT busmux_2
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_2: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_2: COMPONENT IS true;

COMPONENT busmux_3
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_3: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_3: COMPONENT IS true;

COMPONENT min_vector
	PORT(A : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 C : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 D : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 Min_Out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT bit_to_vector
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 c : IN STD_LOGIC;
		 d : IN STD_LOGIC;
		 muros_ady : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT dff_fijo
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 entrada : IN STD_LOGIC;
		 salida : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT sumador_3_bits
	PORT(A : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 S : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT latcheo_salida
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 d_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 q_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	hab :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(0 TO 2);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(0 TO 2);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(0 TO 2);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(0 TO 2);


BEGIN 
SYNTHESIZED_WIRE_11 <= "111";
SYNTHESIZED_WIRE_16 <= "111";
SYNTHESIZED_WIRE_18 <= "111";
SYNTHESIZED_WIRE_21 <= "111";



b2v_inst : min_vector
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 C => SYNTHESIZED_WIRE_2,
		 D => SYNTHESIZED_WIRE_3,
		 Min_Out => SYNTHESIZED_WIRE_9);


b2v_inst1 : bit_to_vector
PORT MAP(a => SYNTHESIZED_WIRE_22,
		 b => SYNTHESIZED_WIRE_23,
		 c => SYNTHESIZED_WIRE_24,
		 d => SYNTHESIZED_WIRE_25,
		 muros_ady => muros_ady);


SYNTHESIZED_WIRE_14 <= hab(2) AND Muro_At;


b2v_inst11 : dff_fijo
PORT MAP(clk => CLK,
		 reset => Reset,
		 entrada => SYNTHESIZED_WIRE_8,
		 salida => SYNTHESIZED_WIRE_25);





b2v_inst16 : sumador_3_bits
PORT MAP(A => SYNTHESIZED_WIRE_9,
		 S => SYNTHESIZED_WIRE_12);


b2v_inst17 : busmux_0
PORT MAP(sel => SYNTHESIZED_WIRE_22,
		 dataa => Adelante,
		 datab => SYNTHESIZED_WIRE_11,
		 result => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_19 <= Muro_Der AND hab(1);


SYNTHESIZED_WIRE_8 <= Muro_Izq AND hab(0);


b2v_inst2 : latcheo_salida
PORT MAP(clk => CLK,
		 reset => Reset,
		 d_in => SYNTHESIZED_WIRE_12,
		 q_out => Peso);



b2v_inst3 : dff_fijo
PORT MAP(clk => CLK,
		 reset => Reset,
		 entrada => SYNTHESIZED_WIRE_13,
		 salida => SYNTHESIZED_WIRE_22);


SYNTHESIZED_WIRE_13 <= hab(3) AND Muro_Ad;


b2v_inst5 : dff_fijo
PORT MAP(clk => CLK,
		 reset => Reset,
		 entrada => SYNTHESIZED_WIRE_14,
		 salida => SYNTHESIZED_WIRE_23);


b2v_inst6 : busmux_1
PORT MAP(sel => SYNTHESIZED_WIRE_23,
		 dataa => Atras,
		 datab => SYNTHESIZED_WIRE_16,
		 result => SYNTHESIZED_WIRE_1);


b2v_inst7 : busmux_2
PORT MAP(sel => SYNTHESIZED_WIRE_24,
		 dataa => Derecha,
		 datab => SYNTHESIZED_WIRE_18,
		 result => SYNTHESIZED_WIRE_2);


b2v_inst8 : dff_fijo
PORT MAP(clk => CLK,
		 reset => Reset,
		 entrada => SYNTHESIZED_WIRE_19,
		 salida => SYNTHESIZED_WIRE_24);


b2v_inst9 : busmux_3
PORT MAP(sel => SYNTHESIZED_WIRE_25,
		 dataa => Izquierda,
		 datab => SYNTHESIZED_WIRE_21,
		 result => SYNTHESIZED_WIRE_3);

hab <= hab_escrit;

END bdf_type;