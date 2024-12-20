library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador_3_bits is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);  -- Primer operando de 3 bits
           S : out STD_LOGIC_VECTOR (3 downto 0)  -- Resultado de la suma de 3 bits
           );
end sumador_3_bits;

architecture Behavioral of sumador_3_bits is
begin
    -- Proceso para la suma de A y B, sin tener en cuenta el carry
    S <= A + "0001";
end Behavioral;
