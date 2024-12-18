library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador_fivebits is
    Port ( A   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada A (4 bits)
           B   : in  STD_LOGIC_VECTOR(4 downto 0);  -- Entrada B (5 bits)
           S   : out STD_LOGIC_VECTOR(3 downto 0)   -- Salida S (4 bits)
           );
end sumador_fivebits;

architecture Behavioral of sumador_fivebits is
begin
    process (A, B)
    variable A_extended : STD_LOGIC_VECTOR(4 downto 0);  -- Variable para extender A a 5 bits
    variable S_temp     : STD_LOGIC_VECTOR(4 downto 0);  -- Variable para almacenar el resultado de 5 bits
    begin
        -- Extender A agregando un '0' al frente para que sea un vector de 5 bits
        A_extended := "0" & A;  -- Concatenamos un 0 al inicio de A (4 bits a 5 bits)

        -- Realizamos la suma de A_extended y B
        S_temp := A_extended + B;  -- La suma de los dos números de 5 bits

        -- Tomamos los 4 bits menos significativos de la suma y los asignamos a la salida S
        S <= S_temp(3 downto 0);
    end process;
end Behavioral;