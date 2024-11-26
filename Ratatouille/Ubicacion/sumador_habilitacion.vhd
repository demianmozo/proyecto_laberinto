library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sumador_habilitacion is
    Port ( A : in  STD_LOGIC_VECTOR(2 downto 0);
           EN : in  STD_LOGIC;
           S : out STD_LOGIC_VECTOR(2 downto 0)
           );
end sumador_habilitacion;

architecture Concurrent of sumador_habilitacion is
begin
    -- Si EN está en 1, sumamos 1 a A, de lo contrario, la salida es igual a A
    S <= (A + "001") when (EN = '1') else A;
end Concurrent;
