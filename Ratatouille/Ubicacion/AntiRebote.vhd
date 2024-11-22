library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AntiRebote is
    Port ( clk       : in  STD_LOGIC;
           rst       : in  STD_LOGIC;
           btn_in    : in  STD_LOGIC;  -- Señal del botón (con rebote)
           btn_out   : out STD_LOGIC); -- Señal debounced (sin rebote)
end AntiRebote;

architecture Behavioral of AntiRebote is
    -- Parámetro de tiempo de espera (100 ms a 10 kHz)
<<<<<<< HEAD
    constant CNT_MAX : integer := 200;  -- 100 ms con reloj de 10 kHz
=======
    constant CNT_MAX : integer := 1000;  -- 100 ms con reloj de 10 kHz
>>>>>>> 9b7ff377bc77e1fe38980f10943eaabc3df35041
    signal cnt      : integer range 0 to CNT_MAX := 0;
    signal btn_reg  : STD_LOGIC := '0';  -- Registro de la señal del botón
    signal btn_stable : STD_LOGIC := '0'; -- Señal estabilizada

begin

    -- Proceso de sincronización y debounce
    process(clk, rst)
    begin
        if rst = '1' then
            -- Reinicia el contador y las señales
            cnt <= 0;
            btn_reg <= '0';
            btn_stable <= '0';
            btn_out <= '0';
        elsif rising_edge(clk) then
            if btn_in = btn_reg then
                -- Si el botón sigue igual, incrementamos el contador
                if cnt < CNT_MAX then
                    cnt <= cnt + 1;
                else
                    -- Si se alcanzó el tiempo de espera, consideramos la señal estable
                    btn_stable <= btn_in;
                    btn_out <= btn_stable;  -- La salida del botón sin rebote
                end if;
            else
                -- Si la señal del botón cambia, reiniciamos el contador
                cnt <= 0;
            end if;
            -- Actualizamos el registro del botón
            btn_reg <= btn_in;
        end if;
    end process;

end Behavioral;
