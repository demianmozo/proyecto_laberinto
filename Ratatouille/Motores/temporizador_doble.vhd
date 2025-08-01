library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity temporizador_doble is
    port (
        clk   : in  std_logic;  -- Señal de reloj (10kHz)
        reset : in  std_logic;  -- Señal de reset
        hab   : in  std_logic_vector(1 downto 0); -- Señal de habilitación (2 bits)
        fin   : out std_logic   -- Señal de finalización
    );
end temporizador_doble;

architecture Behavioral of temporizador_doble is
    signal contador : unsigned(16 downto 0) := (others => '0');  -- Contador para la cuenta
    signal tiempo_limite : unsigned(16 downto 0);  -- Límite de cuenta
    signal fin_reg : std_logic := '0';  -- Registro de la señal 'fin'

    -- Constantes para el límite de tiempo (contadores basados en reloj de 10kHz)
    constant limite_075s : unsigned(16 downto 0) := to_unsigned(6600, 17);  -- 
    constant limite_15s  : unsigned(16 downto 0) := to_unsigned(13200, 17); -- 

begin

    process (clk, reset)
    begin
        if reset = '1' then
            contador <= (others => '0');
            fin_reg <= '0';
        elsif rising_edge(clk) then
            if hab = "00" then
                -- No cuenta, resetear contador y fin
                contador <= (others => '0');
                fin_reg <= '0';
            elsif hab = "01" then
                tiempo_limite <= limite_075s;
            elsif hab = "10" then
                tiempo_limite <= limite_15s;
            end if;

            -- Si hab no es "00", empieza a contar
            if hab /= "00" then
                if contador < tiempo_limite then
                    contador <= contador + 1;
                else
                    fin_reg <= '1';  -- Se alcanzó el límite
                end if;
            end if;
        end if;
    end process;

    -- Asignar la señal 'fin' al registro fin_reg
    fin <= fin_reg;

end Behavioral;
