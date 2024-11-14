library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop_d is
    Port ( clk   : in  STD_LOGIC;                      -- Reloj
           reset : in  STD_LOGIC;                      -- Reset asíncrono activo alto
           D     : in  STD_LOGIC_VECTOR(4 downto 0);   -- Entrada D (5 bits)
           Q     : out STD_LOGIC_VECTOR(4 downto 0)    -- Salida Q (5 bits)
           );
end flipflop_d;

architecture Behavioral of flipflop_d is
begin
    process (clk, reset)
    begin
        if reset = '1' then  -- Si el reset está activo (alto)
            Q <= (others => '0');  -- Forzamos Q a 0 (cinco bits en cero)
        elsif rising_edge(clk) then  -- En el flanco de subida del reloj
            Q <= D;  -- El valor de D se transfiere a Q
        end if;
    end process;
end Behavioral;
