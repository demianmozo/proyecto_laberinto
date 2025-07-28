LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY atrasa_decision IS
    PORT(
        clk         : IN STD_LOGIC;         -- Reloj de entrada (10 kHz)
        reset       : IN STD_LOGIC;         -- Señal de reinicio
        habilitacion: IN STD_LOGIC;         -- Señal de habilitación
        modo        : IN STD_LOGIC;         -- Selección de cuenta: 0 = 5000, 1 = 3000
        fin_avanza  : OUT STD_LOGIC         -- Señal de salida que se activa al finalizar la cuenta
    );
END atrasa_decision;

ARCHITECTURE behavior OF atrasa_decision IS
    CONSTANT CUENTA_LARGA : INTEGER := 4200;
    CONSTANT CUENTA_CORTA : INTEGER := 4200;
    SIGNAL contador       : INTEGER := 0;
    SIGNAL fin            : STD_LOGIC := '0';
    SIGNAL cuenta_max     : INTEGER;
BEGIN

    -- Selección dinámica del valor máximo de cuenta
    cuenta_max <= CUENTA_LARGA WHEN modo = '0' ELSE CUENTA_CORTA;

    PROCESS(clk, reset)
    BEGIN
        IF reset = '1' THEN
            contador <= 0;
            fin <= '0';
        ELSIF rising_edge(clk) THEN
            IF habilitacion = '1' THEN
                IF contador < cuenta_max THEN
                    contador <= contador + 1;
                    fin <= '0';
                ELSE
                    fin <= '1';
                END IF;
            ELSE
                contador <= 0;
                fin <= '0';
            END IF;
        END IF;
    END PROCESS;

    fin_avanza <= fin;

END behavior;
