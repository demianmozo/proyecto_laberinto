library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity frequency_100hz is
    Port (
        clk_10khz : in  std_logic;
        reset     : in  std_logic;
        tick_100hz : out std_logic
    );
end frequency_100hz;

architecture Behavioral of frequency_100hz is
    constant MAX_COUNT : unsigned(6 downto 0) := to_unsigned(99, 7); -- cuenta de 0 a 99
    signal counter : unsigned(6 downto 0) := (others => '0');
begin

    process(clk_10khz, reset)
    begin
        if reset = '1' then
            counter    <= (others => '0');
            tick_100hz <= '0';

        elsif rising_edge(clk_10khz) then
            if counter = MAX_COUNT then
                counter    <= (others => '0');
                tick_100hz <= '1';
            else
                counter    <= counter + 1;
                tick_100hz <= '0';
            end if;
        end if;
    end process;

end Behavioral;