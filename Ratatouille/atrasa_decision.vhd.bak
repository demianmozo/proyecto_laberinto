LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY atrasa_decision IS
    PORT(
        clk : IN STD_LOGIC;               -- Reloj de entrada (10 kHz)
        reset : IN STD_LOGIC;             -- Señal de reinicio
        habilitacion : IN STD_LOGIC;      -- Señal de habilitación
        fin_avanza : OUT STD_LOGIC        -- Señal de salida que se activa después de 0.5 segundos
    );
END atrasa_decision;

ARCHITECTURE behavior OF atrasa_decision IS
    CONSTANT CUENTA_MAX : INTEGER := 5000; -- 10kHz * 0.5s = 5000 ciclos
    SIGNAL contador : INTEGER := 0;       -- Contador interno
    SIGNAL fin : STD_LOGIC := '0';        -- Señal interna para "fin_avanza"
BEGIN
    PROCESS(clk, reset)
    BEGIN
        IF reset = '1' THEN
            contador <= 0;
            fin <= '0';
        ELSIF rising_edge(clk) THEN
            IF habilitacion = '1' THEN
                IF contador < CUENTA_MAX THEN
                    contador <= contador + 1;
                ELSE
                    fin <= '1'; -- Activa la señal de salida
                END IF;
            ELSE
                contador <= 0; -- Reinicia el contador si no está habilitado
                fin <= '0';
            END IF;
        END IF;
    END PROCESS;

    fin_avanza <= fin; -- Asigna la señal interna a la salida
END behavior;