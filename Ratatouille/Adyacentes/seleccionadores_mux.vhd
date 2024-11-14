library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;  -- Para operaciones aritméticas
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seleccionadores_mux is
    Port ( X   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada X (5 bits)
           Y1  : out STD_LOGIC_VECTOR(3 downto 0);  -- Salida Y1 = X + 1
           Y2  : out STD_LOGIC_VECTOR(3 downto 0);  -- Salida Y2 = X - 1
           Y3  : out STD_LOGIC_VECTOR(3 downto 0);  -- Salida Y3 = X + 4
           Y4  : out STD_LOGIC_VECTOR(3 downto 0)   -- Salida Y4 = X - 4
           );
end seleccionadores_mux;

architecture Behavioral of seleccionadores_mux is
begin
    process(X)
    begin
        -- Sumar 1 a la entrada
        Y1 <= X + "0001";  -- X + 1

        -- Restar 1 a la entrada
        Y2 <= X - "0001";  -- X - 1

        -- Sumar 4 a la entrada
        Y3 <= X + "0100";  -- X + 4

        -- Restar 4 a la entrada
        Y4 <= X - "0100";  -- X - 4
    end process;
end Behavioral;
