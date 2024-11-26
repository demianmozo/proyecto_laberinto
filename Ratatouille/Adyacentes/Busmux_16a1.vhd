library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_16to1 is
    Port ( S   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Señales de selección (4 bits)
           I0  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 0 (3 bits)
           En  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 1 (3 bits)
           I2  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 2 (3 bits)
           I3  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 3 (3 bits)
           I4  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 4 (3 bits)
           I5  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 5 (3 bits)
           I6  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 6 (3 bits)
           I7  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 7 (3 bits)
           I8  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 8 (3 bits)
           I9  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 9 (3 bits)
           I10 : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 10 (3 bits)
           I11 : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 11 (3 bits)
           I12 : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 12 (3 bits)
           I13 : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 13 (3 bits)
           I14 : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 14 (3 bits)
           I15 : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 15 (3 bits)
           Y   : out STD_LOGIC_VECTOR(3 downto 0)    -- Salida (3 bits)
           );
end mux_16to1;

architecture Behavioral of mux_16to1 is
begin
    process(S, I0, En, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15)
    begin
        case S is
            when "0000" => Y <= I0;  -- Selección 0, salida es I0
            when "0001" => Y <= En;  -- Selección 1, salida es I1
            when "0010" => Y <= I2;  -- Selección 2, salida es I2
            when "0011" => Y <= I3;  -- Selección 3, salida es I3
            when "0100" => Y <= I4;  -- Selección 4, salida es I4
            when "0101" => Y <= I5;  -- Selección 5, salida es I5
            when "0110" => Y <= I6;  -- Selección 6, salida es I6
            when "0111" => Y <= I7;  -- Selección 7, salida es I7
            when "1000" => Y <= I8;  -- Selección 8, salida es I8
            when "1001" => Y <= I9;  -- Selección 9, salida es I9
            when "1010" => Y <= I10; -- Selección 10, salida es I10
            when "1011" => Y <= I11; -- Selección 11, salida es I11
            when "1100" => Y <= I12; -- Selección 12, salida es I12
            when "1101" => Y <= I13; -- Selección 13, salida es I13
            when "1110" => Y <= I14; -- Selección 14, salida es I14
            when "1111" => Y <= I15; -- Selección 15, salida es I15
            when others => Y <= (others => '0');  -- Valor por defecto (en caso de selección no válida)
        end case;
    end process;
end Behavioral;
