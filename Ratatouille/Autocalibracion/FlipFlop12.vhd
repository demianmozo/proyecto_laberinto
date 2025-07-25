library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlop12 is
    Port (
        clk : in  std_logic;
        D   : in  std_logic_vector(11 downto 0);
        Q   : out std_logic_vector(11 downto 0)
    );
end FlipFlop12;

architecture Behavioral of FlipFlop12 is
    signal reg : std_logic_vector(11 downto 0);
begin

    process(clk)
    begin
        if rising_edge(clk) then
            reg <= D;
        end if;
    end process;

    Q <= reg;

end Behavioral;