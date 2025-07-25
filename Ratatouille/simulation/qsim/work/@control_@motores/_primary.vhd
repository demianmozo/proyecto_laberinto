library verilog;
use verilog.vl_types.all;
entity Control_Motores is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        ADC_SCLK        : out    vl_logic;
        inclk0          : in     vl_logic;
        areset          : in     vl_logic;
        ADC_CS_N        : out    vl_logic;
        ADC_DIN         : out    vl_logic;
        VELD            : out    vl_logic;
        VELI            : out    vl_logic;
        MD0             : out    vl_logic;
        CH0             : out    vl_logic_vector(11 downto 0);
        CH1             : out    vl_logic_vector(11 downto 0);
        llego           : in     vl_logic;
        SEL             : in     vl_logic_vector(1 downto 0);
        MI0             : out    vl_logic;
        MD1             : out    vl_logic;
        MI1             : out    vl_logic;
        CLK10KHz        : out    vl_logic;
        CLK1MHz         : out    vl_logic;
        clk_40KHz       : out    vl_logic;
        LedIRi          : out    vl_logic;
        LedIRd          : out    vl_logic;
        ADC_DOUT        : in     vl_logic
    );
end Control_Motores;
