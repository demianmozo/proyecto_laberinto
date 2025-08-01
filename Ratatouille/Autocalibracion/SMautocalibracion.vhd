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
-- Created on Thu Jul 17 16:01:34 2025

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY SMautocalibracion IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        LedIR : OUT STD_LOGIC;
        clkFF1 : OUT STD_LOGIC;
        clkFF2 : OUT STD_LOGIC;
        Substract : OUT STD_LOGIC
    );
END SMautocalibracion;

ARCHITECTURE BEHAVIOR OF SMautocalibracion IS
    TYPE type_fstate IS (SetTx,FF1,ResetTx,FF2,Resta);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= SetTx;
            LedIR <= '0';
            clkFF1 <= '0';
            clkFF2 <= '0';
            Substract <= '0';
        ELSE
            LedIR <= '0';
            clkFF1 <= '0';
            clkFF2 <= '0';
            Substract <= '0';
            CASE fstate IS
                WHEN SetTx =>
                    reg_fstate <= FF1;

                    clkFF2 <= '0';

                    LedIR <= '1';

                    Substract <= '0';

                    clkFF1 <= '0';
                WHEN FF1 =>
                    reg_fstate <= ResetTx;

                    clkFF2 <= '0';

                    LedIR <= '1';

                    Substract <= '0';

                    clkFF1 <= '1';
                WHEN ResetTx =>
                    reg_fstate <= FF2;

                    clkFF2 <= '0';

                    LedIR <= '0';

                    Substract <= '0';

                    clkFF1 <= '0';
                WHEN FF2 =>
                    reg_fstate <= Resta;

                    clkFF2 <= '1';

                    LedIR <= '0';

                    Substract <= '0';

                    clkFF1 <= '0';
                WHEN Resta =>
                    reg_fstate <= SetTx;

                    clkFF2 <= '0';

                    LedIR <= '0';

                    Substract <= '1';

                    clkFF1 <= '0';
                WHEN OTHERS => 
                    LedIR <= 'X';
                    clkFF1 <= 'X';
                    clkFF2 <= 'X';
                    Substract <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
