library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_presuma is
    Port ( s  : in  STD_LOGIC_VECTOR(1 DOWNTO 0) ;                 -- Señal de selección 2 (bit 2)
           Y   : out STD_LOGIC_VECTOR(4 downto 0) -- Salida de 5 bits
           );
end Mux_presuma;

architecture Behavioral of Mux_presuma is

    -- Señales fijas de 5 bits
    constant A : STD_LOGIC_VECTOR(4 downto 0) := "00100"; -- adelante
    constant B : STD_LOGIC_VECTOR(4 downto 0) := "11100"; -- atras
    constant C : STD_LOGIC_VECTOR(4 downto 0) := "11111"; -- derecha
    constant D : STD_LOGIC_VECTOR(4 downto 0) := "00001"; -- izquierda

begin

    process (s)
    begin
        case (s) is  -- Concatenamos s1 y s2 para formar un vector de 2 bits
            when "00" => Y <= A;  -- Si s1=0 y s2=0, la salida es A
            when "01" => Y <= B;  -- Si s1=0 y s2=1, la salida es B
            when "10" => Y <= C;  -- Si s1=1 y s2=0, la salida es C
            when "11" => Y <= D;  -- Si s1=1 y s2=1, la salida es D
            when others => Y <= (others => '0');  -- Valor por defecto (cero)
        end case;
    end process;

end Behavioral;