library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comparador_derecha is
port(a: in std_logic_vector(11 downto 0);
o: out std_logic);
end comparador_derecha;

architecture behavorial of comparador_derecha is
 constant valor_3000 :std_logic_vector(11 downto 0):="000100101100";
 begin 
 o<='1' when a > valor_3000 else '0';
 end behavorial;