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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Mon Nov 25 17:59:48 2024

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY control IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        LINEA : IN STD_LOGIC := '0';
        MURO : IN STD_LOGIC := '0';
        fin_gir : IN STD_LOGIC := '0';
        CUENTA : OUT STD_LOGIC;
        ACT_GIRO : OUT STD_LOGIC;
        ACT_MUROS : OUT STD_LOGIC;
        ACT_SENTIDO : OUT STD_LOGIC
    );
END control;

ARCHITECTURE BEHAVIOR OF control IS
    TYPE type_fstate IS (MUEVE,cruzando,nueva_celda,se_choca,decide,girando,chocandose1,chocandose2,deci1,deci2,deci3,deci4,deci5);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reset,reg_fstate)
    BEGIN
        IF (reset='1') THEN
            fstate <= MUEVE;
        ELSIF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,LINEA,MURO,fin_gir)
    BEGIN
        CUENTA <= '0';
        ACT_GIRO <= '0';
        ACT_MUROS <= '0';
        ACT_SENTIDO <= '0';
        CASE fstate IS
            WHEN MUEVE =>
                IF (((LINEA = '1') AND (MURO = '0'))) THEN
                    reg_fstate <= cruzando;
                ELSIF ((MURO = '1')) THEN
                    reg_fstate <= chocandose1;
                ELSIF (((LINEA = '0') AND (MURO = '0'))) THEN
                    reg_fstate <= MUEVE;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= MUEVE;
                END IF;

                ACT_SENTIDO <= '0';

                CUENTA <= '0';

                ACT_GIRO <= '0';

                ACT_MUROS <= '0';
            WHEN cruzando =>
                IF ((LINEA = '0')) THEN
                    reg_fstate <= nueva_celda;
                ELSIF ((LINEA = '1')) THEN
                    reg_fstate <= cruzando;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= cruzando;
                END IF;

                ACT_SENTIDO <= '0';

                CUENTA <= '0';

                ACT_GIRO <= '0';

                ACT_MUROS <= '0';
            WHEN nueva_celda =>
                IF ((MURO = '1')) THEN
                    reg_fstate <= chocandose1;
                ELSIF ((MURO = '0')) THEN
                    reg_fstate <= deci1;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= nueva_celda;
                END IF;

                ACT_SENTIDO <= '0';

                CUENTA <= '1';

                ACT_GIRO <= '0';

                ACT_MUROS <= '0';
            WHEN se_choca =>
                reg_fstate <= deci1;

                ACT_SENTIDO <= '0';

                CUENTA <= '0';

                ACT_GIRO <= '0';

                ACT_MUROS <= '1';
            WHEN decide =>
                reg_fstate <= girando;

                ACT_SENTIDO <= '0';

                CUENTA <= '0';

                ACT_GIRO <= '1';

                ACT_MUROS <= '0';
            WHEN girando =>
                IF ((fin_gir = '1')) THEN
                    reg_fstate <= MUEVE;
                ELSIF ((fin_gir = '0')) THEN
                    reg_fstate <= girando;
                -- Inserting 'else' block to prevent latch inference
                ELSE
                    reg_fstate <= girando;
                END IF;

                ACT_SENTIDO <= '1';

                CUENTA <= '0';

                ACT_GIRO <= '0';

                ACT_MUROS <= '0';
            WHEN chocandose1 =>
                reg_fstate <= chocandose2;
            WHEN chocandose2 =>
                reg_fstate <= se_choca;
            WHEN deci1 =>
                reg_fstate <= deci2;

                ACT_SENTIDO <= '0';

                CUENTA <= '0';

                ACT_GIRO <= '0';

                ACT_MUROS <= '0';
            WHEN deci2 =>
                reg_fstate <= deci3;

                ACT_SENTIDO <= '0';

                CUENTA <= '0';

                ACT_GIRO <= '0';

                ACT_MUROS <= '0';
            WHEN deci3 =>
                reg_fstate <= deci4;
            WHEN deci4 =>
                reg_fstate <= deci5;
            WHEN deci5 =>
                reg_fstate <= decide;
            WHEN OTHERS => 
                CUENTA <= 'X';
                ACT_GIRO <= 'X';
                ACT_MUROS <= 'X';
                ACT_SENTIDO <= 'X';
                report "Reach undefined state";
        END CASE;
    END PROCESS;
END BEHAVIOR;
