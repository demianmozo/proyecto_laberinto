library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ir_smf is
    Port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        adc_r      : in  std_logic_vector(11 downto 0);
        adc_l      : in  std_logic_vector(11 downto 0);
        ir_diff_r  : out std_logic_vector(11 downto 0);
        ir_diff_l  : out std_logic_vector(11 downto 0);
        tx_en      : out std_logic
    );
end ir_smf;

architecture Behavioral of ir_smf is

    type state_type is (IDLE, TX_ON, LAT_HI, TX_OFF, LAT_LO, SUB, DONE);
    signal state, next_state : state_type;

    signal ir_high_r, ir_low_r : unsigned(11 downto 0);
    signal ir_high_l, ir_low_l : unsigned(11 downto 0);
    signal diff_r, diff_l      : unsigned(11 downto 0);

begin

    -- Estado actual
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- Lógica de transición
    process(state)
    begin
        case state is
            when IDLE    => next_state <= TX_ON;
            when TX_ON   => next_state <= LAT_HI;
            when LAT_HI  => next_state <= TX_OFF;
            when TX_OFF  => next_state <= LAT_LO;
            when LAT_LO  => next_state <= SUB;
            when SUB     => next_state <= DONE;
            when DONE    => next_state <= TX_ON;
        end case;
    end process;

    -- Salidas y registros
    process(clk)
    begin
        if rising_edge(clk) then
            case state is
                when IDLE =>
                    tx_en <= '0';

                when TX_ON =>
                    tx_en <= '1';

                when LAT_HI =>
                    ir_high_r <= unsigned(adc_r);
                    ir_high_l <= unsigned(adc_l);

                when TX_OFF =>
                    tx_en <= '0';

                when LAT_LO =>
                    ir_low_r <= unsigned(adc_r);
                    ir_low_l <= unsigned(adc_l);

                when SUB =>
                    diff_r <= ir_high_r - ir_low_r;
                    diff_l <= ir_high_l - ir_low_l;

                when DONE =>
                    ir_diff_r <= std_logic_vector(diff_r);
                    ir_diff_l <= std_logic_vector(diff_l);
            end case;
        end if;
    end process;

end Behavioral;
