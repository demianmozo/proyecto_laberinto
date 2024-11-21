library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_4bits is
    Port (
        habilitacion : in  STD_LOGIC;                   -- Señal de habilitación
        entrada      : in  STD_LOGIC_VECTOR(3 downto 0); -- Entrada de 4 bits
        seleccion    : in  STD_LOGIC_VECTOR(3 downto 0); -- Selección de 4 bits
        salida0      : out STD_LOGIC_VECTOR(3 downto 0);
        salida1      : out STD_LOGIC_VECTOR(3 downto 0);
        salida2      : out STD_LOGIC_VECTOR(3 downto 0);
        salida3      : out STD_LOGIC_VECTOR(3 downto 0);
        salida4      : out STD_LOGIC_VECTOR(3 downto 0);
        salida5      : out STD_LOGIC_VECTOR(3 downto 0);
        salida6      : out STD_LOGIC_VECTOR(3 downto 0);
        salida7      : out STD_LOGIC_VECTOR(3 downto 0);
        salida8      : out STD_LOGIC_VECTOR(3 downto 0);
        salida9      : out STD_LOGIC_VECTOR(3 downto 0);
        salida10     : out STD_LOGIC_VECTOR(3 downto 0);
        salida11     : out STD_LOGIC_VECTOR(3 downto 0);
        salida12     : out STD_LOGIC_VECTOR(3 downto 0);
        salida13     : out STD_LOGIC_VECTOR(3 downto 0);
        salida14     : out STD_LOGIC_VECTOR(3 downto 0);
        salida15     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end demux_4bits;

architecture Behavioral of demux_4bits is
begin
    process(habilitacion, entrada, seleccion)
    begin
        -- Inicializar todas las salidas en 0
        salida0  <= (others => '0');
        salida1  <= (others => '0');
        salida2  <= (others => '0');
        salida3  <= (others => '0');
        salida4  <= (others => '0');
        salida5  <= (others => '0');
        salida6  <= (others => '0');
        salida7  <= (others => '0');
        salida8  <= (others => '0');
        salida9  <= (others => '0');
        salida10 <= (others => '0');
        salida11 <= (others => '0');
        salida12 <= (others => '0');
        salida13 <= (others => '0');
        salida14 <= (others => '0');
        salida15 <= (others => '0');

        if habilitacion = '1' then
            -- Activar la salida correspondiente según seleccion
            case seleccion is
                when "0000" => salida0  <= entrada;
                when "0001" => salida1  <= entrada;
                when "0010" => salida2  <= entrada;
                when "0011" => salida3  <= entrada;
                when "0100" => salida4  <= entrada;
                when "0101" => salida5  <= entrada;
                when "0110" => salida6  <= entrada;
                when "0111" => salida7  <= entrada;
                when "1000" => salida8  <= entrada;
                when "1001" => salida9  <= entrada;
                when "1010" => salida10 <= entrada;
                when "1011" => salida11 <= entrada;
                when "1100" => salida12 <= entrada;
                when "1101" => salida13 <= entrada;
                when "1110" => salida14 <= entrada;
                when "1111" => salida15 <= entrada;
                when others => null; -- No hacer nada
            end case;
        end if;
    end process;
end Behavioral;
