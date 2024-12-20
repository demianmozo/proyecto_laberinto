library verilog;
use verilog.vl_types.all;
entity Matriz_ubicacion_vlg_check_tst is
    port(
        ADC_CS_N        : in     vl_logic;
        ADC_DIN         : in     vl_logic;
        ADC_SCLK        : in     vl_logic;
        C_ad            : in     vl_logic_vector(3 downto 0);
        C_at            : in     vl_logic_vector(3 downto 0);
        C_der           : in     vl_logic_vector(3 downto 0);
        C_izq           : in     vl_logic_vector(3 downto 0);
        CUENTAA         : in     vl_logic;
        GIROO           : in     vl_logic;
        MD0             : in     vl_logic;
        MD1             : in     vl_logic;
        MI0             : in     vl_logic;
        MI1             : in     vl_logic;
        MUROO           : in     vl_logic;
        P_ad            : in     vl_logic_vector(2 downto 0);
        P_at            : in     vl_logic_vector(2 downto 0);
        P_der           : in     vl_logic_vector(2 downto 0);
        P_izq           : in     vl_logic_vector(2 downto 0);
        pos_act         : in     vl_logic_vector(3 downto 0);
        sent_act        : in     vl_logic_vector(1 downto 0);
        SENTIDOO        : in     vl_logic;
        VELD            : in     vl_logic;
        VELI            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Matriz_ubicacion_vlg_check_tst;
