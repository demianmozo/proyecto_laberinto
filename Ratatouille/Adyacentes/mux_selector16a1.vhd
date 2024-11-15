library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_selector16a1 is
    Port (
        actual : in  STD_LOGIC_VECTOR(3 downto 0);  -- Señales de selección (4 bits)
        Ent0   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 0 (4 bits)
        Entr   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 1 (4 bits)
        Ent2   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 2 (4 bits)
        Ent3   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 3 (4 bits)
        Ent4   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 4 (4 bits)
        Ent5   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 5 (4 bits)
        Ent6   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 6 (4 bits)
        Ent7   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 7 (4 bits)
        Ent8   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 8 (4 bits)
        Ent9   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 9 (4 bits)
        Ent10  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 10 (4 bits)
        Ent11  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 11 (4 bits)
        Ent12  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 12 (4 bits)
        Ent13  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 13 (4 bits)
        Ent14  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 14 (4 bits)
        Ent15  : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada 15 (4 bits)
        Y      : out STD_LOGIC_VECTOR(3 downto 0)    -- Salida (4 bits)
    );
end mux_selector16a1;

architecture Behavioral of mux_selector16a1 is
begin
    process(actual, Ent0, Entr, Ent2, Ent3, Ent4, Ent5, Ent6, Ent7, Ent8, Ent9, Ent10, Ent11, Ent12, Ent13, Ent14, Ent15)
    begin
        case actual is
            when "0000" => Y <= Ent0;  -- Selección 0, salida es Ent0
            when "0001" => Y <= Entr;  -- Selección 1, salida es Ent1
            when "0010" => Y <= Ent2;  -- Selección 2, salida es Ent2
            when "0011" => Y <= Ent3;  -- Selección 3, salida es Ent3
            when "0100" => Y <= Ent4;  -- Selección 4, salida es Ent4
            when "0101" => Y <= Ent5;  -- Selección 5, salida es Ent5
            when "0110" => Y <= Ent6;  -- Selección 6, salida es Ent6
            when "0111" => Y <= Ent7;  -- Selección 7, salida es Ent7
            when "1000" => Y <= Ent8;  -- Selección 8, salida es Ent8
            when "1001" => Y <= Ent9;  -- Selección 9, salida es Ent9
            when "1010" => Y <= Ent10; -- Selección 10, salida es Ent10
            when "1011" => Y <= Ent11; -- Selección 11, salida es Ent11
            when "1100" => Y <= Ent12; -- Selección 12, salida es Ent12
            when "1101" => Y <= Ent13; -- Selección 13, salida es Ent13
            when "1110" => Y <= Ent14; -- Selección 14, salida es Ent14
            when "1111" => Y <= Ent15; -- Selección 15, salida es Ent15
            when others => Y <= (others => '0');  -- Valor por defecto (en caso de selección no válida)
        end case;
    end process;
end Behavioral;
