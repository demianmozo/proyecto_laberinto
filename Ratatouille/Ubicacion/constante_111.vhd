library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity constante_111 is
    Port (
        salida : out STD_LOGIC_VECTOR(2 downto 0) -- Salida constante 111
    );
end constante_111;

architecture Behavioral of constante_111 is
begin
    salida <= "111"; -- Salida constante
end Behavioral;
