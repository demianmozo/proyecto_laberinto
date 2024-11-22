library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bit_to_vector is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           muros_ady : out STD_LOGIC_VECTOR(3 downto 0));
end bit_to_vector;

architecture Behavioral of bit_to_vector is
begin
    -- Convertir las señales a, b, c, d en el vector de 4 bits
    process(a, b, c, d)
    begin
        muros_ady <= (a & b & c & d);
    end process;

end Behavioral;
