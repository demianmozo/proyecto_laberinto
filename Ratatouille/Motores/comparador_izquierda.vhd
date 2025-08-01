library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity comparador_izquierda is
port(a: in std_logic_vector(11 downto 0);
o: out std_logic);
end comparador_izquierda;

architecture behavorial of comparador_izquierda is
 constant valor_3000 :std_logic_vector(11 downto 0):="011111010000";
 begin 
 o<='1' when a > valor_3000 else '0';
 end behavorial;