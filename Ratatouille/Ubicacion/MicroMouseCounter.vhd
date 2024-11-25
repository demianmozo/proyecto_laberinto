library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MicroMouseCounter is
    generic
    (
        MIN_COUNT : natural := 0;
        MAX_COUNT : natural := 31 -- Rango máximo definido (5 bits)
    );
    port 
    (
        clk      : in  std_logic;
        reset    : in  std_logic;
        enable   : in  std_logic;
        updown   : in  std_logic;
        q0       : out std_logic; -- Bit menos significativo
        q1       : out std_logic;
        q2       : out std_logic;
        q3       : out std_logic;
        q4       : out std_logic  -- Bit más significativo
    );

end entity;

architecture rtl of MicroMouseCounter is
    signal direction : integer;
    signal limit     : integer range MIN_COUNT to MAX_COUNT;
    signal cnt       : integer range MIN_COUNT to MAX_COUNT := 0;
    signal q_vector  : std_logic_vector(4 downto 0); -- Vector auxiliar para dividir las salidas
begin

    -- Proceso para determinar la dirección y el límite
    process (updown)
    begin
        if (updown = '1') then
            direction <= 1;       -- Incremento
            limit <= MAX_COUNT;   -- Límite superior
        else
            direction <= -1;      -- Decremento
            limit <= MIN_COUNT;   -- Límite inferior
        end if;
    end process;

    -- Proceso para actualizar el contador
    process (clk)
    begin
		  if reset = '0' then
				cnt <= 0; -- Reiniciar el contador
				
		  elsif rising_edge(clk) then
            if enable = '1' and cnt /= limit then
                cnt <= cnt + direction; -- Incrementar o decrementar
					 
				elsif enable = '1' and cnt = limit then
				cnt <= 0; -- Reiniciar el contador
            end if;
        end if;
    end process;

    -- Convertir el entero a un vector binario
    q_vector <= std_logic_vector(to_unsigned(cnt, q_vector'length));

    -- Asignar cada bit del vector a las salidas individuales
    q0 <= q_vector(0);
    q1 <= q_vector(1);
    q2 <= q_vector(2);
    q3 <= q_vector(3);
    q4 <= q_vector(4);

end rtl;