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

-- Generated by Quartus II Version 13.1.0 Build 162 10/23/2013 SJ Web Edition
-- Created on Sat Nov 23 16:57:01 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; -- Necesario para manejar enteros

ENTITY DetectorSM IS
    GENERIC (
        MIN_COUNT : NATURAL := 0;
        MAX_COUNT : NATURAL := 150 -- 15 ms con 10 kHz
    );
    PORT (
        reset  : IN  STD_LOGIC := '0';
        clock  : IN  STD_LOGIC;
        Linea  : IN  STD_LOGIC := '0';
        Valido : OUT STD_LOGIC
    );
END DetectorSM;

ARCHITECTURE BEHAVIOR OF DetectorSM IS
    TYPE type_fstate IS (No_detecta, Espera_Bajo, Detecta, Espera_Alto);
    SIGNAL reg_fstate  : type_fstate := No_detecta; -- Estado registrado
    SIGNAL next_fstate : type_fstate := No_detecta; -- Próximo estado calculado
    SIGNAL counter     : integer range MIN_COUNT to MAX_COUNT := 0; -- Contador para 30 ms
BEGIN

    -- Proceso síncrono: actualizar estado y contador
    PROCESS (clock, reset)
    BEGIN
        IF reset = '0' THEN
            reg_fstate <= No_detecta;
            counter <= 0;
        ELSIF rising_edge(clock) THEN
            reg_fstate <= next_fstate; -- Actualizar el estado registrado
            -- Lógica del contador
            IF (reg_fstate = Espera_Bajo OR reg_fstate = Espera_Alto) THEN
                IF counter < MAX_COUNT THEN
                    counter <= counter + 1;
                ELSE
                    counter <= 0; -- Reiniciar el contador si llega al máximo
                END IF;
            ELSE
                counter <= 0; -- Reiniciar el contador si no está en espera
            END IF;
        END IF;
    END PROCESS;

    -- Proceso combinacional: calcular el próximo estado
    PROCESS (reg_fstate, Linea, counter)
    BEGIN
        Valido <= '0'; -- Valor por defecto

        CASE reg_fstate IS
            WHEN No_detecta =>
                IF Linea = '0' THEN
                    next_fstate <= Espera_Bajo;
                ELSE
                    next_fstate <= No_detecta;
                END IF;

            WHEN Espera_Bajo =>
                IF Linea = '0' THEN
                    IF counter = MAX_COUNT THEN
                        next_fstate <= Detecta; -- Condición estable durante 30 ms
                    ELSE
                        next_fstate <= Espera_Bajo; -- Continuar esperando
                    END IF;
                ELSE
						  IF counter = MAX_COUNT THEN
                        next_fstate <= No_detecta; -- Condición estable durante 30 ms
                    ELSE
                        next_fstate <= Espera_Bajo; -- Continuar esperando
                    END IF;
                END IF;

            WHEN Detecta =>
                Valido <= '1'; -- Señal válida
                IF Linea = '1' THEN
                    next_fstate <= Espera_Alto;
                ELSE
                    next_fstate <= Detecta;
                END IF;

            WHEN Espera_Alto =>
                IF Linea = '1' THEN
                    IF counter = MAX_COUNT THEN
                        next_fstate <= No_detecta; -- Condición estable durante 30 ms
                    ELSE
                        next_fstate <= Espera_Alto; -- Continuar esperando
                    END IF;
                ELSE
						  IF counter = Max_COUNT THEN 
								next_fstate <= Detecta; -- Ruido detectado, volver a Detecta
						  ELSE
								next_fstate <= Espera_Alto;
						  END IF;
					 END IF;

            WHEN OTHERS =>
                next_fstate <= No_detecta; -- Estado por defecto
        END CASE;
    END PROCESS;

END BEHAVIOR;



