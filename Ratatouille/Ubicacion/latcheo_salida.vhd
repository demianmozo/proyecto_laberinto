library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity latcheo_salida is
    Port (
        clk    : in  STD_LOGIC;                   -- Señal de reloj
        reset  : in  STD_LOGIC;                   -- Señal de reset asíncrono
        d_in   : in  STD_LOGIC_VECTOR(2 downto 0); -- Entrada de datos (3 bits)
        q_out  : out STD_LOGIC_VECTOR(2 downto 0)  -- Salida del registro (3 bits)
    );
end latcheo_salida;

architecture Behavioral of latcheo_salida is
    signal reg_val : STD_LOGIC_VECTOR(2 downto 0) := "000"; -- Registro interno
begin
    process(clk, reset)
    begin
        if reset = '1' then
            reg_val <= "000"; -- Reset asíncrono: fuerza el registro a 000
        elsif rising_edge(clk) then
            reg_val <= d_in; -- Captura del valor en el flanco ascendente del reloj
        end if;
    end process;

    -- Asignación de la salida
    q_out <= reg_val;
end Behavioral;
