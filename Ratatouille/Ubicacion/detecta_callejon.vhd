library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detecta_callejon is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Y : out STD_LOGIC);
end detecta_callejon;

architecture Behavioral of detecta_callejon is
begin
    process(A, B, C, D)
    variable count : integer := 0;
    begin
        -- Contamos cuántas entradas son '1'
        count := 0;
        if A = '1' then
            count := count + 1;
        end if;
        if B = '1' then
            count := count + 1;
        end if;
        if C = '1' then
            count := count + 1;
        end if;
        if D = '1' then
            count := count + 1;
        end if;

        -- Si hay al menos 3 entradas '1', la salida es '1'
        if count >= 3 then
            Y <= '1';
        else
            Y <= '0';
        end if;
    end process;
end Behavioral;
