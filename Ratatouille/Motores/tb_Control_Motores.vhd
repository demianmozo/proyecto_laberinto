LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_Control_Motores IS
END tb_Control_Motores;

ARCHITECTURE behavior OF tb_Control_Motores IS

    -- Component declaration for the DUT
    COMPONENT PRUEBA_Control_Motores
        PORT(
            clk_10k : IN STD_LOGIC;
            clk_20k : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            MD0 : OUT STD_LOGIC;
            MI0 : OUT STD_LOGIC;
            MD1 : OUT STD_LOGIC;
            MI1 : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals to connect to DUT
    SIGNAL clk_10k_tb, clk_20k_tb : STD_LOGIC := '0';
    SIGNAL reset_tb : STD_LOGIC := '1';
    SIGNAL SEL_tb : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
    SIGNAL MD0_tb, MI0_tb, MD1_tb, MI1_tb : STD_LOGIC := '0';
	 
	 
    -- Clock periods
    CONSTANT clk_10k_period : TIME := 100 us; -- 10 kHz
    CONSTANT clk_20k_period : TIME := 50 us;  -- 20 kHz

BEGIN

    -- DUT instantiation
    uut: PRUEBA_Control_Motores
        PORT MAP (
            clk_10k => clk_10k_tb,
            clk_20k => clk_20k_tb,
            reset => reset_tb,
            SEL => SEL_tb,
            MD0 => MD0_tb,
            MI0 => MI0_tb,
            MD1 => MD1_tb,
            MI1 => MI1_tb
        );

    -- Clock process for clk_10k
    clk_10k_process : PROCESS
    BEGIN
        clk_10k_tb <= '0';
        WAIT FOR clk_10k_period / 2;
        clk_10k_tb <= '1';
        WAIT FOR clk_10k_period / 2;
    END PROCESS;

    -- Clock process for clk_20k
    clk_20k_process : PROCESS
    BEGIN
        clk_20k_tb <= '0';
        WAIT FOR clk_20k_period / 2;
        clk_20k_tb <= '1';
        WAIT FOR clk_20k_period / 2;
    END PROCESS;

    -- Reset process
    reset_process : PROCESS
    BEGIN
        reset_tb <= '1'; -- Assert reset
        WAIT FOR 200 us;
        reset_tb <= '0'; -- Deassert reset
        WAIT;
    END PROCESS;

    -- Stimulus process
    stimulus_process : PROCESS
    BEGIN
	 
	  -- Monitor salida inicial
        REPORT "MD0: " & STD_LOGIC'image(MD0_tb) & 
               ", MI0: " & STD_LOGIC'image(MI0_tb) & 
               ", MD1: " & STD_LOGIC'image(MD1_tb) & 
               ", MI1: " & STD_LOGIC'image(MI1_tb);
        -- Caso 2: SEL = "00" (Adelante)
        SEL_tb <= "00";
        wait for 500 ms;   
		  
        -- Caso 3: SEL = "01" (Atrás)
        SEL_tb <= "01";
        wait for 300 ms;
		  
		  SEL_tb <= "00";
        wait for 500 ms;   

        -- Caso 4: SEL = "10" (Derecha)
        SEL_tb <= "10";
        wait for 300 ms;
		  
		    SEL_tb <= "00";
        wait for 500 ms;  

        -- Caso 5: SEL = "11" (Izquierda)
        SEL_tb <= "11";
        wait for 300 ms;
		  
		    SEL_tb <= "00";
        wait for 800 ms;  

        -- End simulation
        WAIT;
    END PROCESS;

END behavior;

