library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_peso_o_muro is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada A (3 bits)
        Sel  : in  STD_LOGIC;                      -- Señal de selección
        Y    : out STD_LOGIC_VECTOR(3 downto 0)    -- Salida Y (3 bits)
    );
end mux_peso_o_muro;

architecture Behavioral of mux_peso_o_muro is
    -- Señal fija para B con valor '111'
    constant B : STD_LOGIC_VECTOR(3 downto 0) := "1111";
begin
    process (A, Sel)
    begin
        if Sel = '0' then
            Y <= A;  -- Si Sel es 0, la salida es A
        else
            Y <= B;  -- Si Sel es 1, la salida es B (fija a "111")
        end if;
    end process;
end Behavioral;

