library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity combinador_4a1 is
    Port (
        in0   : in  STD_LOGIC;         -- Entrada 0
        in1   : in  STD_LOGIC;         -- Entrada 1
        in2   : in  STD_LOGIC;         -- Entrada 2
        in3   : in  STD_LOGIC;         -- Entrada 3
        salida : out STD_LOGIC_VECTOR(3 downto 0) -- Vector de 4 bits
    );
end combinador_4a1;

architecture Behavioral of combinador_4a1 is
begin
    process(in0, in1, in2, in3)
    begin
        -- Construir el vector a partir de las entradas individuales
        salida <= in3 & in2 & in1 & in0; -- Concatenar las entradas en orden
    end process;
end Behavioral;
