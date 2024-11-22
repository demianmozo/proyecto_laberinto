library verilog;
use verilog.vl_types.all;
entity Control_Motores is
    port(
        ADC_SCLK        : out    vl_logic;
        inclk0          : in     vl_logic;
        areset          : in     vl_logic;
        ADC_DOUT        : in     vl_logic;
        ADC_CS_N        : out    vl_logic;
        ADC_DIN         : out    vl_logic;
        VELD            : out    vl_logic;
        VELI            : out    vl_logic;
        MD0             : out    vl_logic;
        SR              : in     vl_logic;
        SL              : in     vl_logic;
        llego           : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        MI0             : out    vl_logic;
        MD1             : out    vl_logic;
        MI1             : out    vl_logic;
        CLK10KHz        : out    vl_logic
    );
end Control_Motores;
