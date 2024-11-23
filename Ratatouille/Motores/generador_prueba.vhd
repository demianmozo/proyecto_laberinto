library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity generador_prueba is
    port (
        prueba : out std_logic_vector(1 downto 0)  -- Señal de salida de 2 bits
    );
end generador_prueba;

architecture Behavioral of generador_prueba is
begin
    -- Asignación concurrente
    prueba <= "11";  -- Asigna el valor binario '10' (equivalente a 2 en decimal)
    
end Behavioral;
