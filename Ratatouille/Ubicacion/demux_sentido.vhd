library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_sentido is
    Port (
        SENTIDO        : in  STD_LOGIC_VECTOR(1 downto 0); -- Entrada de 2 bits
        muro_ad        : out STD_LOGIC;                   -- Salida muro adelante
        muro_at        : out STD_LOGIC;                   -- Salida muro atrás
        muro_der       : out STD_LOGIC;                   -- Salida muro derecha
        muro_izq       : out STD_LOGIC                    -- Salida muro izquierda
    );
end demux_sentido;

architecture Behavioral of demux_sentido is
begin
    process(SENTIDO)
    begin
        -- Todas las salidas en 0 por defecto
        muro_ad <= '0';
        muro_at <= '0';
        muro_der <= '0';
        muro_izq <= '0';

        -- Activar la salida correspondiente según el valor de SENTIDO
        case SENTIDO is
            when "00" => muro_ad <= '1';   -- Adelante
            when "01" => muro_at <= '1';   -- Atrás
            when "10" => muro_der <= '1';  -- Derecha
            when "11" => muro_izq <= '1';  -- Izquierda
            when others => null;          -- Manejo de otros casos (no usado aquí)
        end case;
    end process;
end Behavioral;
