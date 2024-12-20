library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity frequency_divider is
    port (
        clk_in   : in  std_logic;  -- Reloj de entrada (frecuencia intermedia desde el PLL)
        reset    : in  std_logic;  -- Señal de reinicio
        clk_out  : out std_logic   -- Reloj de salida a 1 Hz
    );
end entity;

architecture Behavioral of frequency_divider is
    -- Calcular el divisor según la frecuencia de entrada
    -- Para 10 KHz a 1 Hz: divisor = 10_000 / 2 - 1 = 4999
    constant DIVISOR : integer := 4999; 
    signal counter   : integer := 0;
    signal clk_reg   : std_logic := '0';
begin

    process (clk_in, reset)
    begin
        if reset = '0' then
            counter <= 0;
            clk_reg <= '0';
        elsif rising_edge(clk_in) then
            if counter = DIVISOR then
                counter <= 0;
                clk_reg <= not clk_reg;  -- Cambia el estado del reloj de salida
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_out <= clk_reg; -- Asignar la señal de salida
end Behavioral;
