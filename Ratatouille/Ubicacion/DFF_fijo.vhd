library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF_fijo is
    Port (
        clk    : in  STD_LOGIC; -- Reloj
        reset  : in  STD_LOGIC; -- Señal de reset
        entrada : in  STD_LOGIC; -- Señal de entrada
        salida  : out STD_LOGIC  -- Señal de salida
    );
end DFF_fijo;

architecture Behavioral of DFF_fijo is
    signal estado : STD_LOGIC := '0'; -- Estado interno del latch
begin
    process(clk, reset)
    begin
        if reset = '1' then
            estado <= '0'; -- Reset: pone el estado interno en 0
        elsif rising_edge(clk) then
            if entrada = '1' then
                estado <= '1'; -- Cambia a 1 al detectar un 1 en la entrada Y SE QUEDA AHI HASTA QUE HAYA UN RESET
            end if;
        end if;
    end process;

    -- Asignación de la salida
    salida <= estado;
end Behavioral;
