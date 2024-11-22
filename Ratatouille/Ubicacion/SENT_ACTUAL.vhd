library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SENT_ACTUAL is
    Port (
        clk    : in  STD_LOGIC;                   -- Señal de reloj
        reset  : in  STD_LOGIC;                   -- Señal de reset
        d_in   : in  STD_LOGIC_VECTOR(1 downto 0); -- Entrada del Flip-Flop
        q_out  : out STD_LOGIC_VECTOR(1 downto 0)  -- Salida del Flip-Flop
    );
end SENT_ACTUAL;

architecture Behavioral of SENT_ACTUAL is
    signal q_reg : STD_LOGIC_VECTOR(1 downto 0) := "00"; -- Registro interno con reset inicial
begin
    process(clk, reset)
    begin
        if reset = '1' then
            q_reg <= "00"; -- Estado de reset
        elsif rising_edge(clk) then
            q_reg <= d_in; -- Captura del valor en el flanco positivo del reloj
        end if;
    end process;

    -- Asignación de la salida
    q_out <= q_reg;
end Behavioral;
