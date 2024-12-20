library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_temporizador_doble is
    -- Testbench no tiene puertos
end tb_temporizador_doble;

architecture Behavioral of tb_temporizador_doble is
    -- Componentes y señales para conectar el diseño bajo prueba (DUT)
    component temporizador_doble
        port (
            clk   : in  std_logic;
            reset : in  std_logic;
            hab   : in  std_logic_vector(1 downto 0);
            fin   : out std_logic
        );
    end component;

    signal clk   : std_logic := '0';  -- Señal de reloj
    signal reset : std_logic := '0';  -- Señal de reset
    signal hab   : std_logic_vector(1 downto 0) := "00"; -- Señal de habilitación
    signal fin   : std_logic;  -- Señal de finalización

    -- Constante para definir el periodo del reloj (10 kHz = 100 µs)
    constant clk_period : time := 100 us;

begin

    -- Instancia del DUT
    DUT: temporizador_doble
        port map (
            clk   => clk,
            reset => reset,
            hab   => hab,
            fin   => fin
        );

    -- Generador de reloj
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Estímulos de prueba
    stimulus_process: process
    begin
        -- Caso 1: Reset inicial
        reset <= '1';
        wait for 2 * clk_period;
        reset <= '0';

        -- Caso 2: hab = "00", el temporizador no debe contar
        hab <= "00";
        wait for 750 ms;  -- Espera 1 ms
       

        -- Caso 3: hab = "01", debe contar hasta 750 ms
        hab <= "01";
        wait for 300 ms;  -- Espera 750 ms
     
        hab <= "00";  -- Regresar a hab = "00"
        wait for 750 ms;

        -- Caso 4: hab = "10", debe contar hasta 1,500 ms
        hab <= "10";
        wait for 300 ms;  -- Espera 1500 ms
		  
		    -- Caso 2: hab = "00", el temporizador no debe contar
        hab <= "00";
        wait for 300 ms;  -- Espera 1 ms
      
        -- Caso 5: Reset durante la cuenta
        reset <= '1';
        wait for 2 * clk_period;
        reset <= '0';
    
        -- Termina la simulación
        wait;
    end process;

end Behavioral;
