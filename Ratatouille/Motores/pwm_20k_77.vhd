library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_20k_77 is
    Port (
        clk     : in  STD_LOGIC;  -- Clock de 50 MHz
        reset   : in  STD_LOGIC;
        pwm_out : out STD_LOGIC   -- Salida PWM de 20 kHz con 80.25%
    );
end pwm_20k_77;

architecture Behavioral of pwm_20k_77 is
    constant PWM_TOP      : unsigned(11 downto 0) := to_unsigned(2499, 12); -- 2500 ciclos
    constant DUTY_8025    : unsigned(11 downto 0) := to_unsigned(2006, 12); -- 80.25%

    signal counter : unsigned(11 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= (others => '0');
        elsif rising_edge(clk) then
            if counter = PWM_TOP then
                counter <= (others => '0');
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    pwm_out <= '1' when counter < DUTY_8025 else '0';
end Behavioral;
