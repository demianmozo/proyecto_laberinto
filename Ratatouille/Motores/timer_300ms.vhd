library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity timer_300ms is
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        enable     : in  std_logic;  -- pulso de inicio
        done       : out std_logic   -- salida en alto después de 300 ms
    );
end timer_300ms;

architecture Behavioral of timer_300ms is
    constant MAX_COUNT : unsigned(11 downto 0) := to_unsigned(2999, 12); -- 3000 ciclos
    signal counter     : unsigned(11 downto 0) := (others => '0');
    signal active      : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= (others => '0');
            active  <= '0';
            done    <= '0';

        elsif rising_edge(clk) then
            if active = '0' then
                if enable = '1' then
                    active  <= '1';
                    counter <= (others => '0');
                    done    <= '0';
                else
                    done <= '0';
                end if;
            else
                if counter = MAX_COUNT then
                    done    <= '1';
                    active  <= '0';
                else
                    counter <= counter + 1;
                    done    <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
