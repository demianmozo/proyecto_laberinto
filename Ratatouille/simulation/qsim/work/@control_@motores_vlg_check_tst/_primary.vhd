library verilog;
use verilog.vl_types.all;
entity Control_Motores_vlg_check_tst is
    port(
        ADC_CS_N        : in     vl_logic;
        ADC_DIN         : in     vl_logic;
        ADC_SCLK        : in     vl_logic;
        CLK10KHz        : in     vl_logic;
        MD0             : in     vl_logic;
        MD1             : in     vl_logic;
        MI0             : in     vl_logic;
        MI1             : in     vl_logic;
        VELD            : in     vl_logic;
        VELI            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Control_Motores_vlg_check_tst;
